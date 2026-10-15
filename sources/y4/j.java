package y4;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class j implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ e f36967o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ k f36968p;

    j(k kVar, e eVar) {
        this.f36968p = kVar;
        this.f36967o = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f36968p.f36970b) {
            if (this.f36968p.f36971c != null) {
                this.f36968p.f36971c.b(this.f36967o.d());
            }
        }
    }
}
