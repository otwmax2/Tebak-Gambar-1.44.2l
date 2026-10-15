package y4;

import java.util.concurrent.Executor;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class m<ResultT> implements n<ResultT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f36974a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Object f36975b = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c<? super ResultT> f36976c;

    public m(Executor executor, c<? super ResultT> cVar) {
        this.f36974a = executor;
        this.f36976c = cVar;
    }

    @Override // y4.n
    public final void a(e<ResultT> eVar) {
        if (eVar.g()) {
            synchronized (this.f36975b) {
                if (this.f36976c == null) {
                    return;
                }
                this.f36974a.execute(new l(this, eVar));
            }
        }
    }
}
