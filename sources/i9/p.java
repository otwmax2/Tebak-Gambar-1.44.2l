package i9;

import java.util.Collections;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: MutableCollectionsJVM.kt */
/* JADX INFO: loaded from: classes2.dex */
public class p extends o {
    public static <T extends Comparable<? super T>> void m(List<T> list) {
        t9.m.e(list, "<this>");
        if (list.size() > 1) {
            Collections.sort(list);
        }
    }

    public static <T> void n(List<T> list, Comparator<? super T> comparator) {
        t9.m.e(list, "<this>");
        t9.m.e(comparator, "comparator");
        if (list.size() > 1) {
            Collections.sort(list, comparator);
        }
    }
}
