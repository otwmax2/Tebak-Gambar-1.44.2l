package com.google.android.gms.internal.ads;

import java.util.ListIterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgtj implements ListIterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final ListIterator f19621o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ int f19622p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzgtl f19623q;

    zzgtj(zzgtl zzgtlVar, int i10) {
        this.f19623q = zzgtlVar;
        this.f19622p = i10;
        this.f19621o = zzgtlVar.f19626o.listIterator(i10);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f19621o.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f19621o.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f19621o.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f19621o.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ Object previous() {
        return (String) this.f19621o.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f19621o.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(Object obj) {
        throw new UnsupportedOperationException();
    }
}
