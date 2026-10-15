package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
class zzfot implements Iterator {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final Iterator f18531o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @CheckForNull
    Object f18532p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @CheckForNull
    Collection f18533q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    Iterator f18534r = zzfqt.INSTANCE;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    final /* synthetic */ zzfpf f18535s;

    zzfot(zzfpf zzfpfVar) {
        this.f18535s = zzfpfVar;
        this.f18531o = zzfpfVar.f18556r.entrySet().iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f18531o.hasNext() || this.f18534r.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (!this.f18534r.hasNext()) {
            Map.Entry entry = (Map.Entry) this.f18531o.next();
            this.f18532p = entry.getKey();
            Collection collection = (Collection) entry.getValue();
            this.f18533q = collection;
            this.f18534r = collection.iterator();
        }
        return this.f18534r.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f18534r.remove();
        Collection collection = this.f18533q;
        collection.getClass();
        if (collection.isEmpty()) {
            this.f18531o.remove();
        }
        zzfpf.l(this.f18535s);
    }
}
