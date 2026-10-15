package com.google.android.gms.measurement.internal;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class i implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Iterator f24141o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzat f24142p;

    i(zzat zzatVar) {
        this.f24142p = zzatVar;
        this.f24141o = zzatVar.f24453o.keySet().iterator();
    }

    @Override // java.util.Iterator
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public final String next() {
        return (String) this.f24141o.next();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f24141o.hasNext();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Remove not supported");
    }
}
