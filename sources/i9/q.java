package i9;

import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: MutableCollections.kt */
/* JADX INFO: loaded from: classes2.dex */
class q extends p {
    public static <T> boolean o(Collection<? super T> collection, Iterable<? extends T> iterable) {
        t9.m.e(collection, "<this>");
        t9.m.e(iterable, "elements");
        if (iterable instanceof Collection) {
            return collection.addAll((Collection) iterable);
        }
        boolean z10 = false;
        Iterator<? extends T> it = iterable.iterator();
        while (it.hasNext()) {
            if (collection.add(it.next())) {
                z10 = true;
            }
        }
        return z10;
    }
}
