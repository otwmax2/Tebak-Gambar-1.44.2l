package kotlinx.coroutines.internal;

import da.a1;
import da.h1;
import da.s0;
import da.s2;
import da.t0;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: DispatchedContinuation.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class h<T> extends a1<T> implements m9.e, k9.d<T> {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f31731v = AtomicReferenceFieldUpdater.newUpdater(h.class, Object.class, "_reusableCancellableContinuation");
    private volatile /* synthetic */ Object _reusableCancellableContinuation;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final da.i0 f31732r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final k9.d<T> f31733s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Object f31734t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Object f31735u;

    /* JADX WARN: Multi-variable type inference failed */
    public h(da.i0 i0Var, k9.d<? super T> dVar) {
        super(-1);
        this.f31732r = i0Var;
        this.f31733s = dVar;
        this.f31734t = i.f31736a;
        this.f31735u = i0.b(getContext());
        this._reusableCancellableContinuation = null;
    }

    private final da.n<?> k() {
        Object obj = this._reusableCancellableContinuation;
        if (obj instanceof da.n) {
            return (da.n) obj;
        }
        return null;
    }

    @Override // da.a1
    public void a(Object obj, Throwable th) {
        if (obj instanceof da.b0) {
            ((da.b0) obj).f28778b.invoke(th);
        }
    }

    @Override // da.a1
    public k9.d<T> b() {
        return this;
    }

    @Override // m9.e
    public m9.e e() {
        k9.d<T> dVar = this.f31733s;
        if (dVar instanceof m9.e) {
            return (m9.e) dVar;
        }
        return null;
    }

    @Override // k9.d
    public void g(Object obj) {
        k9.g context = this.f31733s.getContext();
        Object objD = da.e0.d(obj, null, 1, null);
        if (this.f31732r.o(context)) {
            this.f31734t = objD;
            this.f28775q = 0;
            this.f31732r.m(context, this);
            return;
        }
        s0.a();
        h1 h1VarB = s2.f28858a.b();
        if (h1VarB.L()) {
            this.f31734t = objD;
            this.f28775q = 0;
            h1VarB.H(this);
            return;
        }
        h1VarB.J(true);
        try {
            k9.g context2 = getContext();
            Object objC = i0.c(context2, this.f31735u);
            try {
                this.f31733s.g(obj);
                h9.t tVar = h9.t.f30301a;
                while (h1VarB.O()) {
                }
            } finally {
                i0.a(context2, objC);
            }
        } finally {
            try {
            } finally {
            }
        }
    }

    @Override // k9.d
    public k9.g getContext() {
        return this.f31733s.getContext();
    }

    @Override // da.a1
    public Object h() {
        Object obj = this.f31734t;
        if (s0.a()) {
            if (!(obj != i.f31736a)) {
                throw new AssertionError();
            }
        }
        this.f31734t = i.f31736a;
        return obj;
    }

    public final void i() {
        while (this._reusableCancellableContinuation == i.f31737b) {
        }
    }

    public final da.n<T> j() {
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            if (obj == null) {
                this._reusableCancellableContinuation = i.f31737b;
                return null;
            }
            if (obj instanceof da.n) {
                if (androidx.concurrent.futures.b.a(f31731v, this, obj, i.f31737b)) {
                    return (da.n) obj;
                }
            } else if (obj != i.f31737b && !(obj instanceof Throwable)) {
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        }
    }

    public final boolean l() {
        return this._reusableCancellableContinuation != null;
    }

    public final boolean n(Throwable th) {
        while (true) {
            Object obj = this._reusableCancellableContinuation;
            e0 e0Var = i.f31737b;
            if (t9.m.a(obj, e0Var)) {
                if (androidx.concurrent.futures.b.a(f31731v, this, e0Var, th)) {
                    return true;
                }
            } else {
                if (obj instanceof Throwable) {
                    return true;
                }
                if (androidx.concurrent.futures.b.a(f31731v, this, obj, null)) {
                    return false;
                }
            }
        }
    }

    @Override // m9.e
    public StackTraceElement o() {
        return null;
    }

    public final void p() {
        i();
        da.n<?> nVarK = k();
        if (nVarK != null) {
            nVarK.p();
        }
    }

    public final Throwable q(da.m<?> mVar) {
        e0 e0Var;
        do {
            Object obj = this._reusableCancellableContinuation;
            e0Var = i.f31737b;
            if (obj != e0Var) {
                if (obj instanceof Throwable) {
                    if (androidx.concurrent.futures.b.a(f31731v, this, obj, null)) {
                        return (Throwable) obj;
                    }
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
                throw new IllegalStateException(("Inconsistent state " + obj).toString());
            }
        } while (!androidx.concurrent.futures.b.a(f31731v, this, e0Var, mVar));
        return null;
    }

    public String toString() {
        return "DispatchedContinuation[" + this.f31732r + ", " + t0.c(this.f31733s) + ']';
    }
}
