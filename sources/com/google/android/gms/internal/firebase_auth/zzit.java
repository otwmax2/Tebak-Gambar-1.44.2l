package com.google.android.gms.internal.firebase_auth;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzit<K> implements Iterator<Map.Entry<K, Object>> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Iterator<Map.Entry<K, Object>> f22782o;

    public zzit(Iterator<Map.Entry<K, Object>> it) {
        this.f22782o = it;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.f22782o.hasNext();
    }

    @Override // java.util.Iterator
    public final /* synthetic */ Object next() {
        Map.Entry<K, Object> next = this.f22782o.next();
        return next.getValue() instanceof zzis ? new zziu(next) : next;
    }

    @Override // java.util.Iterator
    public final void remove() {
        this.f22782o.remove();
    }
}
