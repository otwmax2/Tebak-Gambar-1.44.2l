package com.google.android.gms.internal.auth;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgt implements Iterator<String> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Iterator<String> f21575o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzgu f21576p;

    zzgt(zzgu zzguVar) {
        this.f21576p = zzguVar;
        this.f21575o = zzguVar.f21577o.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f21575o.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ String next() {
        return this.f21575o.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
