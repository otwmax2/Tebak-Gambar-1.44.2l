package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.k0;
import java.util.Map;

/* JADX INFO: compiled from: MapFieldSchemaLite.java */
/* JADX INFO: loaded from: classes.dex */
class n0 implements m0 {
    n0() {
    }

    private static <K, V> int i(int i10, Object obj, Object obj2) {
        l0 l0Var = (l0) obj;
        k0 k0Var = (k0) obj2;
        int iA = 0;
        if (l0Var.isEmpty()) {
            return 0;
        }
        for (Map.Entry<K, V> entry : l0Var.entrySet()) {
            iA += k0Var.a(i10, entry.getKey(), entry.getValue());
        }
        return iA;
    }

    private static <K, V> l0<K, V> j(Object obj, Object obj2) {
        l0<K, V> l0VarO = (l0) obj;
        l0<K, V> l0Var = (l0) obj2;
        if (!l0Var.isEmpty()) {
            if (!l0VarO.l()) {
                l0VarO = l0VarO.o();
            }
            l0VarO.n(l0Var);
        }
        return l0VarO;
    }

    @Override // androidx.datastore.preferences.protobuf.m0
    public Object a(Object obj, Object obj2) {
        return j(obj, obj2);
    }

    @Override // androidx.datastore.preferences.protobuf.m0
    public Object b(Object obj) {
        ((l0) obj).m();
        return obj;
    }

    @Override // androidx.datastore.preferences.protobuf.m0
    public k0.a<?, ?> c(Object obj) {
        return ((k0) obj).c();
    }

    @Override // androidx.datastore.preferences.protobuf.m0
    public Map<?, ?> d(Object obj) {
        return (l0) obj;
    }

    @Override // androidx.datastore.preferences.protobuf.m0
    public Object e(Object obj) {
        return l0.f().o();
    }

    @Override // androidx.datastore.preferences.protobuf.m0
    public int f(int i10, Object obj, Object obj2) {
        return i(i10, obj, obj2);
    }

    @Override // androidx.datastore.preferences.protobuf.m0
    public boolean g(Object obj) {
        return !((l0) obj).l();
    }

    @Override // androidx.datastore.preferences.protobuf.m0
    public Map<?, ?> h(Object obj) {
        return (l0) obj;
    }
}
