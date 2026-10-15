package da;

import com.facebook.internal.AnalyticsEvents;
import da.x1;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import k9.g;
import kotlinx.coroutines.internal.r;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes2.dex */
public class e2 implements x1, u, l2 {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final /* synthetic */ AtomicReferenceFieldUpdater f28787o = AtomicReferenceFieldUpdater.newUpdater(e2.class, Object.class, "_state");
    private volatile /* synthetic */ Object _parentHandle;
    private volatile /* synthetic */ Object _state;

    /* JADX INFO: compiled from: JobSupport.kt */
    private static final class a<T> extends n<T> {

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        private final e2 f28788w;

        public a(k9.d<? super T> dVar, e2 e2Var) {
            super(dVar, 1);
            this.f28788w = e2Var;
        }

        @Override // da.n
        protected String G() {
            return "AwaitContinuation";
        }

        @Override // da.n
        public Throwable s(x1 x1Var) {
            Throwable thE;
            Object objE0 = this.f28788w.e0();
            return (!(objE0 instanceof c) || (thE = ((c) objE0).e()) == null) ? objE0 instanceof a0 ? ((a0) objE0).f28774a : x1Var.j() : thE;
        }
    }

    /* JADX INFO: compiled from: JobSupport.kt */
    private static final class b extends d2 {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final e2 f28789s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private final c f28790t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private final t f28791u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        private final Object f28792v;

        public b(e2 e2Var, c cVar, t tVar, Object obj) {
            this.f28789s = e2Var;
            this.f28790t = cVar;
            this.f28791u = tVar;
            this.f28792v = obj;
        }

        @Override // da.c0
        public void C(Throwable th) {
            this.f28789s.U(this.f28790t, this.f28791u, this.f28792v);
        }

        @Override // s9.l
        public /* bridge */ /* synthetic */ h9.t invoke(Throwable th) {
            C(th);
            return h9.t.f30301a;
        }
    }

    /* JADX INFO: compiled from: JobSupport.kt */
    private static final class c implements s1 {
        private volatile /* synthetic */ Object _exceptionsHolder = null;
        private volatile /* synthetic */ int _isCompleting;
        private volatile /* synthetic */ Object _rootCause;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final i2 f28793o;

        public c(i2 i2Var, boolean z10, Throwable th) {
            this.f28793o = i2Var;
            this._isCompleting = z10 ? 1 : 0;
            this._rootCause = th;
        }

        private final ArrayList<Throwable> b() {
            return new ArrayList<>(4);
        }

        private final Object d() {
            return this._exceptionsHolder;
        }

        private final void l(Object obj) {
            this._exceptionsHolder = obj;
        }

        public final void a(Throwable th) {
            Throwable thE = e();
            if (thE == null) {
                m(th);
                return;
            }
            if (th == thE) {
                return;
            }
            Object objD = d();
            if (objD == null) {
                l(th);
                return;
            }
            if (objD instanceof Throwable) {
                if (th == objD) {
                    return;
                }
                ArrayList<Throwable> arrayListB = b();
                arrayListB.add(objD);
                arrayListB.add(th);
                l(arrayListB);
                return;
            }
            if (objD instanceof ArrayList) {
                ((ArrayList) objD).add(th);
                return;
            }
            throw new IllegalStateException(("State is " + objD).toString());
        }

        @Override // da.s1
        public boolean c() {
            return e() == null;
        }

        public final Throwable e() {
            return (Throwable) this._rootCause;
        }

        @Override // da.s1
        public i2 f() {
            return this.f28793o;
        }

