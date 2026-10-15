package com.google.android.gms.internal.common;

import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;
import org.jspecify.nullness.NullMarked;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@NullMarked
abstract class zzj implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @CheckForNull
    private Object f21691o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f21692p = 2;

    protected zzj() {
    }

    @CheckForNull
    protected abstract Object a();

    @CheckForNull
    protected final Object b() {
        this.f21692p = 3;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        int i10 = this.f21692p;
        if (i10 == 4) {
            throw new IllegalStateException();
        }
        int i11 = i10 - 1;
        if (i10 == 0) {
            throw null;
        }
        if (i11 == 0) {
            return true;
        }
        if (i11 != 2) {
            this.f21692p = 4;
            this.f21691o = a();
            if (this.f21692p != 3) {
                this.f21692p = 1;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f21692p = 2;
        Object obj = this.f21691o;
        this.f21691o = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
