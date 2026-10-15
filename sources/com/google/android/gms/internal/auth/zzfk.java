package com.google.android.gms.internal.auth;

import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfk<K, V> extends LinkedHashMap<K, V> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final zzfk f21512p;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f21513o;

    static {
        zzfk zzfkVar = new zzfk();
        f21512p = zzfkVar;
        zzfkVar.f21513o = false;
    }

    private zzfk() {
        this.f21513o = true;
    }

    public static <K, V> zzfk<K, V> a() {
        return f21512p;
    }

    private static int j(Object obj) {
        if (obj instanceof byte[]) {
            return zzev.b((byte[]) obj);
        }
        if (obj instanceof zzes) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    private final void k() {
        if (!this.f21513o) {
            throw new UnsupportedOperationException();
        }
    }

    public final zzfk<K, V> b() {
        return isEmpty() ? new zzfk<>() : new zzfk<>(this);
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void clear() {
        k();
        super.clear();
    }

    public final void d() {
        this.f21513o = false;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (!(obj instanceof Map)) {
            return false;
        }
        Map map = (Map) obj;
        if (this == map) {
            return true;
        }
        if (size() != map.size()) {
            return false;
        }
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!map.containsKey(entry.getKey())) {
                return false;
            }
            V value = entry.getValue();
            Object obj2 = map.get(entry.getKey());
            if (!(((value instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) value, (byte[]) obj2) : value.equals(obj2))) {
                return false;
            }
        }
        return true;
    }

    public final void f(zzfk<K, V> zzfkVar) {
        k();
        if (zzfkVar.isEmpty()) {
            return;
        }
        putAll(zzfkVar);
    }

    public final boolean h() {
        return this.f21513o;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int iJ = 0;
        for (Map.Entry<K, V> entry : entrySet()) {
            iJ += j(entry.getValue()) ^ j(entry.getKey());
        }
        return iJ;
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V put(K k10, V v10) {
        k();
        zzev.e(k10);
        zzev.e(v10);
        return (V) super.put(k10, v10);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final void putAll(Map<? extends K, ? extends V> map) {
        k();
        for (K k10 : map.keySet()) {
            zzev.e(k10);
            zzev.e(map.get(k10));
        }
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public final V remove(Object obj) {
        k();
        return (V) super.remove(obj);
    }

    private zzfk(Map<K, V> map) {
        super(map);
        this.f21513o = true;
    }
}
