package androidx.datastore.preferences.protobuf;

import java.io.IOException;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

/* JADX INFO: compiled from: Protobuf.java */
/* JADX INFO: loaded from: classes.dex */
final class c1 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c1 f2670c = new c1();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ConcurrentMap<Class<?>, g1<?>> f2672b = new ConcurrentHashMap();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h1 f2671a = new j0();

    private c1() {
    }

    public static c1 a() {
        return f2670c;
    }

    public <T> void b(T t10, f1 f1Var, p pVar) throws IOException {
        e(t10).e(t10, f1Var, pVar);
    }

    public g1<?> c(Class<?> cls, g1<?> g1Var) {
        a0.b(cls, "messageType");
        a0.b(g1Var, "schema");
        return this.f2672b.putIfAbsent(cls, g1Var);
    }

    public <T> g1<T> d(Class<T> cls) {
        a0.b(cls, "messageType");
        g1<T> g1Var = (g1) this.f2672b.get(cls);
        if (g1Var != null) {
            return g1Var;
        }
        g1<T> g1VarA = this.f2671a.a(cls);
        g1<T> g1Var2 = (g1<T>) c(cls, g1VarA);
        return g1Var2 != null ? g1Var2 : g1VarA;
    }

    public <T> g1<T> e(T t10) {
        return d(t10.getClass());
    }
}
