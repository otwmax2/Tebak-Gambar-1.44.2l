package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.NoSuchElementException;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
abstract class zzfna implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @CheckForNull
    private Object f18469o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f18470p = 2;

    protected zzfna() {
    }

    @CheckForNull
    protected abstract Object a();

    @CheckForNull
    protected final Object b() {
        this.f18470p = 3;
        return null;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        zzfnu.h(this.f18470p != 4);
        int i10 = this.f18470p;
        int i11 = i10 - 1;
        if (i10 == 0) {
            throw null;
        }
        if (i11 == 0) {
            return true;
        }
        if (i11 != 2) {
            this.f18470p = 4;
            this.f18469o = a();
            if (this.f18470p != 3) {
                this.f18470p = 1;
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
        this.f18470p = 2;
        Object obj = this.f18469o;
        this.f18469o = null;
        return obj;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
