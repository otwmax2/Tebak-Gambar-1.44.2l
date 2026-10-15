package com.google.android.gms.internal.common;

import java.util.NoSuchElementException;
import org.jspecify.nullness.NullMarked;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@NullMarked
abstract class zzz extends zzak {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final int f21708o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f21709p;

    protected zzz(int i10, int i11) {
        zzs.b(i11, i10, "index");
        this.f21708o = i10;
        this.f21709p = i11;
    }

    protected abstract Object a(int i10);

    @Override // java.util.Iterator, java.util.ListIterator
    public final boolean hasNext() {
        return this.f21709p < this.f21708o;
    }

    @Override // java.util.ListIterator
    public final boolean hasPrevious() {
        return this.f21709p > 0;
    }

    @Override // java.util.Iterator, java.util.ListIterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f21709p;
        this.f21709p = i10 + 1;
        return a(i10);
    }

    @Override // java.util.ListIterator
    public final int nextIndex() {
        return this.f21709p;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (!hasPrevious()) {
            throw new NoSuchElementException();
        }
        int i10 = this.f21709p - 1;
        this.f21709p = i10;
        return a(i10);
    }

    @Override // java.util.ListIterator
    public final int previousIndex() {
        return this.f21709p - 1;
    }
}
