package com.google.android.gms.internal.firebase_auth;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzbc<E> extends zzbu<E> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f22430o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f22431p;

    protected zzbc(int i10, int i11) {
        zzav.e(i11, i10);
        this.f22430o = i10;
        this.f22431p = i11;
    }

    protected abstract E a(int i10);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f22431p < this.f22430o;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f22431p > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final E next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f22431p;
        this.f22431p = i10 + 1;
        return a(i10);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f22431p;
    }

    @Override // java.util.ListIterator
    public final E previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f22431p - 1;
        this.f22431p = i10;
        return a(i10);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f22431p - 1;
    }
}
