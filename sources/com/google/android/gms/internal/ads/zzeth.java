package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeth implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzeiq f17337a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfen f17338b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzfec f17339c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzetj f17340d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzetk f17341e;

    zzeth(zzetk zzetkVar, zzeiq zzeiqVar, zzfen zzfenVar, zzfec zzfecVar, zzetj zzetjVar) {
        this.f17341e = zzetkVar;
        this.f17337a = zzeiqVar;
        this.f17338b = zzfenVar;
        this.f17339c = zzfecVar;
        this.f17340d = zzetjVar;
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [com.google.android.gms.internal.ads.zzctw, java.lang.Object] */
    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        zzfen zzfenVar;
        zzcnu zzcnuVar = (zzcnu) this.f17341e.f17347e.d();
        final com.google.android.gms.ads.internal.client.zze zzeVarB = zzcnuVar == null ? zzezx.b(th, null) : zzcnuVar.zzb().a(th);
        synchronized (this.f17341e) {
            this.f17341e.f17352j = null;
            if (zzcnuVar != null) {
                zzcnuVar.a().v(zzeVarB);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10441z7)).booleanValue()) {
                    this.f17341e.f17344b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzetg
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzeth zzethVar = this.f17335o;
                            zzethVar.f17341e.f17346d.v(zzeVarB);
                        }
                    });
                }
            } else {
                this.f17341e.f17346d.v(zzeVarB);
                this.f17341e.l(this.f17340d).f().zzb().c().d();
            }
            zzezr.b(zzeVarB.f5841o, th, "AppOpenAdLoader.onFailure");
            this.f17337a.zza();
            if (!((Boolean) zzbcd.f10514c.e()).booleanValue() || (zzfenVar = this.f17338b) == null) {
                zzfep zzfepVar = this.f17341e.f17350h;
                zzfec zzfecVar = this.f17339c;
                zzfecVar.v(zzeVarB);
                zzfecVar.b(th);
                zzfecVar.y0(false);
                zzfepVar.b(zzfecVar.j());
            } else {
                zzfenVar.c(zzeVarB);
                zzfec zzfecVar2 = this.f17339c;
                zzfecVar2.b(th);
                zzfecVar2.y0(false);
                zzfenVar.a(zzfecVar2);
                zzfenVar.g();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        zzfen zzfenVar;
        zzcqm zzcqmVar = (zzcqm) obj;
        synchronized (this.f17341e) {
            this.f17341e.f17352j = null;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10441z7)).booleanValue()) {
                zzcqmVar.e().b(this.f17341e.f17346d);
            }
            this.f17337a.c(zzcqmVar);
            if (!((Boolean) zzbcd.f10514c.e()).booleanValue() || (zzfenVar = this.f17338b) == null) {
                zzfep zzfepVar = this.f17341e.f17350h;
                zzfec zzfecVar = this.f17339c;
                zzfecVar.a(zzcqmVar.g().f17703b);
                zzfecVar.O(zzcqmVar.c().e());
                zzfecVar.y0(true);
                zzfepVar.b(zzfecVar.j());
            } else {
                zzfenVar.f(zzcqmVar.g().f17703b);
                zzfenVar.e(zzcqmVar.c().e());
                zzfec zzfecVar2 = this.f17339c;
                zzfecVar2.y0(true);
                zzfenVar.a(zzfecVar2);
                zzfenVar.g();
            }
        }
    }
}
