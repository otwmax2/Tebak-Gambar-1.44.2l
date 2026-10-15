package i9;

import com.facebook.share.internal.ShareConstants;
import java.util.Collection;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: Maps.kt */
/* JADX INFO: loaded from: classes2.dex */
public class d0 extends c0 {
    public static <K, V> Map<K, V> d() {
        w wVar = w.f30549o;
        t9.m.c(wVar, "null cannot be cast to non-null type kotlin.collections.Map<K of kotlin.collections.MapsKt__MapsKt.emptyMap, V of kotlin.collections.MapsKt__MapsKt.emptyMap>");
        return wVar;
    }

    public static <K, V> HashMap<K, V> e(h9.m<? extends K, ? extends V>... mVarArr) {
        t9.m.e(mVarArr, "pairs");
        HashMap<K, V> map = new HashMap<>(c0.a(mVarArr.length));
        i(map, mVarArr);
        return map;
    }

    public static <K, V> Map<K, V> f(h9.m<? extends K, ? extends V>... mVarArr) {
        t9.m.e(mVarArr, "pairs");
        return mVarArr.length > 0 ? m(mVarArr, new LinkedHashMap(c0.a(mVarArr.length))) : d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <K, V> Map<K, V> g(Map<K, ? extends V> map) {
        t9.m.e(map, "<this>");
        int size = map.size();
        return size != 0 ? size != 1 ? map : c0.c(map) : d();
    }

    public static final <K, V> void h(Map<? super K, ? super V> map, Iterable<? extends h9.m<? extends K, ? extends V>> iterable) {
        t9.m.e(map, "<this>");
        t9.m.e(iterable, "pairs");
        for (h9.m<? extends K, ? extends V> mVar : iterable) {
            map.put(mVar.a(), mVar.b());
        }
    }

    public static final <K, V> void i(Map<? super K, ? super V> map, h9.m<? extends K, ? extends V>[] mVarArr) {
        t9.m.e(map, "<this>");
        t9.m.e(mVarArr, "pairs");
        for (h9.m<? extends K, ? extends V> mVar : mVarArr) {
            map.put(mVar.a(), mVar.b());
        }
    }

    public static <K, V> Map<K, V> j(Iterable<? extends h9.m<? extends K, ? extends V>> iterable) {
        t9.m.e(iterable, "<this>");
        if (!(iterable instanceof Collection)) {
            return g(k(iterable, new LinkedHashMap()));
        }
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return d();
        }
        if (size != 1) {
            return k(iterable, new LinkedHashMap(c0.a(collection.size())));
        }
        return c0.b(iterable instanceof List ? (h9.m<? extends K, ? extends V>) ((List) iterable).get(0) : iterable.iterator().next());
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M k(Iterable<? extends h9.m<? extends K, ? extends V>> iterable, M m10) {
        t9.m.e(iterable, "<this>");
        t9.m.e(m10, ShareConstants.DESTINATION);
        h(m10, iterable);
        return m10;
    }

    public static <K, V> Map<K, V> l(Map<? extends K, ? extends V> map) {
        t9.m.e(map, "<this>");
        int size = map.size();
        return size != 0 ? size != 1 ? n(map) : c0.c(map) : d();
    }

    public static final <K, V, M extends Map<? super K, ? super V>> M m(h9.m<? extends K, ? extends V>[] mVarArr, M m10) {
        t9.m.e(mVarArr, "<this>");
        t9.m.e(m10, ShareConstants.DESTINATION);
        i(m10, mVarArr);
        return m10;
    }

    public static <K, V> Map<K, V> n(Map<? extends K, ? extends V> map) {
        t9.m.e(map, "<this>");
        return new LinkedHashMap(map);
    }
}
