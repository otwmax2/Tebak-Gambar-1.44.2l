package da;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: Executors.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class p1 {
    public static final i0 a(Executor executor) {
        i0 i0Var;
        c1 c1Var = executor instanceof c1 ? (c1) executor : null;
        return (c1Var == null || (i0Var = c1Var.f28780o) == null) ? new o1(executor) : i0Var;
    }
}
