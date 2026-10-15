package kotlinx.coroutines.internal;

/* JADX INFO: compiled from: LockFreeLinkedList.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f31767a = new e0("CONDITION_FALSE");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Object f31768b = new e0("LIST_EMPTY");

    public static final Object a() {
        return f31767a;
    }

    public static final r b(Object obj) {
        r rVar;
        a0 a0Var = obj instanceof a0 ? (a0) obj : null;
        return (a0Var == null || (rVar = a0Var.f31718a) == null) ? (r) obj : rVar;
    }
}
