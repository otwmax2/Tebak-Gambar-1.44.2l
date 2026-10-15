package com.google.android.gms.measurement.internal;

import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class l4 extends r3 {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f24204d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Set f24205e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Map f24206f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Long f24207g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Long f24208h;

    l4(zzli zzliVar) {
        super(zzliVar);
    }

    private final g4 i(Integer num) {
        if (this.f24206f.containsKey(num)) {
            return (g4) this.f24206f.get(num);
        }
        g4 g4Var = new g4(this, this.f24204d, null);
        this.f24206f.put(num, g4Var);
        return g4Var;
    }

    private final boolean j(int i10, int i11) {
        g4 g4Var = (g4) this.f24206f.get(Integer.valueOf(i10));
        if (g4Var == null) {
            return false;
        }
        return g4Var.f24108d.get(i11);
    }

    @Override // com.google.android.gms.measurement.internal.r3
    protected final boolean g() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:385:0x0a0a, code lost:
    
        r0 = r65.f24394a.U().r();
        r6 = com.google.android.gms.measurement.internal.zzey.v(r65.f24204d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:386:0x0a1e, code lost:
    
        if (r7.D() == false) goto L388;
     */
    /* JADX WARN: Code restructure failed: missing block: B:387:0x0a20, code lost:
    
        r7 = java.lang.Integer.valueOf(r7.u());
     */
    /* JADX WARN: Code restructure failed: missing block: B:388:0x0a29, code lost:
    
        r7 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:389:0x0a2a, code lost:
    
        r0.c("Invalid property filter ID. appId, id", r6, java.lang.String.valueOf(r7));
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:125:0x0313  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x03d0  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x03df  */
    /* JADX WARN: Removed duplicated region for block: B:225:0x0593  */
    /* JADX WARN: Removed duplicated region for block: B:267:0x071a A[PHI: r0 r11 r13 r25 r28 r29
      0x071a: PHI (r0v97 java.util.Map) = (r0v99 java.util.Map), (r0v108 java.util.Map) binds: [B:282:0x0750, B:266:0x0716] A[DONT_GENERATE, DONT_INLINE]
      0x071a: PHI (r11v14 android.database.Cursor) = (r11v15 android.database.Cursor), (r11v17 android.database.Cursor) binds: [B:282:0x0750, B:266:0x0716] A[DONT_GENERATE, DONT_INLINE]
      0x071a: PHI (r13v12 java.lang.String) = (r13v13 java.lang.String), (r13v16 java.lang.String) binds: [B:282:0x0750, B:266:0x0716] A[DONT_GENERATE, DONT_INLINE]
      0x071a: PHI (r25v4 java.lang.String) = (r25v5 java.lang.String), (r25v7 java.lang.String) binds: [B:282:0x0750, B:266:0x0716] A[DONT_GENERATE, DONT_INLINE]
      0x071a: PHI (r28v7 java.lang.String) = (r28v8 java.lang.String), (r28v13 java.lang.String) binds: [B:282:0x0750, B:266:0x0716] A[DONT_GENERATE, DONT_INLINE]
      0x071a: PHI (r29v7 java.lang.String) = (r29v8 java.lang.String), (r29v14 java.lang.String) binds: [B:282:0x0750, B:266:0x0716] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:294:0x0775  */
    /* JADX WARN: Removed duplicated region for block: B:313:0x081d  */
    /* JADX WARN: Removed duplicated region for block: B:398:0x0a67  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0176  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x01b0 A[Catch: SQLiteException -> 0x0220, all -> 0x0af7, TRY_LEAVE, TryCatch #7 {SQLiteException -> 0x0220, blocks: (B:58:0x01aa, B:60:0x01b0, B:62:0x01be, B:63:0x01c3, B:64:0x01cd, B:65:0x01dd, B:67:0x01ec), top: B:425:0x01aa }] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01be A[Catch: SQLiteException -> 0x0220, all -> 0x0af7, TRY_ENTER, TryCatch #7 {SQLiteException -> 0x0220, blocks: (B:58:0x01aa, B:60:0x01b0, B:62:0x01be, B:63:0x01c3, B:64:0x01cd, B:65:0x01dd, B:67:0x01ec), top: B:425:0x01aa }] */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x025e  */
    /* JADX WARN: Type inference failed for: r4v45, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v39 */
    /* JADX WARN: Type inference failed for: r5v41, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v45, types: [java.lang.String] */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v47, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r5v48 */
    /* JADX WARN: Type inference failed for: r5v49 */
    /* JADX WARN: Type inference failed for: r5v5, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final java.util.List h(java.lang.String r66, java.util.List r67, java.util.List r68, java.lang.Long r69, java.lang.Long r70) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 2817
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.l4.h(java.lang.String, java.util.List, java.util.List, java.lang.Long, java.lang.Long):java.util.List");
    }
}
