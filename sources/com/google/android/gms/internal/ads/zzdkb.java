package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdkb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzeyx f14963a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Executor f14964b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzdmq f14965c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzdll f14966d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Context f14967e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzdpi f14968f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzfdk f14969g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzfff f14970h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzeaf f14971i;

    public zzdkb(zzeyx zzeyxVar, Executor executor, zzdmq zzdmqVar, Context context, zzdpi zzdpiVar, zzfdk zzfdkVar, zzfff zzfffVar, zzeaf zzeafVar, zzdll zzdllVar) {
        this.f14963a = zzeyxVar;
        this.f14964b = executor;
        this.f14965c = zzdmqVar;
        this.f14967e = context;
        this.f14968f = zzdpiVar;
        this.f14969g = zzfdkVar;
        this.f14970h = zzfffVar;
        this.f14971i = zzeafVar;
        this.f14966d = zzdllVar;
    }

    private final void h(zzcei zzceiVar) {
        i(zzceiVar);
        zzceiVar.c0("/video", zzbho.f10724l);
        zzceiVar.c0("/videoMeta", zzbho.f10725m);
        zzceiVar.c0("/precache", new zzccv());
        zzceiVar.c0("/delayPageLoaded", zzbho.f10728p);
        zzceiVar.c0("/instrument", zzbho.f10726n);
        zzceiVar.c0("/log", zzbho.f10719g);
        zzceiVar.c0("/click", zzbho.a(null));
        if (this.f14963a.f17729b != null) {
            zzceiVar.J().O0(true);
            zzceiVar.c0("/open", new zzbhz(null, null, null, null, null));
        } else {
            zzceiVar.J().O0(false);
        }
        if (com.google.android.gms.ads.internal.zzt.p().z(zzceiVar.getContext())) {
            zzceiVar.c0("/logScionEvent", new zzbhu(zzceiVar.getContext()));
        }
    }

    private static final void i(zzcei zzceiVar) {
        zzceiVar.c0("/videoClicked", zzbho.f10720h);
        zzceiVar.J().z0(true);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10316o3)).booleanValue()) {
            zzceiVar.c0("/getNativeAdViewSignals", zzbho.f10731s);
        }
        zzceiVar.c0("/getNativeClickMeta", zzbho.f10732t);
    }

    public final zzfut a(final JSONObject jSONObject) {
        return zzfuj.m(zzfuj.m(zzfuj.h(null), new zzftq() { // from class: com.google.android.gms.internal.ads.zzdjr
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f14938a.e(obj);
            }
        }, this.f14964b), new zzftq() { // from class: com.google.android.gms.internal.ads.zzdjs
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f14939a.c(jSONObject, (zzcei) obj);
            }
        }, this.f14964b);
    }

    public final zzfut b(final String str, final String str2, final zzeyc zzeycVar, final zzeyf zzeyfVar, final com.google.android.gms.ads.internal.client.zzq zzqVar) {
        return zzfuj.m(zzfuj.h(null), new zzftq() { // from class: com.google.android.gms.internal.ads.zzdju
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f14942a.d(zzqVar, zzeycVar, zzeyfVar, str, str2, obj);
            }
        }, this.f14964b);
    }

    final /* synthetic */ zzfut c(JSONObject jSONObject, final zzcei zzceiVar) throws Exception {
        final zzbzr zzbzrVarG = zzbzr.g(zzceiVar);
        if (this.f14963a.f17729b != null) {
            zzceiVar.C0(zzcfx.d());
        } else {
            zzceiVar.C0(zzcfx.e());
        }
        zzceiVar.J().n0(new zzcft() { // from class: com.google.android.gms.internal.ads.zzdjq
            @Override // com.google.android.gms.internal.ads.zzcft
            public final void S(boolean z10) {
                this.f14935o.f(zzceiVar, zzbzrVarG, z10);
            }
        });
        zzceiVar.Z0("google.afma.nativeAds.renderVideo", jSONObject);
        return zzbzrVarG;
    }

    final /* synthetic */ zzfut d(com.google.android.gms.ads.internal.client.zzq zzqVar, zzeyc zzeycVar, zzeyf zzeyfVar, String str, String str2, Object obj) throws Exception {
        final zzcei zzceiVarA = this.f14965c.a(zzqVar, zzeycVar, zzeyfVar);
        final zzbzr zzbzrVarG = zzbzr.g(zzceiVarA);
        if (this.f14963a.f17729b != null) {
            h(zzceiVarA);
            zzceiVarA.C0(zzcfx.d());
        } else {
            zzdli zzdliVarB = this.f14966d.b();
            zzceiVarA.J().M0(zzdliVarB, zzdliVarB, zzdliVarB, zzdliVarB, zzdliVarB, false, null, new com.google.android.gms.ads.internal.zzb(this.f14967e, null, null), null, null, this.f14971i, this.f14970h, this.f14968f, this.f14969g, null, zzdliVarB, null, null);
            i(zzceiVarA);
        }
        zzceiVarA.J().n0(new zzcft() { // from class: com.google.android.gms.internal.ads.zzdjv
            @Override // com.google.android.gms.internal.ads.zzcft
            public final void S(boolean z10) {
                this.f14948o.g(zzceiVarA, zzbzrVarG, z10);
            }
        });
        zzceiVarA.Q0(str, str2, null);
        return zzbzrVarG;
    }

    final /* synthetic */ zzfut e(Object obj) throws Exception {
        zzcei zzceiVarA = this.f14965c.a(com.google.android.gms.ads.internal.client.zzq.X3(), null, null);
        final zzbzr zzbzrVarG = zzbzr.g(zzceiVarA);
        h(zzceiVarA);
        zzceiVarA.J().A0(new zzcfu() { // from class: com.google.android.gms.internal.ads.zzdjt
            @Override // com.google.android.gms.internal.ads.zzcfu
            public final void zza() {
                zzbzrVarG.h();
            }
        });
        zzceiVarA.loadUrl((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10305n3));
        return zzbzrVarG;
    }

    final /* synthetic */ void f(zzcei zzceiVar, zzbzr zzbzrVar, boolean z10) {
        if (this.f14963a.f17728a != null && zzceiVar.r() != null) {
            zzceiVar.r().Wa(this.f14963a.f17728a);
        }
        zzbzrVar.h();
    }

    final /* synthetic */ void g(zzcei zzceiVar, zzbzr zzbzrVar, boolean z10) {
        if (!z10) {
            zzbzrVar.d(new zzeek(1, "Html video Web View failed to load."));
            return;
        }
        if (this.f14963a.f17728a != null && zzceiVar.r() != null) {
            zzceiVar.r().Wa(this.f14963a.f17728a);
        }
        zzbzrVar.h();
    }
}
