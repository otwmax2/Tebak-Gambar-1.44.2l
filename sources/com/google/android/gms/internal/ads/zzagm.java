package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzagm implements zzagt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzags f8939a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f8940b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f8941c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzagy f8942d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8943e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f8944f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f8945g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private long f8946h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private long f8947i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private long f8948j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f8949k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private long f8950l;

    public zzagm(zzagy zzagyVar, long j10, long j11, long j12, long j13, boolean z10) {
        zzdl.d(j10 >= 0 && j11 > j10);
        this.f8942d = zzagyVar;
        this.f8940b = j10;
        this.f8941c = j11;
        if (j12 == j11 - j10 || z10) {
            this.f8944f = j13;
            this.f8943e = 4;
        } else {
            this.f8943e = 0;
        }
        this.f8939a = new zzags();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x001d  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00aa A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x00ab  */
    @Override // com.google.android.gms.internal.ads.zzagt
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final long a(com.google.android.gms.internal.ads.zzzv r25) throws java.io.IOException {
        /*
            Method dump skipped, instruction units count: 357
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzagm.a(com.google.android.gms.internal.ads.zzzv):long");
    }

    @Override // com.google.android.gms.internal.ads.zzagt
    public final /* bridge */ /* synthetic */ zzaax b() {
        zzagk zzagkVar = null;
        if (this.f8944f != 0) {
            return new zzagl(this, zzagkVar);
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzagt
    public final void c(long j10) {
        this.f8946h = zzew.c0(j10, 0L, this.f8944f - 1);
        this.f8943e = 2;
        this.f8947i = this.f8940b;
        this.f8948j = this.f8941c;
        this.f8949k = 0L;
        this.f8950l = this.f8944f;
    }
}
