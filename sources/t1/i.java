package t1;

/* JADX INFO: compiled from: TaskCompletionSource.java */
/* JADX INFO: loaded from: classes.dex */
public class i<TResult> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h<TResult> f35242a = new h<>();

    public h<TResult> a() {
        return this.f35242a;
    }

    public void b() {
        if (!e()) {
            throw new IllegalStateException("Cannot cancel a completed task.");
        }
    }

    public void c(Exception exc) {
        if (!f(exc)) {
            throw new IllegalStateException("Cannot set the error on a completed task.");
        }
    }

    public void d(TResult tresult) {
        if (!g(tresult)) {
            throw new IllegalStateException("Cannot set the result of a completed task.");
        }
    }

    public boolean e() {
        return this.f35242a.D();
    }

    public boolean f(Exception exc) {
        return this.f35242a.E(exc);
    }

    public boolean g(TResult tresult) {
        return this.f35242a.F(tresult);
    }
}
