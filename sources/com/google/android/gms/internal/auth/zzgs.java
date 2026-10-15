package com.google.android.gms.internal.auth;

import java.util.ListIterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgs implements ListIterator<String> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final ListIterator<String> f21572o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ int f21573p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzgu f21574q;

    zzgs(zzgu zzguVar, int i10) {
        this.f21574q = zzguVar;
        this.f21573p = i10;
        this.f21572o = zzguVar.f21577o.listIterator(i10);
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f21572o.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f21572o.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return this.f21572o.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f21572o.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ String previous() {
        return this.f21572o.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f21572o.previousIndex();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator
    public final /* bridge */ /* synthetic */ void set(String str) {
        throw new UnsupportedOperationException();
    }
}
