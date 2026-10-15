package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzgwp extends AbstractList {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static final zzgwq f19706q = zzgwq.b(zzgwp.class);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final List f19707o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final Iterator f19708p;

    public zzgwp(List list, Iterator it) {
        this.f19707o = list;
        this.f19708p = it;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        if (this.f19707o.size() > i10) {
            return this.f19707o.get(i10);
        }
        if (!this.f19708p.hasNext()) {
            throw new NoSuchElementException();
        }
        this.f19707o.add(this.f19708p.next());
        return get(i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new zzgwo(this);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        zzgwq zzgwqVar = f19706q;
        zzgwqVar.a("potentially expensive size() call");
        zzgwqVar.a("blowup running");
        while (this.f19708p.hasNext()) {
            this.f19707o.add(this.f19708p.next());
        }
        return this.f19707o.size();
    }
}
