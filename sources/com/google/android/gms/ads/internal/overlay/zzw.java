package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbzn;
import com.google.android.gms.internal.ads.zzcei;
import com.google.android.gms.internal.ads.zzfln;
import com.google.android.gms.internal.ads.zzflo;
import com.google.android.gms.internal.ads.zzflp;
import com.google.android.gms.internal.ads.zzflq;
import com.google.android.gms.internal.ads.zzflz;
import com.google.android.gms.internal.ads.zzfmb;
import com.google.android.gms.internal.ads.zzfmc;
import com.google.android.gms.internal.ads.zzfmd;
import com.google.android.gms.internal.ads.zzfme;
import com.google.android.gms.internal.ads.zzfmy;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzw {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private zzfmc f6030f;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private zzcei f6027c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6029e = false;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f6025a = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private zzflp f6028d = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private String f6026b = null;

    private final zzfme l() {
        zzfmd zzfmdVarC = zzfme.c();
        if (!((Boolean) zzba.c().b(zzbar.D9)).booleanValue() || TextUtils.isEmpty(this.f6026b)) {
            String str = this.f6025a;
            if (str != null) {
                zzfmdVarC.b(str);
            } else {
                f("Missing session token and/or appId", "onLMDupdate");
            }
        } else {
            zzfmdVarC.a(this.f6026b);
        }
        return zzfmdVarC.c();
    }

    private final void m() {
        if (this.f6030f == null) {
            this.f6030f = new e(this);
        }
    }

    public final synchronized void a(zzcei zzceiVar, Context context) {
        this.f6027c = zzceiVar;
        if (!k(context)) {
            f("Unable to bind", "on_play_store_bind");
            return;
        }
        HashMap map = new HashMap();
        map.put("action", "fetch_completed");
        e("on_play_store_bind", map);
    }

    public final void b() {
        zzflp zzflpVar;
        if (!this.f6029e || (zzflpVar = this.f6028d) == null) {
            com.google.android.gms.ads.internal.util.zze.k("LastMileDelivery not connected");
        } else {
            zzflpVar.d(l(), this.f6030f);
            d("onLMDOverlayCollapse");
        }
    }

    public final void c() {
        zzflp zzflpVar;
        if (!this.f6029e || (zzflpVar = this.f6028d) == null) {
            com.google.android.gms.ads.internal.util.zze.k("LastMileDelivery not connected");
            return;
        }
        zzfln zzflnVarC = zzflo.c();
        if (!((Boolean) zzba.c().b(zzbar.D9)).booleanValue() || TextUtils.isEmpty(this.f6026b)) {
            String str = this.f6025a;
            if (str != null) {
                zzflnVarC.b(str);
            } else {
                f("Missing session token and/or appId", "onLMDupdate");
            }
        } else {
            zzflnVarC.a(this.f6026b);
        }
        zzflpVar.a(zzflnVarC.c(), this.f6030f);
    }

    final void d(String str) {
        e(str, new HashMap());
    }

    final void e(final String str, final Map map) {
        zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzu
            @Override // java.lang.Runnable
            public final void run() {
                this.f6022o.h(str, map);
            }
        });
    }

    final void f(String str, String str2) {
        com.google.android.gms.ads.internal.util.zze.k(str);
        if (this.f6027c != null) {
            HashMap map = new HashMap();
            map.put("message", str);
            map.put("action", str2);
            e("onError", map);
        }
    }

    public final void g() {
        zzflp zzflpVar;
        if (!this.f6029e || (zzflpVar = this.f6028d) == null) {
            com.google.android.gms.ads.internal.util.zze.k("LastMileDelivery not connected");
        } else {
            zzflpVar.b(l(), this.f6030f);
            d("onLMDOverlayExpand");
        }
    }

    final /* synthetic */ void h(String str, Map map) {
        zzcei zzceiVar = this.f6027c;
        if (zzceiVar != null) {
            zzceiVar.v0(str, map);
        }
    }

    final void i(zzfmb zzfmbVar) {
        if (!TextUtils.isEmpty(zzfmbVar.b())) {
            if (!((Boolean) zzba.c().b(zzbar.D9)).booleanValue()) {
                this.f6025a = zzfmbVar.b();
            }
        }
        switch (zzfmbVar.a()) {
            case 8152:
                d("onLMDOverlayOpened");
                break;
            case 8153:
                d("onLMDOverlayClicked");
                break;
            case 8155:
                d("onLMDOverlayClose");
                break;
            case 8157:
                this.f6025a = null;
                this.f6026b = null;
                this.f6029e = false;
                break;
            case 8160:
            case 8161:
            case 8162:
                HashMap map = new HashMap();
                map.put("error", String.valueOf(zzfmbVar.a()));
                e("onLMDOverlayFailedToOpen", map);
                break;
        }
    }

    public final void j(zzcei zzceiVar, zzflz zzflzVar) {
        if (zzceiVar == null) {
            f("adWebview missing", "onLMDShow");
            return;
        }
        this.f6027c = zzceiVar;
        if (!this.f6029e && !k(zzceiVar.getContext())) {
            f("LMDOverlay not bound", "on_play_store_bind");
            return;
        }
        if (((Boolean) zzba.c().b(zzbar.D9)).booleanValue()) {
            this.f6026b = zzflzVar.g();
        }
        m();
        zzflp zzflpVar = this.f6028d;
        if (zzflpVar != null) {
            zzflpVar.c(zzflzVar, this.f6030f);
        }
    }

    public final synchronized boolean k(Context context) {
        if (!zzfmy.a(context)) {
            return false;
        }
        try {
            this.f6028d = zzflq.a(context);
        } catch (NullPointerException e10) {
            com.google.android.gms.ads.internal.util.zze.k("Error connecting LMD Overlay service");
            com.google.android.gms.ads.internal.zzt.q().u(e10, "LastMileDeliveryOverlay.bindLastMileDeliveryService");
        }
        if (this.f6028d == null) {
            this.f6029e = false;
            return false;
        }
        m();
        this.f6029e = true;
        return true;
    }
}
