package com.google.android.gms.internal.firebase_auth;

import java.util.ListIterator;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzld implements ListIterator<String> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ListIterator<String> f22880o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final /* synthetic */ int f22881p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final /* synthetic */ zzla f22882q;

    zzld(zzla zzlaVar, int i10) {
        this.f22882q = zzlaVar;
        this.f22881p = i10;
        this.f22880o = zzlaVar.f22877o.listIterator(i10);
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ void add(String str) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final boolean hasNext() {
        return this.f22880o.hasNext();
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f22880o.hasPrevious();
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final /* synthetic */ Object next() {
        return this.f22880o.next();
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f22880o.nextIndex();
    }

    @Override // java.util.ListIterator
    public final /* synthetic */ String previous() {
        return this.f22880o.previous();
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f22880o.previousIndex();
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
