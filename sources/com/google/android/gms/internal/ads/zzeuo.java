package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeuo implements zzeir {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f17416a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f17417b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzcgd f17418c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeib f17419d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzeif f17420e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ViewGroup f17421f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzbbp f17422g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzcxd f17423h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzfep f17424i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzczk f17425j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @GuardedBy("this")
    private final zzeyv f17426k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    @GuardedBy("this")
    private zzfut f17427l;

    public zzeuo(Context context, Executor executor, com.google.android.gms.ads.internal.client.zzq zzqVar, zzcgd zzcgdVar, zzeib zzeibVar, zzeif zzeifVar, zzeyv zzeyvVar, zzczk zzczkVar) {
        this.f17416a = context;
        this.f17417b = executor;
        this.f17418c = zzcgdVar;
        this.f17419d = zzeibVar;
        this.f17420e = zzeifVar;
        this.f17426k = zzeyvVar;
        this.f17423h = zzcgdVar.i();
        this.f17424i = zzcgdVar.B();
        this.f17421f = new FrameLayout(context);
        this.f17425j = zzczkVar;
        zzeyvVar.I(zzqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzeir
    public final boolean a(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzeip zzeipVar, zzeiq zzeiqVar) throws RemoteException {
        zzcph zzcphVarH;
        zzfen zzfenVar;
        if (str == null) {
            zzbza.d("Ad unit ID should not be null for banner ad.");
            this.f17417b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeuk
                @Override // java.lang.Runnable
                public final void run() {
                    this.f17407o.l();
                }
            });
            return false;
        }
        if (zza()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10222f8)).booleanValue() && zzlVar.f5911t) {
            this.f17418c.n().m(true);
        }
        zzeyv zzeyvVar = this.f17426k;
        zzeyvVar.J(str);
        zzeyvVar.e(zzlVar);
        zzeyx zzeyxVarG = zzeyvVar.g();
        zzfec zzfecVarB = zzfeb.b(this.f17416a, zzfem.f(zzeyxVarG), 3, zzlVar);
        if (((Boolean) zzbcq.f10585d.e()).booleanValue() && this.f17426k.x().f5941y) {
            zzeib zzeibVar = this.f17419d;
            if (zzeibVar != null) {
                zzeibVar.v(zzezx.d(7, null, null));
            }
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10430y7)).booleanValue()) {
            zzcpg zzcpgVarH = this.f17418c.h();
            zzctx zzctxVar = new zzctx();
            zzctxVar.d(this.f17416a);
            zzctxVar.h(zzeyxVarG);
            zzcpgVarH.j(zzctxVar.i());
            zzczz zzczzVar = new zzczz();
            zzczzVar.m(this.f17419d, this.f17417b);
            zzczzVar.n(this.f17419d, this.f17417b);
            zzcpgVarH.p(zzczzVar.q());
            zzcpgVarH.k(new zzegk(this.f17422g));
            zzcpgVarH.i(new zzden(zzdgt.f14675h, null));
            zzcpgVarH.s(new zzcqe(this.f17423h, this.f17425j));
            zzcpgVarH.a(new zzcoh(this.f17421f));
            zzcphVarH = zzcpgVarH.f();
        } else {
            zzcpg zzcpgVarH2 = this.f17418c.h();
            zzctx zzctxVar2 = new zzctx();
            zzctxVar2.d(this.f17416a);
            zzctxVar2.h(zzeyxVarG);
            zzcpgVarH2.j(zzctxVar2.i());
            zzczz zzczzVar2 = new zzczz();
            zzczzVar2.m(this.f17419d, this.f17417b);
            zzczzVar2.d(this.f17419d, this.f17417b);
            zzczzVar2.d(this.f17420e, this.f17417b);
            zzczzVar2.o(this.f17419d, this.f17417b);
            zzczzVar2.g(this.f17419d, this.f17417b);
            zzczzVar2.h(this.f17419d, this.f17417b);
            zzczzVar2.i(this.f17419d, this.f17417b);
            zzczzVar2.e(this.f17419d, this.f17417b);
            zzczzVar2.n(this.f17419d, this.f17417b);
            zzczzVar2.l(this.f17419d, this.f17417b);
            zzcpgVarH2.p(zzczzVar2.q());
            zzcpgVarH2.k(new zzegk(this.f17422g));
            zzcpgVarH2.i(new zzden(zzdgt.f14675h, null));
            zzcpgVarH2.s(new zzcqe(this.f17423h, this.f17425j));
            zzcpgVarH2.a(new zzcoh(this.f17421f));
            zzcphVarH = zzcpgVarH2.f();
        }
        zzcph zzcphVar = zzcphVarH;
        if (((Boolean) zzbcd.f10514c.e()).booleanValue()) {
            zzfen zzfenVarF = zzcphVar.f();
            zzfenVarF.h(3);
            zzfenVarF.b(zzlVar.D);
            zzfenVar = zzfenVarF;
        } else {
            zzfenVar = null;
        }
        zzcrt zzcrtVarD = zzcphVar.d();
        zzfut zzfutVarI = zzcrtVarD.i(zzcrtVarD.j());
        this.f17427l = zzfutVarI;
        zzfuj.q(zzfutVarI, new zzeun(this, zzeiqVar, zzfenVar, zzfecVarB, zzcphVar), this.f17417b);
        return true;
    }

    public final ViewGroup c() {
        return this.f17421f;
    }

    public final zzeyv h() {
        return this.f17426k;
    }

    final /* synthetic */ void l() {
        this.f17419d.v(zzezx.d(6, null, null));
    }

    public final void m() {
        this.f17423h.Y0(this.f17425j.a());
    }

    public final void n(com.google.android.gms.ads.internal.client.zzbe zzbeVar) {
        this.f17420e.a(zzbeVar);
    }

    public final void o(zzcxe zzcxeVar) {
        this.f17423h.L0(zzcxeVar, this.f17417b);
    }

    public final void p(zzbbp zzbbpVar) {
        this.f17422g = zzbbpVar;
    }

    public final boolean q() {
        Object parent = this.f17421f.getParent();
        if (!(parent instanceof View)) {
            return false;
        }
        View view = (View) parent;
        com.google.android.gms.ads.internal.zzt.r();
        return com.google.android.gms.ads.internal.util.zzs.t(view, view.getContext());
    }

    @Override // com.google.android.gms.internal.ads.zzeir
    public final boolean zza() {
        zzfut zzfutVar = this.f17427l;
        return (zzfutVar == null || zzfutVar.isDone()) ? false : true;
    }
}
