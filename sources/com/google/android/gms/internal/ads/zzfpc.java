package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Objects;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
class zzfpc extends AbstractCollection {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Object f18549o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    Collection f18550p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @CheckForNull
    final zzfpc f18551q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @CheckForNull
    final Collection f18552r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzfpf f18553s;

    zzfpc(zzfpf zzfpfVar, Object obj, @CheckForNull Collection collection, zzfpc zzfpcVar) {
        this.f18553s = zzfpfVar;
        this.f18549o = obj;
        this.f18550p = collection;
        this.f18551q = zzfpcVar;
        this.f18552r = zzfpcVar == null ? null : zzfpcVar.f18550p;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        zzb();
        boolean zIsEmpty = this.f18550p.isEmpty();
        boolean zAdd = this.f18550p.add(obj);
        if (!zAdd) {
            return zAdd;
        }
        zzfpf.k(this.f18553s);
        if (!zIsEmpty) {
            return zAdd;
        }
        c();
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zAddAll = this.f18550p.addAll(collection);
        if (!zAddAll) {
            return zAddAll;
        }
        zzfpf.m(this.f18553s, this.f18550p.size() - size);
        if (size != 0) {
            return zAddAll;
        }
        c();
        return true;
    }

    final void c() {
        zzfpc zzfpcVar = this.f18551q;
        if (zzfpcVar != null) {
            zzfpcVar.c();
        } else {
            this.f18553s.f18556r.put(this.f18549o, this.f18550p);
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        int size = size();
        if (size == 0) {
            return;
        }
        this.f18550p.clear();
        zzfpf.n(this.f18553s, size);
        g();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        zzb();
        return this.f18550p.contains(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        zzb();
        return this.f18550p.containsAll(collection);
    }

    @Override // java.util.Collection
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        zzb();
        return this.f18550p.equals(obj);
    }

    final void g() {
        zzfpc zzfpcVar = this.f18551q;
        if (zzfpcVar != null) {
            zzfpcVar.g();
        } else if (this.f18550p.isEmpty()) {
            this.f18553s.f18556r.remove(this.f18549o);
        }
    }

    @Override // java.util.Collection
    public final int hashCode() {
        zzb();
        return this.f18550p.hashCode();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        zzb();
        return new zzfpb(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(@CheckForNull Object obj) {
        zzb();
        boolean zRemove = this.f18550p.remove(obj);
        if (zRemove) {
            zzfpf.l(this.f18553s);
            g();
        }
        return zRemove;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        int size = size();
        boolean zRemoveAll = this.f18550p.removeAll(collection);
        if (zRemoveAll) {
            zzfpf.m(this.f18553s, this.f18550p.size() - size);
            g();
        }
        return zRemoveAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        Objects.requireNonNull(collection);
        int size = size();
        boolean zRetainAll = this.f18550p.retainAll(collection);
        if (zRetainAll) {
            zzfpf.m(this.f18553s, this.f18550p.size() - size);
            g();
        }
        return zRetainAll;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        zzb();
        return this.f18550p.size();
    }

    @Override // java.util.AbstractCollection
    public final String toString() {
        zzb();
        return this.f18550p.toString();
    }

    final void zzb() {
        Collection collection;
        zzfpc zzfpcVar = this.f18551q;
        if (zzfpcVar != null) {
            zzfpcVar.zzb();
            if (this.f18551q.f18550p != this.f18552r) {
                throw new ConcurrentModificationException();
            }
        } else {
            if (!this.f18550p.isEmpty() || (collection = (Collection) this.f18553s.f18556r.get(this.f18549o)) == null) {
                return;
            }
            this.f18550p = collection;
        }
    }
}
