package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzewe implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzeiq f17515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfen f17516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzfec f17517c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzddw f17518d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzewf f17519e;

    zzewe(zzewf zzewfVar, zzeiq zzeiqVar, zzfen zzfenVar, zzfec zzfecVar, zzddw zzddwVar) {
        this.f17519e = zzewfVar;
        this.f17515a = zzeiqVar;
        this.f17516b = zzfenVar;
        this.f17517c = zzfecVar;
        this.f17518d = zzddwVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        zzfen zzfenVar;
        final com.google.android.gms.ads.internal.client.zze zzeVarA = this.f17518d.a().a(th);
        synchronized (this.f17519e) {
            this.f17519e.f17528i = null;
            this.f17518d.b().v(zzeVarA);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.A7)).booleanValue()) {
                this.f17519e.f17521b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzewc
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzewe zzeweVar = this.f17511o;
                        zzeweVar.f17519e.f17523d.v(zzeVarA);
                    }
                });
                this.f17519e.f17521b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzewd
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzewe zzeweVar = this.f17513o;
                        zzeweVar.f17519e.f17524e.v(zzeVarA);
                    }
                });
            }
            zzezr.b(zzeVarA.f5841o, th, "InterstitialAdLoader.onFailure");
            this.f17515a.zza();
            if (!((Boolean) zzbcd.f10514c.e()).booleanValue() || (zzfenVar = this.f17516b) == null) {
                zzfep zzfepVar = this.f17519e.f17526g;
                zzfec zzfecVar = this.f17517c;
                zzfecVar.v(zzeVarA);
                zzfecVar.b(th);
                zzfecVar.y0(false);
                zzfepVar.b(zzfecVar.j());
            } else {
                zzfenVar.c(zzeVarA);
                zzfec zzfecVar2 = this.f17517c;
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
        zzdcv zzdcvVar = (zzdcv) obj;
        synchronized (this.f17519e) {
            this.f17519e.f17528i = null;
            zzbaj zzbajVar = zzbar.A7;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).booleanValue()) {
                zzcyt zzcytVarE = zzdcvVar.e();
                zzcytVarE.a(this.f17519e.f17523d);
                zzcytVarE.d(this.f17519e.f17524e);
            }
            this.f17515a.c(zzdcvVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).booleanValue()) {
                this.f17519e.f17521b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzewa
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f17509o.f17519e.f17523d.k();
                    }
                });
                this.f17519e.f17521b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzewb
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f17510o.f17519e.f17524e.k();
                    }
                });
            }
            if (!((Boolean) zzbcd.f10514c.e()).booleanValue() || (zzfenVar = this.f17516b) == null) {
                zzfep zzfepVar = this.f17519e.f17526g;
                zzfec zzfecVar = this.f17517c;
                zzfecVar.a(zzdcvVar.g().f17703b);
                zzfecVar.O(zzdcvVar.c().e());
                zzfecVar.y0(true);
                zzfepVar.b(zzfecVar.j());
            } else {
                zzfenVar.f(zzdcvVar.g().f17703b);
                zzfenVar.e(zzdcvVar.c().e());
                zzfec zzfecVar2 = this.f17517c;
                zzfecVar2.y0(true);
                zzfenVar.a(zzfecVar2);
                zzfenVar.g();
            }
        }
    }
}
