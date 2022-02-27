package com.mediatek.ims.config;

import android.content.Context;
import android.database.ContentObserver;
import android.net.Uri;
import android.os.Handler;
import android.os.HandlerThread;
import java.util.HashSet;
import java.util.List;
/* loaded from: classes.dex */
public abstract class Register {
    protected String argType;
    protected IArgsChangeListener mArgsListener;
    protected ArgsObserver mArgsObserver;
    protected Context mContext;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    protected int mPhoneId;
    protected HashSet<Integer> mRegArgs;

    /* loaded from: classes.dex */
    public interface IArgsChangeListener {
        void onChange(int i);
    }

    private Register() {
        this.argType = null;
        this.mRegArgs = new HashSet<>();
        this.mContext = null;
        this.mArgsListener = null;
        this.mArgsObserver = null;
        this.mHandler = null;
        this.mHandlerThread = null;
    }

    public Register(Context context, int phoneId) {
        this(context, phoneId, null);
    }

    public Register(Context context, int phoneId, Handler handler) {
        this.argType = null;
        this.mRegArgs = new HashSet<>();
        this.mContext = null;
        this.mArgsListener = null;
        this.mArgsObserver = null;
        this.mHandler = null;
        this.mHandlerThread = null;
        this.mContext = context;
        this.mPhoneId = phoneId;
        if (context == null) {
            throw new IllegalArgumentException("Null context!");
        } else if (handler != null) {
            this.mHandler = handler;
        } else {
            this.mHandlerThread = new HandlerThread("Ims" + this.argType + "Reg");
            this.mHandlerThread.start();
            this.mHandler = new Handler(this.mHandlerThread.getLooper());
        }
    }

    public Register addArg(int argId) throws IllegalArgumentException {
        this.mRegArgs.add(Integer.valueOf(argId));
        return this;
    }

    public void register(IArgsChangeListener listener) throws IllegalArgumentException {
        this.mArgsListener = listener;
        if (this.mRegArgs.isEmpty()) {
            throw new IllegalArgumentException("Empty " + this.argType + " for register");
        } else if (listener != null) {
            this.mArgsObserver = new ArgsObserver(this.mArgsListener);
        } else {
            throw new IllegalArgumentException("Null listener for " + this.argType + " register");
        }
    }

    public void unregister() {
        if (this.mArgsObserver != null) {
            this.mContext.getContentResolver().unregisterContentObserver(this.mArgsObserver);
        }
    }

    /* loaded from: classes.dex */
    public class ArgsObserver extends ContentObserver {
        private IArgsChangeListener mArgsObserver;

        public ArgsObserver(IArgsChangeListener listener) {
            super(Register.this.mHandler);
            this.mArgsObserver = null;
            this.mArgsObserver = listener;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange) {
            onChange(selfChange, null);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean selfChange, Uri uri) {
            if (uri != null) {
                String str = Register.this.argType;
                char c = 65535;
                int hashCode = str.hashCode();
                if (hashCode != -1354792126) {
                    if (hashCode == -979207434 && str.equals("feature")) {
                        c = 1;
                    }
                } else if (str.equals("config")) {
                    c = 0;
                }
                switch (c) {
                    case 0:
                        String configName = uri.getLastPathSegment();
                        int argId = ImsConfigContract.configNameToId(configName);
                        this.mArgsObserver.onChange(argId);
                        return;
                    case 1:
                        List<String> list = uri.getPathSegments();
                        int argId2 = Integer.parseInt(list.get(2));
                        this.mArgsObserver.onChange(argId2);
                        return;
                    default:
                        throw new RuntimeException("Invalid Register class: " + Register.this.argType);
                }
            }
        }
    }
}
