package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.d0;
import androidx.datastore.preferences.protobuf.t1;
import androidx.datastore.preferences.protobuf.u;
import java.io.IOException;
import java.util.Iterator;
import java.util.Map;

/* JADX INFO: compiled from: MessageSetSchema.java */
/* JADX INFO: loaded from: classes.dex */
final class v0<T> implements g1<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r0 f2959a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final n1<?, ?> f2960b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final boolean f2961c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final q<?> f2962d;

    private v0(n1<?, ?> n1Var, q<?> qVar, r0 r0Var) {
        this.f2960b = n1Var;
        this.f2961c = qVar.e(r0Var);
        this.f2962d = qVar;
        this.f2959a = r0Var;
    }

    private <UT, UB> int b(n1<UT, UB> n1Var, T t10) {
        return n1Var.i(n1Var.g(t10));
    }

    private <UT, UB, ET extends u.b<ET>> void k(n1<UT, UB> n1Var, q<ET> qVar, T t10, f1 f1Var, p pVar) throws IOException {
        UB ubF = n1Var.f(t10);
        u<ET> uVarD = qVar.d(t10);
        while (f1Var.A() != Integer.MAX_VALUE) {
            try {
                if (!m(f1Var, pVar, qVar, uVarD, n1Var, ubF)) {
                    return;
                }
            } finally {
                n1Var.o(t10, ubF);
            }
        }
    }

    static <T> v0<T> l(n1<?, ?> n1Var, q<?> qVar, r0 r0Var) {
        return new v0<>(n1Var, qVar, r0Var);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private <UT, UB, ET extends u.b<ET>> boolean m(f1 f1Var, p pVar, q<ET> qVar, u<ET> uVar, n1<UT, UB> n1Var, UB ub) throws IOException {
        int iU = f1Var.u();
        if (iU != t1.f2863a) {
            if (t1.b(iU) != 2) {
                return f1Var.H();
            }
            Object objB = qVar.b(pVar, this.f2959a, t1.a(iU));
            if (objB == null) {
                return n1Var.m(ub, f1Var);
            }
            qVar.h(f1Var, objB, pVar, uVar);
            return true;
        }
        int iN = 0;
        Object objB2 = null;
        h hVarD = null;
        while (f1Var.A() != Integer.MAX_VALUE) {
            int iU2 = f1Var.u();
            if (iU2 == t1.f2865c) {
                iN = f1Var.n();
                objB2 = qVar.b(pVar, this.f2959a, iN);
            } else if (iU2 == t1.f2866d) {
                if (objB2 != null) {
                    qVar.h(f1Var, objB2, pVar, uVar);
                } else {
                    hVarD = f1Var.D();
                }
            } else if (!f1Var.H()) {
                break;
            }
        }
        if (f1Var.u() != t1.f2864b) {
            throw b0.a();
        }
        if (hVarD != null) {
            if (objB2 != null) {
                qVar.i(hVarD, objB2, pVar, uVar);
            } else {
                n1Var.d(ub, iN, hVarD);
            }
        }
        return true;
    }

    private <UT, UB> void n(n1<UT, UB> n1Var, T t10, u1 u1Var) throws IOException {
        n1Var.s(n1Var.g(t10), u1Var);
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public void a(T t10, T t11) {
        i1.G(this.f2960b, t10, t11);
        if (this.f2961c) {
            i1.E(this.f2962d, t10, t11);
        }
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public boolean c(T t10, T t11) {
        if (!this.f2960b.g(t10).equals(this.f2960b.g(t11))) {
            return false;
        }
        if (this.f2961c) {
            return this.f2962d.c(t10).equals(this.f2962d.c(t11));
        }
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public int d(T t10) {
        int iHashCode = this.f2960b.g(t10).hashCode();
        return this.f2961c ? (iHashCode * 53) + this.f2962d.c(t10).hashCode() : iHashCode;
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public void e(T t10, f1 f1Var, p pVar) throws IOException {
        k(this.f2960b, this.f2962d, t10, f1Var, pVar);
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public void f(T t10) {
        this.f2960b.j(t10);
        this.f2962d.f(t10);
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public final boolean g(T t10) {
        return this.f2962d.c(t10).p();
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public void h(T t10, u1 u1Var) throws IOException {
        Iterator itS = this.f2962d.c(t10).s();
        while (itS.hasNext()) {
            Map.Entry entry = (Map.Entry) itS.next();
            u.b bVar = (u.b) entry.getKey();
            if (bVar.E() != t1.c.MESSAGE || bVar.w() || bVar.F()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            if (entry instanceof d0.b) {
                u1Var.c(bVar.h(), ((d0.b) entry).a().e());
            } else {
                u1Var.c(bVar.h(), entry.getValue());
            }
        }
        n(this.f2960b, t10, u1Var);
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public int i(T t10) {
        int iB = b(this.f2960b, t10) + 0;
        return this.f2961c ? iB + this.f2962d.c(t10).j() : iB;
    }

    @Override // androidx.datastore.preferences.protobuf.g1
    public T j() {
        return (T) this.f2959a.h().A2();
    }
}
