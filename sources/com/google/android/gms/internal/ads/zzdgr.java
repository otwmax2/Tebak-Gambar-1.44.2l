package com.google.android.gms.internal.ads;

import o.g;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdgr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    zzbey f14668a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    zzbev f14669b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    zzbfl f14670c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    zzbfi f14671d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    zzbkg f14672e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final g f14673f = new g();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final g f14674g = new g();

    public final zzdgr a(zzbev zzbevVar) {
        this.f14669b = zzbevVar;
        return this;
    }

    public final zzdgr b(zzbey zzbeyVar) {
        this.f14668a = zzbeyVar;
        return this;
    }

    public final zzdgr c(String str, zzbfe zzbfeVar, zzbfb zzbfbVar) {
        this.f14673f.put(str, zzbfeVar);
        if (zzbfbVar != null) {
            this.f14674g.put(str, zzbfbVar);
        }
        return this;
    }

    public final zzdgr d(zzbkg zzbkgVar) {
        this.f14672e = zzbkgVar;
        return this;
    }

    public final zzdgr e(zzbfi zzbfiVar) {
        this.f14671d = zzbfiVar;
        return this;
    }

    public final zzdgr f(zzbfl zzbflVar) {
        this.f14670c = zzbflVar;
        return this;
    }

    public final zzdgt g() {
        return new zzdgt(this);
    }
}
