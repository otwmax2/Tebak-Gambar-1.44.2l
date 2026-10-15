package com.google.android.gms.common.util;

import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import o.a;
import o.b;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class CollectionUtils {
    private CollectionUtils() {
    }

    @KeepForSdk
    @Deprecated
    public static <T> List<T> a() {
        return Collections.emptyList();
    }

    @KeepForSdk
    @Deprecated
    public static <T> List<T> b(T t10) {
        return Collections.singletonList(t10);
    }

    @KeepForSdk
    @Deprecated
    public static <T> List<T> c(T... tArr) {
        int length = tArr.length;
        return length != 0 ? length != 1 ? Collections.unmodifiableList(Arrays.asList(tArr)) : b(tArr[0]) : a();
    }

    @KeepForSdk
    public static <K, V> Map<K, V> d(K k10, V v10, K k11, V v11, K k12, V v12) {
        Map mapH = h(3, false);
        mapH.put(k10, v10);
        mapH.put(k11, v11);
        mapH.put(k12, v12);
        return Collections.unmodifiableMap(mapH);
    }

    @KeepForSdk
    public static <K, V> Map<K, V> e(K[] kArr, V[] vArr) {
        int length = kArr.length;
        int length2 = vArr.length;
        if (length != length2) {
            throw new IllegalArgumentException("Key and values array lengths not equal: " + length + " != " + length2);
        }
        if (length == 0) {
            return Collections.emptyMap();
        }
        if (length == 1) {
            return Collections.singletonMap(kArr[0], vArr[0]);
        }
        Map mapH = h(length, false);
        for (int i10 = 0; i10 < kArr.length; i10++) {
            mapH.put(kArr[i10], vArr[i10]);
        }
        return Collections.unmodifiableMap(mapH);
    }

    @KeepForSdk
    @Deprecated
    public static <T> Set<T> f(T t10, T t11, T t12) {
        Set setI = i(3, false);
        setI.add(t10);
        setI.add(t11);
        setI.add(t12);
        return Collections.unmodifiableSet(setI);
    }

    @KeepForSdk
    @Deprecated
    public static <T> Set<T> g(T... tArr) {
        int length = tArr.length;
        if (length == 0) {
            return Collections.emptySet();
        }
        if (length == 1) {
            return Collections.singleton(tArr[0]);
        }
        if (length == 2) {
            T t10 = tArr[0];
            T t11 = tArr[1];
            Set setI = i(2, false);
            setI.add(t10);
            setI.add(t11);
            return Collections.unmodifiableSet(setI);
        }
        if (length == 3) {
            return f(tArr[0], tArr[1], tArr[2]);
        }
        if (length != 4) {
            Set setI2 = i(length, false);
            Collections.addAll(setI2, tArr);
            return Collections.unmodifiableSet(setI2);
        }
        T t12 = tArr[0];
        T t13 = tArr[1];
        T t14 = tArr[2];
        T t15 = tArr[3];
        Set setI3 = i(4, false);
        setI3.add(t12);
        setI3.add(t13);
        setI3.add(t14);
        setI3.add(t15);
        return Collections.unmodifiableSet(setI3);
    }

    private static Map h(int i10, boolean z10) {
        return i10 <= 256 ? new a(i10) : new HashMap(i10, 1.0f);
    }

    private static Set i(int i10, boolean z10) {
        return i10 <= (true != z10 ? 256 : 128) ? new b(i10) : new HashSet(i10, true != z10 ? 1.0f : 0.75f);
    }
}
