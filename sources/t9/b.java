package t9;

import java.util.Iterator;

/* JADX INFO: compiled from: ArrayIterator.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public static final <T> Iterator<T> a(T[] tArr) {
        m.e(tArr, "array");
        return new a(tArr);
    }
}
