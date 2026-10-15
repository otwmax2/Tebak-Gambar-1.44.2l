package com.google.android.gms.internal.firebase_auth;

import java.util.Iterator;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes.dex */
final class zzbq<K> extends zzbn<K> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final transient zzbl<K, ?> f22457q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient zzbg<K> f22458r;

    zzbq(zzbl<K, ?> zzblVar, zzbg<K> zzbgVar) {
        this.f22457q = zzblVar;
        this.f22458r = zzbgVar;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbh
    final int c(Object[] objArr, int i10) {
        return i().c(objArr, i10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbh, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(@NullableDecl Object obj) {
        return this.f22457q.get(obj) != null;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbh
    /* JADX INFO: renamed from: g */
    public final zzbv<K> iterator() {
        return (zzbv) i().iterator();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbn, com.google.android.gms.internal.firebase_auth.zzbh
    public final zzbg<K> i() {
        return this.f22458r;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbn, com.google.android.gms.internal.firebase_auth.zzbh, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f22457q.size();
    }
}
