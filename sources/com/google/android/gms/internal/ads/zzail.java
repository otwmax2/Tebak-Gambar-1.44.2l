package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.util.SparseArray;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzail implements zzzu {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final zzaab f9265l = new zzaab() { // from class: com.google.android.gms.internal.ads.zzaij
        @Override // com.google.android.gms.internal.ads.zzaab
        public final /* synthetic */ zzzu[] a(Uri uri, Map map) {
            return zzaaa.a(this, uri, map);
        }

        @Override // com.google.android.gms.internal.ads.zzaab
        public final zzzu[] zza() {
            zzaab zzaabVar = zzail.f9265l;
            return new zzzu[]{new zzail()};
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f9270e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9271f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f9272g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f9273h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private zzaih f9274i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private zzzx f9275j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f9276k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzeu f9266a = new zzeu(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzen f9268c = new zzen(4096);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SparseArray f9267b = new SparseArray();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzaii f9269d = new zzaii();

    @Override // com.google.android.gms.internal.ads.zzzu
    public final boolean a(zzzv zzzvVar) throws IOException {
        byte[] bArr = new byte[14];
        zzzk zzzkVar = (zzzk) zzzvVar;
        zzzkVar.k(bArr, 0, 14, false);
        if ((((bArr[0] & 255) << 24) | ((bArr[1] & 255) << 16) | ((bArr[2] & 255) << 8) | (bArr[3] & 255)) != 442 || (bArr[4] & 196) != 68 || (bArr[6] & 4) != 4 || (bArr[8] & 4) != 4 || (bArr[9] & 1) != 1 || (bArr[12] & 3) != 3) {
            return false;
        }
        zzzkVar.n(bArr[13] & 7, false);
        zzzkVar.k(bArr, 0, 3, false);
        return ((((bArr[0] & 255) << 16) | ((bArr[1] & 255) << 8)) | (bArr[2] & 255)) == 1;
    }

    /* JADX WARN: Removed duplicated region for block: B:64:0x0147  */
    @Override // com.google.android.gms.internal.ads.zzzu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final int e(com.google.android.gms.internal.ads.zzzv r14, com.google.android.gms.internal.ads.zzaau r15) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 447
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzail.e(com.google.android.gms.internal.ads.zzzv, com.google.android.gms.internal.ads.zzaau):int");
    }

    @Override // com.google.android.gms.internal.ads.zzzu
    public final void g(zzzx zzzxVar) {
        this.f9275j = zzzxVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0021  */
    @Override // com.google.android.gms.internal.ads.zzzu
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void h(long r5, long r7) {
        /*
            r4 = this;
            com.google.android.gms.internal.ads.zzeu r5 = r4.f9266a
            long r0 = r5.e()
            r2 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 == 0) goto L21
            long r0 = r5.c()
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 == 0) goto L24
            r2 = 0
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 == 0) goto L24
            int r6 = (r0 > r7 ? 1 : (r0 == r7 ? 0 : -1))
            if (r6 == 0) goto L24
        L21:
            r5.f(r7)
        L24:
            com.google.android.gms.internal.ads.zzaih r5 = r4.f9274i
            r6 = 0
            if (r5 == 0) goto L2c
            r5.d(r7)
        L2c:
            android.util.SparseArray r5 = r4.f9267b
            int r5 = r5.size()
            if (r6 >= r5) goto L42
            android.util.SparseArray r5 = r4.f9267b
            java.lang.Object r5 = r5.valueAt(r6)
            com.google.android.gms.internal.ads.zzaik r5 = (com.google.android.gms.internal.ads.zzaik) r5
            r5.b()
            int r6 = r6 + 1
            goto L2c
        L42:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzail.h(long, long):void");
    }
}
