package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.vungle.mediation.BuildConfig;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcpz implements zzcwc, zzcvi {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f13737o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzcei f13738p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzeyc f13739q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzbzg f13740r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    @GuardedBy("this")
    private IObjectWrapper f13741s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f13742t;

    public zzcpz(Context context, zzcei zzceiVar, zzeyc zzeycVar, zzbzg zzbzgVar) {
        this.f13737o = context;
        this.f13738p = zzceiVar;
        this.f13739q = zzeycVar;
        this.f13740r = zzbzgVar;
    }

    private final synchronized void a() {
        zzear zzearVar;
        zzeas zzeasVar;
        if (this.f13739q.U) {
            if (this.f13738p == null) {
                return;
            }
            if (com.google.android.gms.ads.internal.zzt.a().d(this.f13737o)) {
                zzbzg zzbzgVar = this.f13740r;
                String str = zzbzgVar.f11606p + "." + zzbzgVar.f11607q;
                String strA = this.f13739q.W.a();
                if (this.f13739q.W.b() == 1) {
                    zzearVar = zzear.VIDEO;
                    zzeasVar = zzeas.DEFINED_BY_JAVASCRIPT;
                } else {
                    zzearVar = zzear.HTML_DISPLAY;
                    zzeasVar = this.f13739q.f17642f == 1 ? zzeas.ONE_PIXEL : zzeas.BEGIN_TO_RENDER;
                }
                IObjectWrapper iObjectWrapperC = com.google.android.gms.ads.internal.zzt.a().c(str, this.f13738p.V(), BuildConfig.FLAVOR, "javascript", strA, zzeasVar, zzearVar, this.f13739q.f17657m0);
                this.f13741s = iObjectWrapperC;
                Object obj = this.f13738p;
                if (iObjectWrapperC != null) {
                    com.google.android.gms.ads.internal.zzt.a().b(this.f13741s, (View) obj);
                    this.f13738p.S(this.f13741s);
                    com.google.android.gms.ads.internal.zzt.a().x0(this.f13741s);
                    this.f13742t = true;
                    this.f13738p.v0("onSdkLoaded", new o.a());
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcvi
    public final synchronized void j() {
        zzcei zzceiVar;
        if (!this.f13742t) {
            a();
        }
        if (!this.f13739q.U || this.f13741s == null || (zzceiVar = this.f13738p) == null) {
            return;
        }
        zzceiVar.v0("onSdkImpression", new o.a());
    }

    @Override // com.google.android.gms.internal.ads.zzcwc
    public final synchronized void k() {
        if (this.f13742t) {
            return;
        }
        a();
    }
}
