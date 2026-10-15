package ea;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.view.Choreographer;
import h9.n;
import h9.o;
import java.lang.reflect.InvocationTargetException;
import java.util.Objects;

/* JADX INFO: compiled from: HandlerDispatcher.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f28976a;
    private static volatile Choreographer choreographer;

    static {
        Object objA;
        try {
            n.a aVar = n.f30295o;
            objA = n.a(new c(a(Looper.getMainLooper(), true), null, 2, null));
        } catch (Throwable th) {
            n.a aVar2 = n.f30295o;
            objA = n.a(o.a(th));
        }
        f28976a = (d) (n.c(objA) ? null : objA);
    }

    public static final Handler a(Looper looper, boolean z10) throws IllegalAccessException, InvocationTargetException {
        int i10;
        if (!z10 || (i10 = Build.VERSION.SDK_INT) < 16) {
            return new Handler(looper);
        }
        if (i10 < 28) {
            try {
                return (Handler) Handler.class.getDeclaredConstructor(Looper.class, Handler.Callback.class, Boolean.TYPE).newInstance(looper, null, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
                return new Handler(looper);
            }
        }
        Object objInvoke = Handler.class.getDeclaredMethod("createAsync", Looper.class).invoke(null, looper);
        Objects.requireNonNull(objInvoke, "null cannot be cast to non-null type android.os.Handler");
        return (Handler) objInvoke;
    }
}
