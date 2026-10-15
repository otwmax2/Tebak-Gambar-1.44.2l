package i9;

import java.util.Collections;
import java.util.Set;

/* JADX INFO: compiled from: SetsJVM.kt */
/* JADX INFO: loaded from: classes2.dex */
class h0 {
    public static final <T> Set<T> a(T t10) {
        Set<T> setSingleton = Collections.singleton(t10);
        t9.m.d(setSingleton, "singleton(element)");
        return setSingleton;
    }
}
