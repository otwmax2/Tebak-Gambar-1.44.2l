package i9;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: Collections.kt */
/* JADX INFO: loaded from: classes2.dex */
public class l extends k {
    public static <T> ArrayList<T> c(T... tArr) {
        t9.m.e(tArr, "elements");
        return tArr.length == 0 ? new ArrayList<>() : new ArrayList<>(new b(tArr, true));
    }

    public static final <T> Collection<T> d(T[] tArr) {
        t9.m.e(tArr, "<this>");
        return new b(tArr, false);
    }

    public static <T> List<T> e() {
        return v.f30548o;
    }

    public static <T> int f(List<? extends T> list) {
        t9.m.e(list, "<this>");
        return list.size() - 1;
    }

    public static <T> List<T> g(T... tArr) {
        t9.m.e(tArr, "elements");
        return tArr.length > 0 ? f.a(tArr) : e();
    }

    public static <T> List<T> h(T... tArr) {
        t9.m.e(tArr, "elements");
        return g.i(tArr);
    }

    public static <T> List<T> i(T... tArr) {
        t9.m.e(tArr, "elements");
        return tArr.length == 0 ? new ArrayList() : new ArrayList(new b(tArr, true));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> List<T> j(List<? extends T> list) {
        t9.m.e(list, "<this>");
        int size = list.size();
        return size != 0 ? size != 1 ? list : k.b(list.get(0)) : e();
    }

    public static void k() {
        throw new ArithmeticException("Index overflow has happened.");
    }
}
