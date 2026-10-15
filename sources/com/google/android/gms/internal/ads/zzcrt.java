package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcrt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzduo f13829a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzeyx f13830b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzfda f13831c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzclq f13832d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzeem f13833e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzczt f13834f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private zzeyo f13835g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzdvt f13836h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzctt f13837i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Executor f13838j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzdvf f13839k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzeay f13840l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzdwj f13841m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzdwq f13842n;

    zzcrt(zzduo zzduoVar, zzeyx zzeyxVar, zzfda zzfdaVar, zzclq zzclqVar, zzeem zzeemVar, zzczt zzcztVar, zzeyo zzeyoVar, zzdvt zzdvtVar, zzctt zzcttVar, Executor executor, zzdvf zzdvfVar, zzeay zzeayVar, zzdwj zzdwjVar, zzdwq zzdwqVar) {
        this.f13829a = zzduoVar;
        this.f13830b = zzeyxVar;
        this.f13831c = zzfdaVar;
        this.f13832d = zzclqVar;
        this.f13833e = zzeemVar;
        this.f13834f = zzcztVar;
        this.f13835g = zzeyoVar;
        this.f13836h = zzdvtVar;
        this.f13837i = zzcttVar;
        this.f13838j = executor;
        this.f13839k = zzdvfVar;
        this.f13840l = zzeayVar;
        this.f13841m = zzdwjVar;
        this.f13842n = zzdwqVar;
    }

    public final com.google.android.gms.ads.internal.client.zze a(Throwable th) {
        return zzezx.b(th, this.f13840l);
    }

    public final zzczt c() {
        return this.f13834f;
    }

    final /* synthetic */ zzeyo d(zzeyo zzeyoVar) throws Exception {
        this.f13832d.a(zzeyoVar);
        return zzeyoVar;
    }

    public final zzfut e(final zzfaq zzfaqVar) {
        zzfcf zzfcfVarA = this.f13831c.b(zzfcu.GET_CACHE_KEY, this.f13837i.c()).f(new zzftq() { // from class: com.google.android.gms.internal.ads.zzcrq
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f13825a.f(zzfaqVar, (zzbtn) obj);
            }
        }).a();
        zzfuj.q(zzfcfVarA, new zzcrr(this), this.f13838j);
        return zzfcfVarA;
    }

    final /* synthetic */ zzfut f(zzfaq zzfaqVar, zzbtn zzbtnVar) throws Exception {
        zzbtnVar.f11280w = zzfaqVar;
        return this.f13836h.a(zzbtnVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    final /* synthetic */ zzfut g(zzfut zzfutVar, zzfut zzfutVar2, zzfut zzfutVar3) throws Exception {
        return this.f13842n.c((zzbtn) zzfutVar.get(), (JSONObject) zzfutVar2.get(), (zzbtq) zzfutVar3.get());
    }

    public final zzfut h(zzbtn zzbtnVar) {
        zzfcf zzfcfVarA = this.f13831c.b(zzfcu.NOTIFY_CACHE_HIT, this.f13836h.g(zzbtnVar)).a();
        zzfuj.q(zzfcfVarA, new zzcrs(this), this.f13838j);
        return zzfcfVarA;
    }

    public final zzfut i(zzfut zzfutVar) {
        zzfcr zzfcrVarF = this.f13831c.b(zzfcu.RENDERER, zzfutVar).e(new zzfcd() { // from class: com.google.android.gms.internal.ads.zzcrp
            @Override // com.google.android.gms.internal.ads.zzfcd
            public final Object a(Object obj) throws Exception {
                zzeyo zzeyoVar = (zzeyo) obj;
                this.f13824a.d(zzeyoVar);
                return zzeyoVar;
            }
        }).f(this.f13833e);
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10175b5)).booleanValue()) {
            zzfcrVarF = zzfcrVarF.i(((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10186c5)).intValue(), TimeUnit.SECONDS);
        }
        return zzfcrVarF.a();
    }

    public final zzfut j() {
        com.google.android.gms.ads.internal.client.zzl zzlVar = this.f13830b.f17731d;
        if (zzlVar.L == null && zzlVar.G == null) {
            return k(this.f13837i.c());
        }
        zzfda zzfdaVar = this.f13831c;
        return zzfck.c(this.f13829a.a(), zzfcu.PRELOADED_LOADER, zzfdaVar).a();
    }

    public final zzfut k(final zzfut zzfutVar) {
        zzeyo zzeyoVar = this.f13835g;
        if (zzeyoVar != null) {
            return zzfck.c(zzfuj.h(zzeyoVar), zzfcu.SERVER_TRANSACTION, this.f13831c).a();
        }
        com.google.android.gms.ads.internal.zzt.e().j();
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G9)).booleanValue() || ((Boolean) zzbcq.f10583b.e()).booleanValue()) {
            zzfcr zzfcrVarB = this.f13831c.b(zzfcu.SERVER_TRANSACTION, zzfutVar);
            final zzdvf zzdvfVar = this.f13839k;
            return zzfcrVarB.f(new zzftq() { // from class: com.google.android.gms.internal.ads.zzcro
                @Override // com.google.android.gms.internal.ads.zzftq
                public final zzfut a(Object obj) {
                    return zzdvfVar.a((zzbtn) obj);
                }
            }).a();
        }
        final zzdwj zzdwjVar = this.f13841m;
        final zzfut zzfutVarM = zzfuj.m(zzfutVar, new zzftq() { // from class: com.google.android.gms.internal.ads.zzcrk
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzdwjVar.a((zzbtn) obj);
            }
        }, this.f13838j);
        zzfcr zzfcrVarB2 = this.f13831c.b(zzfcu.BUILD_URL, zzfutVarM);
        final zzdvt zzdvtVar = this.f13836h;
        final zzfcf zzfcfVarA = zzfcrVarB2.f(new zzftq() { // from class: com.google.android.gms.internal.ads.zzcrl
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzdvtVar.b((JSONObject) obj);
            }
        }).a();
        return this.f13831c.a(zzfcu.SERVER_TRANSACTION, zzfutVar, zzfutVarM, zzfcfVarA).a(new Callable() { // from class: com.google.android.gms.internal.ads.zzcrm
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f13818a.g(zzfutVar, zzfutVarM, zzfcfVarA);
            }
        }).f(new zzftq() { // from class: com.google.android.gms.internal.ads.zzcrn
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return (zzfut) obj;
            }
        }).a();
    }

    public final void l(zzeyo zzeyoVar) {
        this.f13835g = zzeyoVar;
    }
}
