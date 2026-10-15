package com.vungle.warren.persistence;

import android.annotation.SuppressLint;
import android.content.ContentValues;
import android.content.Context;
import android.content.ContextWrapper;
import android.database.Cursor;
import android.database.DatabaseErrorHandler;
import android.database.SQLException;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.vungle.warren.VungleLogger;
import com.vungle.warren.utility.FileUtility;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes2.dex */
public class DatabaseHelper extends SQLiteOpenHelper {
    public static final String DB_NAME = "vungle_db";
    public static final String TAG = DatabaseHelper.class.getSimpleName();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final DatabaseFactory f28247o;

    public static class DBException extends Exception {
        public DBException(String str) {
            super(str);
        }
    }

    public interface DatabaseFactory {
        void create(SQLiteDatabase sQLiteDatabase);

        void deleteData(SQLiteDatabase sQLiteDatabase);

        void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11);

        void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11);
    }

    private static class NoBackupDatabaseWrapperContext extends ContextWrapper {
        public NoBackupDatabaseWrapperContext(Context context) {
            super(context);
        }

        @SuppressLint({"NewApi"})
        private int a(int i10) {
            return ((i10 & 8) != 0 ? 536870912 : 0) | 268435456 | ((i10 & 16) != 0 ? 16 : 0);
        }

        @Override // android.content.ContextWrapper, android.content.Context
        @SuppressLint({"NewApi"})
        public File getDatabasePath(String str) {
            File databasePath = super.getDatabasePath(str);
            File file = new File(getApplicationContext().getNoBackupFilesDir(), str);
            try {
                FileUtility.delete(new File(databasePath.getPath()));
                FileUtility.delete(new File(databasePath.getPath() + "-journal"));
            } catch (IOException unused) {
                VungleLogger.error(true, DatabaseHelper.TAG, "DatabaseHelper", "Failed to delete old db/-journal");
            }
            return file;
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public SQLiteDatabase openOrCreateDatabase(String str, int i10, SQLiteDatabase.CursorFactory cursorFactory) {
            return SQLiteDatabase.openDatabase(getDatabasePath(str).getPath(), cursorFactory, a(i10));
        }

        @Override // android.content.ContextWrapper, android.content.Context
        public SQLiteDatabase openOrCreateDatabase(String str, int i10, SQLiteDatabase.CursorFactory cursorFactory, DatabaseErrorHandler databaseErrorHandler) {
            return SQLiteDatabase.openDatabase(getDatabasePath(str).getPath(), cursorFactory, a(i10), databaseErrorHandler);
        }
    }

    public DatabaseHelper(Context context, int i10, DatabaseFactory databaseFactory) {
        super(new NoBackupDatabaseWrapperContext(context.getApplicationContext()), DB_NAME, (SQLiteDatabase.CursorFactory) null, i10);
        this.f28247o = databaseFactory;
    }

    private synchronized SQLiteDatabase b() {
        return getWritableDatabase();
    }

    public void delete(Query query) throws DBException {
        try {
            b().delete(query.f28258a, query.f28260c, query.f28261d);
        } catch (SQLException e10) {
            throw new DBException(e10.getMessage());
        }
    }

    public synchronized void dropDb() {
        this.f28247o.deleteData(b());
        close();
        onCreate(b());
    }

    public void execSQL(String str) throws DBException {
        try {
            b().execSQL(str);
        } catch (SQLException e10) {
            throw new DBException(e10.getMessage());
        }
    }

    public void init() {
        b();
    }

    public long insertWithConflict(String str, ContentValues contentValues, int i10) throws DBException {
        try {
            return b().insertWithOnConflict(str, null, contentValues, i10);
        } catch (SQLException e10) {
            throw new DBException(e10.getMessage());
        }
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public synchronized void onCreate(SQLiteDatabase sQLiteDatabase) {
        this.f28247o.create(sQLiteDatabase);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        this.f28247o.onDowngrade(sQLiteDatabase, i10, i11);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        this.f28247o.onUpgrade(sQLiteDatabase, i10, i11);
    }

    public Cursor query(Query query) {
        return b().query(query.f28258a, query.f28259b, query.f28260c, query.f28261d, query.f28262e, query.f28263f, query.f28264g, query.f28265h);
    }

    public Cursor queryRaw(String str, String[] strArr) {
        return b().rawQuery(str, strArr);
    }

    public long update(Query query, ContentValues contentValues) throws DBException {
        try {
            return b().update(query.f28258a, contentValues, query.f28260c, query.f28261d);
        } catch (SQLException e10) {
            throw new DBException(e10.getMessage());
        }
    }
}
