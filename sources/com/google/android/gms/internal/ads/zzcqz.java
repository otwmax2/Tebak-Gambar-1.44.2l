package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzcqz implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzfuf f13792a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzcra f13793b;

    zzcqz(zzcra zzcraVar, zzfuf zzfufVar) {
        this.f13793b = zzcraVar;
        this.f13792a = zzfufVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqx
            @Override // java.lang.Runnable
            public final void run() {
                this.f13789o.d();
            }
        });
        this.f13792a.a(th);
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzcqx
            @Override // java.lang.Runnable
            public final void run() {
                this.f13789o.d();
            }
        });
        this.f13792a.c((zzcqm) obj);
    }
}
