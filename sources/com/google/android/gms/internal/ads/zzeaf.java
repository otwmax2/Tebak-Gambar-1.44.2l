package com.google.android.gms.internal.ads;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Callable;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeaf extends SQLiteOpenHelper {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f16070o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzfuu f16071p;

    public zzeaf(Context context, zzfuu zzfuuVar) {
        super(context, "AdMobOfflineBufferedPings.db", (SQLiteDatabase.CursorFactory) null, ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.J7)).intValue());
        this.f16070o = context;
        this.f16071p = zzfuuVar;
    }

    static /* synthetic */ Void c(zzbzf zzbzfVar, SQLiteDatabase sQLiteDatabase) throws Exception {
        k(sQLiteDatabase, zzbzfVar);
        return null;
    }

    static /* synthetic */ void g(SQLiteDatabase sQLiteDatabase, String str, zzbzf zzbzfVar) {
        ContentValues contentValues = new ContentValues();
        contentValues.put("event_state", (Integer) 1);
        sQLiteDatabase.update("offline_buffered_pings", contentValues, "gws_query_id = ?", new String[]{str});
        k(sQLiteDatabase, zzbzfVar);
    }

    static final void j(SQLiteDatabase sQLiteDatabase, String str) {
        sQLiteDatabase.delete("offline_buffered_pings", "gws_query_id = ? AND event_state = ?", new String[]{str, Integer.toString(0)});
    }

    private static void k(SQLiteDatabase sQLiteDatabase, zzbzf zzbzfVar) {
        sQLiteDatabase.beginTransaction();
        try {
            Cursor cursorQuery = sQLiteDatabase.query("offline_buffered_pings", new String[]{"url"}, "event_state = 1", null, null, null, "timestamp ASC", null);
            int count = cursorQuery.getCount();
            String[] strArr = new String[count];
            int i10 = 0;
            while (cursorQuery.moveToNext()) {
                int columnIndex = cursorQuery.getColumnIndex("url");
                if (columnIndex != -1) {
                    strArr[i10] = cursorQuery.getString(columnIndex);
                }
                i10++;
            }
            cursorQuery.close();
            sQLiteDatabase.delete("offline_buffered_pings", "event_state = ?", new String[]{Integer.toString(1)});
            sQLiteDatabase.setTransactionSuccessful();
            for (int i11 = 0; i11 < count; i11++) {
                zzbzfVar.o(strArr[i11]);
            }
        } finally {
            sQLiteDatabase.endTransaction();
        }
    }

    final /* synthetic */ Void b(zzeah zzeahVar, SQLiteDatabase sQLiteDatabase) throws Exception {
        ContentValues contentValues = new ContentValues();
        contentValues.put("timestamp", Long.valueOf(zzeahVar.f16074a));
        contentValues.put("gws_query_id", zzeahVar.f16075b);
        contentValues.put("url", zzeahVar.f16076c);
        contentValues.put("event_state", Integer.valueOf(zzeahVar.f16077d - 1));
        sQLiteDatabase.insert("offline_buffered_pings", null, contentValues);
        com.google.android.gms.ads.internal.zzt.r();
        com.google.android.gms.ads.internal.util.zzbr zzbrVarU = com.google.android.gms.ads.internal.util.zzs.U(this.f16070o);
        if (zzbrVarU != null) {
            try {
                zzbrVarU.zze(ObjectWrapper.Q4(this.f16070o));
            } catch (RemoteException e10) {
                com.google.android.gms.ads.internal.util.zze.l("Failed to schedule offline ping sender.", e10);
            }
        }
        return null;
    }

    public final void d(final String str) {
        f(new zzfcd() { // from class: com.google.android.gms.internal.ads.zzeac
            @Override // com.google.android.gms.internal.ads.zzfcd
            public final Object a(Object obj) {
                zzeaf.j((SQLiteDatabase) obj, str);
                return null;
            }
        });
    }

    public final void e(final zzeah zzeahVar) {
        f(new zzfcd() { // from class: com.google.android.gms.internal.ads.zzeaa
            @Override // com.google.android.gms.internal.ads.zzfcd
            public final Object a(Object obj) throws Exception {
                this.f16061a.b(zzeahVar, (SQLiteDatabase) obj);
                return null;
            }
        });
    }

    final void f(zzfcd zzfcdVar) {
        zzfuj.q(this.f16071p.e(new Callable() { // from class: com.google.android.gms.internal.ads.zzdzy
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f16052a.getWritableDatabase();
            }
        }), new zzeae(this, zzfcdVar), this.f16071p);
    }

    final void h(final SQLiteDatabase sQLiteDatabase, final zzbzf zzbzfVar, final String str) {
        this.f16071p.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdzz
            @Override // java.lang.Runnable
            public final void run() {
                zzeaf.g(sQLiteDatabase, str, zzbzfVar);
            }
        });
    }

    public final void i(final zzbzf zzbzfVar, final String str) {
        f(new zzfcd() { // from class: com.google.android.gms.internal.ads.zzead
            @Override // com.google.android.gms.internal.ads.zzfcd
            public final Object a(Object obj) {
                this.f16066a.h((SQLiteDatabase) obj, zzbzfVar, str);
                return null;
            }
        });
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL("CREATE TABLE offline_buffered_pings (timestamp INTEGER PRIMARY_KEY, gws_query_id TEXT, url TEXT, event_state INTEGER)");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onDowngrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public final void onUpgrade(SQLiteDatabase sQLiteDatabase, int i10, int i11) {
        sQLiteDatabase.execSQL("DROP TABLE IF EXISTS offline_buffered_pings");
    }
}
