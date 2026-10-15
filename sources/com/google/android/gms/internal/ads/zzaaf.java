package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzaaf implements zzaax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaah f8289a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f8290b;

    public zzaaf(zzaah zzaahVar, long j10) {
        this.f8289a = zzaahVar;
        this.f8290b = j10;
    }

    private final zzaay a(long j10, long j11) {
        return new zzaay((j10 * 1000000) / ((long) this.f8289a.f8297e), this.f8290b + j11);
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final long b() {
        return this.f8289a.a();
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final zzaav c(long j10) {
        zzdl.b(this.f8289a.f8303k);
        zzaah zzaahVar = this.f8289a;
        zzaag zzaagVar = zzaahVar.f8303k;
        long[] jArr = zzaagVar.f8291a;
        long[] jArr2 = zzaagVar.f8292b;
        int iO = zzew.O(jArr, zzaahVar.b(j10), true, false);
        zzaay zzaayVarA = a(iO == -1 ? 0L : jArr[iO], iO != -1 ? jArr2[iO] : 0L);
        if (zzaayVarA.f8354a == j10 || iO == jArr.length - 1) {
            return new zzaav(zzaayVarA, zzaayVarA);
        }
        int i10 = iO + 1;
        return new zzaav(zzaayVarA, a(jArr[i10], jArr2[i10]));
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final boolean f() {
        return true;
    }
}
