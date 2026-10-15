package da;

import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class q extends a0 {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final /* synthetic */ AtomicIntegerFieldUpdater f28844c = AtomicIntegerFieldUpdater.newUpdater(q.class, "_resumed");
    private volatile /* synthetic */ int _resumed;

    public q(k9.d<?> dVar, Throwable th, boolean z10) {
        if (th == null) {
            th = new CancellationException("Continuation " + dVar + " was cancelled normally");
        }
        super(th, z10);
        this._resumed = 0;
    }

    public final boolean c() {
        return f28844c.compareAndSet(this, 0, 1);
    }
}
