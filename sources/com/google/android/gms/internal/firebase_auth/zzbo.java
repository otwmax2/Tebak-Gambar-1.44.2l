package com.google.android.gms.internal.firebase_auth;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzbo<K, V> extends zzbn<Map.Entry<K, V>> {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final transient zzbl<K, V> f22449q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient Object[] f22450r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final transient int f22451s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final transient int f22452t;

    zzbo(zzbl<K, V> zzblVar, Object[] objArr, int i10, int i11) {
        this.f22449q = zzblVar;
        this.f22450r = objArr;
        this.f22452t = i11;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbh
    final int c(Object[] objArr, int i10) {
        return i().c(objArr, i10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbh, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        if (obj instanceof Map.Entry) {
            Map.Entry entry = (Map.Entry) obj;
            Object key = entry.getKey();
            Object value = entry.getValue();
            if (value != null && value.equals(this.f22449q.get(key))) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbh
    /* JADX INFO: renamed from: g */
    public final zzbv<Map.Entry<K, V>> iterator() {
        return (zzbv) i().iterator();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbn, com.google.android.gms.internal.firebase_auth.zzbh, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzbn
    final zzbg<Map.Entry<K, V>> m() {
        return new zzbr(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.f22452t;
    }
}
