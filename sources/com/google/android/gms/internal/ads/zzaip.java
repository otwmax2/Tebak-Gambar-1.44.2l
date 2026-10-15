package com.google.android.gms.internal.ads;

import java.io.IOException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaip implements zzzf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzeu f9285a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzen f9286b = new zzen();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f9287c;

    public zzaip(int i10, zzeu zzeuVar, int i11) {
        this.f9287c = i10;
        this.f9285a = zzeuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final zzze a(zzzv zzzvVar, long j10) throws IOException {
        int iA;
        int iA2;
        long j11;
        long jC = zzzvVar.c();
        int iMin = (int) Math.min(112800L, zzzvVar.d() - jC);
        this.f9286b.c(iMin);
        ((zzzk) zzzvVar).k(this.f9286b.h(), 0, iMin, false);
        zzen zzenVar = this.f9286b;
        int iL = zzenVar.l();
        long j12 = -1;
        long j13 = -9223372036854775807L;
        long j14 = -1;
        while (zzenVar.i() >= 188 && (iA2 = (iA = zzajb.a(zzenVar.h(), zzenVar.k(), iL)) + 188) <= iL) {
            long jB = zzajb.b(zzenVar, iA, this.f9287c);
            if (jB != -9223372036854775807L) {
                long jB2 = this.f9285a.b(jB);
                if (jB2 > j10) {
                    if (j13 == -9223372036854775807L) {
                        return zzze.d(jB2, jC);
                    }
                    j11 = jC + j14;
                } else if (100000 + jB2 > j10) {
                    j11 = jC + ((long) iA);
                } else {
                    j14 = iA;
                    j13 = jB2;
                }
                return zzze.e(j11);
            }
            zzenVar.f(iA2);
            j12 = iA2;
        }
        return j13 != -9223372036854775807L ? zzze.f(j13, jC + j12) : zzze.f21172d;
    }

    @Override // com.google.android.gms.internal.ads.zzzf
    public final void zzb() {
        zzen zzenVar = this.f9286b;
        byte[] bArr = zzew.f17499f;
        int length = bArr.length;
        zzenVar.d(bArr, 0);
    }
}
