package com.google.android.gms.internal.firebase_auth;

import java.util.Iterator;
import java.util.NoSuchElementException;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzae<T> implements Iterator<T> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f22401o = zzag.f22404b;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NullableDecl
    private T f22402p;

    protected zzae() {
    }

    protected abstract T a();

    @NullableDecl
    protected final T b() {
        this.f22401o = zzag.f22405c;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i10 = this.f22401o;
        int i11 = zzag.f22406d;
        if (!(i10 != i11)) {
            throw new IllegalStateException();
        }
        int i12 = zzad.f22400a[i10 - 1];
        if (i12 == 1) {
            return false;
        }
        if (i12 == 2) {
            return true;
        }
        this.f22401o = i11;
        this.f22402p = a();
        if (this.f22401o == zzag.f22405c) {
            return false;
        }
        this.f22401o = zzag.f22403a;
        return true;
    }

    @Override // java.util.Iterator
    public final T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f22401o = zzag.f22404b;
        T t10 = this.f22402p;
        this.f22402p = null;
        return t10;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
