package kotlinx.coroutines.sync;

import h9.t;

/* JADX INFO: compiled from: Mutex.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface b {

    /* JADX INFO: compiled from: Mutex.kt */
    public static final class a {
        public static /* synthetic */ void a(b bVar, Object obj, int i10, Object obj2) {
            if (obj2 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: unlock");
            }
            if ((i10 & 1) != 0) {
                obj = null;
            }
            bVar.b(obj);
        }
    }

    boolean a();

    void b(Object obj);

    Object c(Object obj, k9.d<? super t> dVar);
}
