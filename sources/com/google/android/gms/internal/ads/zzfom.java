package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzfom extends zzfsk {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f18521o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f18522p;

    protected zzfom(int i10, int i11) {
        zzfnu.b(i11, i10, "index");
        this.f18521o = i10;
        this.f18522p = i11;
    }

    protected abstract Object a(int i10);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f18522p < this.f18521o;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f18522p > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f18522p;
        this.f18522p = i10 + 1;
        return a(i10);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f18522p;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f18522p - 1;
        this.f18522p = i10;
        return a(i10);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f18522p - 1;
    }
}
