package y4;

import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class o<ResultT> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f36977a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Queue<n<ResultT>> f36978b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f36979c;

    o() {
    }

    public final void a(n<ResultT> nVar) {
        synchronized (this.f36977a) {
            if (this.f36978b == null) {
                this.f36978b = new ArrayDeque();
            }
            this.f36978b.add(nVar);
        }
    }

    public final void b(e<ResultT> eVar) {
        n<ResultT> nVarPoll;
        synchronized (this.f36977a) {
            if (this.f36978b != null && !this.f36979c) {
                this.f36979c = true;
                while (true) {
                    synchronized (this.f36977a) {
                        nVarPoll = this.f36978b.poll();
                        if (nVarPoll == null) {
                            this.f36979c = false;
                            return;
                        }
                    }
                    nVarPoll.a(eVar);
                }
            }
        }
    }
}
