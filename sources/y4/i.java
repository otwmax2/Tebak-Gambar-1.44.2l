package y4;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class i<ResultT> implements n<ResultT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f36964a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f36965b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a<ResultT> f36966c;

    public i(Executor executor, a<ResultT> aVar) {
        this.f36964a = executor;
        this.f36966c = aVar;
    }

    @Override // y4.n
    public final void a(e<ResultT> eVar) {
        synchronized (this.f36965b) {
            if (this.f36966c == null) {
                return;
            }
            this.f36964a.execute(new h(this, eVar));
        }
    }
}
