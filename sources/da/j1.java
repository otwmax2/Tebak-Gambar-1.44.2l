package da;

import da.i1;
import java.util.concurrent.locks.LockSupport;

/* JADX INFO: compiled from: EventLoop.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class j1 extends h1 {
    protected abstract Thread Q();

    protected void R(long j10, i1.a aVar) {
        u0.f28863v.g0(j10, aVar);
    }

    protected final void S() {
        Thread threadQ = Q();
        if (Thread.currentThread() != threadQ) {
            c.a();
            LockSupport.unpark(threadQ);
        }
    }
}
