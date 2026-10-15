package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgwo implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f19704o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ zzgwp f19705p;

    zzgwo(zzgwp zzgwpVar) {
        this.f19705p = zzgwpVar;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f19704o < this.f19705p.f19707o.size() || this.f19705p.f19708p.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.f19704o >= this.f19705p.f19707o.size()) {
            zzgwp zzgwpVar = this.f19705p;
            zzgwpVar.f19707o.add(zzgwpVar.f19708p.next());
            return next();
        }
        List list = this.f19705p.f19707o;
        int i10 = this.f19704o;
        this.f19704o = i10 + 1;
        return list.get(i10);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException();
    }
}
