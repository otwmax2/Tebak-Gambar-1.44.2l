package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractSequentialList;
import java.util.List;
import java.util.ListIterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfqx extends AbstractSequentialList implements Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final List f18623o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final zzfnj f18624p;

    zzfqx(List list, zzfnj zzfnjVar) {
        this.f18623o = list;
        this.f18624p = zzfnjVar;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final void clear() {
        this.f18623o.clear();
    }

    @Override // java.util.AbstractSequentialList, java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i10) {
        return new zzfqw(this, this.f18623o.listIterator(i10));
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f18623o.size();
    }
}
