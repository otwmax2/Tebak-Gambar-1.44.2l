package k;

import java.util.HashMap;
import java.util.Map;
import k.b;

/* JADX INFO: compiled from: FastSafeIterableMap.java */
/* JADX INFO: loaded from: classes.dex */
public class a<K, V> extends b<K, V> {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private HashMap<K, b.c<K, V>> f31261s = new HashMap<>();

    public boolean contains(K k10) {
        return this.f31261s.containsKey(k10);
    }

    @Override // k.b
    protected b.c<K, V> g(K k10) {
        return this.f31261s.get(k10);
    }

    @Override // k.b
    public V l(K k10, V v10) {
        b.c<K, V> cVarG = g(k10);
        if (cVarG != null) {
            return cVarG.f31267p;
        }
        this.f31261s.put(k10, k(k10, v10));
        return null;
    }

    @Override // k.b
    public V m(K k10) {
        V v10 = (V) super.m(k10);
        this.f31261s.remove(k10);
        return v10;
    }

    public Map.Entry<K, V> n(K k10) {
        if (contains(k10)) {
            return this.f31261s.get(k10).f31269r;
        }
        return null;
    }
}
