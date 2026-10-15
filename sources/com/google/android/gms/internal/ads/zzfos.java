package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
class zzfos extends zzfre {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final transient Map f18529r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzfpf f18530s;

    zzfos(zzfpf zzfpfVar, Map map) {
        this.f18530s = zzfpfVar;
        this.f18529r = map;
    }

    @Override // com.google.android.gms.internal.ads.zzfre
    protected final Set a() {
        return new zzfoq(this);
    }

    final Map.Entry c(Map.Entry entry) {
        Object key = entry.getKey();
        return new zzfqg(key, this.f18530s.j(key, (Collection) entry.getValue()));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Map map = this.f18529r;
        zzfpf zzfpfVar = this.f18530s;
        if (map == zzfpfVar.f18556r) {
            zzfpfVar.p();
        } else {
            zzfqu.b(new zzfor(this));
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(@CheckForNull Object obj) {
        Map map = this.f18529r;
        Objects.requireNonNull(map);
        try {
            return map.containsKey(obj);
        } catch (ClassCastException | NullPointerException unused) {
            return false;
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(@CheckForNull Object obj) {
        return this == obj || this.f18529r.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public final /* bridge */ /* synthetic */ Object get(@CheckForNull Object obj) {
        Collection collection = (Collection) zzfrf.a(this.f18529r, obj);
        if (collection == null) {
            return null;
        }
        return this.f18530s.j(obj, collection);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.f18529r.hashCode();
    }

    @Override // com.google.android.gms.internal.ads.zzfre, java.util.AbstractMap, java.util.Map
    public Set keySet() {
        return this.f18530s.g();
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public final /* bridge */ /* synthetic */ Object remove(@CheckForNull Object obj) {
        Collection collection = (Collection) this.f18529r.remove(obj);
        if (collection == null) {
            return null;
        }
        Collection collectionH = this.f18530s.h();
        collectionH.addAll(collection);
        zzfpf.n(this.f18530s, collection.size());
        collection.clear();
        return collectionH;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f18529r.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.f18529r.toString();
    }
}
