package kotlinx.coroutines.internal;

import da.s0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: Atomic.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c<T> extends z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f31721a = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_consensus");
    private volatile /* synthetic */ Object _consensus = b.f31719a;

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.z
    public c<?> a() {
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.internal.z
    public final Object c(Object obj) {
        Object objE = this._consensus;
        if (objE == b.f31719a) {
            objE = e(g(obj));
        }
        d(obj, objE);
        return objE;
    }

    public abstract void d(T t10, Object obj);

    public final Object e(Object obj) {
        if (s0.a()) {
            if (!(obj != b.f31719a)) {
                throw new AssertionError();
            }
        }
        Object obj2 = this._consensus;
        Object obj3 = b.f31719a;
        return obj2 != obj3 ? obj2 : androidx.concurrent.futures.b.a(f31721a, this, obj3, obj) ? obj : this._consensus;
    }

    public long f() {
        return 0L;
    }

    public abstract Object g(T t10);
}
