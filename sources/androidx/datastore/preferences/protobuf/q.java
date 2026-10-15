package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.u;
import androidx.datastore.preferences.protobuf.u.b;
import java.io.IOException;
import java.util.Map;

/* JADX INFO: compiled from: ExtensionSchema.java */
/* JADX INFO: loaded from: classes.dex */
abstract class q<T extends u.b<T>> {
    q() {
    }

    abstract int a(Map.Entry<?, ?> entry);

    abstract Object b(p pVar, r0 r0Var, int i10);

    abstract u<T> c(Object obj);

    abstract u<T> d(Object obj);

    abstract boolean e(r0 r0Var);

    abstract void f(Object obj);

    abstract <UT, UB> UB g(f1 f1Var, Object obj, p pVar, u<T> uVar, UB ub, n1<UT, UB> n1Var) throws IOException;

    abstract void h(f1 f1Var, Object obj, p pVar, u<T> uVar) throws IOException;

    abstract void i(h hVar, Object obj, p pVar, u<T> uVar) throws IOException;

    abstract void j(u1 u1Var, Map.Entry<?, ?> entry) throws IOException;
}
