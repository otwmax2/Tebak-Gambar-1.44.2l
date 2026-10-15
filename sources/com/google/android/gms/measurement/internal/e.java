package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzgb;
import com.google.android.gms.internal.measurement.zzgc;
import com.google.android.gms.internal.measurement.zznz;
import com.google.android.gms.internal.measurement.zzpp;
import com.vungle.mediation.BuildConfig;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class e extends r3 {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String[] f24043f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String[] f24044g = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String[] f24045h = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;"};

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static final String[] f24046i = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String[] f24047j = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String[] f24048k = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String[] f24049l = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String[] f24050m = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final d f24051d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final o3 f24052e;

    e(zzli zzliVar) {
        super(zzliVar);
        this.f24052e = new o3(this.f24394a.x());
        this.f24394a.v();
        this.f24051d = new d(this, this.f24394a.N0(), "google_app_measurement.db");
    }

    static final void F(ContentValues contentValues, String str, Object obj) {
        Preconditions.g(SDKConstants.PARAM_VALUE);
        Preconditions.k(obj);
        if (obj instanceof String) {
            contentValues.put(SDKConstants.PARAM_VALUE, (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put(SDKConstants.PARAM_VALUE, (Long) obj);
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put(SDKConstants.PARAM_VALUE, (Double) obj);
        }
    }

    private final long G(String str, String[] strArr) {
        Cursor cursor = null;
        try {
            try {
                Cursor cursorRawQuery = N().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j10 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j10;
            } catch (SQLiteException e10) {
                this.f24394a.U().m().c("Database error", str, e10);
                throw e10;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    private final long I(String str, String[] strArr, long j10) {
        Cursor cursorRawQuery = null;
        try {
            try {
                cursorRawQuery = N().rawQuery(str, strArr);
                if (!cursorRawQuery.moveToFirst()) {
                    cursorRawQuery.close();
                    return j10;
                }
                long j11 = cursorRawQuery.getLong(0);
                cursorRawQuery.close();
                return j11;
            } catch (SQLiteException e10) {
                this.f24394a.U().m().c("Database error", str, e10);
                throw e10;
            }
        } catch (Throwable th) {
            if (cursorRawQuery != null) {
                cursorRawQuery.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Not initialized variable reg: 4, insn: 0x0229: MOVE (r3 I:??[OBJECT, ARRAY]) = (r4 I:??[OBJECT, ARRAY]), block:B:101:0x0229 */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r4v3, types: [boolean] */
    public final void E(String str, long j10, long j11, z3 z3Var) throws Throwable {
        ?? IsEmpty;
        Cursor cursor;
        Cursor cursorRawQuery;
        String string;
        String str2;
        String[] strArr;
        Preconditions.k(z3Var);
        c();
        d();
        Cursor cursor2 = null;
        string = null;
        string = null;
        String string2 = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseN = N();
                IsEmpty = TextUtils.isEmpty(null);
                String str3 = BuildConfig.FLAVOR;
                try {
                    if (IsEmpty != 0) {
                        String[] strArr2 = j11 != -1 ? new String[]{String.valueOf(j11), String.valueOf(j10)} : new String[]{String.valueOf(j10)};
                        if (j11 != -1) {
                            str3 = "rowid <= ? and ";
                        }
                        cursorRawQuery = sQLiteDatabaseN.rawQuery("select app_id, metadata_fingerprint from raw_events where " + str3 + "app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;", strArr2);
                        if (!cursorRawQuery.moveToFirst()) {
                            cursorRawQuery.close();
                            return;
                        } else {
                            string2 = cursorRawQuery.getString(0);
                            string = cursorRawQuery.getString(1);
                            cursorRawQuery.close();
                        }
                    } else {
                        String[] strArr3 = j11 != -1 ? new String[]{null, String.valueOf(j11)} : new String[]{null};
                        if (j11 != -1) {
                            str3 = " and rowid <= ?";
                        }
                        cursorRawQuery = sQLiteDatabaseN.rawQuery("select metadata_fingerprint from raw_events where app_id = ?" + str3 + " order by rowid limit 1;", strArr3);
                        if (!cursorRawQuery.moveToFirst()) {
                            cursorRawQuery.close();
                            return;
                        } else {
                            string = cursorRawQuery.getString(0);
                            cursorRawQuery.close();
                        }
                    }
                    Cursor cursor3 = cursorRawQuery;
                    String str4 = string;
                    try {
                        Cursor cursorQuery = sQLiteDatabaseN.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{string2, str4}, null, null, "rowid", "2");
                        try {
                            if (!cursorQuery.moveToFirst()) {
                                this.f24394a.U().m().b("Raw event metadata record is missing. appId", zzey.v(string2));
                                cursorQuery.close();
                                return;
                            }
                            try {
                                try {
                                    zzgc zzgcVar = (zzgc) ((zzgb) zzlk.z(zzgc.N1(), cursorQuery.getBlob(0))).o();
                                    if (cursorQuery.moveToNext()) {
                                        this.f24394a.U().r().b("Get multiple raw event metadata records, expected one. appId", zzey.v(string2));
                                    }
                                    cursorQuery.close();
                                    Preconditions.k(zzgcVar);
                                    z3Var.f24410a = zzgcVar;
                                    if (j11 != -1) {
                                        str2 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                                        strArr = new String[]{string2, str4, String.valueOf(j11)};
                                    } else {
                                        str2 = "app_id = ? and metadata_fingerprint = ?";
                                        strArr = new String[]{string2, str4};
                                    }
                                    Cursor cursorQuery2 = sQLiteDatabaseN.query("raw_events", new String[]{"rowid", "name", "timestamp", "data"}, str2, strArr, null, null, "rowid", null);
                                    if (!cursorQuery2.moveToFirst()) {
                                        this.f24394a.U().r().b("Raw event data disappeared while in transaction. appId", zzey.v(string2));
                                        cursorQuery2.close();
                                        return;
                                    }
                                    do {
                                        long j12 = cursorQuery2.getLong(0);
                                        try {
                                            com.google.android.gms.internal.measurement.zzfr zzfrVar = (com.google.android.gms.internal.measurement.zzfr) zzlk.z(com.google.android.gms.internal.measurement.zzfs.y(), cursorQuery2.getBlob(3));
                                            zzfrVar.z(cursorQuery2.getString(1));
                                            zzfrVar.D(cursorQuery2.getLong(2));
                                            if (!z3Var.a(j12, (com.google.android.gms.internal.measurement.zzfs) zzfrVar.o())) {
                                                cursorQuery2.close();
                                                return;
                                            }
                                        } catch (IOException e10) {
                                            this.f24394a.U().m().c("Data loss. Failed to merge raw event. appId", zzey.v(string2), e10);
                                        }
                                    } while (cursorQuery2.moveToNext());
                                    cursorQuery2.close();
                                } catch (IOException e11) {
                                    this.f24394a.U().m().c("Data loss. Failed to merge raw event metadata. appId", zzey.v(string2), e11);
                                    cursorQuery.close();
                                }
                            } catch (SQLiteException e12) {
                                e = e12;
                                IsEmpty = cursorQuery;
                                this.f24394a.U().m().c("Data loss. Error selecting raw event. appId", zzey.v(string2), e);
                                if (IsEmpty != 0) {
                                    IsEmpty.close();
                                }
                            } catch (Throwable th) {
                                th = th;
                                cursor2 = cursorQuery;
                                if (cursor2 != null) {
                                    cursor2.close();
                                }
                                throw th;
                            }
                        } catch (SQLiteException e13) {
                            e = e13;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    } catch (SQLiteException e14) {
                        e = e14;
                        IsEmpty = cursor3;
                    } catch (Throwable th3) {
                        th = th3;
                        cursor2 = cursor3;
                    }
                } catch (SQLiteException e15) {
                    e = e15;
                }
            } catch (Throwable th4) {
                th = th4;
                cursor2 = cursor;
            }
        } catch (SQLiteException e16) {
            e = e16;
            IsEmpty = 0;
        } catch (Throwable th5) {
            th = th5;
        }
    }

    public final int H(String str, String str2) {
        Preconditions.g(str);
        Preconditions.g(str2);
        c();
        d();
        try {
            return N().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e10) {
            this.f24394a.U().m().d("Error deleting conditional property", zzey.v(str), this.f24394a.A().f(str2), e10);
            return 0;
        }
    }

    @VisibleForTesting
    protected final long J(String str, String str2) {
        long jI;
        Preconditions.g(str);
        Preconditions.g("first_open_count");
        c();
        d();
        SQLiteDatabase sQLiteDatabaseN = N();
        sQLiteDatabaseN.beginTransaction();
        long j10 = 0;
        try {
            try {
                jI = I("select first_open_count from app2 where app_id=?", new String[]{str}, -1L);
            } catch (SQLiteException e10) {
                e = e10;
            }
            if (jI == -1) {
                ContentValues contentValues = new ContentValues();
                contentValues.put("app_id", str);
                contentValues.put("first_open_count", (Integer) 0);
                contentValues.put("previous_install_count", (Integer) 0);
                if (sQLiteDatabaseN.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                    this.f24394a.U().m().c("Failed to insert column (got -1). appId", zzey.v(str), "first_open_count");
                    return -1L;
                }
                jI = 0;
                this.f24394a.U().m().d("Error inserting column. appId", zzey.v(str), "first_open_count", e);
                sQLiteDatabaseN.endTransaction();
                return j10;
            }
            try {
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("app_id", str);
                contentValues2.put("first_open_count", Long.valueOf(1 + jI));
                if (sQLiteDatabaseN.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
                    this.f24394a.U().m().c("Failed to update column (got 0). appId", zzey.v(str), "first_open_count");
                    return -1L;
                }
                sQLiteDatabaseN.setTransactionSuccessful();
                return jI;
            } catch (SQLiteException e11) {
                e = e11;
                j10 = jI;
            }
        } finally {
            sQLiteDatabaseN.endTransaction();
        }
    }

    public final long K() {
        return I("select max(bundle_end_timestamp) from queue", null, 0L);
    }

    public final long L() {
        return I("select max(timestamp) from raw_events", null, 0L);
    }

    public final long M(String str) {
        Preconditions.g(str);
        return I("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    @VisibleForTesting
    final SQLiteDatabase N() {
        c();
        try {
            return this.f24051d.getWritableDatabase();
        } catch (SQLiteException e10) {
            this.f24394a.U().r().b("Error opening database", e10);
            throw e10;
        }
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x00d6: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:44:0x00d6 */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d9  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final android.os.Bundle O(java.lang.String r8) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 223
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e.O(java.lang.String):android.os.Bundle");
    }

    public final c0 P(String str) {
        Cursor cursorQuery;
        Preconditions.g(str);
        c();
        d();
        Cursor cursor = null;
        try {
            boolean z10 = true;
            cursorQuery = N().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time", "app_version_int", "firebase_instance_id", "daily_error_events_count", "daily_realtime_events_count", "health_monitor_sample", "android_id", "adid_reporting_enabled", "admob_app_id", "dynamite_version", "safelisted_events", "ga_app_id", "session_stitching_token"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (!cursorQuery.moveToFirst()) {
                        cursorQuery.close();
                        return null;
                    }
                    c0 c0Var = new c0(this.f24263b.a0(), str);
                    c0Var.i(cursorQuery.getString(0));
                    c0Var.x(cursorQuery.getString(1));
                    c0Var.G(cursorQuery.getString(2));
                    c0Var.C(cursorQuery.getLong(3));
                    c0Var.D(cursorQuery.getLong(4));
                    c0Var.B(cursorQuery.getLong(5));
                    c0Var.k(cursorQuery.getString(6));
                    c0Var.j(cursorQuery.getString(7));
                    c0Var.y(cursorQuery.getLong(8));
                    c0Var.t(cursorQuery.getLong(9));
                    c0Var.E(cursorQuery.isNull(10) || cursorQuery.getInt(10) != 0);
                    c0Var.s(cursorQuery.getLong(11));
                    c0Var.q(cursorQuery.getLong(12));
                    c0Var.p(cursorQuery.getLong(13));
                    c0Var.n(cursorQuery.getLong(14));
                    c0Var.m(cursorQuery.getLong(15));
                    c0Var.v(cursorQuery.getLong(16));
                    c0Var.l(cursorQuery.isNull(17) ? -2147483648L : cursorQuery.getInt(17));
                    c0Var.w(cursorQuery.getString(18));
                    c0Var.o(cursorQuery.getLong(19));
                    c0Var.r(cursorQuery.getLong(20));
                    c0Var.z(cursorQuery.getString(21));
                    long j10 = 0;
                    if (!this.f24394a.v().y(null, zzel.f24576j0)) {
                        c0Var.h(cursorQuery.isNull(22) ? 0L : cursorQuery.getLong(22));
                    }
                    if (!cursorQuery.isNull(23) && cursorQuery.getInt(23) == 0) {
                        z10 = false;
                    }
                    c0Var.g(z10);
                    c0Var.f(cursorQuery.getString(24));
                    if (!cursorQuery.isNull(25)) {
                        j10 = cursorQuery.getLong(25);
                    }
                    c0Var.u(j10);
                    if (!cursorQuery.isNull(26)) {
                        c0Var.H(Arrays.asList(cursorQuery.getString(26).split(",", -1)));
                    }
                    zzpp.b();
                    if (this.f24394a.v().y(null, zzel.J0)) {
                        c0Var.I(cursorQuery.getString(28));
                    }
                    c0Var.d();
                    if (cursorQuery.moveToNext()) {
                        this.f24394a.U().m().b("Got multiple records for app, expected one. appId", zzey.v(str));
                    }
                    cursorQuery.close();
                    return c0Var;
                } catch (SQLiteException e10) {
                    e = e10;
                    this.f24394a.U().m().c("Error querying app. appId", zzey.v(str), e);
                    if (cursorQuery != null) {
                        cursorQuery.close();
                    }
                    return null;
                }
            } catch (Throwable th) {
                th = th;
                cursor = cursorQuery;
            }
            th = th;
            cursor = cursorQuery;
        } catch (SQLiteException e11) {
            e = e11;
            cursorQuery = null;
        } catch (Throwable th2) {
            th = th2;
        }
        if (cursor != null) {
            cursor.close();
        }
        throw th;
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x0123: MOVE (r9 I:??[OBJECT, ARRAY]) = (r10 I:??[OBJECT, ARRAY]), block:B:31:0x0123 */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0126  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.zzab Q(java.lang.String r31, java.lang.String r32) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 298
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e.Q(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.zzab");
    }

    public final zzaj R(long j10, String str, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        return S(j10, str, 1L, false, false, z12, false, z14);
    }

    public final zzaj S(long j10, String str, long j11, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        Preconditions.g(str);
        c();
        d();
        String[] strArr = {str};
        zzaj zzajVar = new zzaj();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase sQLiteDatabaseN = N();
                Cursor cursorQuery = sQLiteDatabaseN.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (!cursorQuery.moveToFirst()) {
                    this.f24394a.U().r().b("Not updating daily counts, app is not known. appId", zzey.v(str));
                    cursorQuery.close();
                    return zzajVar;
                }
                if (cursorQuery.getLong(0) == j10) {
                    zzajVar.f24438b = cursorQuery.getLong(1);
                    zzajVar.f24437a = cursorQuery.getLong(2);
                    zzajVar.f24439c = cursorQuery.getLong(3);
                    zzajVar.f24440d = cursorQuery.getLong(4);
                    zzajVar.f24441e = cursorQuery.getLong(5);
                }
                if (z10) {
                    zzajVar.f24438b += j11;
                }
                if (z11) {
                    zzajVar.f24437a += j11;
                }
                if (z12) {
                    zzajVar.f24439c += j11;
                }
                if (z13) {
                    zzajVar.f24440d += j11;
                }
                if (z14) {
                    zzajVar.f24441e += j11;
                }
                ContentValues contentValues = new ContentValues();
                contentValues.put("day", Long.valueOf(j10));
                contentValues.put("daily_public_events_count", Long.valueOf(zzajVar.f24437a));
                contentValues.put("daily_events_count", Long.valueOf(zzajVar.f24438b));
                contentValues.put("daily_conversions_count", Long.valueOf(zzajVar.f24439c));
                contentValues.put("daily_error_events_count", Long.valueOf(zzajVar.f24440d));
                contentValues.put("daily_realtime_events_count", Long.valueOf(zzajVar.f24441e));
                sQLiteDatabaseN.update("apps", contentValues, "app_id=?", strArr);
                cursorQuery.close();
                return zzajVar;
            } catch (SQLiteException e10) {
                this.f24394a.U().m().c("Error updating daily counts. appId", zzey.v(str), e10);
                if (0 != 0) {
                    cursor.close();
                }
                return zzajVar;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                cursor.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:63:0x0150  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.h T(java.lang.String r28, java.lang.String r29) {
        /*
            Method dump skipped, instruction units count: 340
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e.T(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.h");
    }

    /* JADX WARN: Not initialized variable reg: 11, insn: 0x00a3: MOVE (r10 I:??[OBJECT, ARRAY]) = (r11 I:??[OBJECT, ARRAY]), block:B:28:0x00a3 */
    /* JADX WARN: Removed duplicated region for block: B:30:0x00a6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final com.google.android.gms.measurement.internal.b4 W(java.lang.String r20, java.lang.String r21) {
        /*
            r19 = this;
            r1 = r19
            r9 = r21
            com.google.android.gms.common.internal.Preconditions.g(r20)
            com.google.android.gms.common.internal.Preconditions.g(r21)
            r19.c()
            r19.d()
            r10 = 0
            android.database.sqlite.SQLiteDatabase r11 = r19.N()     // Catch: java.lang.Throwable -> L7b android.database.sqlite.SQLiteException -> L7d
            java.lang.String r0 = "set_timestamp"
            java.lang.String r2 = "value"
            java.lang.String r3 = "origin"
            java.lang.String[] r13 = new java.lang.String[]{r0, r2, r3}     // Catch: java.lang.Throwable -> L7b android.database.sqlite.SQLiteException -> L7d
            r0 = 2
            java.lang.String[] r15 = new java.lang.String[r0]     // Catch: java.lang.Throwable -> L7b android.database.sqlite.SQLiteException -> L7d
            r2 = 0
            r15[r2] = r20     // Catch: java.lang.Throwable -> L7b android.database.sqlite.SQLiteException -> L7d
            r3 = 1
            r15[r3] = r9     // Catch: java.lang.Throwable -> L7b android.database.sqlite.SQLiteException -> L7d
            java.lang.String r12 = "user_attributes"
            java.lang.String r14 = "app_id=? and name=?"
            r16 = 0
            r17 = 0
            r18 = 0
            android.database.Cursor r11 = r11.query(r12, r13, r14, r15, r16, r17, r18)     // Catch: java.lang.Throwable -> L7b android.database.sqlite.SQLiteException -> L7d
            boolean r4 = r11.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> La2
            if (r4 != 0) goto L40
            r11.close()
            return r10
        L40:
            long r6 = r11.getLong(r2)     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> La2
            java.lang.Object r8 = r1.X(r11, r3)     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> La2
            if (r8 != 0) goto L4e
            r11.close()
            return r10
        L4e:
            java.lang.String r4 = r11.getString(r0)     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> La2
            com.google.android.gms.measurement.internal.b4 r0 = new com.google.android.gms.measurement.internal.b4     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> La2
            r2 = r0
            r3 = r20
            r5 = r21
            r2.<init>(r3, r4, r5, r6, r8)     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> La2
            boolean r2 = r11.moveToNext()     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> La2
            if (r2 == 0) goto L75
            com.google.android.gms.measurement.internal.zzgi r2 = r1.f24394a     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> La2
            com.google.android.gms.measurement.internal.zzey r2 = r2.U()     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> La2
            com.google.android.gms.measurement.internal.zzew r2 = r2.m()     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> La2
            java.lang.String r3 = "Got multiple records for user property, expected one. appId"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzey.v(r20)     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> La2
            r2.b(r3, r4)     // Catch: android.database.sqlite.SQLiteException -> L79 java.lang.Throwable -> La2
        L75:
            r11.close()
            return r0
        L79:
            r0 = move-exception
            goto L7f
        L7b:
            r0 = move-exception
            goto La4
        L7d:
            r0 = move-exception
            r11 = r10
        L7f:
            com.google.android.gms.measurement.internal.zzgi r2 = r1.f24394a     // Catch: java.lang.Throwable -> La2
            com.google.android.gms.measurement.internal.zzey r2 = r2.U()     // Catch: java.lang.Throwable -> La2
            com.google.android.gms.measurement.internal.zzew r2 = r2.m()     // Catch: java.lang.Throwable -> La2
            java.lang.String r3 = "Error querying user property. appId"
            java.lang.Object r4 = com.google.android.gms.measurement.internal.zzey.v(r20)     // Catch: java.lang.Throwable -> La2
            com.google.android.gms.measurement.internal.zzgi r5 = r1.f24394a     // Catch: java.lang.Throwable -> La2
            com.google.android.gms.measurement.internal.zzet r5 = r5.A()     // Catch: java.lang.Throwable -> La2
            java.lang.String r5 = r5.f(r9)     // Catch: java.lang.Throwable -> La2
            r2.d(r3, r4, r5, r0)     // Catch: java.lang.Throwable -> La2
            if (r11 == 0) goto La1
            r11.close()
        La1:
            return r10
        La2:
            r0 = move-exception
            r10 = r11
        La4:
            if (r10 == 0) goto La9
            r10.close()
        La9:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e.W(java.lang.String, java.lang.String):com.google.android.gms.measurement.internal.b4");
    }

    @VisibleForTesting
    final Object X(Cursor cursor, int i10) {
        int type = cursor.getType(i10);
        if (type == 0) {
            this.f24394a.U().m().a("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i10));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i10));
        }
        if (type == 3) {
            return cursor.getString(i10);
        }
        if (type != 4) {
            this.f24394a.U().m().b("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
            return null;
        }
        this.f24394a.U().m().a("Loaded invalid blob type value, ignoring it");
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0040  */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r1v1, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r1v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.String Y() throws java.lang.Throwable {
        /*
            r6 = this;
            android.database.sqlite.SQLiteDatabase r0 = r6.N()
            r1 = 0
            java.lang.String r2 = "select app_id from queue order by has_realtime desc, rowid asc limit 1;"
            android.database.Cursor r0 = r0.rawQuery(r2, r1)     // Catch: java.lang.Throwable -> L20 android.database.sqlite.SQLiteException -> L22
            boolean r2 = r0.moveToFirst()     // Catch: android.database.sqlite.SQLiteException -> L1e java.lang.Throwable -> L3a
            if (r2 == 0) goto L1a
            r2 = 0
            java.lang.String r1 = r0.getString(r2)     // Catch: android.database.sqlite.SQLiteException -> L1e java.lang.Throwable -> L3a
            r0.close()
            return r1
        L1a:
            r0.close()
            return r1
        L1e:
            r2 = move-exception
            goto L25
        L20:
            r0 = move-exception
            goto L3e
        L22:
            r0 = move-exception
            r2 = r0
            r0 = r1
        L25:
            com.google.android.gms.measurement.internal.zzgi r3 = r6.f24394a     // Catch: java.lang.Throwable -> L3a
            com.google.android.gms.measurement.internal.zzey r3 = r3.U()     // Catch: java.lang.Throwable -> L3a
            com.google.android.gms.measurement.internal.zzew r3 = r3.m()     // Catch: java.lang.Throwable -> L3a
            java.lang.String r4 = "Database error getting next bundle app id"
            r3.b(r4, r2)     // Catch: java.lang.Throwable -> L3a
            if (r0 == 0) goto L39
            r0.close()
        L39:
            return r1
        L3a:
            r1 = move-exception
            r5 = r1
            r1 = r0
            r0 = r5
        L3e:
            if (r1 == 0) goto L43
            r1.close()
        L43:
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e.Y():java.lang.String");
    }

    public final List Z(String str, String str2, String str3) {
        Preconditions.g(str);
        c();
        d();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb.append(" and name glob ?");
        }
        return a0(sb.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0058, code lost:
    
        r2 = r27.f24394a.U().m();
        r27.f24394a.v();
        r2.b("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List a0(java.lang.String r28, java.lang.String[] r29) {
        /*
            Method dump skipped, instruction units count: 301
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e.a0(java.lang.String, java.lang.String[]):java.util.List");
    }

    public final List b0(String str) {
        Preconditions.g(str);
        c();
        d();
        ArrayList arrayList = new ArrayList();
        Cursor cursorQuery = null;
        try {
            try {
                this.f24394a.v();
                cursorQuery = N().query("user_attributes", new String[]{"name", "origin", "set_timestamp", SDKConstants.PARAM_VALUE}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
                if (!cursorQuery.moveToFirst()) {
                    cursorQuery.close();
                    return arrayList;
                }
                do {
                    String string = cursorQuery.getString(0);
                    String string2 = cursorQuery.getString(1);
                    if (string2 == null) {
                        string2 = BuildConfig.FLAVOR;
                    }
                    String str2 = string2;
                    long j10 = cursorQuery.getLong(2);
                    Object objX = X(cursorQuery, 3);
                    if (objX == null) {
                        this.f24394a.U().m().b("Read invalid user property value, ignoring it. appId", zzey.v(str));
                    } else {
                        arrayList.add(new b4(str, str2, string, j10, objX));
                    }
                } while (cursorQuery.moveToNext());
                cursorQuery.close();
                return arrayList;
            } catch (SQLiteException e10) {
                this.f24394a.U().m().c("Error querying user properties. appId", zzey.v(str), e10);
                List listEmptyList = Collections.emptyList();
                if (cursorQuery != null) {
                    cursorQuery.close();
                }
                return listEmptyList;
            }
        } catch (Throwable th) {
            if (cursorQuery != null) {
                cursorQuery.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x00a7, code lost:
    
        r0 = r17.f24394a.U().m();
        r17.f24394a.v();
        r0.b("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0124 A[DONT_GENERATE] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List c0(java.lang.String r18, java.lang.String r19, java.lang.String r20) {
        /*
            Method dump skipped, instruction units count: 304
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e.c0(java.lang.String, java.lang.String, java.lang.String):java.util.List");
    }

    public final void d0() {
        d();
        N().beginTransaction();
    }

    public final void e0() {
        d();
        N().endTransaction();
    }

    @VisibleForTesting
    final void f0(List list) {
        c();
        d();
        Preconditions.k(list);
        Preconditions.m(list.size());
        if (p()) {
            String str = "(" + TextUtils.join(",", list) + ")";
            if (G("SELECT COUNT(1) FROM queue WHERE rowid IN " + str + " AND retry_count =  2147483647 LIMIT 1", null) > 0) {
                this.f24394a.U().r().a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                N().execSQL("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN " + str + " AND (retry_count IS NULL OR retry_count < 2147483647)");
            } catch (SQLiteException e10) {
                this.f24394a.U().m().b("Error incrementing retry count. error", e10);
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.r3
    protected final boolean g() {
        return false;
    }

    final void g0() {
        c();
        d();
        if (p()) {
            long jA = this.f24263b.c0().f24817h.a();
            long jB = this.f24394a.x().b();
            long jAbs = Math.abs(jB - jA);
            this.f24394a.v();
            if (jAbs > ((Long) zzel.f24607z.a(null)).longValue()) {
                this.f24263b.c0().f24817h.b(jB);
                c();
                d();
                if (p()) {
                    SQLiteDatabase sQLiteDatabaseN = N();
                    this.f24394a.v();
                    int iDelete = sQLiteDatabaseN.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{String.valueOf(this.f24394a.x().a()), String.valueOf(zzaf.d())});
                    if (iDelete > 0) {
                        this.f24394a.U().q().b("Deleted stale rows. rowsDeleted", Integer.valueOf(iDelete));
                    }
                }
            }
        }
    }

    public final void h(String str, String str2) {
        Preconditions.g(str);
        Preconditions.g(str2);
        c();
        d();
        try {
            N().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e10) {
            this.f24394a.U().m().d("Error deleting user property. appId", zzey.v(str), this.f24394a.A().f(str2), e10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0343, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0344, code lost:
    
        r11.put("session_scoped", r0);
        r11.put("data", r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x0358, code lost:
    
        if (N().insertWithOnConflict("property_filters", null, r11, 5) != (-1)) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x035a, code lost:
    
        r23.f24394a.U().m().b("Failed to insert property filter (got -1). appId", com.google.android.gms.measurement.internal.zzey.v(r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x036e, code lost:
    
        r0 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0372, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0373, code lost:
    
        r23.f24394a.U().m().c("Error storing property filter. appId", com.google.android.gms.measurement.internal.zzey.v(r24), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0386, code lost:
    
        d();
        c();
        com.google.android.gms.common.internal.Preconditions.g(r24);
        r0 = N();
        r3 = r17;
        r0.delete("property_filters", r3, new java.lang.String[]{r24, java.lang.String.valueOf(r10)});
        r0.delete("event_filters", r3, new java.lang.String[]{r24, java.lang.String.valueOf(r10)});
        r17 = r3;
        r4 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x03bd, code lost:
    
        r4 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x018b, code lost:
    
        r11 = r0.B().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x0197, code lost:
    
        if (r11.hasNext() == false) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x01a3, code lost:
    
        if (((com.google.android.gms.internal.measurement.zzes) r11.next()).D() != false) goto L183;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x01a5, code lost:
    
        r23.f24394a.U().r().c("Property filter with no ID. Audience definition ignored. appId, audienceId", com.google.android.gms.measurement.internal.zzey.v(r24), java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x01be, code lost:
    
        r11 = r0.A().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x01d4, code lost:
    
        if (r11.hasNext() == false) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x01d6, code lost:
    
        r12 = (com.google.android.gms.internal.measurement.zzej) r11.next();
        d();
        c();
        com.google.android.gms.common.internal.Preconditions.g(r24);
        com.google.android.gms.common.internal.Preconditions.k(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x01f0, code lost:
    
        if (android.text.TextUtils.isEmpty(r12.A()) == false) goto L68;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x01f2, code lost:
    
        r0 = r23.f24394a.U().r();
        r8 = com.google.android.gms.measurement.internal.zzey.v(r24);
        r11 = java.lang.Integer.valueOf(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x020a, code lost:
    
        if (r12.I() == false) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x020c, code lost:
    
        r20 = java.lang.Integer.valueOf(r12.v());
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0217, code lost:
    
        r20 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0219, code lost:
    
        r0.d("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r8, r11, java.lang.String.valueOf(r20));
        r21 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0224, code lost:
    
        r3 = r12.h();
        r21 = r4;
        r4 = new android.content.ContentValues();
        r4.put("app_id", r24);
        r4.put("audience_id", java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x023d, code lost:
    
        if (r12.I() == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x023f, code lost:
    
        r8 = java.lang.Integer.valueOf(r12.v());
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0248, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0249, code lost:
    
        r4.put("filter_id", r8);
        r4.put("event_name", r12.A());
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0259, code lost:
    
        if (r12.J() == false) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x025b, code lost:
    
        r8 = java.lang.Boolean.valueOf(r12.G());
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0264, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0265, code lost:
    
        r4.put("session_scoped", r8);
        r4.put("data", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0279, code lost:
    
        if (N().insertWithOnConflict("event_filters", null, r4, 5) != (-1)) goto L186;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x027b, code lost:
    
        r23.f24394a.U().m().b("Failed to insert event filter (got -1). appId", com.google.android.gms.measurement.internal.zzey.v(r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x028e, code lost:
    
        r4 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x0294, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0295, code lost:
    
        r23.f24394a.U().m().c("Error storing event filter. appId", com.google.android.gms.measurement.internal.zzey.v(r24), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x02aa, code lost:
    
        r21 = r4;
        r0 = r0.B().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x02b8, code lost:
    
        if (r0.hasNext() == false) goto L172;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x02ba, code lost:
    
        r3 = (com.google.android.gms.internal.measurement.zzes) r0.next();
        d();
        c();
        com.google.android.gms.common.internal.Preconditions.g(r24);
        com.google.android.gms.common.internal.Preconditions.k(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x02d4, code lost:
    
        if (android.text.TextUtils.isEmpty(r3.y()) == false) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x02d6, code lost:
    
        r0 = r23.f24394a.U().r();
        r7 = com.google.android.gms.measurement.internal.zzey.v(r24);
        r8 = java.lang.Integer.valueOf(r10);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x02ee, code lost:
    
        if (r3.D() == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x02f0, code lost:
    
        r3 = java.lang.Integer.valueOf(r3.u());
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x02f9, code lost:
    
        r3 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x02fa, code lost:
    
        r0.d("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r7, r8, java.lang.String.valueOf(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0303, code lost:
    
        r4 = r3.h();
        r11 = new android.content.ContentValues();
        r11.put("app_id", r24);
        r11.put("audience_id", java.lang.Integer.valueOf(r10));
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x031a, code lost:
    
        if (r3.D() == false) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x031c, code lost:
    
        r12 = java.lang.Integer.valueOf(r3.u());
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0325, code lost:
    
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0326, code lost:
    
        r11.put("filter_id", r12);
        r22 = r0;
        r11.put("property_name", r3.y());
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x0338, code lost:
    
        if (r3.E() == false) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x033a, code lost:
    
        r0 = java.lang.Boolean.valueOf(r3.C());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final void i(java.lang.String r24, java.util.List r25) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 1203
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.e.i(java.lang.String, java.util.List):void");
    }

    public final void j() {
        d();
        N().setTransactionSuccessful();
    }

    public final void k(c0 c0Var) {
        Preconditions.k(c0Var);
        c();
        d();
        String strE0 = c0Var.e0();
        Preconditions.k(strE0);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", strE0);
        contentValues.put("app_instance_id", c0Var.f0());
        contentValues.put("gmp_app_id", c0Var.j0());
        contentValues.put("resettable_device_id_hash", c0Var.a());
        contentValues.put("last_bundle_index", Long.valueOf(c0Var.Z()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(c0Var.a0()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(c0Var.Y()));
        contentValues.put("app_version", c0Var.h0());
        contentValues.put("app_store", c0Var.g0());
        contentValues.put("gmp_version", Long.valueOf(c0Var.X()));
        contentValues.put("dev_cert_hash", Long.valueOf(c0Var.U()));
        contentValues.put("measurement_enabled", Boolean.valueOf(c0Var.K()));
        contentValues.put("day", Long.valueOf(c0Var.T()));
        contentValues.put("daily_public_events_count", Long.valueOf(c0Var.R()));
        contentValues.put("daily_events_count", Long.valueOf(c0Var.Q()));
        contentValues.put("daily_conversions_count", Long.valueOf(c0Var.O()));
        contentValues.put("config_fetched_time", Long.valueOf(c0Var.N()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(c0Var.W()));
        contentValues.put("app_version_int", Long.valueOf(c0Var.M()));
        contentValues.put("firebase_instance_id", c0Var.i0());
        contentValues.put("daily_error_events_count", Long.valueOf(c0Var.P()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(c0Var.S()));
        contentValues.put("health_monitor_sample", c0Var.k0());
        contentValues.put("android_id", Long.valueOf(c0Var.A()));
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(c0Var.J()));
        contentValues.put("admob_app_id", c0Var.c0());
        contentValues.put("dynamite_version", Long.valueOf(c0Var.V()));
        contentValues.put("session_stitching_token", c0Var.b());
        List listC = c0Var.c();
        if (listC != null) {
            if (listC.isEmpty()) {
                this.f24394a.U().r().b("Safelisted events should not be an empty list. appId", strE0);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(",", listC));
            }
        }
        zznz.b();
        if (this.f24394a.v().y(null, zzel.A0) && !contentValues.containsKey("safelisted_events")) {
            contentValues.put("safelisted_events", (String) null);
        }
        try {
            SQLiteDatabase sQLiteDatabaseN = N();
            if (sQLiteDatabaseN.update("apps", contentValues, "app_id = ?", new String[]{strE0}) == 0 && sQLiteDatabaseN.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                this.f24394a.U().m().b("Failed to insert/update app (got -1). appId", zzey.v(strE0));
            }
        } catch (SQLiteException e10) {
            this.f24394a.U().m().c("Error storing app. appId", zzey.v(strE0), e10);
        }
    }

    public final void l(h hVar) {
        Preconditions.k(hVar);
        c();
        d();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", hVar.f24113a);
        contentValues.put("name", hVar.f24114b);
        contentValues.put("lifetime_count", Long.valueOf(hVar.f24115c));
        contentValues.put("current_bundle_count", Long.valueOf(hVar.f24116d));
        contentValues.put("last_fire_timestamp", Long.valueOf(hVar.f24118f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(hVar.f24119g));
        contentValues.put("last_bundled_day", hVar.f24120h);
        contentValues.put("last_sampled_complex_event_id", hVar.f24121i);
        contentValues.put("last_sampling_rate", hVar.f24122j);
        contentValues.put("current_session_count", Long.valueOf(hVar.f24117e));
        Boolean bool = hVar.f24123k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (N().insertWithOnConflict("events", null, contentValues, 5) == -1) {
                this.f24394a.U().m().b("Failed to insert/update event aggregates (got -1). appId", zzey.v(hVar.f24113a));
            }
        } catch (SQLiteException e10) {
            this.f24394a.U().m().c("Error storing event aggregates. appId", zzey.v(hVar.f24113a), e10);
        }
    }

    public final boolean m() {
        return G("select count(1) > 0 from raw_events", null) != 0;
    }

    public final boolean n() {
        return G("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }

    public final boolean o() {
        return G("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }

    @VisibleForTesting
    protected final boolean p() {
        Context contextN0 = this.f24394a.N0();
        this.f24394a.v();
        return contextN0.getDatabasePath("google_app_measurement.db").exists();
    }

    public final boolean q(String str, Long l10, long j10, com.google.android.gms.internal.measurement.zzfs zzfsVar) {
        c();
        d();
        Preconditions.k(zzfsVar);
        Preconditions.g(str);
        Preconditions.k(l10);
        byte[] bArrH = zzfsVar.h();
        this.f24394a.U().q().c("Saving complex main event, appId, data size", this.f24394a.A().d(str), Integer.valueOf(bArrH.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l10);
        contentValues.put("children_to_process", Long.valueOf(j10));
        contentValues.put("main_event", bArrH);
        try {
            if (N().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            this.f24394a.U().m().b("Failed to insert complex main event (got -1). appId", zzey.v(str));
            return false;
        } catch (SQLiteException e10) {
            this.f24394a.U().m().c("Error storing complex main event. appId", zzey.v(str), e10);
            return false;
        }
    }

    public final boolean r(zzab zzabVar) {
        Preconditions.k(zzabVar);
        c();
        d();
        String str = zzabVar.f24415o;
        Preconditions.k(str);
        if (W(str, zzabVar.f24417q.f24866p) == null) {
            long jG = G("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            this.f24394a.v();
            if (jG >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", zzabVar.f24416p);
        contentValues.put("name", zzabVar.f24417q.f24866p);
        F(contentValues, SDKConstants.PARAM_VALUE, Preconditions.k(zzabVar.f24417q.V3()));
        contentValues.put("active", Boolean.valueOf(zzabVar.f24419s));
        contentValues.put("trigger_event_name", zzabVar.f24420t);
        contentValues.put("trigger_timeout", Long.valueOf(zzabVar.f24422v));
        contentValues.put("timed_out_event", this.f24394a.L().c0(zzabVar.f24421u));
        contentValues.put("creation_timestamp", Long.valueOf(zzabVar.f24418r));
        contentValues.put("triggered_event", this.f24394a.L().c0(zzabVar.f24423w));
        contentValues.put("triggered_timestamp", Long.valueOf(zzabVar.f24417q.f24867q));
        contentValues.put("time_to_live", Long.valueOf(zzabVar.f24424x));
        contentValues.put("expired_event", this.f24394a.L().c0(zzabVar.f24425y));
        try {
            if (N().insertWithOnConflict("conditional_properties", null, contentValues, 5) == -1) {
                this.f24394a.U().m().b("Failed to insert/update conditional user property (got -1)", zzey.v(str));
            }
        } catch (SQLiteException e10) {
            this.f24394a.U().m().c("Error storing conditional user property", zzey.v(str), e10);
        }
        return true;
    }

    public final boolean s(b4 b4Var) {
        Preconditions.k(b4Var);
        c();
        d();
        if (W(b4Var.f23996a, b4Var.f23998c) == null) {
            if (zzlp.W(b4Var.f23998c)) {
                if (G("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{b4Var.f23996a}) >= this.f24394a.v().k(b4Var.f23996a, zzel.H, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(b4Var.f23998c)) {
                long jG = G("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{b4Var.f23996a, b4Var.f23997b});
                this.f24394a.v();
                if (jG >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", b4Var.f23996a);
        contentValues.put("origin", b4Var.f23997b);
        contentValues.put("name", b4Var.f23998c);
        contentValues.put("set_timestamp", Long.valueOf(b4Var.f23999d));
        F(contentValues, SDKConstants.PARAM_VALUE, b4Var.f24000e);
        try {
            if (N().insertWithOnConflict("user_attributes", null, contentValues, 5) == -1) {
                this.f24394a.U().m().b("Failed to insert/update user property (got -1). appId", zzey.v(b4Var.f23996a));
            }
        } catch (SQLiteException e10) {
            this.f24394a.U().m().c("Error storing user property. appId", zzey.v(b4Var.f23996a), e10);
        }
        return true;
    }
}
