package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdef implements zzcwc, com.google.android.gms.ads.internal.overlay.zzo, zzcvi {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f14426o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzcei f14427p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzeyc f14428q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzbzg f14429r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final zzawo f14430s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @VisibleForTesting
    IObjectWrapper f14431t;

    public zzdef(Context context, zzcei zzceiVar, zzeyc zzeycVar, zzbzg zzbzgVar, zzawo zzawoVar) {
        this.f14426o = context;
        this.f14427p = zzceiVar;
        this.f14428q = zzeycVar;
        this.f14429r = zzbzgVar;
        this.f14430s = zzawoVar;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void G(int i10) {
        this.f14431t = null;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void P0() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void Q4() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void X0() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void b() {
    }

    @Override // com.google.android.gms.internal.ads.zzcvi
    public final void j() {
        if (this.f14431t == null || this.f14427p == null) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.H4)).booleanValue()) {
            this.f14427p.v0("onSdkImpression", new o.a());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final void k() {
        zzeas zzeasVar;
        zzear zzearVar;
        zzawo zzawoVar = this.f14430s;
        if ((zzawoVar == zzawo.REWARD_BASED_VIDEO_AD || zzawoVar == zzawo.INTERSTITIAL || zzawoVar == zzawo.APP_OPEN) && this.f14428q.U && this.f14427p != null && com.google.android.gms.ads.internal.zzt.a().d(this.f14426o)) {
            zzbzg zzbzgVar = this.f14429r;
            String str = zzbzgVar.f11606p + "." + zzbzgVar.f11607q;
            String strA = this.f14428q.W.a();
            if (this.f14428q.W.b() == 1) {
                zzearVar = zzear.VIDEO;
                zzeasVar = zzeas.DEFINED_BY_JAVASCRIPT;
            } else {
                zzeasVar = this.f14428q.Z == 2 ? zzeas.UNSPECIFIED : zzeas.BEGIN_TO_RENDER;
                zzearVar = zzear.HTML_DISPLAY;
            }
            IObjectWrapper iObjectWrapperC = com.google.android.gms.ads.internal.zzt.a().c(str, this.f14427p.V(), BuildConfig.FLAVOR, "javascript", strA, zzeasVar, zzearVar, this.f14428q.f17657m0);
            this.f14431t = iObjectWrapperC;
            if (iObjectWrapperC != null) {
                com.google.android.gms.ads.internal.zzt.a().b(this.f14431t, (View) this.f14427p);
                this.f14427p.S(this.f14431t);
                com.google.android.gms.ads.internal.zzt.a().x0(this.f14431t);
                this.f14427p.v0("onSdkLoaded", new o.a());
            }
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzo
    public final void zzb() {
        if (this.f14431t == null || this.f14427p == null) {
            return;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.H4)).booleanValue()) {
            return;
        }
        this.f14427p.v0("onSdkImpression", new o.a());
    }
}
