package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public final class zzgtl extends AbstractList implements RandomAccess, zzgre {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzgre f19626o;

    public zzgtl(zzgre zzgreVar) {
        this.f19626o = zzgreVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgre
    public final Object G(int i10) {
        return this.f19626o.G(i10);
    }

    @Override // com.google.android.gms.internal.ads.zzgre
    public final void U0(zzgpe zzgpeVar) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzgre
    public final zzgre b() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzgre
    public final List f() {
        return this.f19626o.f();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        return ((zzgrd) this.f19626o).get(i10);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return new zzgtk(this);
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i10) {
        return new zzgtj(this, i10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19626o.size();
    }
}
