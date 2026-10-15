package v4;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final y4.p<?> f35801o;

    b() {
        this.f35801o = null;
    }

    public b(y4.p<?> pVar) {
        this.f35801o = pVar;
    }

    protected abstract void a();

    final y4.p<?> b() {
        return this.f35801o;
    }

    public final void c(Exception exc) {
        y4.p<?> pVar = this.f35801o;
        if (pVar != null) {
            pVar.d(exc);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Exception e10) {
            c(e10);
        }
    }
}
