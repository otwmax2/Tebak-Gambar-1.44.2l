package com.twitter.sdk.android.core;

/* JADX INFO: compiled from: Callback.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c<T> implements wa.d<T> {
    @Override // wa.d
    public final void a(wa.b<T> bVar, wa.l<T> lVar) {
        if (lVar.f()) {
            d(new l<>(lVar.a(), lVar));
        } else {
            c(new q(lVar));
        }
    }

    @Override // wa.d
    public final void b(wa.b<T> bVar, Throwable th) {
        c(new y("Request Failure", th));
    }

    public abstract void c(y yVar);

    public abstract void d(l<T> lVar);
}
