package i9;

import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: CollectionsJVM.kt */
/* JADX INFO: loaded from: classes2.dex */
public class k {
    public static final <T> Object[] a(T[] tArr, boolean z10) {
        t9.m.e(tArr, "<this>");
        if (z10 && t9.m.a(tArr.getClass(), Object[].class)) {
            return tArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(tArr, tArr.length, Object[].class);
        t9.m.d(objArrCopyOf, "copyOf(this, this.size, Array<Any?>::class.java)");
        return objArrCopyOf;
    }

    public static <T> List<T> b(T t10) {
        List<T> listSingletonList = Collections.singletonList(t10);
        t9.m.d(listSingletonList, "singletonList(element)");
        return listSingletonList;
    }
}
