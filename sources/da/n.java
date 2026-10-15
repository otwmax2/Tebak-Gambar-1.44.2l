package da;

import com.facebook.internal.AnalyticsEvents;
import da.x1;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* JADX INFO: compiled from: CancellableContinuationImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public class n<T> extends a1<T> implements m<T>, m9.e {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f28832u = AtomicIntegerFieldUpdater.newUpdater(n.class, "_decision");

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f28833v = AtomicReferenceFieldUpdater.newUpdater(n.class, Object.class, "_state");
    private volatile /* synthetic */ int _decision;
    private volatile /* synthetic */ Object _state;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final k9.d<T> f28834r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final k9.g f28835s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private e1 f28836t;

    /* JADX WARN: Multi-variable type inference failed */
    public n(k9.d<? super T> dVar, int i10) {
        super(i10);
        this.f28834r = dVar;
        if (s0.a()) {
            if (!(i10 != -1)) {
                throw new AssertionError();
            }
        }
        this.f28835s = dVar.getContext();
        this._decision = 0;
        this._state = d.f28781o;
    }

    private final e1 A() {
        x1 x1Var = (x1) getContext().b(x1.f28875m);
        if (x1Var == null) {
            return null;
        }
        e1 e1VarC = x1.a.c(x1Var, true, false, new r(this), 2, null);
        this.f28836t = e1VarC;
        return e1VarC;
    }

    private final boolean D() {
        return b1.c(this.f28775q) && ((kotlinx.coroutines.internal.h) this.f28834r).l();
    }

    private final k E(s9.l<? super Throwable, h9.t> lVar) {
        return lVar instanceof k ? (k) lVar : new u1(lVar);
    }

    private final void F(s9.l<? super Throwable, h9.t> lVar, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + lVar + ", already has " + obj).toString());
    }

    private final void I() {
        Throwable thQ;
        k9.d<T> dVar = this.f28834r;
        kotlinx.coroutines.internal.h hVar = dVar instanceof kotlinx.coroutines.internal.h ? (kotlinx.coroutines.internal.h) dVar : null;
        if (hVar == null || (thQ = hVar.q(this)) == null) {
            return;
        }
        p();
        w(thQ);
    }

    private final void K(Object obj, int i10, s9.l<? super Throwable, h9.t> lVar) {
        Object obj2;
        do {
            obj2 = this._state;
            if (!(obj2 instanceof k2)) {
                if (obj2 instanceof q) {
                    q qVar = (q) obj2;
                    if (qVar.c()) {
                        if (lVar != null) {
                            l(lVar, qVar.f28774a);
                            return;
                        }
                        return;
                    }
                }
                i(obj);
                throw new h9.e();
            }
        } while (!androidx.concurrent.futures.b.a(f28833v, this, obj2, M((k2) obj2, obj, i10, lVar, null)));
        q();
        r(i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    static /* synthetic */ void L(n nVar, Object obj, int i10, s9.l lVar, int i11, Object obj2) {
        if (obj2 != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: resumeImpl");
        }
        if ((i11 & 4) != 0) {
            lVar = null;
        }
        nVar.K(obj, i10, lVar);
    }

    private final Object M(k2 k2Var, Object obj, int i10, s9.l<? super Throwable, h9.t> lVar, Object obj2) {
        if (obj instanceof a0) {
            if (s0.a()) {
                if (!(obj2 == null)) {
                    throw new AssertionError();
                }
            }
            if (!s0.a()) {
                return obj;
            }
            if (lVar == null) {
                return obj;
            }
            throw new AssertionError();
        }
        if (!b1.b(i10) && obj2 == null) {
            return obj;
        }
        if (lVar != null || (((k2Var instanceof k) && !(k2Var instanceof e)) || obj2 != null)) {
            return new z(obj, k2Var instanceof k ? (k) k2Var : null, lVar, obj2, null, 16, null);
        }
        return obj;
    }

    private final boolean N() {
        do {
            int i10 = this._decision;
            if (i10 != 0) {
                if (i10 == 1) {
                    return false;
                }
                throw new IllegalStateException("Already resumed".toString());
            }
        } while (!f28832u.compareAndSet(this, 0, 2));
        return true;
    }

    private final kotlinx.coroutines.internal.e0 O(Object obj, Object obj2, s9.l<? super Throwable, h9.t> lVar) {
        Object obj3;
        do {
            obj3 = this._state;
            if (!(obj3 instanceof k2)) {
                if (!(obj3 instanceof z) || obj2 == null) {
                    return null;
                }
                z zVar = (z) obj3;
                if (zVar.f28882d != obj2) {
                    return null;
                }
                if (!s0.a() || t9.m.a(zVar.f28879a, obj)) {
                    return o.f28842a;
                }
                throw new AssertionError();
            }
        } while (!androidx.concurrent.futures.b.a(f28833v, this, obj3, M((k2) obj3, obj, this.f28775q, lVar, obj2)));
        q();
        return o.f28842a;
    }

    private final boolean P() {
        do {
            int i10 = this._decision;
            if (i10 != 0) {
                if (i10 == 2) {
                    return false;
                }
                throw new IllegalStateException("Already suspended".toString());
            }
        } while (!f28832u.compareAndSet(this, 0, 1));
        return true;
    }

    private final Void i(Object obj) {
        throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
    }

    private final void k(s9.l<? super Throwable, h9.t> lVar, Throwable th) {
        try {
            lVar.invoke(th);
        } catch (Throwable th2) {
            l0.a(getContext(), new d0("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    private final boolean n(Throwable th) {
        if (D()) {
            return ((kotlinx.coroutines.internal.h) this.f28834r).n(th);
        }
        return false;
    }

    private final void q() {
        if (D()) {
            return;
        }
        p();
    }

    private final void r(int i10) {
        if (N()) {
            return;
        }
        b1.a(this, i10);
    }

    private final String v() {
        Object objU = u();
        return objU instanceof k2 ? "Active" : objU instanceof q ? AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_CANCELLED : AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_COMPLETED;
    }

    @Override // da.m
    public void B(Object obj) {
        if (s0.a()) {
            if (!(obj == o.f28842a)) {
                throw new AssertionError();
            }
        }
        r(this.f28775q);
    }

    public boolean C() {
        return !(u() instanceof k2);
    }

    protected String G() {
        return "CancellableContinuation";
    }

    public final void H(Throwable th) {
        if (n(th)) {
            return;
        }
        w(th);
        q();
    }

    public final boolean J() {
        if (s0.a()) {
            if (!(this.f28775q == 2)) {
                throw new AssertionError();
            }
        }
        if (s0.a()) {
            if (!(this.f28836t != j2.f28825o)) {
                throw new AssertionError();
            }
        }
        Object obj = this._state;
        if (s0.a() && !(!(obj instanceof k2))) {
            throw new AssertionError();
        }
        if ((obj instanceof z) && ((z) obj).f28882d != null) {
            p();
            return false;
        }
        this._decision = 0;
        this._state = d.f28781o;
        return true;
    }

    @Override // da.a1
    public void a(Object obj, Throwable th) {
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof k2) {
                throw new IllegalStateException("Not completed".toString());
            }
            if (obj2 instanceof a0) {
                return;
            }
            if (obj2 instanceof z) {
                z zVar = (z) obj2;
                if (!(!zVar.c())) {
                    throw new IllegalStateException("Must be called at most once".toString());
                }
                if (androidx.concurrent.futures.b.a(f28833v, this, obj2, z.b(zVar, null, null, null, null, th, 15, null))) {
                    zVar.d(this, th);
                    return;
                }
            } else if (androidx.concurrent.futures.b.a(f28833v, this, obj2, new z(obj2, null, null, null, th, 14, null))) {
                return;
            }
        }
    }

    @Override // da.a1
    public final k9.d<T> b() {
        return this.f28834r;
    }

    @Override // da.a1
    public Throwable c(Object obj) {
        Throwable thC = super.c(obj);
        if (thC == null) {
            return null;
        }
        k9.d<T> dVar = this.f28834r;
        return (s0.d() && (dVar instanceof m9.e)) ? kotlinx.coroutines.internal.d0.j(thC, (m9.e) dVar) : thC;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // da.a1
    public <T> T d(Object obj) {
        return obj instanceof z ? (T) ((z) obj).f28879a : obj;
    }

    @Override // m9.e
    public m9.e e() {
        k9.d<T> dVar = this.f28834r;
        if (dVar instanceof m9.e) {
            return (m9.e) dVar;
        }
        return null;
    }

    @Override // k9.d
    public void g(Object obj) {
        L(this, e0.b(obj, this), this.f28775q, null, 4, null);
    }

    @Override // k9.d
    public k9.g getContext() {
        return this.f28835s;
    }

    @Override // da.a1
    public Object h() {
        return u();
    }

    public final void j(k kVar, Throwable th) {
        try {
            kVar.c(th);
        } catch (Throwable th2) {
            l0.a(getContext(), new d0("Exception in invokeOnCancellation handler for " + this, th2));
        }
    }

    public final void l(s9.l<? super Throwable, h9.t> lVar, Throwable th) {
        try {
            lVar.invoke(th);
        } catch (Throwable th2) {
            l0.a(getContext(), new d0("Exception in resume onCancellation handler for " + this, th2));
        }
    }

    @Override // da.m
    public Object m(T t10, Object obj, s9.l<? super Throwable, h9.t> lVar) {
        return O(t10, obj, lVar);
    }

    @Override // m9.e
    public StackTraceElement o() {
        return null;
    }

    public final void p() {
        e1 e1Var = this.f28836t;
        if (e1Var == null) {
            return;
        }
        e1Var.i();
        this.f28836t = j2.f28825o;
    }

    public Throwable s(x1 x1Var) {
        return x1Var.j();
    }

    public final Object t() {
        x1 x1Var;
        boolean zD = D();
        if (P()) {
            if (this.f28836t == null) {
                A();
            }
            if (zD) {
                I();
            }
            return l9.d.c();
        }
        if (zD) {
            I();
        }
        Object objU = u();
        if (objU instanceof a0) {
            Throwable th = ((a0) objU).f28774a;
            if (s0.d()) {
                throw kotlinx.coroutines.internal.d0.j(th, this);
            }
            throw th;
        }
        if (!b1.b(this.f28775q) || (x1Var = (x1) getContext().b(x1.f28875m)) == null || x1Var.c()) {
            return d(objU);
        }
        CancellationException cancellationExceptionJ = x1Var.j();
        a(objU, cancellationExceptionJ);
        if (s0.d()) {
            throw kotlinx.coroutines.internal.d0.j(cancellationExceptionJ, this);
        }
        throw cancellationExceptionJ;
    }

    public String toString() {
        return G() + '(' + t0.c(this.f28834r) + "){" + v() + "}@" + t0.b(this);
    }

    public final Object u() {
        return this._state;
    }

    @Override // da.m
    public boolean w(Throwable th) {
        Object obj;
        boolean z10;
        do {
            obj = this._state;
            if (!(obj instanceof k2)) {
                return false;
            }
            z10 = obj instanceof k;
        } while (!androidx.concurrent.futures.b.a(f28833v, this, obj, new q(this, th, z10)));
        k kVar = z10 ? (k) obj : null;
        if (kVar != null) {
            j(kVar, th);
        }
        q();
        r(this.f28775q);
        return true;
    }

    @Override // da.m
    public void x(T t10, s9.l<? super Throwable, h9.t> lVar) {
        K(t10, this.f28775q, lVar);
    }

    public void y() {
        e1 e1VarA = A();
        if (e1VarA != null && C()) {
            e1VarA.i();
            this.f28836t = j2.f28825o;
        }
    }

    @Override // da.m
    public void z(s9.l<? super Throwable, h9.t> lVar) {
        k kVarE = E(lVar);
        while (true) {
            Object obj = this._state;
            if (obj instanceof d) {
                if (androidx.concurrent.futures.b.a(f28833v, this, obj, kVarE)) {
                    return;
                }
            } else if (obj instanceof k) {
                F(lVar, obj);
            } else {
                boolean z10 = obj instanceof a0;
                if (z10) {
                    a0 a0Var = (a0) obj;
                    if (!a0Var.b()) {
                        F(lVar, obj);
                    }
                    if (obj instanceof q) {
                        if (!z10) {
                            a0Var = null;
                        }
                        k(lVar, a0Var != null ? a0Var.f28774a : null);
                        return;
                    }
                    return;
                }
                if (obj instanceof z) {
                    z zVar = (z) obj;
                    if (zVar.f28880b != null) {
                        F(lVar, obj);
                    }
                    if (kVarE instanceof e) {
                        return;
                    }
                    if (zVar.c()) {
                        k(lVar, zVar.f28883e);
                        return;
                    } else {
                        if (androidx.concurrent.futures.b.a(f28833v, this, obj, z.b(zVar, null, kVarE, null, null, null, 29, null))) {
                            return;
                        }
                    }
                } else {
                    if (kVarE instanceof e) {
                        return;
                    }
                    if (androidx.concurrent.futures.b.a(f28833v, this, obj, new z(obj, kVarE, null, null, null, 28, null))) {
                        return;
                    }
                }
            }
        }
    }
}
