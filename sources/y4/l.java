package y4;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
final class l implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final /* synthetic */ e f36972o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final /* synthetic */ m f36973p;

    l(m mVar, e eVar) {
        this.f36973p = mVar;
        this.f36972o = eVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f36973p.f36975b) {
            if (this.f36973p.f36976c != null) {
                this.f36973p.f36976c.onSuccess(this.f36972o.e());
            }
        }
    }
}
