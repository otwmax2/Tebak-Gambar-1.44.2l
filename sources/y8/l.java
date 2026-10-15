package y8;

import java.util.HashMap;

/* JADX INFO: compiled from: NonNullHashMap.java */
/* JADX INFO: loaded from: classes2.dex */
public class l<K, V> extends HashMap<K, V> {
    public V a(K k10, V v10, V v11) {
        if (v10 == null) {
            v10 = v11;
        }
        return put(k10, v10);
    }

    @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
    public V put(K k10, V v10) {
        if (v10 == null) {
            return null;
        }
        return (V) super.put(k10, v10);
    }
}
