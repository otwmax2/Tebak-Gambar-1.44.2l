package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfou implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @CheckForNull
    Map.Entry f18536o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ Iterator f18537p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzfov f18538q;

    zzfou(zzfov zzfovVar, Iterator it) {
        this.f18538q = zzfovVar;
        this.f18537p = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18537p.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Map.Entry entry = (Map.Entry) this.f18537p.next();
        this.f18536o = entry;
        return entry.getKey();
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzfnu.i(this.f18536o != null, "no calls to next() since the last call to remove()");
        Collection collection = (Collection) this.f18536o.getValue();
        this.f18537p.remove();
        zzfpf.n(this.f18538q.f18539p, collection.size());
        collection.clear();
        this.f18536o = null;
    }
}
