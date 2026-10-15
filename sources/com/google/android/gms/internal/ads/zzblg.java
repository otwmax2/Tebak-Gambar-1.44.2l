package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzblg implements zzbzw {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzblq f10876a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfec f10877b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzblr f10878c;

    zzblg(zzblr zzblrVar, zzblq zzblqVar, zzfec zzfecVar) {
        this.f10878c = zzblrVar;
        this.f10876a = zzblqVar;
        this.f10877b = zzfecVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbzw
    public final /* bridge */ /* synthetic */ void a(Object obj) {
        synchronized (this.f10878c.f10896a) {
            this.f10878c.f10904i = 0;
            zzblr zzblrVar = this.f10878c;
            if (zzblrVar.f10903h != null && this.f10876a != zzblrVar.f10903h) {
                com.google.android.gms.ads.internal.util.zze.k("New JS engine is loaded, marking previous one as destroyable.");
                this.f10878c.f10903h.g();
            }
            this.f10878c.f10903h = this.f10876a;
            if (((Boolean) zzbcd.f10515d.e()).booleanValue()) {
                zzblr zzblrVar2 = this.f10878c;
                if (zzblrVar2.f10900e != null) {
                    zzfep zzfepVar = zzblrVar2.f10900e;
                    zzfec zzfecVar = this.f10877b;
                    zzfecVar.y0(true);
                    zzfepVar.b(zzfecVar.j());
                }
            }
        }
    }
}
