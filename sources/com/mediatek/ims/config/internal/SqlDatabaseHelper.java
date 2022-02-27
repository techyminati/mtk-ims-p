package com.mediatek.ims.config.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.util.Log;
/* loaded from: classes.dex */
public class SqlDatabaseHelper extends SQLiteOpenHelper {
    static final String DATABASE_NAME = "imsconfig.db";
    private static final int DATABASE_VERSION = 2;
    private static final String TAG = "ImsConfigSqlDbHelper";
    private Context mContext;

    public SqlDatabaseHelper(Context context) {
        super(context, DATABASE_NAME, (SQLiteDatabase.CursorFactory) null, 2);
        this.mContext = context;
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase db) {
        createConfigSettingTable(db);
        createFeatureTable(db);
        createProvisionTable(db);
        createMasterTable(db);
        createDefaultTable(db);
        createResourceTable(db);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase db, int oldVersion, int newVersion) {
        Log.d(TAG, "Upgrading database from version " + oldVersion + " to " + newVersion);
        dropAllTables(db);
        onCreate(db);
    }

    private void createConfigSettingTable(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE tb_config_setting (_id INTEGER PRIMARY KEY AUTOINCREMENT,phone_id INTEGER NOT NULL,setting_id INTEGER NOT NULL,value TEXT NOT NULL,CONSTRAINT unique_id UNIQUE (phone_id, setting_id));");
    }

    private void createFeatureTable(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE tb_feature (_id INTEGER PRIMARY KEY AUTOINCREMENT,phone_id INTEGER NOT NULL,feature_id INTEGER NOT NULL,network_id INTEGER NOT NULL,value INTEGER NOT NULL,CONSTRAINT unique_id UNIQUE (phone_id, feature_id, network_id));");
    }

    private void createDefaultTable(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE tb_default (_id INTEGER PRIMARY KEY AUTOINCREMENT,phone_id INTEGER NOT NULL,config_id INTEGER NOT NULL,mimetype_id INTEGER NOT NULL,unit_id INTEGER,data TEXT NOT NULL,CONSTRAINT unique_id UNIQUE (phone_id, config_id));");
    }

    private void createProvisionTable(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE tb_provision (_id INTEGER PRIMARY KEY AUTOINCREMENT,phone_id INTEGER NOT NULL,config_id INTEGER NOT NULL,mimetype_id INTEGER NOT NULL,data TEXT NOT NULL,datetime DATETIME DEFAULT CURRENT_TIMESTAMP,CONSTRAINT unique_id UNIQUE (phone_id, config_id));");
    }

    private void createMasterTable(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE tb_master (_id INTEGER PRIMARY KEY AUTOINCREMENT,phone_id INTEGER NOT NULL,config_id INTEGER NOT NULL,mimetype_id INTEGER NOT NULL,data TEXT,CONSTRAINT unique_id UNIQUE (phone_id, config_id));");
    }

    private void createResourceTable(SQLiteDatabase db) {
        db.execSQL("CREATE TABLE tb_resource (_id INTEGER PRIMARY KEY AUTOINCREMENT,phone_id INTEGER NOT NULL,feature_id INTEGER NOT NULL,value INTEGER NOT NULL,CONSTRAINT unique_id UNIQUE (phone_id, feature_id));");
    }

    private void dropAllTables(SQLiteDatabase db) {
        db.execSQL("DROP TABLE IF EXISTS tb_config_setting");
        db.execSQL("DROP TABLE IF EXISTS tb_feature");
        db.execSQL("DROP TABLE IF EXISTS tb_default");
        db.execSQL("DROP TABLE IF EXISTS tb_provision");
        db.execSQL("DROP TABLE IF EXISTS tb_master");
        db.execSQL("DROP TABLE IF EXISTS tb_resource");
    }
}
