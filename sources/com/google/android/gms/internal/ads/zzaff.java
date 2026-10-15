package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaff implements zzafe {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long[] f8766a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f8767b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f8768c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f8769d;

    private zzaff(long[] jArr, long[] jArr2, long j10, long j11) {
        this.f8766a = jArr;
        this.f8767b = jArr2;
        this.f8768c = j10;
        this.f8769d = j11;
    }

    public static zzaff a(long j10, long j11, zzaan zzaanVar, zzen zzenVar) {
        int iS;
        zzenVar.g(10);
        int iM = zzenVar.m();
        if (iM <= 0) {
            return null;
        }
        int i10 = zzaanVar.f8321d;
        long jH0 = zzew.h0(iM, ((long) (i10 >= 32000 ? 1152 : 576)) * 1000000, i10);
        int iW = zzenVar.w();
        int iW2 = zzenVar.w();
        int iW3 = zzenVar.w();
        zzenVar.g(2);
        long j12 = j11 + ((long) zzaanVar.f8320c);
        long[] jArr = new long[iW];
        long[] jArr2 = new long[iW];
        int i11 = 0;
        long j13 = j11;
        while (i11 < iW) {
            int i12 = iW2;
            long j14 = j12;
            jArr[i11] = (((long) i11) * jH0) / ((long) iW);
            jArr2[i11] = Math.max(j13, j14);
            if (iW3 == 1) {
                iS = zzenVar.s();
            } else if (iW3 == 2) {
                iS = zzenVar.w();
            } else if (iW3 == 3) {
                iS = zzenVar.u();
            } else {
                if (iW3 != 4) {
                    return null;
                }
                iS = zzenVar.v();
            }
            j13 += ((long) iS) * ((long) i12);
            i11++;
            j12 = j14;
            iW2 = i12;
            iW = iW;
        }
        if (j10 != -1 && j10 != j13) {
            zzee.e("VbriSeeker", "VBRI data size mismatch: " + j10 + ", " + j13);
        }
        return new zzaff(jArr, jArr2, jH0, j13);
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final long b() {
        return this.f8768c;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final zzaav c(long j10) {
        int iO = zzew.O(this.f8766a, j10, true, true);
        zzaay zzaayVar = new zzaay(this.f8766a[iO], this.f8767b[iO]);
        if (zzaayVar.f8354a < j10) {
            long[] jArr = this.f8766a;
            if (iO != jArr.length - 1) {
                int i10 = iO + 1;
                return new zzaav(zzaayVar, new zzaay(jArr[i10], this.f8767b[i10]));
            }
        }
        return new zzaav(zzaayVar, zzaayVar);
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final long d(long j10) {
        return this.f8766a[zzew.O(this.f8767b, j10, true, true)];
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final boolean f() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzafe
    public final long zzb() {
        return this.f8769d;
    }
}
