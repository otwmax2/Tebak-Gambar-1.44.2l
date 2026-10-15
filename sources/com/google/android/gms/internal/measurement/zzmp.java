package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzmp implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Iterator f23764o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzmq f23765p;

    zzmp(zzmq zzmqVar) {
        this.f23765p = zzmqVar;
        this.f23764o = zzmqVar.f23766o.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f23764o.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f23764o.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
