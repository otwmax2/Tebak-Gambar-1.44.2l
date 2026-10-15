package y4;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class h implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ e f36962o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ i f36963p;

    h(i iVar, e eVar) {
        this.f36963p = iVar;
        this.f36962o = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f36963p.f36965b) {
            if (this.f36963p.f36966c != null) {
                this.f36963p.f36966c.a(this.f36962o);
            }
        }
    }
}