        public final boolean g() {
            return e() != null;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
        public final boolean h() {
            return this._isCompleting;
        }

        public final boolean i() {
            return d() == f2.f28803e;
        }

        public final List<Throwable> j(Throwable th) {
            ArrayList<Throwable> arrayListB;
            Object objD = d();
            if (objD == null) {
                arrayListB = b();
            } else if (objD instanceof Throwable) {
                ArrayList<Throwable> arrayListB2 = b();
                arrayListB2.add(objD);
                arrayListB = arrayListB2;
            } else {
                if (!(objD instanceof ArrayList)) {
                    throw new IllegalStateException(("State is " + objD).toString());
                }
                arrayListB = (ArrayList) objD;
            }
            Throwable thE = e();
            if (thE != null) {
                arrayListB.add(0, thE);
            }
            if (th != null && !t9.m.a(th, thE)) {
                arrayListB.add(th);
            }
            l(f2.f28803e);
            return arrayListB;
        }

        public final void k(boolean z10) {
            this._isCompleting = z10 ? 1 : 0;
        }

        public final void m(Throwable th) {
            this._rootCause = th;
        }

        public String toString() {
            return "Finishing[cancelling=" + g() + ", completing=" + h() + ", rootCause=" + e() + ", exceptions=" + d() + ", list=" + f() + ']';
        }
    }

    /* JADX INFO: compiled from: LockFreeLinkedList.kt */
    public static final class d extends r.a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ e2 f28794d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ Object f28795e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(kotlinx.coroutines.internal.r rVar, e2 e2Var, Object obj) {
            super(rVar);
            this.f28794d = e2Var;
            this.f28795e = obj;
        }

        @Override // kotlinx.coroutines.internal.c
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Object g(kotlinx.coroutines.internal.r rVar) {
            if (this.f28794d.e0() == this.f28795e) {
                return null;
            }
            return kotlinx.coroutines.internal.q.a();
        }
    }

    public e2(boolean z10) {
        this._state = z10 ? f2.f28805g : f2.f28804f;
        this._parentHandle = null;
    }

    private final String A0(Object obj) {
        if (!(obj instanceof c)) {
            return obj instanceof s1 ? ((s1) obj).c() ? "Active" : "New" : obj instanceof a0 ? AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_CANCELLED : AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_COMPLETED;
        }
        c cVar = (c) obj;
        return cVar.g() ? "Cancelling" : cVar.h() ? "Completing" : "Active";
    }

