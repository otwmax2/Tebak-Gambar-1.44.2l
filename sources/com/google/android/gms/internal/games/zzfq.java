package com.google.android.gms.internal.games;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzfq<E> extends zzgf<E> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f23195o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f23196p;

    protected zzfq(int i10, int i11) {
        zzfo.e(i11, i10);
        this.f23195o = i10;
        this.f23196p = i11;
    }

    protected abstract E a(int i10);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f23196p < this.f23195o;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f23196p > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f23196p;
        this.f23196p = i10 + 1;
        return a(i10);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f23196p;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f23196p - 1;
        this.f23196p = i10;
        return a(i10);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f23196p - 1;
    }
}
