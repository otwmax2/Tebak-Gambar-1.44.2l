package i9;

import com.facebook.share.internal.ShareConstants;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: _Arrays.kt */
/* JADX INFO: loaded from: classes2.dex */
public class g extends f {
    public static <T> boolean h(T[] tArr, T t10) {
        t9.m.e(tArr, "<this>");
        return l(tArr, t10) >= 0;
    }

    public static <T> List<T> i(T[] tArr) {
        t9.m.e(tArr, "<this>");
        return (List) j(tArr, new ArrayList());
    }

    public static final <C extends Collection<? super T>, T> C j(T[] tArr, C c10) {
        t9.m.e(tArr, "<this>");
        t9.m.e(c10, ShareConstants.DESTINATION);
        for (T t10 : tArr) {
            if (t10 != null) {
                c10.add(t10);
            }
        }
        return c10;
    }

    public static int k(int[] iArr) {
        t9.m.e(iArr, "<this>");
        return iArr.length - 1;
    }

    public static final <T> int l(T[] tArr, T t10) {
        t9.m.e(tArr, "<this>");
        int i10 = 0;
        if (t10 == null) {
            int length = tArr.length;
            while (i10 < length) {
                if (tArr[i10] == null) {
                    return i10;
                }
                i10++;
            }
            return -1;
        }
        int length2 = tArr.length;
        while (i10 < length2) {
            if (t9.m.a(t10, tArr[i10])) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static char m(char[] cArr) {
        t9.m.e(cArr, "<this>");
        int length = cArr.length;
        if (length == 0) {
            throw new NoSuchElementException("Array is empty.");
        }
        if (length == 1) {
            return cArr[0];
        }
        throw new IllegalArgumentException("Array has more than one element.");
    }

    public static <T> T n(T[] tArr) {
        t9.m.e(tArr, "<this>");
        if (tArr.length == 1) {
            return tArr[0];
        }
        return null;
    }

    public static final <T> T[] o(T[] tArr, Comparator<? super T> comparator) {
        t9.m.e(tArr, "<this>");
        t9.m.e(comparator, "comparator");
        if (tArr.length == 0) {
            return tArr;
        }
        T[] tArr2 = (T[]) Arrays.copyOf(tArr, tArr.length);
        t9.m.d(tArr2, "copyOf(this, size)");
        f.g(tArr2, comparator);
        return tArr2;
    }

    public static <T> List<T> p(T[] tArr, Comparator<? super T> comparator) {
        t9.m.e(tArr, "<this>");
        t9.m.e(comparator, "comparator");
        return f.a(o(tArr, comparator));
    }

    public static final <T, C extends Collection<? super T>> C q(T[] tArr, C c10) {
        t9.m.e(tArr, "<this>");
        t9.m.e(c10, ShareConstants.DESTINATION);
        for (T t10 : tArr) {
            c10.add(t10);
        }
        return c10;
    }

    public static <T> HashSet<T> r(T[] tArr) {
        t9.m.e(tArr, "<this>");
        return (HashSet) q(tArr, new HashSet(c0.a(tArr.length)));
    }

    public static <T> List<T> s(T[] tArr) {
        t9.m.e(tArr, "<this>");
        int length = tArr.length;
        return length != 0 ? length != 1 ? t(tArr) : k.b(tArr[0]) : l.e();
    }

    public static final <T> List<T> t(T[] tArr) {
        t9.m.e(tArr, "<this>");
        return new ArrayList(l.d(tArr));
    }

    public static final <T> Set<T> u(T[] tArr) {
        t9.m.e(tArr, "<this>");
        int length = tArr.length;
        return length != 0 ? length != 1 ? (Set) q(tArr, new LinkedHashSet(c0.a(tArr.length))) : h0.a(tArr[0]) : i0.b();
    }
}
