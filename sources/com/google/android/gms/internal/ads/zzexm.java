package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzexm implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzeiq f17575a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfen f17576b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzfec f17577c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzexo f17578d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzexp f17579e;

    zzexm(zzexp zzexpVar, zzeiq zzeiqVar, zzfen zzfenVar, zzfec zzfecVar, zzexo zzexoVar) {
        this.f17579e = zzexpVar;
        this.f17575a = zzeiqVar;
        this.f17576b = zzfenVar;
        this.f17577c = zzfecVar;
        this.f17578d = zzexoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        zzfen zzfenVar;
        zzdlz zzdlzVar = (zzdlz) this.f17579e.f17586e.d();
        final com.google.android.gms.ads.internal.client.zze zzeVarB = zzdlzVar == null ? zzezx.b(th, null) : zzdlzVar.zzb().a(th);
        synchronized (this.f17579e) {
            if (zzdlzVar != null) {
                zzdlzVar.b().v(zzeVarB);
                this.f17579e.f17583b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzexl
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzexm zzexmVar = this.f17573o;
                        zzexmVar.f17579e.f17585d.v(zzeVarB);
                    }
                });
            } else {
                this.f17579e.f17585d.v(zzeVarB);
                this.f17579e.j(this.f17578d).f().zzb().c().d();
            }
            zzezr.b(zzeVarB.f5841o, th, "RewardedAdLoader.onFailure");
            this.f17575a.zza();
            if (!((Boolean) zzbcd.f10514c.e()).booleanValue() || (zzfenVar = this.f17576b) == null) {
                zzfep zzfepVar = this.f17579e.f17588g;
                zzfec zzfecVar = this.f17577c;
                zzfecVar.v(zzeVarB);
                zzfecVar.b(th);
                zzfecVar.y0(false);
                zzfepVar.b(zzfecVar.j());
            } else {
                zzfenVar.c(zzeVarB);
                zzfec zzfecVar2 = this.f17577c;
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
        zzdlu zzdluVar = (zzdlu) obj;
        synchronized (this.f17579e) {
            zzdluVar.e().d(this.f17579e.f17585d);
            this.f17575a.c(zzdluVar);
            zzexp zzexpVar = this.f17579e;
            Executor executor = zzexpVar.f17583b;
            final zzexf zzexfVar = zzexpVar.f17585d;
            zzexfVar.getClass();
            executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzexk
                @Override // java.lang.Runnable
                public final void run() {
                    zzexfVar.k();
                }
            });
            this.f17579e.f17585d.o();
            if (!((Boolean) zzbcd.f10514c.e()).booleanValue() || (zzfenVar = this.f17576b) == null) {
                zzfep zzfepVar = this.f17579e.f17588g;
                zzfec zzfecVar = this.f17577c;
                zzfecVar.a(zzdluVar.g().f17703b);
                zzfecVar.O(zzdluVar.c().e());
                zzfecVar.y0(true);
                zzfepVar.b(zzfecVar.j());
            } else {
                zzfenVar.f(zzdluVar.g().f17703b);
                zzfenVar.e(zzdluVar.c().e());
                zzfec zzfecVar2 = this.f17577c;
                zzfecVar2.y0(true);
                zzfenVar.a(zzfecVar2);
                zzfenVar.g();
            }
        }
    }
}
