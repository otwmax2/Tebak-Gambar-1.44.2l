package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.common.internal.Preconditions;
import java.util.ArrayList;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzeyv {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzl f17709a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzq f17710b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f17711c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzfl f17712d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f17713e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList f17714f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private ArrayList f17715g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private zzbdl f17716h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzw f17717i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private AdManagerAdViewOptions f17718j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private PublisherAdViewOptions f17719k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzcb f17720l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private zzbjx f17722n;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzeib f17725q;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.google.android.gms.ads.internal.client.zzcf f17727s;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f17721m = 1;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzeyi f17723o = new zzeyi();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f17724p = false;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f17726r = false;

    public final zzeyi F() {
        return this.f17723o;
    }

    public final zzeyv G(zzeyx zzeyxVar) {
        this.f17723o.a(zzeyxVar.f17742o.f17695a);
        this.f17709a = zzeyxVar.f17731d;
        this.f17710b = zzeyxVar.f17732e;
        this.f17727s = zzeyxVar.f17745r;
        this.f17711c = zzeyxVar.f17733f;
        this.f17712d = zzeyxVar.f17728a;
        this.f17714f = zzeyxVar.f17734g;
        this.f17715g = zzeyxVar.f17735h;
        this.f17716h = zzeyxVar.f17736i;
        this.f17717i = zzeyxVar.f17737j;
        H(zzeyxVar.f17739l);
        d(zzeyxVar.f17740m);
        this.f17724p = zzeyxVar.f17743p;
        this.f17725q = zzeyxVar.f17730c;
        this.f17726r = zzeyxVar.f17744q;
        return this;
    }

    public final zzeyv H(AdManagerAdViewOptions adManagerAdViewOptions) {
        this.f17718j = adManagerAdViewOptions;
        if (adManagerAdViewOptions != null) {
            this.f17713e = adManagerAdViewOptions.V3();
        }
        return this;
    }

    public final zzeyv I(com.google.android.gms.ads.internal.client.zzq zzqVar) {
        this.f17710b = zzqVar;
        return this;
    }

    public final zzeyv J(String str) {
        this.f17711c = str;
        return this;
    }

    public final zzeyv K(com.google.android.gms.ads.internal.client.zzw zzwVar) {
        this.f17717i = zzwVar;
        return this;
    }

    public final zzeyv L(zzeib zzeibVar) {
        this.f17725q = zzeibVar;
        return this;
    }

    public final zzeyv M(zzbjx zzbjxVar) {
        this.f17722n = zzbjxVar;
        this.f17712d = new com.google.android.gms.ads.internal.client.zzfl(false, true, false);
        return this;
    }

    public final zzeyv N(boolean z10) {
        this.f17724p = z10;
        return this;
    }

    public final zzeyv O(boolean z10) {
        this.f17726r = true;
        return this;
    }

    public final zzeyv P(boolean z10) {
        this.f17713e = z10;
        return this;
    }

    public final zzeyv Q(int i10) {
        this.f17721m = i10;
        return this;
    }

    public final zzeyv a(zzbdl zzbdlVar) {
        this.f17716h = zzbdlVar;
        return this;
    }

    public final zzeyv b(ArrayList arrayList) {
        this.f17714f = arrayList;
        return this;
    }

    public final zzeyv c(ArrayList arrayList) {
        this.f17715g = arrayList;
        return this;
    }

    public final zzeyv d(PublisherAdViewOptions publisherAdViewOptions) {
        this.f17719k = publisherAdViewOptions;
        if (publisherAdViewOptions != null) {
            this.f17713e = publisherAdViewOptions.a();
            this.f17720l = publisherAdViewOptions.V3();
        }
        return this;
    }

    public final zzeyv e(com.google.android.gms.ads.internal.client.zzl zzlVar) {
        this.f17709a = zzlVar;
        return this;
    }

    public final zzeyv f(com.google.android.gms.ads.internal.client.zzfl zzflVar) {
        this.f17712d = zzflVar;
        return this;
    }

    public final zzeyx g() {
        Preconditions.l(this.f17711c, "ad unit must not be null");
        Preconditions.l(this.f17710b, "ad size must not be null");
        Preconditions.l(this.f17709a, "ad request must not be null");
        return new zzeyx(this, null);
    }

    public final String i() {
        return this.f17711c;
    }

    public final boolean o() {
        return this.f17724p;
    }

    public final zzeyv q(com.google.android.gms.ads.internal.client.zzcf zzcfVar) {
        this.f17727s = zzcfVar;
        return this;
    }

    public final com.google.android.gms.ads.internal.client.zzl v() {
        return this.f17709a;
    }

    public final com.google.android.gms.ads.internal.client.zzq x() {
        return this.f17710b;
    }
}
