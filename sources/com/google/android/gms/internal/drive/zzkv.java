package com.google.android.gms.internal.drive;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
final class zzkv<K> implements Map.Entry<K, Object> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Map.Entry<K, zzkt> f22211o;

    private zzkv(Map.Entry<K, zzkt> entry) {
        this.f22211o = entry;
    }

    public final zzkt a() {
        return this.f22211o.getValue();
    }

    @Override // java.util.Map.Entry
    public final K getKey() {
        return this.f22211o.getKey();
    }

    @Override // java.util.Map.Entry
    public final Object getValue() {
        if (this.f22211o.getValue() == null) {
            return null;
        }
        return zzkt.e();
    }

    @Override // java.util.Map.Entry
    public final Object setValue(Object obj) {
        if (obj instanceof zzlq) {
            return this.f22211o.getValue().d((zzlq) obj);
        }
        throw new IllegalArgumentException("LazyField now only used for MessageSet, and the value of MessageSet must be an instance of MessageLite");
    }
}
