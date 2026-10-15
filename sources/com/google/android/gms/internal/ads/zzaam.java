package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaam implements zzaax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long[] f8314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long[] f8315b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f8316c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final boolean f8317d;

    public zzaam(long[] jArr, long[] jArr2, long j10) {
        int length = jArr.length;
        int length2 = jArr2.length;
        zzdl.d(length == length2);
        boolean z10 = length2 > 0;
        this.f8317d = z10;
        if (!z10 || jArr2[0] <= 0) {
            this.f8314a = jArr;
            this.f8315b = jArr2;
        } else {
            int i10 = length2 + 1;
            long[] jArr3 = new long[i10];
            this.f8314a = jArr3;
            long[] jArr4 = new long[i10];
            this.f8315b = jArr4;
            System.arraycopy(jArr, 0, jArr3, 1, length2);
            System.arraycopy(jArr2, 0, jArr4, 1, length2);
        }
        this.f8316c = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final long b() {
        return this.f8316c;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final zzaav c(long j10) {
        if (!this.f8317d) {
            zzaay zzaayVar = zzaay.f8353c;
            return new zzaav(zzaayVar, zzaayVar);
        }
        int iO = zzew.O(this.f8315b, j10, true, true);
        zzaay zzaayVar2 = new zzaay(this.f8315b[iO], this.f8314a[iO]);
        if (zzaayVar2.f8354a != j10) {
            long[] jArr = this.f8315b;
            if (iO != jArr.length - 1) {
                int i10 = iO + 1;
                return new zzaav(zzaayVar2, new zzaay(jArr[i10], this.f8314a[i10]));
            }
        }
        return new zzaav(zzaayVar2, zzaayVar2);
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final boolean f() {
        return this.f8317d;
    }
}
