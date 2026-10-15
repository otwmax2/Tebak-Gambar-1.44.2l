package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgtk implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Iterator f19624o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzgtl f19625p;

    zzgtk(zzgtl zzgtlVar) {
        this.f19625p = zzgtlVar;
        this.f19624o = zzgtlVar.f19626o.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f19624o.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return (String) this.f19624o.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
