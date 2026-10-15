package com.google.android.gms.internal.drive;

import java.util.Iterator;

/* JADX INFO: loaded from: classes2.dex */
final class zznc implements Iterator<String> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Iterator<String> f22314o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final /* synthetic */ zzna f22315p;

    zznc(zzna zznaVar) {
        this.f22315p = zznaVar;
        this.f22314o = zznaVar.f22310o.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f22314o.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f22314o.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
