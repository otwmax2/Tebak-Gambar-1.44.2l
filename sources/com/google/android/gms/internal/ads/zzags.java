package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzags {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f8967a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f8968b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f8969c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f8970d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f8971e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int[] f8972f = new int[255];

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzen f8973g = new zzen(255);

    zzags() {
    }

    public final void a() {
        this.f8967a = 0;
        this.f8968b = 0L;
        this.f8969c = 0;
        this.f8970d = 0;
        this.f8971e = 0;
    }

    public final boolean b(zzzv zzzvVar, boolean z10) throws IOException {
        a();
        this.f8973g.c(27);
        if (zzzy.c(zzzvVar, this.f8973g.h(), 0, 27, z10) && this.f8973g.A() == 1332176723) {
            if (this.f8973g.s() != 0) {
                if (z10) {
                    return false;
                }
                throw zzbu.c("unsupported bit stream revision");
            }
            this.f8967a = this.f8973g.s();
            this.f8968b = this.f8973g.x();
            this.f8973g.y();
            this.f8973g.y();
            this.f8973g.y();
            int iS = this.f8973g.s();
            this.f8969c = iS;
            this.f8970d = iS + 27;
            this.f8973g.c(iS);
            if (zzzy.c(zzzvVar, this.f8973g.h(), 0, this.f8969c, z10)) {
                for (int i10 = 0; i10 < this.f8969c; i10++) {
                    this.f8972f[i10] = this.f8973g.s();
                    this.f8971e += this.f8972f[i10];
                }
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0057, code lost:
    
        if (r12 == (-1)) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x005f, code lost:
    
        if (r11.c() >= r12) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0066, code lost:
    
        if (r11.Z(1) != (-1)) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0068, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean c(com.google.android.gms.internal.ads.zzzv r11, long r12) throws java.io.IOException {
        /*
            r10 = this;
            long r0 = r11.c()
            long r2 = r11.b()
            r4 = 1
            r5 = 0
            int r6 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r6 != 0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            com.google.android.gms.internal.ads.zzdl.d(r0)
            com.google.android.gms.internal.ads.zzen r0 = r10.f8973g
            r1 = 4
            r0.c(r1)
        L1a:
            r2 = -1
            int r0 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r0 == 0) goto L2c
            long r6 = r11.c()
            r8 = 4
            long r6 = r6 + r8
            int r0 = (r6 > r12 ? 1 : (r6 == r12 ? 0 : -1))
            if (r0 < 0) goto L2c
            goto L55
        L2c:
            com.google.android.gms.internal.ads.zzen r0 = r10.f8973g
            byte[] r0 = r0.h()
            boolean r0 = com.google.android.gms.internal.ads.zzzy.c(r11, r0, r5, r1, r4)
            if (r0 == 0) goto L55
            com.google.android.gms.internal.ads.zzen r0 = r10.f8973g
            r0.f(r5)
            com.google.android.gms.internal.ads.zzen r0 = r10.f8973g
            long r2 = r0.A()
            r6 = 1332176723(0x4f676753, double:6.58182753E-315)
            int r0 = (r2 > r6 ? 1 : (r2 == r6 ? 0 : -1))
            if (r0 == 0) goto L51
            r0 = r11
            com.google.android.gms.internal.ads.zzzk r0 = (com.google.android.gms.internal.ads.zzzk) r0
            r0.o(r4, r5)
            goto L1a
        L51:
            r11.h()
            return r4
        L55:
            int r0 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r0 == 0) goto L61
            long r0 = r11.c()
            int r6 = (r0 > r12 ? 1 : (r0 == r12 ? 0 : -1))
            if (r6 >= 0) goto L68
        L61:
            int r0 = r11.Z(r4)
            r1 = -1
            if (r0 != r1) goto L55
        L68:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzags.c(com.google.android.gms.internal.ads.zzzv, long):boolean");
    }
}
