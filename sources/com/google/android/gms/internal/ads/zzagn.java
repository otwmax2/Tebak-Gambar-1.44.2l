package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzagn implements zzagt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzaah f8951a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzaag f8952b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private long f8953c = -1;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f8954d = -1;

    public zzagn(zzaah zzaahVar, zzaag zzaagVar) {
        this.f8951a = zzaahVar;
        this.f8952b = zzaagVar;
    }

    @Override // com.google.android.gms.internal.ads.zzagt
    public final long a(zzzv zzzvVar) {
        long j10 = this.f8954d;
        if (j10 < 0) {
            return -1L;
        }
        this.f8954d = -1L;
        return -(j10 + 2);
    }

    @Override // com.google.android.gms.internal.ads.zzagt
    public final zzaax b() {
        zzdl.f(this.f8953c != -1);
        return new zzaaf(this.f8951a, this.f8953c);
    }

    @Override // com.google.android.gms.internal.ads.zzagt
    public final void c(long j10) {
        long[] jArr = this.f8952b.f8291a;
        this.f8954d = jArr[zzew.O(jArr, j10, true, true)];
    }

    public final void d(long j10) {
        this.f8953c = j10;
    }
}
