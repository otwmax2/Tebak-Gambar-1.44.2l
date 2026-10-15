package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeix implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzeiq f16744a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfen f16745b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzfec f16746c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzdes f16747d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzeiy f16748e;

    zzeix(zzeiy zzeiyVar, zzeiq zzeiqVar, zzfen zzfenVar, zzfec zzfecVar, zzdes zzdesVar) {
        this.f16748e = zzeiyVar;
        this.f16744a = zzeiqVar;
        this.f16745b = zzfenVar;
        this.f16746c = zzfecVar;
        this.f16747d = zzdesVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        zzfen zzfenVar;
        final com.google.android.gms.ads.internal.client.zze zzeVarA = this.f16747d.a().a(th);
        this.f16747d.b().v(zzeVarA);
        this.f16748e.f16750b.b().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeiw
            @Override // java.lang.Runnable
            public final void run() {
                zzeix zzeixVar = this.f16742o;
                zzeixVar.f16748e.f16752d.a().v(zzeVarA);
            }
        });
        zzezr.b(zzeVarA.f5841o, th, "NativeAdLoader.onFailure");
        this.f16744a.zza();
        if (!((Boolean) zzbcd.f10514c.e()).booleanValue() || (zzfenVar = this.f16745b) == null) {
            zzfep zzfepVar = this.f16748e.f16753e;
            zzfec zzfecVar = this.f16746c;
            zzfecVar.v(zzeVarA);
            zzfecVar.b(th);
            zzfecVar.y0(false);
            zzfepVar.b(zzfecVar.j());
            return;
        }
        zzfenVar.c(zzeVarA);
        zzfec zzfecVar2 = this.f16746c;
        zzfecVar2.b(th);
        zzfecVar2.y0(false);
        zzfenVar.a(zzfecVar2);
        zzfenVar.g();
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final /* bridge */ /* synthetic */ void c(Object obj) {
        zzfen zzfenVar;
        zzcqm zzcqmVar = (zzcqm) obj;
        synchronized (this.f16748e) {
            zzcqmVar.e().a(this.f16748e.f16752d.d());
            this.f16744a.c(zzcqmVar);
            this.f16748e.f16750b.b().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeiv
                @Override // java.lang.Runnable
                public final void run() {
                    this.f16741o.f16748e.f16752d.b().k();
                }
            });
            if (!((Boolean) zzbcd.f10514c.e()).booleanValue() || (zzfenVar = this.f16745b) == null) {
                zzfep zzfepVar = this.f16748e.f16753e;
                zzfec zzfecVar = this.f16746c;
                zzfecVar.a(zzcqmVar.g().f17703b);
                zzfecVar.O(zzcqmVar.c().e());
                zzfecVar.y0(true);
                zzfepVar.b(zzfecVar.j());
            } else {
                zzfenVar.f(zzcqmVar.g().f17703b);
                zzfenVar.e(zzcqmVar.c().e());
                zzfec zzfecVar2 = this.f16746c;
                zzfecVar2.y0(true);
                zzfenVar.a(zzfecVar2);
                zzfenVar.g();
            }
        }
    }
}
