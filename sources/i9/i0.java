package i9;

import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: Sets.kt */
/* JADX INFO: loaded from: classes2.dex */
public class i0 extends h0 {
    public static <T> Set<T> b() {
        return x.f30550o;
    }

    public static <T> HashSet<T> c(T... tArr) {
        t9.m.e(tArr, "elements");
        return (HashSet) g.q(tArr, new HashSet(c0.a(tArr.length)));
    }

    public static <T> Set<T> d(T... tArr) {
        t9.m.e(tArr, "elements");
        return (Set) g.q(tArr, new LinkedHashSet(c0.a(tArr.length)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> Set<T> e(Set<? extends T> set) {
        t9.m.e(set, "<this>");
        int size = set.size();
        return size != 0 ? size != 1 ? set : h0.a(set.iterator().next()) : b();
    }

    public static <T> Set<T> f(T... tArr) {
        t9.m.e(tArr, "elements");
        return tArr.length > 0 ? g.u(tArr) : b();
    }
}
