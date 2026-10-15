package com.google.android.gms.internal.games;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzga extends zzgg {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f23209o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final /* synthetic */ Object f23210p;

    zzga(Object obj) {
        this.f23210p = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f23209o;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f23209o) {
            throw new NoSuchElementException();
        }
        this.f23209o = true;
        return this.f23210p;
    }
}
