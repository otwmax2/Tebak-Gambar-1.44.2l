package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Parcel;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzer extends r {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final o f24624c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f24625d;

    zzer(zzgi zzgiVar) {
        super(zzgiVar);
        Context contextN0 = this.f24394a.N0();
        this.f24394a.v();
        this.f24624c = new o(this, contextN0, "google_app_measurement_local.db");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0116 A[PHI: r8
      0x0116: PHI (r8v3 android.database.sqlite.SQLiteDatabase) = (r8v2 android.database.sqlite.SQLiteDatabase), (r8v4 android.database.sqlite.SQLiteDatabase) binds: [B:55:0x00e6, B:70:0x0114] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0124  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0129  */
    /* JADX WARN: Type inference failed for: r10v0 */
    /* JADX WARN: Type inference failed for: r10v1 */
    /* JADX WARN: Type inference failed for: r10v10, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v11 */
    /* JADX WARN: Type inference failed for: r10v12 */
    /* JADX WARN: Type inference failed for: r10v2 */
    /* JADX WARN: Type inference failed for: r10v3, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v4, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r10v6 */
    /* JADX WARN: Type inference failed for: r10v7 */
    /* JADX WARN: Type inference failed for: r10v8 */
    /* JADX WARN: Type inference failed for: r10v9 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v13 */
    /* JADX WARN: Type inference failed for: r8v5, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v6, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r8v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final boolean s(int r17, byte[] r18) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 318
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzer.s(int, byte[]):boolean");
    }

    @Override // com.google.android.gms.measurement.internal.r
    protected final boolean i() {
        return false;
    }

    @VisibleForTesting
    final SQLiteDatabase j() throws SQLiteException {
        if (this.f24625d) {
            return null;
        }
        SQLiteDatabase writableDatabase = this.f24624c.getWritableDatabase();
        if (writableDatabase != null) {
            return writableDatabase;
        }
        this.f24625d = true;
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:143:0x0215  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:153:0x022a A[PHI: r9 r15
      0x022a: PHI (r9v3 int) = (r9v1 int), (r9v1 int), (r9v4 int) binds: [B:144:0x0218, B:159:0x0245, B:152:0x0228] A[DONT_GENERATE, DONT_INLINE]
      0x022a: PHI (r15v7 android.database.sqlite.SQLiteDatabase) = 
      (r15v5 android.database.sqlite.SQLiteDatabase)
      (r15v6 android.database.sqlite.SQLiteDatabase)
      (r15v8 android.database.sqlite.SQLiteDatabase)
     binds: [B:144:0x0218, B:159:0x0245, B:152:0x0228] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0242  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x0250  */
    /* JADX WARN: Removed duplicated region for block: B:167:0x0255  */
    /* JADX WARN: Removed duplicated region for block: B:182:0x01fb A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:192:0x01d6 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:203:0x0248 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:204:0x0248 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:206:0x0248 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.util.List k(int r23) {
        /*
            Method dump skipped, instruction units count: 618
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzer.k(int):java.util.List");
    }

    public final void l() {
        int iDelete;
        c();
        try {
            SQLiteDatabase sQLiteDatabaseJ = j();
            if (sQLiteDatabaseJ == null || (iDelete = sQLiteDatabaseJ.delete("messages", null, null)) <= 0) {
                return;
            }
            this.f24394a.U().q().b("Reset local analytics data. records", Integer.valueOf(iDelete));
        } catch (SQLiteException e10) {
            this.f24394a.U().m().b("Error resetting local analytics data. error", e10);
        }
    }

    public final boolean m() {
        return s(3, new byte[0]);
    }

    @VisibleForTesting
    final boolean n() {
        Context contextN0 = this.f24394a.N0();
        this.f24394a.v();
        return contextN0.getDatabasePath("google_app_measurement_local.db").exists();
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0069 A[PHI: r4
      0x0069: PHI (r4v3 int) = (r4v1 int), (r4v1 int), (r4v4 int) binds: [B:29:0x0060, B:35:0x007c, B:32:0x0067] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean o() {
        /*
            r10 = this;
            java.lang.String r0 = "Error deleting app launch break from local database"
            r10.c()
            boolean r1 = r10.f24625d
            r2 = 0
            if (r1 == 0) goto Lb
            return r2
        Lb:
            boolean r1 = r10.n()
            if (r1 == 0) goto L97
            r1 = 5
            r3 = 0
            r4 = 5
        L14:
            if (r3 >= r1) goto L88
            r5 = 0
            r6 = 1
            android.database.sqlite.SQLiteDatabase r5 = r10.j()     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40 android.database.sqlite.SQLiteFullException -> L42 android.database.sqlite.SQLiteDatabaseLockedException -> L61
            if (r5 != 0) goto L21
            r10.f24625d = r6     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40 android.database.sqlite.SQLiteFullException -> L42 android.database.sqlite.SQLiteDatabaseLockedException -> L61
            return r2
        L21:
            r5.beginTransaction()     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40 android.database.sqlite.SQLiteFullException -> L42 android.database.sqlite.SQLiteDatabaseLockedException -> L61
            java.lang.String[] r7 = new java.lang.String[r6]     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40 android.database.sqlite.SQLiteFullException -> L42 android.database.sqlite.SQLiteDatabaseLockedException -> L61
            r8 = 3
            java.lang.String r8 = java.lang.Integer.toString(r8)     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40 android.database.sqlite.SQLiteFullException -> L42 android.database.sqlite.SQLiteDatabaseLockedException -> L61
            r7[r2] = r8     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40 android.database.sqlite.SQLiteFullException -> L42 android.database.sqlite.SQLiteDatabaseLockedException -> L61
            java.lang.String r8 = "messages"
            java.lang.String r9 = "type == ?"
            r5.delete(r8, r9, r7)     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40 android.database.sqlite.SQLiteFullException -> L42 android.database.sqlite.SQLiteDatabaseLockedException -> L61
            r5.setTransactionSuccessful()     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40 android.database.sqlite.SQLiteFullException -> L42 android.database.sqlite.SQLiteDatabaseLockedException -> L61
            r5.endTransaction()     // Catch: java.lang.Throwable -> L3e android.database.sqlite.SQLiteException -> L40 android.database.sqlite.SQLiteFullException -> L42 android.database.sqlite.SQLiteDatabaseLockedException -> L61
            r5.close()
            return r6
        L3e:
            r0 = move-exception
            goto L82
        L40:
            r7 = move-exception
            goto L44
        L42:
            r7 = move-exception
            goto L6d
        L44:
            if (r5 == 0) goto L4f
            boolean r8 = r5.inTransaction()     // Catch: java.lang.Throwable -> L3e
            if (r8 == 0) goto L4f
            r5.endTransaction()     // Catch: java.lang.Throwable -> L3e
        L4f:
            com.google.android.gms.measurement.internal.zzgi r8 = r10.f24394a     // Catch: java.lang.Throwable -> L3e
            com.google.android.gms.measurement.internal.zzey r8 = r8.U()     // Catch: java.lang.Throwable -> L3e
            com.google.android.gms.measurement.internal.zzew r8 = r8.m()     // Catch: java.lang.Throwable -> L3e
            r8.b(r0, r7)     // Catch: java.lang.Throwable -> L3e
            r10.f24625d = r6     // Catch: java.lang.Throwable -> L3e
            if (r5 == 0) goto L7f
            goto L69
        L61:
            long r6 = (long) r4     // Catch: java.lang.Throwable -> L3e
            android.os.SystemClock.sleep(r6)     // Catch: java.lang.Throwable -> L3e
            int r4 = r4 + 20
            if (r5 == 0) goto L7f
        L69:
            r5.close()
            goto L7f
        L6d:
            com.google.android.gms.measurement.internal.zzgi r8 = r10.f24394a     // Catch: java.lang.Throwable -> L3e
            com.google.android.gms.measurement.internal.zzey r8 = r8.U()     // Catch: java.lang.Throwable -> L3e
            com.google.android.gms.measurement.internal.zzew r8 = r8.m()     // Catch: java.lang.Throwable -> L3e
            r8.b(r0, r7)     // Catch: java.lang.Throwable -> L3e
            r10.f24625d = r6     // Catch: java.lang.Throwable -> L3e
            if (r5 == 0) goto L7f
            goto L69
        L7f:
            int r3 = r3 + 1
            goto L14
        L82:
            if (r5 == 0) goto L87
            r5.close()
        L87:
            throw r0
        L88:
            com.google.android.gms.measurement.internal.zzgi r0 = r10.f24394a
            com.google.android.gms.measurement.internal.zzey r0 = r0.U()
            com.google.android.gms.measurement.internal.zzew r0 = r0.r()
            java.lang.String r1 = "Error deleting app launch break from local database in reasonable time"
            r0.a(r1)
        L97:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzer.o():boolean");
    }

    public final boolean p(zzab zzabVar) {
        byte[] bArrC0 = this.f24394a.L().c0(zzabVar);
        if (bArrC0.length <= 131072) {
            return s(2, bArrC0);
        }
        this.f24394a.U().o().a("Conditional user property too long for local database. Sending directly to service");
        return false;
    }

    public final boolean q(zzav zzavVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzaw.a(zzavVar, parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length <= 131072) {
            return s(0, bArrMarshall);
        }
        this.f24394a.U().o().a("Event is too long for local database. Sending event directly to service");
        return false;
    }

    public final boolean r(zzll zzllVar) {
        Parcel parcelObtain = Parcel.obtain();
        zzlm.a(zzllVar, parcelObtain, 0);
        byte[] bArrMarshall = parcelObtain.marshall();
        parcelObtain.recycle();
        if (bArrMarshall.length <= 131072) {
            return s(1, bArrMarshall);
        }
        this.f24394a.U().o().a("User property too long for local database. Sending directly to service");
        return false;
    }
}
