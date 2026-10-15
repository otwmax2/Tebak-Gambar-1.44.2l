package com.google.android.gms.internal.measurement;

import java.util.ListIterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmo implements ListIterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final ListIterator f23761o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ int f23762p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzmq f23763q;

    zzmo(zzmq zzmqVar, int i10) {
        this.f23763q = zzmqVar;
        this.f23762p = i10;
        this.f23761o = zzmqVar.f23766o.listIterator(i10);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f23761o.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f23761o.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f23761o.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f23761o.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ Object previous() {
        return (String) this.f23761o.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f23761o.previousIndex();
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
