package kotlinx.coroutines.internal;

import da.h2;
import java.util.List;

/* JADX INFO: compiled from: MainDispatchers.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f31787a = true;

    private static final x a(Throwable th, String str) throws Throwable {
        if (f31787a) {
            return new x(th, str);
        }
        if (th != null) {
            throw th;
        }
        d();
        throw new h9.e();
    }

    static /* synthetic */ x b(Throwable th, String str, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            th = null;
        }
        if ((i10 & 2) != 0) {
            str = null;
        }
        return a(th, str);
    }

    public static final boolean c(h2 h2Var) {
        return h2Var.x() instanceof x;
    }

    public static final Void d() {
        throw new IllegalStateException("Module with the Main dispatcher is missing. Add dependency providing the Main dispatcher, e.g. 'kotlinx-coroutines-android' and ensure it has the same version as 'kotlinx-coroutines-core'");
    }

    public static final h2 e(u uVar, List<? extends u> list) {
        try {
            return uVar.b(list);
        } catch (Throwable th) {
            return a(th, uVar.a());
        }
    }
}
