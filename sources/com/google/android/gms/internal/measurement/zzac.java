package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzac implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ Iterator f23261o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ Iterator f23262p;

    zzac(zzae zzaeVar, Iterator it, Iterator it2) {
        this.f23261o = it;
        this.f23262p = it2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.f23261o.hasNext()) {
            return true;
        }
        return this.f23262p.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        if (this.f23261o.hasNext()) {
            return new zzat(((Integer) this.f23261o.next()).toString());
        }
        if (this.f23262p.hasNext()) {
            return new zzat((String) this.f23262p.next());
        }
        throw new NoSuchElementException();
    }
}
