package i9;

import com.facebook.share.internal.ShareConstants;
import java.util.Arrays;
import java.util.Comparator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: _ArraysJvm.kt */
/* JADX INFO: loaded from: classes2.dex */
public class f extends e {
    public static <T> List<T> a(T[] tArr) {
        t9.m.e(tArr, "<this>");
        List<T> listA = h.a(tArr);
        t9.m.d(listA, "asList(this)");
        return listA;
    }

    public static final <T> T[] b(T[] tArr, T[] tArr2, int i10, int i11, int i12) {
        t9.m.e(tArr, "<this>");
        t9.m.e(tArr2, ShareConstants.DESTINATION);
        System.arraycopy(tArr, i11, tArr2, i10, i12 - i11);
        return tArr2;
    }

    public static /* synthetic */ Object[] c(Object[] objArr, Object[] objArr2, int i10, int i11, int i12, int i13, Object obj) {
        if ((i13 & 2) != 0) {
            i10 = 0;
        }
        if ((i13 & 4) != 0) {
            i11 = 0;
        }
        if ((i13 & 8) != 0) {
            i12 = objArr.length;
        }
        return b(objArr, objArr2, i10, i11, i12);
    }

    public static <T> void d(T[] tArr, T t10, int i10, int i11) {
        t9.m.e(tArr, "<this>");
        Arrays.fill(tArr, i10, i11, t10);
    }

    public static /* synthetic */ void e(Object[] objArr, Object obj, int i10, int i11, int i12, Object obj2) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            i11 = objArr.length;
        }
        d(objArr, obj, i10, i11);
    }

    public static <T> void f(T[] tArr) {
        t9.m.e(tArr, "<this>");
        if (tArr.length > 1) {
            Arrays.sort(tArr);
        }
    }

    public static final <T> void g(T[] tArr, Comparator<? super T> comparator) {
        t9.m.e(tArr, "<this>");
        t9.m.e(comparator, "comparator");
        if (tArr.length > 1) {
            Arrays.sort(tArr, comparator);
        }
    }
}
