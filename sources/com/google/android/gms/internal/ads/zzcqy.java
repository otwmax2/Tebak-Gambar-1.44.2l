package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcqy implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzfuf f13790a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzcra f13791b;

    zzcqy(zzcra zzcraVar, zzfuf zzfufVar) {
        this.f13791b = zzcraVar;
        this.f13790a = zzfufVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        this.f13790a.a(th);
        zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqx
            @Override // java.lang.Runnable
            public final void run() {
                this.f13789o.d();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        zzcra.b(this.f13791b, ((zzcqt) obj).f13783a, this.f13790a);
    }
}