    public static /* synthetic */ CancellationException C0(e2 e2Var, Throwable th, String str, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i10 & 1) != 0) {
            str = null;
        }
        return e2Var.B0(th, str);
    }

    private final boolean E0(s1 s1Var, Object obj) throws Throwable {
        if (s0.a()) {
            if (!((s1Var instanceof g1) || (s1Var instanceof d2))) {
                throw new AssertionError();
            }
        }
        if (s0.a() && !(!(obj instanceof a0))) {
            throw new AssertionError();
        }
        if (!androidx.concurrent.futures.b.a(f28787o, this, s1Var, f2.g(obj))) {
            return false;
        }
        s0(null);
        t0(obj);
        T(s1Var, obj);
        return true;
    }

    private final boolean F0(s1 s1Var, Throwable th) throws Throwable {
        if (s0.a() && !(!(s1Var instanceof c))) {
            throw new AssertionError();
        }
        if (s0.a() && !s1Var.c()) {
            throw new AssertionError();
        }
        i2 i2VarC0 = c0(s1Var);
        if (i2VarC0 == null) {
            return false;
        }
        if (!androidx.concurrent.futures.b.a(f28787o, this, s1Var, new c(i2VarC0, false, th))) {
            return false;
        }
        q0(i2VarC0, th);
        return true;
    }

    private final Object G0(Object obj, Object obj2) {
        return !(obj instanceof s1) ? f2.f28799a : ((!(obj instanceof g1) && !(obj instanceof d2)) || (obj instanceof t) || (obj2 instanceof a0)) ? H0((s1) obj, obj2) : E0((s1) obj, obj2) ? obj2 : f2.f28801c;
    }

    private final boolean H(Object obj, i2 i2Var, d2 d2Var) {
        int iB;
        d dVar = new d(d2Var, this, obj);
        do {
            iB = i2Var.t().B(d2Var, i2Var, dVar);
            if (iB == 1) {
                return true;
            }
        } while (iB != 2);
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [T, java.lang.Throwable] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r3v5 */
    /* JADX WARN: Type inference failed for: r8v0, types: [da.e2, java.lang.Object] */
    private final Object H0(s1 s1Var, Object obj) throws Throwable {
        i2 i2VarC0 = c0(s1Var);
        if (i2VarC0 == null) {
            return f2.f28801c;
        }
        c cVar = s1Var instanceof c ? (c) s1Var : null;
        if (cVar == null) {
            cVar = new c(i2VarC0, false, null);
        }
        t9.y yVar = new t9.y();
        synchronized (cVar) {
            if (cVar.h()) {
                return f2.f28799a;
            }
            cVar.k(true);
            if (cVar != s1Var && !androidx.concurrent.futures.b.a(f28787o, this, s1Var, cVar)) {
                return f2.f28801c;
            }
            if (s0.a() && !(!cVar.i())) {
                throw new AssertionError();
            }
            boolean zG = cVar.g();
            a0 a0Var = obj instanceof a0 ? (a0) obj : null;
            if (a0Var != null) {
                cVar.a(a0Var.f28774a);
            }
            ?? E = Boolean.valueOf(zG ? false : true).booleanValue() ? cVar.e() : 0;
            yVar.f35552o = E;
            h9.t tVar = h9.t.f30301a;
            if (E != 0) {
                q0(i2VarC0, E);
            }
            t tVarX = X(s1Var);
            return (tVarX == null || !I0(cVar, tVarX, obj)) ? W(cVar, obj) : f2.f28800b;
        }
    }

    private final void I(Throwable th, List<? extends Throwable> list) {
        if (list.size() <= 1) {
            return;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        Throwable thL = !s0.d() ? th : kotlinx.coroutines.internal.d0.l(th);
        for (Throwable thL2 : list) {
            if (s0.d()) {
                thL2 = kotlinx.coroutines.internal.d0.l(thL2);
            }
            if (thL2 != th && thL2 != thL && !(thL2 instanceof CancellationException) && setNewSetFromMap.add(thL2)) {
                h9.b.a(th, thL2);
            }
        }
    }

    private final boolean I0(c cVar, t tVar, Object obj) {
        while (x1.a.c(tVar.f28860s, false, false, new b(this, cVar, tVar, obj), 1, null) == j2.f28825o) {
            tVar = p0(tVar);
            if (tVar == null) {
                return false;
            }
        }
        return true;
    }

    private final Object L(k9.d<Object> dVar) {
        a aVar = new a(l9.c.b(dVar), this);
        aVar.y();
        p.a(aVar, f(new n2(aVar)));
        Object objT = aVar.t();
        if (objT == l9.d.c()) {
            m9.h.c(dVar);
        }
        return objT;
    }

    private final Object P(Object obj) {
        Object objG0;
        do {
            Object objE0 = e0();
            if (!(objE0 instanceof s1) || ((objE0 instanceof c) && ((c) objE0).h())) {
                return f2.f28799a;
            }
            objG0 = G0(objE0, new a0(V(obj), false, 2, null));
        } while (objG0 == f2.f28801c);
        return objG0;
    }

    private final boolean Q(Throwable th) {
        if (j0()) {
            return true;
        }
        boolean z10 = th instanceof CancellationException;
        s sVarD0 = d0();
        return (sVarD0 == null || sVarD0 == j2.f28825o) ? z10 : sVarD0.e(th) || z10;
    }

    private final void T(s1 s1Var, Object obj) throws Throwable {
        s sVarD0 = d0();
        if (sVarD0 != null) {
            sVarD0.i();
            y0(j2.f28825o);
        }
        a0 a0Var = obj instanceof a0 ? (a0) obj : null;
        Throwable th = a0Var != null ? a0Var.f28774a : null;
        if (!(s1Var instanceof d2)) {
            i2 i2VarF = s1Var.f();
            if (i2VarF != null) {
                r0(i2VarF, th);
                return;
            }
            return;
        }
        try {
            ((d2) s1Var).C(th);
        } catch (Throwable th2) {
            g0(new d0("Exception in completion handler " + s1Var + " for " + this, th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void U(c cVar, t tVar, Object obj) {
        if (s0.a()) {
            if (!(e0() == cVar)) {
                throw new AssertionError();
            }
        }
        t tVarP0 = p0(tVar);
        if (tVarP0 == null || !I0(cVar, tVarP0, obj)) {
            J(W(cVar, obj));
        }
    }

    private final Throwable V(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new y1(R(), null, this) : th;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((l2) obj).y();
    }

    private final Object W(c cVar, Object obj) throws Throwable {
        boolean zG;
        Throwable thZ;
        boolean z10 = true;
        if (s0.a()) {
            if (!(e0() == cVar)) {
                throw new AssertionError();
            }
        }
        if (s0.a() && !(!cVar.i())) {
            throw new AssertionError();
        }
        if (s0.a() && !cVar.h()) {
            throw new AssertionError();
        }
        a0 a0Var = obj instanceof a0 ? (a0) obj : null;
        Throwable th = a0Var != null ? a0Var.f28774a : null;
        synchronized (cVar) {
            zG = cVar.g();
            List<Throwable> listJ = cVar.j(th);
            thZ = Z(cVar, listJ);
            if (thZ != null) {
                I(thZ, listJ);
            }
        }
        if (thZ != null && thZ != th) {
            obj = new a0(thZ, false, 2, null);
        }
        if (thZ != null) {
            if (!Q(thZ) && !f0(thZ)) {
                z10 = false;
            }
            if (z10) {
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                ((a0) obj).b();
            }
        }
        if (!zG) {
            s0(thZ);
        }
        t0(obj);
        boolean zA = androidx.concurrent.futures.b.a(f28787o, this, cVar, f2.g(obj));
        if (s0.a() && !zA) {
            throw new AssertionError();
        }
        T(cVar, obj);
        return obj;
    }

    private final t X(s1 s1Var) {
        t tVar = s1Var instanceof t ? (t) s1Var : null;
        if (tVar != null) {
            return tVar;
        }
        i2 i2VarF = s1Var.f();
        if (i2VarF != null) {
            return p0(i2VarF);
        }
        return null;
    }

    private final Throwable Y(Object obj) {
        a0 a0Var = obj instanceof a0 ? (a0) obj : null;
        if (a0Var != null) {
            return a0Var.f28774a;
        }
        return null;
    }

    private final Throwable Z(c cVar, List<? extends Throwable> list) {
        Object obj = null;
        if (list.isEmpty()) {
            if (cVar.g()) {
                return new y1(R(), null, this);
            }
            return null;
        }
        Iterator<T> it = list.iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            Object next = it.next();
            if (!(((Throwable) next) instanceof CancellationException)) {
                obj = next;
                break;
            }
        }
        Throwable th = (Throwable) obj;
        return th != null ? th : list.get(0);
    }

    private final i2 c0(s1 s1Var) {
        i2 i2VarF = s1Var.f();
        if (i2VarF != null) {
            return i2VarF;
        }
        if (s1Var instanceof g1) {
            return new i2();
        }
        if (s1Var instanceof d2) {
            w0((d2) s1Var);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + s1Var).toString());
    }

    private final Object k0(Object obj) throws Throwable {
        Throwable thV = null;
        while (true) {
            Object objE0 = e0();
            if (objE0 instanceof c) {
                synchronized (objE0) {
                    if (((c) objE0).i()) {
                        return f2.f28802d;
                    }
                    boolean zG = ((c) objE0).g();
                    if (obj != null || !zG) {
                        if (thV == null) {
                            thV = V(obj);
                        }
                        ((c) objE0).a(thV);
                    }
                    Throwable thE = zG ^ true ? ((c) objE0).e() : null;
                    if (thE != null) {
                        q0(((c) objE0).f(), thE);
                    }
                    return f2.f28799a;
                }
            }
            if (!(objE0 instanceof s1)) {
                return f2.f28802d;
            }
            if (thV == null) {
                thV = V(obj);
            }
            s1 s1Var = (s1) objE0;
            if (!s1Var.c()) {
                Object objG0 = G0(objE0, new a0(thV, false, 2, null));
                if (objG0 == f2.f28799a) {
                    throw new IllegalStateException(("Cannot happen in " + objE0).toString());
                }
                if (objG0 != f2.f28801c) {
                    return objG0;
                }
            } else if (F0(s1Var, thV)) {
                return f2.f28799a;
            }
        }
    }

    private final d2 n0(s9.l<? super Throwable, h9.t> lVar, boolean z10) {
        d2 w1Var;
        if (z10) {
            w1Var = lVar instanceof z1 ? (z1) lVar : null;
            if (w1Var == null) {
                w1Var = new v1(lVar);
            }
        } else {
            w1Var = lVar instanceof d2 ? (d2) lVar : null;
            if (w1Var == null) {
                w1Var = new w1(lVar);
            } else if (s0.a() && !(!(w1Var instanceof z1))) {
                throw new AssertionError();
            }
        }
        w1Var.E(this);
        return w1Var;
    }

    private final t p0(kotlinx.coroutines.internal.r rVar) {
        while (rVar.w()) {
            rVar = rVar.t();
        }
        while (true) {
            rVar = rVar.s();
            if (!rVar.w()) {
                if (rVar instanceof t) {
                    return (t) rVar;
                }
                if (rVar instanceof i2) {
                    return null;
                }
            }
        }
    }

    private final void q0(i2 i2Var, Throwable th) throws Throwable {
        s0(th);
        d0 d0Var = null;
        for (kotlinx.coroutines.internal.r rVarS = (kotlinx.coroutines.internal.r) i2Var.r(); !t9.m.a(rVarS, i2Var); rVarS = rVarS.s()) {
            if (rVarS instanceof z1) {
                d2 d2Var = (d2) rVarS;
                try {
                    d2Var.C(th);
                } catch (Throwable th2) {
                    if (d0Var != null) {
                        h9.b.a(d0Var, th2);
                    } else {
                        d0Var = new d0("Exception in completion handler " + d2Var + " for " + this, th2);
                        h9.t tVar = h9.t.f30301a;
                    }
                }
            }
        }
        if (d0Var != null) {
            g0(d0Var);
        }
        Q(th);
    }

    private final void r0(i2 i2Var, Throwable th) throws Throwable {
        d0 d0Var = null;
        for (kotlinx.coroutines.internal.r rVarS = (kotlinx.coroutines.internal.r) i2Var.r(); !t9.m.a(rVarS, i2Var); rVarS = rVarS.s()) {
            if (rVarS instanceof d2) {
                d2 d2Var = (d2) rVarS;
                try {
                    d2Var.C(th);
                } catch (Throwable th2) {
                    if (d0Var != null) {
                        h9.b.a(d0Var, th2);
                    } else {
                        d0Var = new d0("Exception in completion handler " + d2Var + " for " + this, th2);
                        h9.t tVar = h9.t.f30301a;
                    }
                }
            }
        }
        if (d0Var != null) {
            g0(d0Var);
        }
    }

    private final void v0(g1 g1Var) {
        i2 i2Var = new i2();
        Object r1Var = i2Var;
        if (!g1Var.c()) {
            r1Var = new r1(i2Var);
        }
        androidx.concurrent.futures.b.a(f28787o, this, g1Var, r1Var);
    }

    private final void w0(d2 d2Var) {
        d2Var.n(new i2());
        androidx.concurrent.futures.b.a(f28787o, this, d2Var, d2Var.s());
    }

    private final int z0(Object obj) {
        if (obj instanceof g1) {
            if (((g1) obj).c()) {
                return 0;
            }
            if (!androidx.concurrent.futures.b.a(f28787o, this, obj, f2.f28805g)) {
                return -1;
            }
            u0();
            return 1;
        }
        if (!(obj instanceof r1)) {
            return 0;
        }
        if (!androidx.concurrent.futures.b.a(f28787o, this, obj, ((r1) obj).f())) {
            return -1;
        }
        u0();
        return 1;
    }

    protected final CancellationException B0(Throwable th, String str) {
        CancellationException y1Var = th instanceof CancellationException ? (CancellationException) th : null;
        if (y1Var == null) {
            if (str == null) {
                str = R();
            }
            y1Var = new y1(str, th, this);
        }
        return y1Var;
    }

    public final String D0() {
        return o0() + '{' + A0(e0()) + '}';
    }

    @Override // da.x1
    public void E(CancellationException cancellationException) throws Throwable {
        if (cancellationException == null) {
            cancellationException = new y1(R(), null, this);
        }
        O(cancellationException);
    }

    @Override // da.u
    public final void F(l2 l2Var) throws Throwable {
        N(l2Var);
    }

    protected void J(Object obj) {
    }

    public final Object K(k9.d<Object> dVar) throws Throwable {
        Object objE0;
        do {
            objE0 = e0();
            if (!(objE0 instanceof s1)) {
                if (!(objE0 instanceof a0)) {
                    return f2.h(objE0);
                }
                Throwable th = ((a0) objE0).f28774a;
                if (s0.d() && (dVar instanceof m9.e)) {
                    throw kotlinx.coroutines.internal.d0.j(th, (m9.e) dVar);
                }
                throw th;
            }
        } while (z0(objE0) < 0);
        return L(dVar);
    }

    public final boolean M(Throwable th) {
        return N(th);
    }

    public final boolean N(Object obj) throws Throwable {
        Object objK0 = f2.f28799a;
        if (b0() && (objK0 = P(obj)) == f2.f28800b) {
            return true;
        }
        if (objK0 == f2.f28799a) {
            objK0 = k0(obj);
        }
        if (objK0 == f2.f28799a || objK0 == f2.f28800b) {
            return true;
        }
        if (objK0 == f2.f28802d) {
            return false;
        }
        J(objK0);
        return true;
    }

    public void O(Throwable th) throws Throwable {
        N(th);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String R() {
        return "Job was cancelled";
    }

    public boolean S(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return N(th) && a0();
    }

    public boolean a0() {
        return true;
    }

    @Override // k9.g.b, k9.g
    public <E extends g.b> E b(g.c<E> cVar) {
        return (E) x1.a.b(this, cVar);
    }

    public boolean b0() {
        return false;
    }

    @Override // da.x1
    public boolean c() {
        Object objE0 = e0();
        return (objE0 instanceof s1) && ((s1) objE0).c();
    }

    @Override // k9.g
    public k9.g d(k9.g gVar) {
        return x1.a.e(this, gVar);
    }

    public final s d0() {
        return (s) this._parentHandle;
    }

    public final Object e0() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof kotlinx.coroutines.internal.z)) {
                return obj;
            }
            ((kotlinx.coroutines.internal.z) obj).c(this);
        }
    }

    @Override // da.x1
    public final e1 f(s9.l<? super Throwable, h9.t> lVar) {
        return i(false, true, lVar);
    }

    protected boolean f0(Throwable th) {
        return false;
    }

    public void g0(Throwable th) throws Throwable {
        throw th;
    }

    @Override // k9.g.b
    public final g.c<?> getKey() {
        return x1.f28875m;
    }

    protected final void h0(x1 x1Var) {
        if (s0.a()) {
            if (!(d0() == null)) {
                throw new AssertionError();
            }
        }
        if (x1Var == null) {
            y0(j2.f28825o);
            return;
        }
        x1Var.start();
        s sVarT = x1Var.t(this);
        y0(sVarT);
        if (i0()) {
            sVarT.i();
            y0(j2.f28825o);
        }
    }

    @Override // da.x1
    public final e1 i(boolean z10, boolean z11, s9.l<? super Throwable, h9.t> lVar) {
        d2 d2VarN0 = n0(lVar, z10);
        while (true) {
            Object objE0 = e0();
            if (objE0 instanceof g1) {
                g1 g1Var = (g1) objE0;
                if (!g1Var.c()) {
                    v0(g1Var);
                } else if (androidx.concurrent.futures.b.a(f28787o, this, objE0, d2VarN0)) {
                    return d2VarN0;
                }
            } else {
                if (!(objE0 instanceof s1)) {
                    if (z11) {
                        a0 a0Var = objE0 instanceof a0 ? (a0) objE0 : null;
                        lVar.invoke(a0Var != null ? a0Var.f28774a : null);
                    }
                    return j2.f28825o;
                }
                i2 i2VarF = ((s1) objE0).f();
                if (i2VarF == null) {
                    Objects.requireNonNull(objE0, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    w0((d2) objE0);
                } else {
                    e1 e1Var = j2.f28825o;
                    if (z10 && (objE0 instanceof c)) {
                        synchronized (objE0) {
                            thE = ((c) objE0).e();
                            if (thE == null || ((lVar instanceof t) && !((c) objE0).h())) {
                                if (H(objE0, i2VarF, d2VarN0)) {
                                    if (thE == null) {
                                        return d2VarN0;
                                    }
                                    e1Var = d2VarN0;
                                }
                            }
                            h9.t tVar = h9.t.f30301a;
                        }
                    }
                    if (thE != null) {
                        if (z11) {
                            lVar.invoke(thE);
                        }
                        return e1Var;
                    }
                    if (H(objE0, i2VarF, d2VarN0)) {
                        return d2VarN0;
                    }
                }
            }
        }
    }

    public final boolean i0() {
        return !(e0() instanceof s1);
    }

    @Override // da.x1
    public final boolean isCancelled() {
        Object objE0 = e0();
        return (objE0 instanceof a0) || ((objE0 instanceof c) && ((c) objE0).g());
    }

    @Override // da.x1
    public final CancellationException j() {
        Object objE0 = e0();
        if (!(objE0 instanceof c)) {
            if (objE0 instanceof s1) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (objE0 instanceof a0) {
                return C0(this, ((a0) objE0).f28774a, null, 1, null);
            }
            return new y1(t0.a(this) + " has completed normally", null, this);
        }
        Throwable thE = ((c) objE0).e();
        if (thE != null) {
            CancellationException cancellationExceptionB0 = B0(thE, t0.a(this) + " is cancelling");
            if (cancellationExceptionB0 != null) {
                return cancellationExceptionB0;
            }
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    protected boolean j0() {
        return false;
    }

    public final boolean l0(Object obj) {
        Object objG0;
        do {
            objG0 = G0(e0(), obj);
            if (objG0 == f2.f28799a) {
                return false;
            }
            if (objG0 == f2.f28800b) {
                return true;
            }
        } while (objG0 == f2.f28801c);
        J(objG0);
        return true;
    }

    public final Object m0(Object obj) {
        Object objG0;
        do {
            objG0 = G0(e0(), obj);
            if (objG0 == f2.f28799a) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, Y(obj));
            }
        } while (objG0 == f2.f28801c);
        return objG0;
    }

    public String o0() {
        return t0.a(this);
    }

    @Override // k9.g
    public k9.g q(g.c<?> cVar) {
        return x1.a.d(this, cVar);
    }

    @Override // k9.g
    public <R> R s(R r10, s9.p<? super R, ? super g.b, ? extends R> pVar) {
        return (R) x1.a.a(this, r10, pVar);
    }

    protected void s0(Throwable th) {
    }

    @Override // da.x1
    public final boolean start() {
        int iZ0;
        do {
            iZ0 = z0(e0());
            if (iZ0 == 0) {
                return false;
            }
        } while (iZ0 != 1);
        return true;
    }

    @Override // da.x1
    public final s t(u uVar) {
        return (s) x1.a.c(this, true, false, new t(uVar), 2, null);
    }

    protected void t0(Object obj) {
    }

    public String toString() {
        return D0() + '@' + t0.b(this);
    }

    protected void u0() {
    }

    public final void x0(d2 d2Var) {
        Object objE0;
        do {
            objE0 = e0();
            if (!(objE0 instanceof d2)) {
                if (!(objE0 instanceof s1) || ((s1) objE0).f() == null) {
                    return;
                }
                d2Var.x();
                return;
            }
            if (objE0 != d2Var) {
                return;
            }
        } while (!androidx.concurrent.futures.b.a(f28787o, this, objE0, f2.f28805g));
    }

    @Override // da.l2
    public CancellationException y() {
        Throwable thE;
        Object objE0 = e0();
        if (objE0 instanceof c) {
            thE = ((c) objE0).e();
        } else if (objE0 instanceof a0) {
            thE = ((a0) objE0).f28774a;
        } else {
            if (objE0 instanceof s1) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + objE0).toString());
            }
            thE = null;
        }
        CancellationException cancellationException = thE instanceof CancellationException ? (CancellationException) thE : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        return new y1("Parent job is " + A0(objE0), thE, this);
    }

    public final void y0(s sVar) {
        this._parentHandle = sVar;
    }
}
