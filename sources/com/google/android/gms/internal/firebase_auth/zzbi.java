package com.google.android.gms.internal.firebase_auth;

import java.util.List;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbi extends zzbg {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final transient int f22434q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient int f22435r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final /* synthetic */ zzbg f22436s;

    zzbi(zzbg zzbgVar, int i10, int i11) {
        this.f22436s = zzbgVar;
        this.f22434q = i10;
        this.f22435r = i11;
    }

    @Override // java.util.List
    public final Object get(int i10) {
        zzav.a(i10, this.f22435r);
        return this.f22436s.get(i10 + this.f22434q);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbh
    final Object[] j() {
        return this.f22436s.j();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbh
    final int k() {
        return this.f22436s.k() + this.f22434q;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbh
    final int l() {
        return this.f22436s.k() + this.f22434q + this.f22435r;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbg
    /* JADX INFO: renamed from: n */
    public final zzbg subList(int i10, int i11) {
        zzav.d(i10, i11, this.f22435r);
        zzbg zzbgVar = this.f22436s;
        int i12 = this.f22434q;
        return (zzbg) zzbgVar.subList(i10 + i12, i11 + i12);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22435r;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbg, java.util.List
    public final /* synthetic */ List subList(int i10, int i11) {
        return subList(i10, i11);
    }
}
