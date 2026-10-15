package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.vungle.mediation.BuildConfig;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdsn implements com.google.android.gms.ads.internal.overlay.zzo, zzcft {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f15584o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzbzg f15585p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzdsf f15586q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private zzcei f15587r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f15588s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f15589t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private long f15590u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzda f15591v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f15592w;

    zzdsn(Context context, zzbzg zzbzgVar) {
        this.f15584o = context;
        this.f15585p = zzbzgVar;
    }

    private final synchronized boolean g(com.google.android.gms.ads.internal.client.zzda zzdaVar) {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10222f8)).booleanValue()) {
            zzbza.g("Ad inspector had an internal error.");
            try {
                zzdaVar.Q5(zzezx.d(16, null, null));
            } catch (RemoteException unused) {
            }
            return false;
        }
        if (this.f15586q == null) {
            zzbza.g("Ad inspector had an internal error.");
            try {
                zzdaVar.Q5(zzezx.d(16, null, null));
            } catch (RemoteException unused2) {
            }
            return false;
        }
        if (!this.f15588s && !this.f15589t) {
            if (com.google.android.gms.ads.internal.zzt.b().a() >= this.f15590u + ((long) ((Integer) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10255i8)).intValue())) {
                return true;
            }
        }
        zzbza.g("Ad inspector cannot be opened because it is already open.");
        try {
            zzdaVar.Q5(zzezx.d(19, null, null));
        } catch (RemoteException unused3) {
        }
        return false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void G(int i10) {
        this.f15587r.destroy();
        if (!this.f15592w) {
            com.google.android.gms.ads.internal.util.zze.k("Inspector closed.");
            com.google.android.gms.ads.internal.client.zzda zzdaVar = this.f15591v;
            if (zzdaVar != null) {
                try {
                    zzdaVar.Q5(null);
                } catch (RemoteException unused) {
                }
            }
        }
        this.f15589t = false;
        this.f15588s = false;
        this.f15590u = 0L;
        this.f15592w = false;
        this.f15591v = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void P0() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void Q4() {
    }

    @Override // com.google.android.gms.internal.ads.zzcft
    public final synchronized void S(boolean z10) {
        if (z10) {
            com.google.android.gms.ads.internal.util.zze.k("Ad inspector loaded.");
            this.f15588s = true;
            f(BuildConfig.FLAVOR);
        } else {
            zzbza.g("Ad inspector failed to load.");
            try {
                com.google.android.gms.ads.internal.client.zzda zzdaVar = this.f15591v;
                if (zzdaVar != null) {
                    zzdaVar.Q5(zzezx.d(17, null, null));
                }
            } catch (RemoteException unused) {
            }
            this.f15592w = true;
            this.f15587r.destroy();
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void X0() {
    }

    public final Activity a() {
        zzcei zzceiVar = this.f15587r;
        if (zzceiVar == null || zzceiVar.U()) {
            return null;
        }
        return this.f15587r.g();
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void b() {
    }

    public final void c(zzdsf zzdsfVar) {
        this.f15586q = zzdsfVar;
    }

    final /* synthetic */ void d(String str) {
        JSONObject jSONObjectE = this.f15586q.e();
        if (!TextUtils.isEmpty(str)) {
            try {
                jSONObjectE.put("redirectUrl", str);
            } catch (JSONException unused) {
            }
        }
        this.f15587r.n("window.inspectorInfo", jSONObjectE.toString());
    }

    public final synchronized void e(com.google.android.gms.ads.internal.client.zzda zzdaVar, zzbih zzbihVar, zzbia zzbiaVar) {
        if (g(zzdaVar)) {
            try {
                com.google.android.gms.ads.internal.zzt.B();
                zzcei zzceiVarA = zzceu.a(this.f15584o, zzcfx.a(), BuildConfig.FLAVOR, false, false, null, null, this.f15585p, null, null, null, zzawe.a(), null, null);
                this.f15587r = zzceiVarA;
                zzcfv zzcfvVarJ = zzceiVarA.J();
                if (zzcfvVarJ == null) {
                    zzbza.g("Failed to obtain a web view for the ad inspector");
                    try {
                        zzdaVar.Q5(zzezx.d(17, "Failed to obtain a web view for the ad inspector", null));
                        return;
                    } catch (RemoteException unused) {
                        return;
                    }
                }
                this.f15591v = zzdaVar;
                zzcfvVarJ.M0(null, null, null, null, null, false, null, null, null, null, null, null, null, null, zzbihVar, null, new zzbig(this.f15584o), zzbiaVar);
                zzcfvVarJ.n0(this);
                this.f15587r.loadUrl((String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10233g8));
                com.google.android.gms.ads.internal.zzt.k();
                com.google.android.gms.ads.internal.overlay.zzm.a(this.f15584o, new AdOverlayInfoParcel(this, this.f15587r, 1, this.f15585p), true);
                this.f15590u = com.google.android.gms.ads.internal.zzt.b().a();
            } catch (zzcet e10) {
                zzbza.h("Failed to obtain a web view for the ad inspector", e10);
                try {
                    zzdaVar.Q5(zzezx.d(17, "Failed to obtain a web view for the ad inspector", null));
                } catch (RemoteException unused2) {
                }
            }
        }
    }

    public final synchronized void f(final String str) {
        if (this.f15588s && this.f15589t) {
            zzbzn.f11618e.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdsm
                @Override // java.lang.Runnable
                public final void run() {
                    this.f15582o.d(str);
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final synchronized void zzb() {
        this.f15589t = true;
        f(BuildConfig.FLAVOR);
    }
}
