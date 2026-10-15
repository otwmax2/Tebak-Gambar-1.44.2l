package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzehe extends com.google.android.gms.ads.internal.client.zzbp {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f16659o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzcgd f16660p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @VisibleForTesting
    final zzeyv f16661q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @VisibleForTesting
    final zzdgr f16662r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzbh f16663s;

    public zzehe(zzcgd zzcgdVar, Context context, String str) {
        zzeyv zzeyvVar = new zzeyv();
        this.f16661q = zzeyvVar;
        this.f16662r = new zzdgr();
        this.f16660p = zzcgdVar;
        zzeyvVar.J(str);
        this.f16659o = context;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void F1(zzbfl zzbflVar) {
        this.f16662r.f(zzbflVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void G7(zzbey zzbeyVar) {
        this.f16662r.b(zzbeyVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void H8(zzbjx zzbjxVar) {
        this.f16661q.M(zzbjxVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void X5(String str, zzbfe zzbfeVar, zzbfb zzbfbVar) {
        this.f16662r.c(str, zzbfeVar, zzbfbVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void Y8(com.google.android.gms.ads.internal.client.zzbh zzbhVar) {
        this.f16663s = zzbhVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final com.google.android.gms.ads.internal.client.zzbn b() {
        zzdgt zzdgtVarG = this.f16662r.g();
        this.f16661q.b(zzdgtVarG.i());
        this.f16661q.c(zzdgtVarG.h());
        zzeyv zzeyvVar = this.f16661q;
        if (zzeyvVar.x() == null) {
            zzeyvVar.I(com.google.android.gms.ads.internal.client.zzq.X3());
        }
        return new zzehf(this.f16659o, this.f16660p, this.f16661q, zzdgtVarG, this.f16663s);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void e9(zzbkg zzbkgVar) {
        this.f16662r.d(zzbkgVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void n6(zzbfi zzbfiVar, com.google.android.gms.ads.internal.client.zzq zzqVar) {
        this.f16662r.e(zzbfiVar);
        this.f16661q.I(zzqVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void pa(PublisherAdViewOptions publisherAdViewOptions) {
        this.f16661q.d(publisherAdViewOptions);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void wa(zzbdl zzbdlVar) {
        this.f16661q.a(zzbdlVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void x3(zzbev zzbevVar) {
        this.f16662r.a(zzbevVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void x9(com.google.android.gms.ads.internal.client.zzcf zzcfVar) {
        this.f16661q.q(zzcfVar);
    }

    @Override // com.google.android.gms.ads.internal.client.zzbq
    public final void ya(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.f16661q.H(adManagerAdViewOptions);
    }
}
