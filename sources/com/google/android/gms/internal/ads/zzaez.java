package com.google.android.gms.internal.ads;

import android.util.Pair;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaez implements zzafe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long[] f8705a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f8706b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f8707c;

    private zzaez(long[] jArr, long[] jArr2, long j10) {
        this.f8705a = jArr;
        this.f8706b = jArr2;
        this.f8707c = j10 == -9223372036854775807L ? zzew.g0(jArr2[jArr2.length - 1]) : j10;
    }

    public static zzaez a(long j10, zzadt zzadtVar, long j11) {
        int length = zzadtVar.f8607s.length;
        int i10 = length + 1;
        long[] jArr = new long[i10];
        long[] jArr2 = new long[i10];
        jArr[0] = j10;
        long j12 = 0;
        jArr2[0] = 0;
        for (int i11 = 1; i11 <= length; i11++) {
            int i12 = i11 - 1;
            j10 += (long) (zzadtVar.f8605q + zzadtVar.f8607s[i12]);
            j12 += (long) (zzadtVar.f8606r + zzadtVar.f8608t[i12]);
            jArr[i11] = j10;
            jArr2[i11] = j12;
        }
        return new zzaez(jArr, jArr2, j11);
    }

    private static Pair e(long j10, long[] jArr, long[] jArr2) {
        double d10;
        int iO = zzew.O(jArr, j10, true, true);
        long j11 = jArr[iO];
        long j12 = jArr2[iO];
        int i10 = iO + 1;
        if (i10 == jArr.length) {
            return Pair.create(Long.valueOf(j11), Long.valueOf(j12));
        }
        long j13 = jArr[i10];
        long j14 = jArr2[i10];
        if (j13 == j11) {
            d10 = 0.0d;
        } else {
            double d11 = j10;
            double d12 = j11;
            Double.isNaN(d11);
            Double.isNaN(d12);
            double d13 = j13 - j11;
            Double.isNaN(d13);
            d10 = (d11 - d12) / d13;
        }
        double d14 = j14 - j12;
        Double.isNaN(d14);
        return Pair.create(Long.valueOf(j10), Long.valueOf(((long) (d10 * d14)) + j12));
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final long b() {
        return this.f8707c;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final zzaav c(long j10) {
        Pair pairE = e(zzew.k0(zzew.c0(j10, 0L, this.f8707c)), this.f8706b, this.f8705a);
        zzaay zzaayVar = new zzaay(zzew.g0(((Long) pairE.first).longValue()), ((Long) pairE.second).longValue());
        return new zzaav(zzaayVar, zzaayVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final long d(long j10) {
        return zzew.g0(((Long) e(j10, this.f8705a, this.f8706b).second).longValue());
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final boolean f() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final long zzb() {
        return -1L;
    }
}
