package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzagl implements zzaax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzagm f8938a;

    /* synthetic */ zzagl(zzagm zzagmVar, zzagk zzagkVar) {
        this.f8938a = zzagmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final long b() {
        zzagm zzagmVar = this.f8938a;
        return zzagmVar.f8942d.e(zzagmVar.f8944f);
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final zzaav c(long j10) {
        zzaay zzaayVar = new zzaay(j10, zzew.c0((r0.f8940b + ((r0.f8942d.f(j10) * (r0.f8941c - r0.f8940b)) / r0.f8944f)) - 30000, this.f8938a.f8940b, r0.f8941c - 1));
        return new zzaav(zzaayVar, zzaayVar);
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final boolean f() {
        return true;
    }
}
