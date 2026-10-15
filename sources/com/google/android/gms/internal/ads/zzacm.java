package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzacm implements zzaax {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzaax f8513a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzacn f8514b;

    zzacm(zzacn zzacnVar, zzaax zzaaxVar) {
        this.f8514b = zzacnVar;
        this.f8513a = zzaaxVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final long b() {
        return this.f8513a.b();
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final zzaav c(long j10) {
        zzaav zzaavVarC = this.f8513a.c(j10);
        zzaay zzaayVar = zzaavVarC.f8349a;
        zzaay zzaayVar2 = new zzaay(zzaayVar.f8354a, zzaayVar.f8355b + this.f8514b.f8515o);
        zzaay zzaayVar3 = zzaavVarC.f8350b;
        return new zzaav(zzaayVar2, new zzaay(zzaayVar3.f8354a, zzaayVar3.f8355b + this.f8514b.f8515o));
    }

    @Override // com.google.android.gms.internal.ads.zzaax
    public final boolean f() {
        return this.f8513a.f();
    }
}
