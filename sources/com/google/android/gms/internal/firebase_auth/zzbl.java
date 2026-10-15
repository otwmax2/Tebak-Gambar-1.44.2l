package com.google.android.gms.internal.firebase_auth;

import java.io.Serializable;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzbl<K, V> implements Serializable, Map<K, V> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final Map.Entry<?, ?>[] f22441r = new Map.Entry[0];

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private transient zzbn<Map.Entry<K, V>> f22442o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private transient zzbn<K> f22443p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private transient zzbh<V> f22444q;

    zzbl() {
    }

    public static <K, V> zzbl<K, V> a() {
        return (zzbl<K, V>) zzbp.f22453v;
    }

    abstract zzbn<Map.Entry<K, V>> b();

    abstract zzbn<K> c();

    @Override // java.util.Map
    @Deprecated
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public boolean containsKey(@NullableDecl Object obj) {
        return get(obj) != null;
    }

    @Override // java.util.Map
    public boolean containsValue(@NullableDecl Object obj) {
        return ((zzbh) values()).contains(obj);
    }

    abstract zzbh<V> d();

    @Override // java.util.Map
    public /* synthetic */ Set entrySet() {
        zzbn<Map.Entry<K, V>> zzbnVar = this.f22442o;
        if (zzbnVar != null) {
            return zzbnVar;
        }
        zzbn<Map.Entry<K, V>> zzbnVarB = b();
        this.f22442o = zzbnVarB;
        return zzbnVarB;
    }

    @Override // java.util.Map
    public boolean equals(@NullableDecl Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Map) {
            return entrySet().equals(((Map) obj).entrySet());
        }
        return false;
    }

    @Override // java.util.Map
    public abstract V get(@NullableDecl Object obj);

    @Override // java.util.Map
    public final V getOrDefault(@NullableDecl Object obj, @NullableDecl V v10) {
        V v11 = get(obj);
        return v11 != null ? v11 : v10;
    }

    @Override // java.util.Map
    public int hashCode() {
        return zzbs.a((zzbn) entrySet());
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.Map
    public /* synthetic */ Set keySet() {
        zzbn<K> zzbnVar = this.f22443p;
        if (zzbnVar != null) {
            return zzbnVar;
        }
        zzbn<K> zzbnVarC = c();
        this.f22443p = zzbnVarC;
        return zzbnVarC;
    }

    @Override // java.util.Map
    @Deprecated
    public final V put(K k10, V v10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final void putAll(Map<? extends K, ? extends V> map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    @Deprecated
    public final V remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public String toString() {
        int size = size();
        if (size < 0) {
            StringBuilder sb = new StringBuilder("size".length() + 40);
            sb.append("size");
            sb.append(" cannot be negative but was: ");
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder((int) Math.min(((long) size) << 3, 1073741824L));
        sb2.append('{');
        boolean z10 = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z10) {
                sb2.append(", ");
            }
            z10 = false;
            sb2.append(entry.getKey());
            sb2.append('=');
            sb2.append(entry.getValue());
        }
        sb2.append('}');
        return sb2.toString();
    }

    @Override // java.util.Map
    public /* synthetic */ Collection values() {
        zzbh<V> zzbhVar = this.f22444q;
        if (zzbhVar != null) {
            return zzbhVar;
        }
        zzbh<V> zzbhVarD = d();
        this.f22444q = zzbhVarD;
        return zzbhVarD;
    }
}
