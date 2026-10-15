package y4;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class k<ResultT> implements n<ResultT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f36969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f36970b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final b f36971c;

    public k(Executor executor, b bVar) {
        this.f36969a = executor;
        this.f36971c = bVar;
    }

    @Override // y4.n
    public final void a(e<ResultT> eVar) {
        if (eVar.g()) {
            return;
        }
        synchronized (this.f36970b) {
            if (this.f36971c == null) {
                return;
            }
            this.f36969a.execute(new j(this, eVar));
        }
    }
}
