package ga;

import da.s0;
import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: FlowExceptions.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class a extends CancellationException {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final transient kotlinx.coroutines.flow.c<?> f30037o;

    public a(kotlinx.coroutines.flow.c<?> cVar) {
        super("Flow was aborted, no more elements needed");
        this.f30037o = cVar;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        if (s0.c()) {
            return super.fillInStackTrace();
        }
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
