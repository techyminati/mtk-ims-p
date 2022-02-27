package com.mediatek.ims.config.internal;

import android.content.BroadcastReceiver;
import android.content.ContentProvider;
import android.content.ContentUris;
import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteFullException;
import android.net.Uri;
import android.os.Build;
import android.os.SystemProperties;
import android.os.UserManager;
import android.text.TextUtils;
import android.util.Log;
import com.mediatek.ims.config.ImsConfigContract;
import com.mediatek.internal.telephony.MtkPhoneConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class ImsConfigProvider extends ContentProvider {
    static final String AUTHORITY = "com.mediatek.ims.config.provider";
    private static final boolean DEBUG;
    static HashMap<Integer, Boolean> ECCAllowBroadcast = null;
    static HashMap<Integer, Boolean> ECCAllowSendCmd = null;
    static HashMap<Integer, String> LatestSimState = null;
    private static final String PROPERTY_IMSCONFIG_FORCE_NOTIFY = "vendor.ril.imsconfig.force.notify";
    private static final String PROP_FORCE_DEBUG_KEY = "persist.vendor.log.tel_dbg";
    private static final String TAG = "ImsConfigProvider";
    private Context mContext;
    SqlDatabaseHelper mDatabaseHelper = null;
    private final BroadcastReceiver mBroadcastReceiver = new BroadcastReceiver() { // from class: com.mediatek.ims.config.internal.ImsConfigProvider.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            Log.d(ImsConfigProvider.TAG, "[onReceive] action=" + intent.getAction());
            Context deviceContext = context.createDeviceProtectedStorageContext();
            if (!deviceContext.moveDatabaseFrom(context, "imsconfig.db")) {
                Log.wtf(ImsConfigProvider.TAG, "[onReceive] Failed to move database");
            }
            Log.d(ImsConfigProvider.TAG, "[onReceive] Move database successfully");
            ImsConfigProvider.this.mDatabaseHelper = new SqlDatabaseHelper(deviceContext);
            Log.d(ImsConfigProvider.TAG, "[onReceive] Create mDatabaseHelper again");
            context.unregisterReceiver(ImsConfigProvider.this.mBroadcastReceiver);
        }
    };

    static {
        boolean z = true;
        if (!TextUtils.equals(Build.TYPE, "eng") && SystemProperties.getInt(PROP_FORCE_DEBUG_KEY, 0) != 1) {
            z = false;
        }
        DEBUG = z;
        LatestSimState = new HashMap<>();
        ECCAllowSendCmd = new HashMap<>();
        ECCAllowBroadcast = new HashMap<>();
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        Context context = getContext();
        Context deviceContext = context.createDeviceProtectedStorageContext();
        if (UserManager.get(context).isUserUnlocked()) {
            if (!deviceContext.moveDatabaseFrom(context, "imsconfig.db")) {
                Log.wtf(TAG, "[onCreate] Failed to move database");
            }
            Log.d(TAG, "[onCreate] Move database successfully");
        } else {
            Log.d(TAG, "[onCreate] User locked, register receiver for BOOT_COMPLETED");
            IntentFilter filter = new IntentFilter("android.intent.action.BOOT_COMPLETED");
            context.registerReceiver(this.mBroadcastReceiver, filter);
        }
        this.mDatabaseHelper = new SqlDatabaseHelper(deviceContext);
        this.mContext = getContext();
        return true;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        return "vnd.android.cursor.item/imsconfig";
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String selection, String[] selectionArgs) {
        Arguments args = new Arguments(3, uri, selection, selectionArgs);
        try {
            SQLiteDatabase db = this.mDatabaseHelper.getWritableDatabase();
            int result = db.delete(args.table, args.selection, args.selectionArgs);
            return result;
        } catch (SQLiteFullException e) {
            onDiskFull(e);
            return 0;
        }
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues values) {
        Arguments args = new Arguments(1, values, uri);
        long newId = 0;
        try {
            SQLiteDatabase db = this.mDatabaseHelper.getWritableDatabase();
            newId = db.insertWithOnConflict(args.table, null, values, 5);
        } catch (SQLiteFullException e) {
            onDiskFull(e);
        }
        return prepareResultUri(args, newId);
    }

    private Uri prepareResultUri(Arguments args, long newId) {
        char c;
        Uri result;
        Uri result2 = Uri.parse("content://com.mediatek.ims.config.provider/" + args.table + "/" + args.phoneId);
        String str = args.table;
        int hashCode = str.hashCode();
        if (hashCode == 45084740) {
            if (str.equals(ImsConfigContract.TABLE_PROVISION)) {
                c = 1;
            }
            c = 65535;
        } else if (hashCode != 1412604243) {
            if (hashCode == 1545420144 && str.equals(ImsConfigContract.TABLE_DEFAULT)) {
                c = 0;
            }
            c = 65535;
        } else {
            if (str.equals(ImsConfigContract.TABLE_MASTER)) {
                c = 2;
            }
            c = 65535;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
                result = Uri.withAppendedPath(result2, args.itemId);
                break;
            default:
                result = ContentUris.withAppendedId(result2, newId);
                break;
        }
        if (!TextUtils.isEmpty(args.param)) {
            return ContentUris.withAppendedId(result, Integer.parseInt(args.param));
        }
        return result;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues values, String selection, String[] selectionArgs) {
        int count = 0;
        Arguments args = new Arguments(2, uri, values, selection, selectionArgs);
        try {
            SQLiteDatabase db = this.mDatabaseHelper.getWritableDatabase();
            count = db.update(args.table, values, args.selection, args.selectionArgs);
            if (count > 0) {
                notifyChange(uri, args, values);
            }
        } catch (SQLiteFullException e) {
            onDiskFull(e);
        }
        return count;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] projection, String selection, String[] selectionArgs, String sortOrder) {
        Arguments args = new Arguments(0, uri);
        SQLiteDatabase db = this.mDatabaseHelper.getReadableDatabase();
        Pattern pattern = Pattern.compile("[\\W]");
        for (String projectionArg : projection) {
            if (projectionArg.length() > 64) {
                Log.e(TAG, "Found column name that was too long (" + projectionArg.length() + " characters)");
                return null;
            }
            Matcher matcher = pattern.matcher(projectionArg);
            if (matcher.find()) {
                Log.e(TAG, "Found invalid character in column name: " + projectionArg + ", uri: " + uri);
                return null;
            }
        }
        Cursor result = db.query(args.table, projection, args.selection, args.selectionArgs, null, null, null);
        return result;
    }

    @Override // android.content.ContentProvider
    public void shutdown() {
        super.shutdown();
        if (this.mDatabaseHelper != null) {
            this.mDatabaseHelper.close();
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    private void notifyChange(Uri uri, Arguments args, ContentValues cv) {
        char c;
        boolean isECCBroadcastFlag;
        boolean isSimStateAllow;
        int value = -1;
        boolean isFeatureEnabled = false;
        String valueStr = MtkPhoneConstants.MVNO_TYPE_NONE;
        String str = args.table;
        switch (str.hashCode()) {
            case -2133078972:
                if (str.equals(ImsConfigContract.TABLE_CONFIG_SETTING)) {
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -978591195:
                if (str.equals(ImsConfigContract.TABLE_FEATURE)) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case -321961281:
                if (str.equals(ImsConfigContract.TABLE_RESOURCE)) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case 45084740:
                if (str.equals(ImsConfigContract.TABLE_PROVISION)) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case 1412604243:
                if (str.equals(ImsConfigContract.TABLE_MASTER)) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 1545420144:
                if (str.equals(ImsConfigContract.TABLE_DEFAULT)) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        switch (c) {
            case 0:
            case 1:
            case 2:
                int itemId = ImsConfigContract.configNameToId(args.itemId);
                int mimeType = cv.getAsInteger(ImsConfigContract.BasicConfigTable.MIMETYPE_ID).intValue();
                if (mimeType == 0) {
                    value = cv.getAsInteger(ImsConfigContract.BasicConfigTable.DATA).intValue();
                } else if (mimeType == 1) {
                    valueStr = cv.getAsString(ImsConfigContract.BasicConfigTable.DATA);
                } else {
                    Log.e(TAG, "Config " + itemId + " not String or Integer, mimeType " + mimeType);
                    return;
                }
                Intent intent = new Intent(ImsConfigContract.ACTION_IMS_CONFIG_CHANGED, uri);
                intent.putExtra("phone_id", Integer.parseInt(args.phoneId));
                intent.putExtra(ImsConfigContract.EXTRA_CHANGED_ITEM, itemId);
                intent.addFlags(1);
                if (mimeType == 0) {
                    intent.putExtra("value", value);
                } else if (mimeType == 1) {
                    intent.putExtra("value", valueStr);
                }
                intent.putExtra(ImsConfigContract.EXTRA_MIMETYPE, mimeType);
                getContext().sendBroadcast(intent);
                getContext().getContentResolver().notifyChange(uri, null);
                if (mimeType == 0 && DEBUG) {
                    Log.d(TAG, "Update uri " + uri + " on phone " + args.phoneId + " value: " + value);
                    return;
                } else if (mimeType == 1 && DEBUG) {
                    Log.d(TAG, "Update uri " + uri + " on phone " + args.phoneId + " value: " + valueStr);
                    return;
                } else {
                    return;
                }
            case 3:
                Integer.parseInt(args.itemId);
                Log.d(TAG, "Don't Update uri " + uri + " on phone " + args.phoneId + " for CONFIG_SETTING");
                return;
            case 4:
                String simState = LatestSimState.get(Integer.valueOf(Integer.parseInt(args.phoneId)));
                Log.d(TAG, "getSimState() for checking whether broadcast phoneId: " + Integer.parseInt(args.phoneId) + ", Sim state: " + simState);
                int itemId2 = Integer.parseInt(args.itemId);
                int value2 = cv.getAsInteger("value").intValue();
                if (simState == null) {
                    simState = MtkPhoneConstants.MVNO_TYPE_NONE;
                }
                if (ECCAllowBroadcast.get(Integer.valueOf(Integer.parseInt(args.phoneId))) == null) {
                    isECCBroadcastFlag = false;
                } else {
                    isECCBroadcastFlag = simState.equals("ABSENT") && ECCAllowBroadcast.get(Integer.valueOf(Integer.parseInt(args.phoneId))).booleanValue() && itemId2 == 0;
                    isFeatureEnabled = value2 == 1;
                    if (isECCBroadcastFlag && !isFeatureEnabled) {
                        ECCAllowBroadcast.put(Integer.valueOf(Integer.parseInt(args.phoneId)), false);
                        Log.d(TAG, "Sim absent but the calculated VoLTE is false, so no need broadcast");
                    }
                }
                boolean isForceNotify = itemId2 == 0 && SystemProperties.getInt(PROPERTY_IMSCONFIG_FORCE_NOTIFY, 0) == 1;
                if (DEBUG) {
                    Log.d(TAG, "isForceNotify " + isForceNotify);
                }
                if (simState.equals("READY") || simState.equals("IMSI") || simState.equals("LOADED")) {
                    isSimStateAllow = true;
                } else {
                    isSimStateAllow = false;
                }
                if (isSimStateAllow || ((isECCBroadcastFlag && isFeatureEnabled) || isForceNotify)) {
                    Intent intent2 = new Intent(ImsConfigContract.ACTION_IMS_FEATURE_CHANGED);
                    intent2.putExtra("phone_id", Integer.parseInt(args.phoneId));
                    intent2.putExtra(ImsConfigContract.EXTRA_CHANGED_ITEM, itemId2);
                    intent2.putExtra("value", value2);
                    intent2.addFlags(1);
                    getContext().sendBroadcast(intent2);
                    getContext().getContentResolver().notifyChange(uri, null);
                    ECCAllowBroadcast.put(Integer.valueOf(Integer.parseInt(args.phoneId)), false);
                    if (DEBUG) {
                        Log.d(TAG, "Update uri " + uri + " on phone " + args.phoneId + " value: " + value2);
                        return;
                    }
                    return;
                }
                return;
            case 5:
                return;
            default:
                Log.e(TAG, "Invalid table " + args.table + " with uri " + uri);
                return;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class Arguments {
        private static final int INDEX_ITEM_ID = 2;
        private static final int INDEX_PARAM_ID = 3;
        private static final int INDEX_PHONE_ID = 1;
        private static final int INDEX_TABLE = 0;
        public String itemId;
        public String param;
        public String phoneId;
        public String selection;
        public String[] selectionArgs;
        public String table;

        Arguments(int opMode, Uri uri, ContentValues cv, String selection, String[] selectionArgs) {
            this.table = null;
            this.phoneId = null;
            this.itemId = null;
            this.param = null;
            this.selection = null;
            this.selectionArgs = null;
            enforceValidUri(uri);
            this.table = getValidTable(uri);
            parseContentValue(uri, this.table, opMode, cv);
            enforceOpMode(opMode, uri, cv, selection, selectionArgs);
            int urlArgSize = uri.getPathSegments().size();
            char c = 65535;
            switch (urlArgSize) {
                case 1:
                    this.selection = selection;
                    this.selectionArgs = selectionArgs;
                    if (opMode == 2 || opMode == 1) {
                        this.phoneId = cv.getAsString("phone_id");
                        return;
                    }
                    return;
                case 2:
                    this.phoneId = uri.getPathSegments().get(1);
                    String[] args = {this.phoneId};
                    this.selection = "phone_id = ?";
                    if (!TextUtils.isEmpty(selection)) {
                        this.selection += " AND " + selection;
                        this.selectionArgs = join(args, selectionArgs);
                        return;
                    }
                    this.selectionArgs = args;
                    return;
                case 3:
                    this.phoneId = uri.getPathSegments().get(1);
                    this.itemId = uri.getPathSegments().get(2);
                    String[] args2 = new String[2];
                    args2[0] = this.phoneId;
                    String str = this.table;
                    switch (str.hashCode()) {
                        case -2133078972:
                            if (str.equals(ImsConfigContract.TABLE_CONFIG_SETTING)) {
                                c = 0;
                                break;
                            }
                            break;
                        case -321961281:
                            if (str.equals(ImsConfigContract.TABLE_RESOURCE)) {
                                c = 4;
                                break;
                            }
                            break;
                        case 45084740:
                            if (str.equals(ImsConfigContract.TABLE_PROVISION)) {
                                c = 2;
                                break;
                            }
                            break;
                        case 1412604243:
                            if (str.equals(ImsConfigContract.TABLE_MASTER)) {
                                c = 3;
                                break;
                            }
                            break;
                        case 1545420144:
                            if (str.equals(ImsConfigContract.TABLE_DEFAULT)) {
                                c = 1;
                                break;
                            }
                            break;
                    }
                    switch (c) {
                        case 0:
                            args2[1] = this.itemId;
                            this.selection = "phone_id = ? AND setting_id = ?";
                            if (!TextUtils.isEmpty(selection)) {
                                this.selection += " AND " + selection;
                                this.selectionArgs = join(args2, selectionArgs);
                                return;
                            }
                            this.selectionArgs = args2;
                            return;
                        case 1:
                        case 2:
                        case 3:
                            args2[1] = String.valueOf(ImsConfigContract.configNameToId(this.itemId));
                            this.selection = "phone_id = ? AND config_id = ?";
                            if (!TextUtils.isEmpty(selection)) {
                                this.selection += " AND " + selection;
                                this.selectionArgs = join(args2, selectionArgs);
                                return;
                            }
                            this.selectionArgs = args2;
                            return;
                        case 4:
                            this.selection = "phone_id=? AND feature_id=?";
                            args2[1] = this.itemId;
                            if (!TextUtils.isEmpty(selection)) {
                                this.selection += " AND " + selection;
                                this.selectionArgs = join(args2, selectionArgs);
                                return;
                            }
                            this.selectionArgs = args2;
                            return;
                        default:
                            return;
                    }
                case 4:
                    this.phoneId = uri.getPathSegments().get(1);
                    this.itemId = uri.getPathSegments().get(2);
                    this.param = uri.getPathSegments().get(3);
                    String[] args3 = {this.phoneId, this.itemId, this.param};
                    String str2 = this.table;
                    if (str2.hashCode() == -978591195 && str2.equals(ImsConfigContract.TABLE_FEATURE)) {
                        c = 0;
                    }
                    if (c == 0) {
                        this.selection = "phone_id = ? AND feature_id = ? AND network_id = ?";
                        if (!TextUtils.isEmpty(selection)) {
                            this.selection += " AND " + selection;
                            this.selectionArgs = join(args3, selectionArgs);
                            return;
                        }
                        this.selectionArgs = args3;
                        return;
                    }
                    throw new IllegalArgumentException("Invalid URI: " + uri);
                default:
                    throw new IllegalArgumentException("Invalid URI: " + uri);
            }
        }

        Arguments(int opMode, Uri uri, String selection, String[] selectionArgs) {
            this(opMode, uri, null, selection, selectionArgs);
        }

        Arguments(int opMode, ContentValues cv, Uri uri) {
            this(opMode, uri, cv, null, null);
        }

        Arguments(int opMode, Uri uri) {
            this(opMode, uri, null, null, null);
        }

        private static String[] join(String[]... arrays) {
            List<String> output = new ArrayList<>();
            for (String[] array : arrays) {
                output.addAll(Arrays.asList(array));
            }
            return (String[]) output.toArray(new String[output.size()]);
        }

        private String getValidTable(Uri uri) {
            String table = uri.getPathSegments().get(0);
            enforceValidTable(table);
            return table;
        }

        private static void enforceOpMode(int opMode, Uri uri, ContentValues cv, String selection, String[] selectionArgs) {
        }

        private static void enforceValidTable(String table) {
            if (!ImsConfigContract.Validator.isValidTable(table)) {
                throw new IllegalArgumentException("Bad table: " + table);
            }
        }

        private static void enforceValidUri(Uri uri) {
            if (uri == null) {
                throw new IllegalArgumentException("Bad request: null url");
            } else if (uri.getPathSegments().size() == 0) {
                throw new IllegalArgumentException("Operate on entire database is not supported");
            }
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:16:0x0042, code lost:
            if (r9.equals(com.mediatek.ims.config.ImsConfigContract.TABLE_PROVISION) != false) goto L_0x005a;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        private void parseContentValue(android.net.Uri r8, java.lang.String r9, int r10, android.content.ContentValues r11) {
            /*
                Method dump skipped, instructions count: 576
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: com.mediatek.ims.config.internal.ImsConfigProvider.Arguments.parseContentValue(android.net.Uri, java.lang.String, int, android.content.ContentValues):void");
        }
    }

    /* loaded from: classes.dex */
    private static class OperationMode {
        static final int MODE_DELETE = 3;
        static final int MODE_INSERT = 1;
        static final int MODE_QUERY = 0;
        static final int MODE_UPDATE = 2;

        private OperationMode() {
        }
    }

    private void onDiskFull(SQLiteFullException e) {
        Log.e(TAG, "Disk full, all write operations will be ignored", e);
    }
}
