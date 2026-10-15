package com.google.android.gms.internal.ads;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbg {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final zzbg f10674i = new zzaj().c();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final String f10675j = zzew.p(0);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final String f10676k = zzew.p(1);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f10677l = zzew.p(2);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final String f10678m = zzew.p(3);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final String f10679n = zzew.p(4);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final zzn f10680o = new zzn() { // from class: com.google.android.gms.internal.ads.zzah
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f10681a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final zzay f10682b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Deprecated
    public final zzba f10683c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final zzaw f10684d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final zzbm f10685e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final zzan f10686f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Deprecated
    public final zzap f10687g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final zzbd f10688h;

    /* synthetic */ zzbg(String str, zzap zzapVar, zzba zzbaVar, zzaw zzawVar, zzbm zzbmVar, zzbd zzbdVar, zzbf zzbfVar) {
        this.f10681a = str;
        this.f10682b = zzbaVar;
        this.f10683c = zzbaVar;
        this.f10684d = zzawVar;
        this.f10685e = zzbmVar;
        this.f10686f = zzapVar;
        this.f10687g = zzapVar;
        this.f10688h = zzbdVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzbg)) {
            return false;
        }
        zzbg zzbgVar = (zzbg) obj;
        return zzew.u(this.f10681a, zzbgVar.f10681a) && this.f10686f.equals(zzbgVar.f10686f) && zzew.u(this.f10682b, zzbgVar.f10682b) && zzew.u(this.f10684d, zzbgVar.f10684d) && zzew.u(this.f10685e, zzbgVar.f10685e) && zzew.u(this.f10688h, zzbgVar.f10688h);
    }

    public final int hashCode() {
        int iHashCode = this.f10681a.hashCode() * 31;
        zzay zzayVar = this.f10682b;
        return (((((((iHashCode + (zzayVar != null ? zzayVar.hashCode() : 0)) * 31) + this.f10684d.hashCode()) * 31) + this.f10686f.hashCode()) * 31) + this.f10685e.hashCode()) * 31;
    }
}
