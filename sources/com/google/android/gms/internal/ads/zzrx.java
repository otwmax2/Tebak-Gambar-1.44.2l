package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzrx implements zzsq, zzsp {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final zzsq f20582o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private zzsp f20583p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzrw[] f20584q = new zzrw[0];

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f20585r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    long f20586s;

    public zzrx(zzsq zzsqVar, boolean z10, long j10, long j11) {
        this.f20582o = zzsqVar;
        this.f20586s = j11;
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0035  */
    @Override // com.google.android.gms.internal.ads.zzsq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long D(long r8) {
        /*
            r7 = this;
            r0 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r7.f20585r = r0
            com.google.android.gms.internal.ads.zzrw[] r0 = r7.f20584q
            int r1 = r0.length
            r2 = 0
            r3 = 0
        Lc:
            if (r3 >= r1) goto L18
            r4 = r0[r3]
            if (r4 == 0) goto L15
            r4.c()
        L15:
            int r3 = r3 + 1
            goto Lc
        L18:
            com.google.android.gms.internal.ads.zzsq r0 = r7.f20582o
            long r0 = r0.D(r8)
            r3 = 1
            int r4 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r4 == 0) goto L35
            r8 = 0
            int r4 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r4 < 0) goto L36
            long r8 = r7.f20586s
            r4 = -9223372036854775808
            int r6 = (r8 > r4 ? 1 : (r8 == r4 ? 0 : -1))
            if (r6 == 0) goto L35
            int r4 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r4 > 0) goto L36
        L35:
            r2 = 1
        L36:
            com.google.android.gms.internal.ads.zzdl.f(r2)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrx.D(long):long");
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final long a() {
        long jA = this.f20582o.a();
        if (jA != Long.MIN_VALUE) {
            long j10 = this.f20586s;
            if (j10 == Long.MIN_VALUE || jA < j10) {
                return jA;
            }
        }
        return Long.MIN_VALUE;
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final void b(long j10) {
        this.f20582o.b(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final boolean c(long j10) {
        return this.f20582o.c(j10);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long d() {
        if (l()) {
            long j10 = this.f20585r;
            this.f20585r = -9223372036854775807L;
            long jD = d();
            return jD != -9223372036854775807L ? jD : j10;
        }
        long jD2 = this.f20582o.d();
        if (jD2 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        zzdl.f(jD2 >= 0);
        long j11 = this.f20586s;
        zzdl.f(j11 == Long.MIN_VALUE || jD2 <= j11);
        return jD2;
    }

    @Override // com.google.android.gms.internal.ads.zzsp
    public final void e(zzsq zzsqVar) {
        zzsp zzspVar = this.f20583p;
        Objects.requireNonNull(zzspVar);
        zzspVar.e(this);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final zzur f() {
        return this.f20582o.f();
    }

    @Override // com.google.android.gms.internal.ads.zzuk
    public final /* bridge */ /* synthetic */ void g(zzul zzulVar) {
        zzsp zzspVar = this.f20583p;
        Objects.requireNonNull(zzspVar);
        zzspVar.g(this);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void h(long j10, boolean z10) {
        this.f20582o.h(j10, false);
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void i() throws IOException {
        this.f20582o.i();
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x005c  */
    @Override // com.google.android.gms.internal.ads.zzsq
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long j(com.google.android.gms.internal.ads.zzwe[] r15, boolean[] r16, com.google.android.gms.internal.ads.zzuj[] r17, boolean[] r18, long r19) {
        /*
            r14 = this;
            r0 = r14
            r1 = r17
            int r2 = r1.length
            com.google.android.gms.internal.ads.zzrw[] r3 = new com.google.android.gms.internal.ads.zzrw[r2]
            r0.f20584q = r3
            com.google.android.gms.internal.ads.zzuj[] r2 = new com.google.android.gms.internal.ads.zzuj[r2]
            r3 = 0
            r4 = 0
        Lc:
            int r5 = r1.length
            r11 = 0
            if (r4 >= r5) goto L21
            com.google.android.gms.internal.ads.zzrw[] r5 = r0.f20584q
            r6 = r1[r4]
            com.google.android.gms.internal.ads.zzrw r6 = (com.google.android.gms.internal.ads.zzrw) r6
            r5[r4] = r6
            if (r6 == 0) goto L1c
            com.google.android.gms.internal.ads.zzuj r11 = r6.f20579a
        L1c:
            r2[r4] = r11
            int r4 = r4 + 1
            goto Lc
        L21:
            com.google.android.gms.internal.ads.zzsq r4 = r0.f20582o
            r5 = r15
            r6 = r16
            r7 = r2
            r8 = r18
            r9 = r19
            long r4 = r4.j(r5, r6, r7, r8, r9)
            boolean r6 = r14.l()
            r7 = 0
            if (r6 == 0) goto L3d
            int r6 = (r19 > r7 ? 1 : (r19 == r7 ? 0 : -1))
            if (r6 != 0) goto L3d
            r9 = r7
            goto L3f
        L3d:
            r9 = r19
        L3f:
            r12 = -9223372036854775807(0x8000000000000001, double:-4.9E-324)
            r0.f20585r = r12
            r6 = 1
            int r12 = (r4 > r9 ? 1 : (r4 == r9 ? 0 : -1))
            if (r12 == 0) goto L5d
            int r9 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r9 < 0) goto L5c
            long r7 = r0.f20586s
            r9 = -9223372036854775808
            int r12 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r12 == 0) goto L5d
            int r9 = (r4 > r7 ? 1 : (r4 == r7 ? 0 : -1))
            if (r9 > 0) goto L5c
            goto L5d
        L5c:
            r6 = 0
        L5d:
            com.google.android.gms.internal.ads.zzdl.f(r6)
        L60:
            int r6 = r1.length
            if (r3 >= r6) goto L86
            r6 = r2[r3]
            if (r6 != 0) goto L6c
            com.google.android.gms.internal.ads.zzrw[] r6 = r0.f20584q
            r6[r3] = r11
            goto L7d
        L6c:
            com.google.android.gms.internal.ads.zzrw[] r7 = r0.f20584q
            r8 = r7[r3]
            if (r8 == 0) goto L76
            com.google.android.gms.internal.ads.zzuj r8 = r8.f20579a
            if (r8 == r6) goto L7d
        L76:
            com.google.android.gms.internal.ads.zzrw r8 = new com.google.android.gms.internal.ads.zzrw
            r8.<init>(r14, r6)
            r7[r3] = r8
        L7d:
            com.google.android.gms.internal.ads.zzrw[] r6 = r0.f20584q
            r6 = r6[r3]
            r1[r3] = r6
            int r3 = r3 + 1
            goto L60
        L86:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzrx.j(com.google.android.gms.internal.ads.zzwe[], boolean[], com.google.android.gms.internal.ads.zzuj[], boolean[], long):long");
    }

    public final void k(long j10, long j11) {
        this.f20586s = j11;
    }

    final boolean l() {
        return this.f20585r != -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final void m(zzsp zzspVar, long j10) {
        this.f20583p = zzspVar;
        this.f20582o.m(this, j10);
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final boolean n() {
        return this.f20582o.n();
    }

    @Override // com.google.android.gms.internal.ads.zzsq
    public final long o(long j10, zzkq zzkqVar) {
        if (j10 == 0) {
            return 0L;
        }
        long jC0 = zzew.c0(zzkqVar.f20083a, 0L, j10);
        long j11 = zzkqVar.f20084b;
        long j12 = this.f20586s;
        long jC02 = zzew.c0(j11, 0L, j12 == Long.MIN_VALUE ? Long.MAX_VALUE : j12 - j10);
        if (jC0 != zzkqVar.f20083a || jC02 != zzkqVar.f20084b) {
            zzkqVar = new zzkq(jC0, jC02);
        }
        return this.f20582o.o(j10, zzkqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzsq, com.google.android.gms.internal.ads.zzul
    public final long zzb() {
        long jZzb = this.f20582o.zzb();
        if (jZzb != Long.MIN_VALUE) {
            long j10 = this.f20586s;
            if (j10 == Long.MIN_VALUE || jZzb < j10) {
                return jZzb;
            }
        }
        return Long.MIN_VALUE;
    }
}
