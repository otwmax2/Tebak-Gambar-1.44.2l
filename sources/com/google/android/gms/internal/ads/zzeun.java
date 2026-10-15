package com.google.android.gms.internal.ads;

import android.view.ViewGroup;
import android.view.ViewParent;
import com.vungle.mediation.BuildConfig;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzeun implements zzfuf {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ zzeiq f17411a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ zzfen f17412b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ zzfec f17413c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final /* synthetic */ zzcph f17414d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final /* synthetic */ zzeuo f17415e;

    zzeun(zzeuo zzeuoVar, zzeiq zzeiqVar, zzfen zzfenVar, zzfec zzfecVar, zzcph zzcphVar) {
        this.f17415e = zzeuoVar;
        this.f17411a = zzeiqVar;
        this.f17412b = zzfenVar;
        this.f17413c = zzfecVar;
        this.f17414d = zzcphVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfuf
    public final void a(Throwable th) {
        zzfen zzfenVar;
        final com.google.android.gms.ads.internal.client.zze zzeVarA = this.f17414d.d().a(th);
        synchronized (this.f17415e) {
            this.f17415e.f17427l = null;
            this.f17414d.e().v(zzeVarA);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10430y7)).booleanValue()) {
                this.f17415e.f17417b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeum
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeun zzeunVar = this.f17409o;
                        zzeunVar.f17415e.f17419d.v(zzeVarA);
                    }
                });
            }
            zzeuo zzeuoVar = this.f17415e;
            zzeuoVar.f17423h.Y0(zzeuoVar.f17425j.a());
            zzezr.b(zzeVarA.f5841o, th, "BannerAdLoader.onFailure");
            this.f17411a.zza();
            if (!((Boolean) zzbcd.f10514c.e()).booleanValue() || (zzfenVar = this.f17412b) == null) {
                zzfep zzfepVar = this.f17415e.f17424i;
                zzfec zzfecVar = this.f17413c;
                zzfecVar.v(zzeVarA);
                zzfecVar.b(th);
                zzfecVar.y0(false);
                zzfepVar.b(zzfecVar.j());
            } else {
                zzfenVar.c(zzeVarA);
                zzfec zzfecVar2 = this.f17413c;
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
        zzcok zzcokVar = (zzcok) obj;
        synchronized (this.f17415e) {
            this.f17415e.f17427l = null;
            this.f17415e.f17421f.removeAllViews();
            if (zzcokVar.i() != null) {
                ViewParent parent = zzcokVar.i().getParent();
                if (parent instanceof ViewGroup) {
                    String strE = BuildConfig.FLAVOR;
                    if (zzcokVar.c() != null) {
                        strE = zzcokVar.c().e();
                    }
                    zzbza.g("Banner view provided from " + strE + " already has a parent view. Removing its old parent.");
                    ((ViewGroup) parent).removeView(zzcokVar.i());
                }
            }
            zzbaj zzbajVar = zzbar.f10430y7;
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).booleanValue()) {
                zzcyt zzcytVarE = zzcokVar.e();
                zzcytVarE.a(this.f17415e.f17419d);
                zzcytVarE.c(this.f17415e.f17420e);
            }
            this.f17415e.f17421f.addView(zzcokVar.i());
            this.f17411a.c(zzcokVar);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbajVar)).booleanValue()) {
                zzeuo zzeuoVar = this.f17415e;
                Executor executor = zzeuoVar.f17417b;
                final zzeib zzeibVar = zzeuoVar.f17419d;
                zzeibVar.getClass();
                executor.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeul
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzeibVar.k();
                    }
                });
            }
            this.f17415e.f17423h.Y0(zzcokVar.h());
            if (!((Boolean) zzbcd.f10514c.e()).booleanValue() || (zzfenVar = this.f17412b) == null) {
                zzfep zzfepVar = this.f17415e.f17424i;
                zzfec zzfecVar = this.f17413c;
                zzfecVar.a(zzcokVar.g().f17703b);
                zzfecVar.O(zzcokVar.c().e());
                zzfecVar.y0(true);
                zzfepVar.b(zzfecVar.j());
            } else {
                zzfenVar.f(zzcokVar.g().f17703b);
                zzfenVar.e(zzcokVar.c().e());
                zzfec zzfecVar2 = this.f17413c;
                zzfecVar2.y0(true);
                zzfenVar.a(zzfecVar2);
                zzfenVar.g();
            }
        }
    }
}
