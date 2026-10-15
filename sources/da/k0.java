package da;

import h9.n;
import java.util.Iterator;
import java.util.List;
import java.util.ServiceLoader;

/* JADX INFO: compiled from: CoroutineExceptionHandlerImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class k0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List<j0> f28826a = aa.h.f(aa.f.a(ServiceLoader.load(j0.class, j0.class.getClassLoader()).iterator()));

    public static final void a(k9.g gVar, Throwable th) {
        Iterator<j0> it = f28826a.iterator();
        while (it.hasNext()) {
            try {
                it.next().l(gVar, th);
            } catch (Throwable th2) {
                Thread threadCurrentThread = Thread.currentThread();
                threadCurrentThread.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread, l0.b(th, th2));
            }
        }
        Thread threadCurrentThread2 = Thread.currentThread();
        try {
            n.a aVar = h9.n.f30295o;
            h9.b.a(th, new y0(gVar));
            h9.n.a(h9.t.f30301a);
        } catch (Throwable th3) {
            n.a aVar2 = h9.n.f30295o;
            h9.n.a(h9.o.a(th3));
        }
        threadCurrentThread2.getUncaughtExceptionHandler().uncaughtException(threadCurrentThread2, th);
    }
}
