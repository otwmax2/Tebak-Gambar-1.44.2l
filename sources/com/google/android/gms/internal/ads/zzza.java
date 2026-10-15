package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzza implements zzaax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzzd f21158a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f21159b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f21160c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f21161d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f21162e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final long f21163f;

    public zzza(zzzd zzzdVar, long j10, long j11, long j12, long j13, long j14, long j15) {
        this.f21158a = zzzdVar;
        this.f21159b = j10;
        this.f21160c = j12;
        this.f21161d = j13;
        this.f21162e = j14;
        this.f21163f = j15;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final long b() {
        return this.f21159b;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final zzaav c(long j10) {
        zzaay zzaayVar = new zzaay(j10, zzzc.f(this.f21158a.f1(j10), 0L, this.f21160c, this.f21161d, this.f21162e, this.f21163f));
        return new zzaav(zzaayVar, zzaayVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final boolean f() {
        return true;
    }

    public final long i(long j10) {
        return this.f21158a.f1(j10);
    }
}
