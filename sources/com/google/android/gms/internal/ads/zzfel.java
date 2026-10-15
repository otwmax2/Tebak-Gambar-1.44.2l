package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfel implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzfen f18029a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfec f18030b;

    zzfel(zzfen zzfenVar, zzfec zzfecVar) {
        this.f18029a = zzfenVar;
        this.f18030b = zzfecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        zzfen zzfenVar = this.f18029a;
        zzfec zzfecVar = this.f18030b;
        zzfecVar.b(th);
        zzfecVar.y0(false);
        zzfenVar.a(zzfecVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void c(Object obj) {
    }
}
