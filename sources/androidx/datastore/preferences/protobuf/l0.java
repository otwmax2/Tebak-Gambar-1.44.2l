package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.a0;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: MapFieldLite.java */
/* JADX INFO: loaded from: classes.dex */
public final class l0<K, V> extends LinkedHashMap<K, V> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final l0 f2805p;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f2806o;

    static {
        l0 l0Var = new l0();
        f2805p = l0Var;
        l0Var.m();
    }

    private l0() {
        this.f2806o = true;
    }

    static <K, V> int a(Map<K, V> map) {
        int iB = 0;
        for (Map.Entry<K, V> entry : map.entrySet()) {
            iB += b(entry.getValue()) ^ b(entry.getKey());
        }
        return iB;
    }

    private static int b(Object obj) {
        if (obj instanceof byte[]) {
            return a0.d((byte[]) obj);
        }
        if (obj instanceof a0.c) {
            throw new UnsupportedOperationException();
        }
        return obj.hashCode();
    }

    private static void d(Map<?, ?> map) {
        for (Object obj : map.keySet()) {
            a0.a(obj);
            a0.a(map.get(obj));
        }
    }

    public static <K, V> l0<K, V> f() {
        return f2805p;
    }

    private void h() {
        if (!l()) {
            throw new UnsupportedOperationException();
        }
    }

    private static boolean j(Object obj, Object obj2) {
        return ((obj instanceof byte[]) && (obj2 instanceof byte[])) ? Arrays.equals((byte[]) obj, (byte[]) obj2) : obj.equals(obj2);
    }

    static <K, V> boolean k(Map<K, V> map, Map<K, V> map2) {
        if (map == map2) {
            return true;
        }
        if (map.size() != map2.size()) {
            return false;
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            if (!map2.containsKey(entry.getKey()) || !j(entry.getValue(), map2.get(entry.getKey()))) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void clear() {
        h();
        super.clear();
    }

    @Override // java.util.LinkedHashMap, java.util.HashMap, java.util.AbstractMap, java.util.Map
    public Set<Map.Entry<K, V>> entrySet() {
        return isEmpty() ? Collections.emptySet() : super.entrySet();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean equals(Object obj) {
        return (obj instanceof Map) && k(this, (Map) obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public int hashCode() {
        return a(this);
    }

    public boolean l() {
        return this.f2806o;
    }

    public void m() {
        this.f2806o = false;
    }

    public void n(l0<K, V> l0Var) {
        h();
        if (l0Var.isEmpty()) {
            return;
        }
        putAll(l0Var);
    }

    public l0<K, V> o() {
        return isEmpty() ? new l0<>() : new l0<>(this);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V put(K k10, V v10) {
        h();
        a0.a(k10);
        a0.a(v10);
        return (V) super.put(k10, v10);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public void putAll(Map<? extends K, ? extends V> map) {
        h();
        d(map);
        super.putAll(map);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V remove(Object obj) {
        h();
        return (V) super.remove(obj);
    }

    private l0(Map<K, V> map) {
        super(map);
        this.f2806o = true;
    }
}
