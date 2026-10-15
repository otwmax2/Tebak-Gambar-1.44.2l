package kotlinx.coroutines.internal;

import da.s0;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: InlineList.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class m<E> {
    public static <E> Object a(Object obj) {
        return obj;
    }

    public static /* synthetic */ Object b(Object obj, int i10, t9.g gVar) {
        if ((i10 & 1) != 0) {
            obj = null;
        }
        return a(obj);
    }

    public static final Object c(Object obj, E e10) {
        if (s0.a() && !(!(e10 instanceof List))) {
            throw new AssertionError();
        }
        if (obj == null) {
            return a(e10);
        }
        if (obj instanceof ArrayList) {
            ((ArrayList) obj).add(e10);
            return a(obj);
        }
        ArrayList arrayList = new ArrayList(4);
        arrayList.add(obj);
        arrayList.add(e10);
        return a(arrayList);
    }
}
