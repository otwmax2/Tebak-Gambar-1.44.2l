package com.google.android.gms.internal.ads;

import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfph extends AbstractCollection {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ zzfpi f18558o;

    zzfph(zzfpi zzfpiVar) {
        this.f18558o = zzfpiVar;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        this.f18558o.p();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        Iterator it = this.f18558o.v().values().iterator();
        while (it.hasNext()) {
            if (((Collection) it.next()).contains(obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        return this.f18558o.c();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        return this.f18558o.f();
    }
}
