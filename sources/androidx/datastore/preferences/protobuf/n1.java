package androidx.datastore.preferences.protobuf;

import java.io.IOException;

/* JADX INFO: compiled from: UnknownFieldSchema.java */
/* JADX INFO: loaded from: classes.dex */
abstract class n1<T, B> {
    n1() {
    }

    abstract void a(B b10, int i10, int i11);

    abstract void b(B b10, int i10, long j10);

    abstract void c(B b10, int i10, T t10);

    abstract void d(B b10, int i10, h hVar);

    abstract void e(B b10, int i10, long j10);

    abstract B f(Object obj);

    abstract T g(Object obj);

    abstract int h(T t10);

    abstract int i(T t10);

    abstract void j(Object obj);

    abstract T k(T t10, T t11);

    final void l(B b10, f1 f1Var) throws IOException {
        while (f1Var.A() != Integer.MAX_VALUE && m(b10, f1Var)) {
        }
    }

    final boolean m(B b10, f1 f1Var) throws IOException {
        int iU = f1Var.u();
        int iA = t1.a(iU);
        int iB = t1.b(iU);
        if (iB == 0) {
            e(b10, iA, f1Var.M());
            return true;
        }
        if (iB == 1) {
            b(b10, iA, f1Var.d());
            return true;
        }
        if (iB == 2) {
            d(b10, iA, f1Var.D());
            return true;
        }
        if (iB != 3) {
            if (iB == 4) {
                return false;
            }
            if (iB != 5) {
                throw b0.d();
            }
            a(b10, iA, f1Var.i());
            return true;
        }
        B bN = n();
        int iC = t1.c(iA, 4);
        l(bN, f1Var);
        if (iC != f1Var.u()) {
            throw b0.a();
        }
        c(b10, iA, r(bN));
        return true;
    }

    abstract B n();

    abstract void o(Object obj, B b10);

    abstract void p(Object obj, T t10);

    abstract boolean q(f1 f1Var);

    abstract T r(B b10);

    abstract void s(T t10, u1 u1Var) throws IOException;

    abstract void t(T t10, u1 u1Var) throws IOException;
}
