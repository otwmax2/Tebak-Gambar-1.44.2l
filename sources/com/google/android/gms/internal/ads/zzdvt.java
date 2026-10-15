package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Binder;
import java.io.InputStream;
import java.util.concurrent.ExecutionException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdvt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzfuu f15764a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzduz f15765b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzgws f15766c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzfep f15767d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f15768e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzbzg f15769f;

    public zzdvt(zzfuu zzfuuVar, zzduz zzduzVar, zzgws zzgwsVar, zzfep zzfepVar, Context context, zzbzg zzbzgVar) {
        this.f15764a = zzfuuVar;
        this.f15765b = zzduzVar;
        this.f15766c = zzgwsVar;
        this.f15767d = zzfepVar;
        this.f15768e = context;
        this.f15769f = zzbzgVar;
    }

    private final zzfut h(final zzbtn zzbtnVar, zzdvs zzdvsVar, final zzdvs zzdvsVar2, final zzftq zzftqVar) {
        String str = zzbtnVar.f11275r;
        com.google.android.gms.ads.internal.zzt.r();
        return zzfuj.f(zzfuj.m(zzfua.D(com.google.android.gms.ads.internal.util.zzs.X(str) ? zzfuj.g(new zzdvi(1)) : zzfuj.f(zzdvsVar.a(zzbtnVar), ExecutionException.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdvj
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                ExecutionException executionException = (ExecutionException) obj;
                Throwable cause = executionException.getCause();
                ExecutionException cause2 = executionException;
                if (cause != null) {
                    cause2 = executionException.getCause();
                }
                return zzfuj.g(cause2);
            }
        }, this.f15764a)), zzftqVar, this.f15764a), zzdvi.class, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdvr
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f15760a.c(zzdvsVar2, zzbtnVar, zzftqVar, (zzdvi) obj);
            }
        }, this.f15764a);
    }

    public final zzfut a(final zzbtn zzbtnVar) {
        zzftq zzftqVar = new zzftq() { // from class: com.google.android.gms.internal.ads.zzdvo
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                zzbtn zzbtnVar2 = zzbtnVar;
                zzbtnVar2.f11281x = new String(zzfsm.a((InputStream) obj), zzfnh.f18476c);
                return zzfuj.h(zzbtnVar2);
            }
        };
        final zzduz zzduzVar = this.f15765b;
        return h(zzbtnVar, new zzdvs() { // from class: com.google.android.gms.internal.ads.zzdvp
            @Override // com.google.android.gms.internal.ads.zzdvs
            public final zzfut a(zzbtn zzbtnVar2) {
                return zzduzVar.b(zzbtnVar2);
            }
        }, new zzdvs() { // from class: com.google.android.gms.internal.ads.zzdvq
            @Override // com.google.android.gms.internal.ads.zzdvs
            public final zzfut a(zzbtn zzbtnVar2) {
                return this.f15759a.d(zzbtnVar2);
            }
        }, zzftqVar);
    }

    public final zzfut b(JSONObject jSONObject) {
        return zzfuj.m(zzfua.D(zzfuj.h(jSONObject)), com.google.android.gms.ads.internal.zzt.h().a(this.f15768e, this.f15769f, this.f15767d).a("AFMA_getAdDictionary", zzbmc.f10946b, new zzblx() { // from class: com.google.android.gms.internal.ads.zzdvn
            @Override // com.google.android.gms.internal.ads.zzblx
            public final Object a(JSONObject jSONObject2) {
                return new zzbtq(jSONObject2);
            }
        }), this.f15764a);
    }

    final /* synthetic */ zzfut c(zzdvs zzdvsVar, zzbtn zzbtnVar, zzftq zzftqVar, zzdvi zzdviVar) throws Exception {
        return zzfuj.m(zzdvsVar.a(zzbtnVar), zzftqVar, this.f15764a);
    }

    final /* synthetic */ zzfut d(zzbtn zzbtnVar) {
        return ((zzdxp) this.f15766c.zzb()).Sa(zzbtnVar, Binder.getCallingUid());
    }

    final /* synthetic */ zzfut e(zzbtn zzbtnVar) {
        return this.f15765b.c(zzbtnVar.f11279v);
    }

    final /* synthetic */ zzfut f(zzbtn zzbtnVar) {
        return ((zzdxp) this.f15766c.zzb()).Va(zzbtnVar.f11279v);
    }

    public final zzfut g(zzbtn zzbtnVar) {
        return h(zzbtnVar, new zzdvs() { // from class: com.google.android.gms.internal.ads.zzdvl
            @Override // com.google.android.gms.internal.ads.zzdvs
            public final zzfut a(zzbtn zzbtnVar2) {
                return this.f15754a.e(zzbtnVar2);
            }
        }, new zzdvs() { // from class: com.google.android.gms.internal.ads.zzdvm
            @Override // com.google.android.gms.internal.ads.zzdvs
            public final zzfut a(zzbtn zzbtnVar2) {
                return this.f15755a.f(zzbtnVar2);
            }
        }, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdvk
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return zzfuj.h(null);
            }
        });
    }
}
