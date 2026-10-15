package i9;

import java.util.Collections;
import java.util.Map;

/* JADX INFO: compiled from: MapsJVM.kt */
/* JADX INFO: loaded from: classes2.dex */
class c0 extends b0 {
    public static int a(int i10) {
        if (i10 < 0) {
            return i10;
        }
        if (i10 < 3) {
            return i10 + 1;
        }
        if (i10 < 1073741824) {
            return (int) ((i10 / 0.75f) + 1.0f);
        }
        return Integer.MAX_VALUE;
    }

    public static <K, V> Map<K, V> b(h9.m<? extends K, ? extends V> mVar) {
        t9.m.e(mVar, "pair");
        Map<K, V> mapSingletonMap = Collections.singletonMap(mVar.c(), mVar.d());
        t9.m.d(mapSingletonMap, "singletonMap(pair.first, pair.second)");
        return mapSingletonMap;
    }

    public static final <K, V> Map<K, V> c(Map<? extends K, ? extends V> map) {
        t9.m.e(map, "<this>");
        Map.Entry<? extends K, ? extends V> next = map.entrySet().iterator().next();
        Map<K, V> mapSingletonMap = Collections.singletonMap(next.getKey(), next.getValue());
        t9.m.d(mapSingletonMap, "with(entries.iterator().…ingletonMap(key, value) }");
        return mapSingletonMap;
    }
}
