package da;

/* JADX INFO: compiled from: EventLoop.common.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class s2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final s2 f28858a = new s2();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final ThreadLocal<h1> f28859b = new ThreadLocal<>();

    private s2() {
    }

    public final h1 a() {
        return f28859b.get();
    }

    public final h1 b() {
        ThreadLocal<h1> threadLocal = f28859b;
        h1 h1Var = threadLocal.get();
        if (h1Var != null) {
            return h1Var;
        }
        h1 h1VarA = k1.a();
        threadLocal.set(h1VarA);
        return h1VarA;
    }

    public final void c() {
        f28859b.set(null);
    }

    public final void d(h1 h1Var) {
        f28859b.set(h1Var);
    }
}
