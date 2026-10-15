package com.google.android.gms.internal.measurement;

import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzak implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Iterator f23273o;

    zzak(Iterator it) {
        this.f23273o = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f23273o.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        return new zzat((String) this.f23273o.next());
    }
}
