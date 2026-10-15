package com.google.android.gms.internal.ads;

import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfqs extends zzfsj {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f18618o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ Object f18619p;

    zzfqs(Object obj) {
        this.f18619p = obj;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return !this.f18618o;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f18618o) {
            throw new NoSuchElementException();
        }
        this.f18618o = true;
        return this.f18619p;
    }
}
