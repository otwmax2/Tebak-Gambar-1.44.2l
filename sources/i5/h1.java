package i5;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class h1 implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final /* synthetic */ g1 f30419o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final /* synthetic */ b1 f30420p;

    h1(b1 b1Var, g1 g1Var) {
        this.f30420p = b1Var;
        this.f30419o = g1Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f30420p.f30402o.f30463h) {
            if (!this.f30420p.f30402o.f30463h.isEmpty()) {
                this.f30419o.a(this.f30420p.f30402o.f30463h.get(0), new Object[0]);
            }
        }
    }
}
