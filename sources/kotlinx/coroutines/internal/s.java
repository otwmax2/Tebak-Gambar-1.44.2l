package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: LockFreeTaskQueue.kt */
/* JADX INFO: loaded from: classes2.dex */
public class s<E> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f31774a = AtomicReferenceFieldUpdater.newUpdater(s.class, Object.class, "_cur");
    private volatile /* synthetic */ Object _cur;

    public s(boolean z10) {
        this._cur = new t(8, z10);
    }

    public final boolean a(E e10) {
        while (true) {
            t tVar = (t) this._cur;
            int iA = tVar.a(e10);
            if (iA == 0) {
                return true;
            }
            if (iA == 1) {
                androidx.concurrent.futures.b.a(f31774a, this, tVar, tVar.i());
            } else if (iA == 2) {
                return false;
            }
        }
    }

    public final void b() {
        while (true) {
            t tVar = (t) this._cur;
            if (tVar.d()) {
                return;
            } else {
                androidx.concurrent.futures.b.a(f31774a, this, tVar, tVar.i());
            }
        }
    }

    public final int c() {
        return ((t) this._cur).f();
    }

    public final E d() {
        while (true) {
            t tVar = (t) this._cur;
            E e10 = (E) tVar.j();
            if (e10 != t.f31778h) {
                return e10;
            }
            androidx.concurrent.futures.b.a(f31774a, this, tVar, tVar.i());
        }
    }
}
