package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import java.util.concurrent.ScheduledExecutorService;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeiy implements zzeir {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @GuardedBy("this")
    private final zzeyv f16749a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzcgd f16750b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Context f16751c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzeio f16752d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzfep f16753e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private zzcra f16754f;

    public zzeiy(zzcgd zzcgdVar, Context context, zzeio zzeioVar, zzeyv zzeyvVar) {
        this.f16750b = zzcgdVar;
        this.f16751c = context;
        this.f16752d = zzeioVar;
        this.f16749a = zzeyvVar;
        this.f16753e = zzcgdVar.B();
        zzeyvVar.L(zzeioVar.d());
    }

    @Override // com.google.android.gms.internal.ads.zzeir
    public final boolean a(com.google.android.gms.ads.internal.client.zzl zzlVar, String str, zzeip zzeipVar, zzeiq zzeiqVar) throws RemoteException {
        zzfen zzfenVar;
        com.google.android.gms.ads.internal.zzt.r();
        if (com.google.android.gms.ads.internal.util.zzs.d(this.f16751c) && zzlVar.G == null) {
            zzbza.d("Failed to load the ad because app ID is missing.");
            this.f16750b.b().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeit
                @Override // java.lang.Runnable
                public final void run() {
                    this.f16739o.e();
                }
            });
            return false;
        }
        if (str == null) {
            zzbza.d("Ad unit ID should not be null for NativeAdLoader.");
            this.f16750b.b().execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzeiu
                @Override // java.lang.Runnable
                public final void run() {
                    this.f16740o.f();
                }
            });
            return false;
        }
        zzezr.a(this.f16751c, zzlVar.f5911t);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10222f8)).booleanValue() && zzlVar.f5911t) {
            this.f16750b.n().m(true);
        }
        int i10 = ((zzeis) zzeipVar).f16738a;
        zzeyv zzeyvVar = this.f16749a;
        zzeyvVar.e(zzlVar);
        zzeyvVar.Q(i10);
        zzeyx zzeyxVarG = zzeyvVar.g();
        zzfec zzfecVarB = zzfeb.b(this.f16751c, zzfem.f(zzeyxVarG), 8, zzlVar);
        com.google.android.gms.ads.internal.client.zzcb zzcbVar = zzeyxVarG.f17741n;
        if (zzcbVar != null) {
            this.f16752d.d().C(zzcbVar);
        }
        zzder zzderVarK = this.f16750b.k();
        zzctx zzctxVar = new zzctx();
        zzctxVar.d(this.f16751c);
        zzctxVar.h(zzeyxVarG);
        zzderVarK.o(zzctxVar.i());
        zzczz zzczzVar = new zzczz();
        zzczzVar.n(this.f16752d.d(), this.f16750b.b());
        zzderVarK.r(zzczzVar.q());
        zzderVarK.i(this.f16752d.c());
        zzderVarK.a(new zzcoh(null));
        zzdes zzdesVarE = zzderVarK.e();
        if (((Boolean) zzbcd.f10514c.e()).booleanValue()) {
            zzfen zzfenVarE = zzdesVarE.e();
            zzfenVarE.h(8);
            zzfenVarE.b(zzlVar.D);
            zzfenVar = zzfenVarE;
        } else {
            zzfenVar = null;
        }
        this.f16750b.z().c(1);
        zzfuu zzfuuVar = zzbzn.f11614a;
        zzgxg.b(zzfuuVar);
        ScheduledExecutorService scheduledExecutorServiceC = this.f16750b.c();
        zzcrt zzcrtVarA = zzdesVarE.a();
        zzcra zzcraVar = new zzcra(zzfuuVar, scheduledExecutorServiceC, zzcrtVarA.i(zzcrtVarA.j()));
        this.f16754f = zzcraVar;
        zzcraVar.e(new zzeix(this, zzeiqVar, zzfenVar, zzfecVarB, zzdesVarE));
        return true;
    }

    final /* synthetic */ void e() {
        this.f16752d.a().v(zzezx.d(4, null, null));
    }

    final /* synthetic */ void f() {
        this.f16752d.a().v(zzezx.d(6, null, null));
    }

    @Override // com.google.android.gms.internal.ads.zzeir
    public final boolean zza() {
        zzcra zzcraVar = this.f16754f;
        return zzcraVar != null && zzcraVar.f();
    }
}
