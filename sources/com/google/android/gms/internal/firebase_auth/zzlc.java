package com.google.android.gms.internal.firebase_auth;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzlc implements Iterator<String> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Iterator<String> f22878o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final /* synthetic */ zzla f22879p;

    zzlc(zzla zzlaVar) {
        this.f22879p = zzlaVar;
        this.f22878o = zzlaVar.f22877o.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f22878o.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ String next() {
        return this.f22878o.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
