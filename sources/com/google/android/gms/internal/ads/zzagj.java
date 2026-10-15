package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzagj {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zzagg f8930a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f8931b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long[] f8932c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int[] f8933d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f8934e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long[] f8935f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int[] f8936g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f8937h;

    public zzagj(zzagg zzaggVar, long[] jArr, int[] iArr, int i10, long[] jArr2, int[] iArr2, long j10) {
        int length = iArr.length;
        int length2 = jArr2.length;
        zzdl.d(length == length2);
        int length3 = jArr.length;
        zzdl.d(length3 == length2);
        int length4 = iArr2.length;
        zzdl.d(length4 == length2);
        this.f8930a = zzaggVar;
        this.f8932c = jArr;
        this.f8933d = iArr;
        this.f8934e = i10;
        this.f8935f = jArr2;
        this.f8936g = iArr2;
        this.f8937h = j10;
        this.f8931b = length3;
        if (length4 > 0) {
            int i11 = length4 - 1;
            iArr2[i11] = iArr2[i11] | 536870912;
        }
    }

    public final int a(long j10) {
        for (int iO = zzew.O(this.f8935f, j10, true, false); iO >= 0; iO--) {
            if ((this.f8936g[iO] & 1) != 0) {
                return iO;
            }
        }
        return -1;
    }

    public final int b(long j10) {
        for (int iM = zzew.M(this.f8935f, j10, true, false); iM < this.f8935f.length; iM++) {
            if ((this.f8936g[iM] & 1) != 0) {
                return iM;
            }
        }
        return -1;
    }
}
