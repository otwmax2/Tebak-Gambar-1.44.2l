package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Objects;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzfsh implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Iterator f18661o;

    zzfsh(Iterator it) {
        Objects.requireNonNull(it);
        this.f18661o = it;
    }

    abstract Object a(Object obj);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18661o.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return a(this.f18661o.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f18661o.remove();
    }
}
