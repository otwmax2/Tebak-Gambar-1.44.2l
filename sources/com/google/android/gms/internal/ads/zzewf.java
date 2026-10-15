package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzewf implements zzeir {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f17520a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f17521b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzcgd f17522c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeib f17523d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzexf f17524e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzbbp f17525f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzfep f17526g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @GuardedBy("this")
    private final zzeyv f17527h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @GuardedBy("this")
    private zzfut f17528i;

    public zzewf(Context context, Executor executor, zzcgd zzcgdVar, zzeib zzeibVar, zzexf zzexfVar, zzeyv zzeyvVar) {
        this.f17520a = context;
        this.f17521b = executor;
        this.f17522c = zzcgdVar;
        this.f17523d = zzeibVar;
        this.f17527h = zzeyvVar;
        this.f17524e = zzexfVar;
        this.f17526g = zzcgdVar.B();
    }

    @Override // com.google.android.gms.internal.ads.zzeir
    public final boolean a(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzeip zzeipVar, zzeiq zzeiqVar) {
        zzddw zzddwVarC;
        zzfen zzfenVar;
        if (str == null) {
            zzbza.d("Ad unit ID should not be null for interstitial ad.");
            this.f17521b.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzevz
                @Override // java.lang.Runnable
                public final void run() {
                    this.f17493o.g();
                }
            });
            return false;
        }
        if (zza()) {
            return false;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10222f8)).booleanValue() && zzlVar.f5911t) {
            this.f17522c.n().m(true);
        }
        com.google.android.gms.ads.internal.client.zzq zzqVar = ((zzevy) zzeipVar).f17492a;
        zzeyv zzeyvVar = this.f17527h;
        zzeyvVar.J(str);
        zzeyvVar.I(zzqVar);
        zzeyvVar.e(zzlVar);
        zzeyx zzeyxVarG = zzeyvVar.g();
        zzfec zzfecVarB = zzfeb.b(this.f17520a, zzfem.f(zzeyxVarG), 4, zzlVar);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.A7)).booleanValue()) {
            zzddv zzddvVarJ = this.f17522c.j();
            zzctx zzctxVar = new zzctx();
            zzctxVar.d(this.f17520a);
            zzctxVar.h(zzeyxVarG);
            zzddvVarJ.q(zzctxVar.i());
            zzczz zzczzVar = new zzczz();
            zzczzVar.m(this.f17523d, this.f17521b);
            zzczzVar.n(this.f17523d, this.f17521b);
            zzddvVarJ.t(zzczzVar.q());
            zzddvVarJ.m(new zzegk(this.f17525f));
            zzddwVarC = zzddvVarJ.f();
        } else {
            zzczz zzczzVar2 = new zzczz();
            zzexf zzexfVar = this.f17524e;
            if (zzexfVar != null) {
                zzczzVar2.h(zzexfVar, this.f17521b);
                zzczzVar2.i(this.f17524e, this.f17521b);
                zzczzVar2.e(this.f17524e, this.f17521b);
            }
            zzddv zzddvVarJ2 = this.f17522c.j();
            zzctx zzctxVar2 = new zzctx();
            zzctxVar2.d(this.f17520a);
            zzctxVar2.h(zzeyxVarG);
            zzddvVarJ2.q(zzctxVar2.i());
            zzczzVar2.m(this.f17523d, this.f17521b);
            zzczzVar2.h(this.f17523d, this.f17521b);
            zzczzVar2.i(this.f17523d, this.f17521b);
            zzczzVar2.e(this.f17523d, this.f17521b);
            zzczzVar2.d(this.f17523d, this.f17521b);
            zzczzVar2.o(this.f17523d, this.f17521b);
            zzczzVar2.n(this.f17523d, this.f17521b);
            zzczzVar2.l(this.f17523d, this.f17521b);
            zzczzVar2.f(this.f17523d, this.f17521b);
            zzddvVarJ2.t(zzczzVar2.q());
            zzddvVarJ2.m(new zzegk(this.f17525f));
            zzddwVarC = zzddvVarJ2.f();
        }
        zzddw zzddwVar = zzddwVarC;
        if (((Boolean) zzbcd.f10514c.e()).booleanValue()) {
            zzfen zzfenVarD = zzddwVar.d();
            zzfenVarD.h(4);
            zzfenVarD.b(zzlVar.D);
            zzfenVar = zzfenVarD;
        } else {
            zzfenVar = null;
        }
        zzcrt zzcrtVarA = zzddwVar.a();
        zzfut zzfutVarI = zzcrtVarA.i(zzcrtVarA.j());
        this.f17528i = zzfutVarI;
        zzfuj.q(zzfutVarI, new zzewe(this, zzeiqVar, zzfenVar, zzfecVarB, zzddwVar), this.f17521b);
        return true;
    }

    final /* synthetic */ void g() {
        this.f17523d.v(zzezx.d(6, null, null));
    }

    public final void h(zzbbp zzbbpVar) {
        this.f17525f = zzbbpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeir
    public final boolean zza() {
        zzfut zzfutVar = this.f17528i;
        return (zzfutVar == null || zzfutVar.isDone()) ? false : true;
    }
}
