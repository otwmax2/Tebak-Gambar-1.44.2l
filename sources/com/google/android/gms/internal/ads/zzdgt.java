package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import o.g;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzdgt {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final zzdgt f14675h = new zzdgt(new zzdgr());

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final zzbey f14676a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzbev f14677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzbfl f14678c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzbfi f14679d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzbkg f14680e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final g f14681f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final g f14682g;

    private zzdgt(zzdgr zzdgrVar) {
        this.f14676a = zzdgrVar.f14668a;
        this.f14677b = zzdgrVar.f14669b;
        this.f14678c = zzdgrVar.f14670c;
        this.f14681f = new g(zzdgrVar.f14673f);
        this.f14682g = new g(zzdgrVar.f14674g);
        this.f14679d = zzdgrVar.f14671d;
        this.f14680e = zzdgrVar.f14672e;
    }

    public final zzbev a() {
        return this.f14677b;
    }

    public final zzbey b() {
        return this.f14676a;
    }

    public final zzbfb c(String str) {
        return (zzbfb) this.f14682g.get(str);
    }

    public final zzbfe d(String str) {
        return (zzbfe) this.f14681f.get(str);
    }

    public final zzbfi e() {
        return this.f14679d;
    }

    public final zzbfl f() {
        return this.f14678c;
    }

    public final zzbkg g() {
        return this.f14680e;
    }

    public final ArrayList h() {
        ArrayList arrayList = new ArrayList(this.f14681f.size());
        for (int i10 = 0; i10 < this.f14681f.size(); i10++) {
            arrayList.add((String) this.f14681f.k(i10));
        }
        return arrayList;
    }

    public final ArrayList i() {
        ArrayList arrayList = new ArrayList();
        if (this.f14678c != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.f14676a != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.f14677b != null) {
            arrayList.add(Integer.toString(2));
        }
        if (!this.f14681f.isEmpty()) {
            arrayList.add(Integer.toString(3));
        }
        if (this.f14680e != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }
}
