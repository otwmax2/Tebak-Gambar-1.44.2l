package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NavigableMap;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzfpf extends zzfpi implements Serializable {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final transient Map f18556r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private transient int f18557s;

    protected zzfpf(Map map) {
        zzfnu.e(map.isEmpty());
        this.f18556r = map;
    }

    static /* synthetic */ int k(zzfpf zzfpfVar) {
        int i10 = zzfpfVar.f18557s;
        zzfpfVar.f18557s = i10 + 1;
        return i10;
    }

    static /* synthetic */ int l(zzfpf zzfpfVar) {
        int i10 = zzfpfVar.f18557s;
        zzfpfVar.f18557s = i10 - 1;
        return i10;
    }

    static /* synthetic */ int m(zzfpf zzfpfVar, int i10) {
        int i11 = zzfpfVar.f18557s + i10;
        zzfpfVar.f18557s = i11;
        return i11;
    }

    static /* synthetic */ int n(zzfpf zzfpfVar, int i10) {
        int i11 = zzfpfVar.f18557s - i10;
        zzfpfVar.f18557s = i11;
        return i11;
    }

    static /* synthetic */ void t(zzfpf zzfpfVar, Object obj) {
        Object objRemove;
        try {
            objRemove = zzfpfVar.f18556r.remove(obj);
        } catch (ClassCastException | NullPointerException unused) {
            objRemove = null;
        }
        Collection collection = (Collection) objRemove;
        if (collection != null) {
            int size = collection.size();
            collection.clear();
            zzfpfVar.f18557s -= size;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzfpi, com.google.android.gms.internal.ads.zzfrg
    public final boolean a(Object obj, Object obj2) {
        Collection collection = (Collection) this.f18556r.get(obj);
        if (collection != null) {
            if (!collection.add(obj2)) {
                return false;
            }
            this.f18557s++;
            return true;
        }
        Collection collectionH = h();
        if (!collectionH.add(obj2)) {
            throw new AssertionError("New Collection violated the Collection spec");
        }
        this.f18557s++;
        this.f18556r.put(obj, collectionH);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfpi
    final Collection b() {
        return new zzfph(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfpi
    final Iterator c() {
        return new zzfop(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfpi
    Map d() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfpi
    Set e() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzfrg
    public final int f() {
        return this.f18557s;
    }

    abstract Collection h();

    Collection i(Collection collection) {
        throw null;
    }

    Collection j(Object obj, Collection collection) {
        throw null;
    }

    final List o(Object obj, List list, @CheckForNull zzfpc zzfpcVar) {
        return list instanceof RandomAccess ? new zzfoy(this, obj, list, zzfpcVar) : new zzfpe(this, obj, list, zzfpcVar);
    }

    @Override // com.google.android.gms.internal.ads.zzfrg
    public final void p() {
        Iterator it = this.f18556r.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        this.f18556r.clear();
        this.f18557s = 0;
    }

    final Map r() {
        Map map = this.f18556r;
        return map instanceof NavigableMap ? new zzfow(this, (NavigableMap) map) : map instanceof SortedMap ? new zzfoz(this, (SortedMap) map) : new zzfos(this, map);
    }

    final Set s() {
        Map map = this.f18556r;
        return map instanceof NavigableMap ? new zzfox(this, (NavigableMap) map) : map instanceof SortedMap ? new zzfpa(this, (SortedMap) map) : new zzfov(this, map);
    }
}
