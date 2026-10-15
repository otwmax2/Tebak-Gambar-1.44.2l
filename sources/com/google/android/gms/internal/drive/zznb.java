package com.google.android.gms.internal.drive;

import java.util.ListIterator;

/* JADX INFO: loaded from: classes2.dex */
final class zznb implements ListIterator<String> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ListIterator<String> f22311o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final /* synthetic */ int f22312p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final /* synthetic */ zzna f22313q;

    zznb(zzna zznaVar, int i10) {
        this.f22313q = zznaVar;
        this.f22312p = i10;
        this.f22311o = zznaVar.f22310o.listIterator(i10);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f22311o.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f22311o.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f22311o.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f22311o.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f22311o.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f22311o.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
