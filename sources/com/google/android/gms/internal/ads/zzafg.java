package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzafg implements zzafe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f8770a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f8771b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f8772c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f8773d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f8774e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long[] f8775f;

    private zzafg(long j10, int i10, long j11, long j12, long[] jArr) {
        this.f8770a = j10;
        this.f8771b = i10;
        this.f8772c = j11;
        this.f8775f = jArr;
        this.f8773d = j12;
        this.f8774e = j12 != -1 ? j10 + j12 : -1L;
    }

    public static zzafg a(long j10, long j11, zzaan zzaanVar, zzen zzenVar) {
        int iV;
        int i10 = zzaanVar.f8324g;
        int i11 = zzaanVar.f8321d;
        int iM = zzenVar.m();
        if ((iM & 1) != 1 || (iV = zzenVar.v()) == 0) {
            return null;
        }
        int i12 = iM & 6;
        long jH0 = zzew.h0(iV, ((long) i10) * 1000000, i11);
        if (i12 != 6) {
            return new zzafg(j11, zzaanVar.f8320c, jH0, -1L, null);
        }
        long jA = zzenVar.A();
        long[] jArr = new long[100];
        for (int i13 = 0; i13 < 100; i13++) {
            jArr[i13] = zzenVar.s();
        }
        if (j10 != -1) {
            long j12 = j11 + jA;
            if (j10 != j12) {
                zzee.e("XingSeeker", "XING data size mismatch: " + j10 + ", " + j12);
            }
        }
        return new zzafg(j11, zzaanVar.f8320c, jH0, jA, jArr);
    }

    private final long e(int i10) {
        return (this.f8772c * ((long) i10)) / 100;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final long b() {
        return this.f8772c;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final zzaav c(long j10) {
        if (!f()) {
            zzaay zzaayVar = new zzaay(0L, this.f8770a + ((long) this.f8771b));
            return new zzaav(zzaayVar, zzaayVar);
        }
        long jC0 = zzew.c0(j10, 0L, this.f8772c);
        double d10 = jC0;
        long j11 = this.f8772c;
        Double.isNaN(d10);
        double d11 = j11;
        Double.isNaN(d11);
        double d12 = (d10 * 100.0d) / d11;
        double d13 = 0.0d;
        if (d12 > 0.0d) {
            if (d12 >= 100.0d) {
                d13 = 256.0d;
            } else {
                int i10 = (int) d12;
                double d14 = ((long[]) zzdl.b(this.f8775f))[i10];
                double d15 = i10 == 99 ? 256.0d : r3[i10 + 1];
                double d16 = i10;
                Double.isNaN(d16);
                Double.isNaN(d14);
                Double.isNaN(d14);
                d13 = d14 + ((d12 - d16) * (d15 - d14));
            }
        }
        double d17 = this.f8773d;
        Double.isNaN(d17);
        zzaay zzaayVar2 = new zzaay(jC0, this.f8770a + zzew.c0(Math.round((d13 / 256.0d) * d17), this.f8771b, this.f8773d - 1));
        return new zzaav(zzaayVar2, zzaayVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final long d(long j10) {
        double d10;
        long j11 = j10 - this.f8770a;
        if (!f() || j11 <= this.f8771b) {
            return 0L;
        }
        long[] jArr = (long[]) zzdl.b(this.f8775f);
        double d11 = j11;
        long j12 = this.f8773d;
        Double.isNaN(d11);
        double d12 = j12;
        Double.isNaN(d12);
        double d13 = (d11 * 256.0d) / d12;
        int iO = zzew.O(jArr, (long) d13, true, true);
        long jE = e(iO);
        long j13 = jArr[iO];
        int i10 = iO + 1;
        long jE2 = e(i10);
        long j14 = iO == 99 ? 256L : jArr[i10];
        if (j13 == j14) {
            d10 = 0.0d;
        } else {
            double d14 = j13;
            Double.isNaN(d14);
            double d15 = j14 - j13;
            Double.isNaN(d15);
            d10 = (d13 - d14) / d15;
        }
        double d16 = jE2 - jE;
        Double.isNaN(d16);
        return jE + Math.round(d10 * d16);
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final boolean f() {
        return this.f8775f != null;
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final long zzb() {
        return this.f8774e;
    }
}
