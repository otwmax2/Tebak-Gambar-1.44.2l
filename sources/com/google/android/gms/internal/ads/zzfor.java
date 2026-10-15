package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfor implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Iterator f18526o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @CheckForNull
    Collection f18527p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final /* synthetic */ zzfos f18528q;

    zzfor(zzfos zzfosVar) {
        this.f18528q = zzfosVar;
        this.f18526o = zzfosVar.f18529r.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18526o.hasNext();
    }

    @Override // java.util.Iterator
    public final /* bridge */ /* synthetic */ Object next() {
        Map.Entry entry = (Map.Entry) this.f18526o.next();
        this.f18527p = (Collection) entry.getValue();
        return this.f18528q.c(entry);
    }

    @Override // java.util.Iterator
    public final void remove() {
        zzfnu.i(this.f18527p != null, "no calls to next() since the last call to remove()");
        this.f18526o.remove();
        zzfpf.n(this.f18528q.f18530s, this.f18527p.size());
        this.f18527p.clear();
        this.f18527p = null;
    }
}
