package com.google.android.gms.internal.ads;

import android.content.Context;
import com.vungle.mediation.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdlf {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.zza f15062b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzceu f15063c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Context f15064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzdpi f15065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzfdk f15066f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Executor f15067g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzapw f15068h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzbzg f15069i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzeaf f15071k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzfff f15072l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private zzfut f15073m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzdks f15061a = new zzdks();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzbid f15070j = new zzbid();

    zzdlf(zzdlc zzdlcVar) {
        this.f15064d = zzdlcVar.f15049c;
        this.f15067g = zzdlcVar.f15053g;
        this.f15068h = zzdlcVar.f15054h;
        this.f15069i = zzdlcVar.f15055i;
        this.f15062b = zzdlcVar.f15047a;
        this.f15063c = zzdlcVar.f15048b;
        this.f15071k = zzdlcVar.f15052f;
        this.f15072l = zzdlcVar.f15056j;
        this.f15065e = zzdlcVar.f15050d;
        this.f15066f = zzdlcVar.f15051e;
    }

    final /* synthetic */ zzcei a(zzcei zzceiVar) {
        zzceiVar.c0("/result", this.f15070j);
        zzcfv zzcfvVarJ = zzceiVar.J();
        zzdks zzdksVar = this.f15061a;
        zzcfvVarJ.M0(null, zzdksVar, zzdksVar, zzdksVar, zzdksVar, false, null, new com.google.android.gms.ads.internal.zzb(this.f15064d, null, null), null, null, this.f15071k, this.f15072l, this.f15065e, this.f15066f, null, null, null, null);
        return zzceiVar;
    }

    final /* synthetic */ zzfut c(String str, JSONObject jSONObject, zzcei zzceiVar) throws Exception {
        return this.f15070j.b(zzceiVar, str, jSONObject);
    }

    public final synchronized zzfut d(final String str, final JSONObject jSONObject) {
        zzfut zzfutVar = this.f15073m;
        if (zzfutVar == null) {
            return zzfuj.h(null);
        }
        return zzfuj.m(zzfutVar, new zzftq() { // from class: com.google.android.gms.internal.ads.zzdkt
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f15027a.c(str, jSONObject, (zzcei) obj);
            }
        }, this.f15067g);
    }

    public final synchronized void e(zzeyc zzeycVar, zzeyf zzeyfVar) {
        zzfut zzfutVar = this.f15073m;
        if (zzfutVar == null) {
            return;
        }
        zzfuj.q(zzfutVar, new zzdkz(this, zzeycVar, zzeyfVar), this.f15067g);
    }

    public final synchronized void f() {
        zzfut zzfutVar = this.f15073m;
        if (zzfutVar == null) {
            return;
        }
        zzfuj.q(zzfutVar, new zzdkv(this), this.f15067g);
        this.f15073m = null;
    }

    public final synchronized void g(String str, Map map) {
        zzfut zzfutVar = this.f15073m;
        if (zzfutVar == null) {
            return;
        }
        zzfuj.q(zzfutVar, new zzdky(this, "sendMessageToNativeJs", map), this.f15067g);
    }

    public final synchronized void h() {
        final Context context = this.f15064d;
        final zzbzg zzbzgVar = this.f15069i;
        final String str = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10294m3);
        final zzapw zzapwVar = this.f15068h;
        final com.google.android.gms.ads.internal.zza zzaVar = this.f15062b;
        zzfut zzfutVarL = zzfuj.l(zzfuj.k(new zzftp() { // from class: com.google.android.gms.internal.ads.zzcer
            @Override // com.google.android.gms.internal.ads.zzftp
            public final zzfut zza() throws zzcet {
                Context context2 = context;
                zzapw zzapwVar2 = zzapwVar;
                zzbzg zzbzgVar2 = zzbzgVar;
                com.google.android.gms.ads.internal.zza zzaVar2 = zzaVar;
                String str2 = str;
                com.google.android.gms.ads.internal.zzt.B();
                zzcei zzceiVarA = zzceu.a(context2, zzcfx.a(), BuildConfig.FLAVOR, false, false, zzapwVar2, null, zzbzgVar2, null, null, zzaVar2, zzawe.a(), null, null);
                final zzbzr zzbzrVarG = zzbzr.g(zzceiVarA);
                zzceiVarA.J().n0(new zzcft() { // from class: com.google.android.gms.internal.ads.zzces
                    @Override // com.google.android.gms.internal.ads.zzcft
                    public final void S(boolean z10) {
                        zzbzrVarG.h();
                    }
                });
                zzceiVarA.loadUrl(str2);
                return zzbzrVarG;
            }
        }, zzbzn.f11618e), new zzfnj() { // from class: com.google.android.gms.internal.ads.zzdku
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                zzcei zzceiVar = (zzcei) obj;
                this.f15030a.a(zzceiVar);
                return zzceiVar;
            }
        }, this.f15067g);
        this.f15073m = zzfutVarL;
        zzbzq.a(zzfutVarL, "NativeJavascriptExecutor.initializeEngine");
    }

    public final synchronized void i(String str, zzbhp zzbhpVar) {
        zzfut zzfutVar = this.f15073m;
        if (zzfutVar == null) {
            return;
        }
        zzfuj.q(zzfutVar, new zzdkw(this, str, zzbhpVar), this.f15067g);
    }

    public final void j(WeakReference weakReference, String str, zzbhp zzbhpVar) {
        i(str, new zzdle(this, weakReference, str, zzbhpVar, null));
    }

    public final synchronized void k(String str, zzbhp zzbhpVar) {
        zzfut zzfutVar = this.f15073m;
        if (zzfutVar == null) {
            return;
        }
        zzfuj.q(zzfutVar, new zzdkx(this, str, zzbhpVar), this.f15067g);
    }
}
