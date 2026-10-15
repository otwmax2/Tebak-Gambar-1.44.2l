package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
class zzfpb implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Iterator f18546o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final Collection f18547p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzfpc f18548q;

    zzfpb(zzfpc zzfpcVar) {
        this.f18548q = zzfpcVar;
        Collection collection = zzfpcVar.f18550p;
        this.f18547p = collection;
        this.f18546o = collection instanceof List ? ((List) collection).listIterator() : collection.iterator();
    }

    zzfpb(zzfpc zzfpcVar, Iterator it) {
        this.f18548q = zzfpcVar;
        this.f18547p = zzfpcVar.f18550p;
        this.f18546o = it;
    }

    final void a() {
        this.f18548q.zzb();
        if (this.f18548q.f18550p != this.f18547p) {
            throw new ConcurrentModificationException();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        a();
        return this.f18546o.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        a();
        return this.f18546o.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f18546o.remove();
        zzfpf.l(this.f18548q.f18553s);
        this.f18548q.g();
    }
}
