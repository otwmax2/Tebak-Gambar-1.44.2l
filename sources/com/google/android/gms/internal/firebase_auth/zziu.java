package com.google.android.gms.internal.firebase_auth;

import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zziu<K> implements Map.Entry<K, Object> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Map.Entry<K, zzis> f22783o;

    private zziu(Map.Entry<K, zzis> entry) {
        this.f22783o = entry;
    }

    public final zzis a() {
        return this.f22783o.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f22783o.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f22783o.getValue() == null) {
            return null;
        }
        return zzis.e();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzjn) {
            return this.f22783o.getValue().a((zzjn) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
