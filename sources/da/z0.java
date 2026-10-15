package da;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: Builders.common.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class z0<T> extends kotlinx.coroutines.internal.c0<T> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f28884r = AtomicIntegerFieldUpdater.newUpdater(z0.class, "_decision");
    private volatile /* synthetic */ int _decision;

    public z0(k9.g gVar, k9.d<? super T> dVar) {
        super(gVar, dVar);
        this._decision = 0;
    }

    private final boolean P0() {
        do {
            int i10 = this._decision;
            if (i10 != 0) {
                if (i10 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f28884r.compareAndSet(this, 0, 2));
        return true;
    }

    private final boolean Q0() {
        do {
            int i10 = this._decision;
            if (i10 != 0) {
                if (i10 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f28884r.compareAndSet(this, 0, 1));
        return true;
    }

    @Override // kotlinx.coroutines.internal.c0, da.e2
    protected void J(Object obj) {
        J0(obj);
    }

    @Override // kotlinx.coroutines.internal.c0, da.a
    protected void J0(Object obj) {
        if (P0()) {
            return;
        }
        kotlinx.coroutines.internal.i.c(l9.c.b(this.f31722q), e0.a(obj, this.f31722q), null, 2, null);
    }

    public final Object O0() {
        if (Q0()) {
            return l9.d.c();
        }
        Object objH = f2.h(e0());
        if (objH instanceof a0) {
            throw ((a0) objH).f28774a;
        }
        return objH;
    }
}
