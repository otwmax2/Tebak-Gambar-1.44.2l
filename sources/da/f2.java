package da;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class f2 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.e0 f28799a = new kotlinx.coroutines.internal.e0("COMPLETING_ALREADY");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final kotlinx.coroutines.internal.e0 f28800b = new kotlinx.coroutines.internal.e0("COMPLETING_WAITING_CHILDREN");

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.e0 f28801c = new kotlinx.coroutines.internal.e0("COMPLETING_RETRY");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.e0 f28802d = new kotlinx.coroutines.internal.e0("TOO_LATE_TO_CANCEL");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final kotlinx.coroutines.internal.e0 f28803e = new kotlinx.coroutines.internal.e0("SEALED");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final g1 f28804f = new g1(false);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final g1 f28805g = new g1(true);

    public static final Object g(Object obj) {
        return obj instanceof s1 ? new t1((s1) obj) : obj;
    }

    public static final Object h(Object obj) {
        s1 s1Var;
        t1 t1Var = obj instanceof t1 ? (t1) obj : null;
        return (t1Var == null || (s1Var = t1Var.f28861a) == null) ? obj : s1Var;
    }
}
