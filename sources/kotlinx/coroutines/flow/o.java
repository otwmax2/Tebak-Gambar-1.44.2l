package kotlinx.coroutines.flow;

import da.s0;
import h9.n;
import h9.t;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: StateFlow.kt */
/* JADX INFO: loaded from: classes2.dex */
final class o extends ga.d<m<?>> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f31706a = AtomicReferenceFieldUpdater.newUpdater(o.class, Object.class, "_state");
    volatile /* synthetic */ Object _state = null;

    @Override // ga.d
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean a(m<?> mVar) {
        if (this._state != null) {
            return false;
        }
        this._state = n.f31704a;
        return true;
    }

    public final Object d(k9.d<? super t> dVar) {
        da.n nVar = new da.n(l9.c.b(dVar), 1);
        nVar.y();
        if (s0.a() && !(!(this._state instanceof da.n))) {
            throw new AssertionError();
        }
        if (!androidx.concurrent.futures.b.a(f31706a, this, n.f31704a, nVar)) {
            if (s0.a()) {
                if (!(this._state == n.f31705b)) {
                    throw new AssertionError();
                }
            }
            n.a aVar = h9.n.f30295o;
            nVar.g(h9.n.a(t.f30301a));
        }
        Object objT = nVar.t();
        if (objT == l9.d.c()) {
            m9.h.c(dVar);
        }
        return objT == l9.d.c() ? objT : t.f30301a;
    }

    @Override // ga.d
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public k9.d<t>[] b(m<?> mVar) {
        this._state = null;
        return ga.c.f30041a;
    }

    public final void f() {
        while (true) {
            Object obj = this._state;
            if (obj == null || obj == n.f31705b) {
                return;
            }
            if (obj == n.f31704a) {
                if (androidx.concurrent.futures.b.a(f31706a, this, obj, n.f31705b)) {
                    return;
                }
            } else if (androidx.concurrent.futures.b.a(f31706a, this, obj, n.f31704a)) {
                n.a aVar = h9.n.f30295o;
                ((da.n) obj).g(h9.n.a(t.f30301a));
                return;
            }
        }
    }

    public final boolean g() {
        Object andSet = f31706a.getAndSet(this, n.f31704a);
        t9.m.b(andSet);
        if (!s0.a() || (!(andSet instanceof da.n))) {
            return andSet == n.f31705b;
        }
        throw new AssertionError();
    }
}
