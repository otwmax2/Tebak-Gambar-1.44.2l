package ka;

/* JADX INFO: compiled from: NamedRunnable.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class b implements Runnable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final String f31637o;

    public b(String str, Object... objArr) {
        this.f31637o = c.r(str, objArr);
    }

    protected abstract void k();

    @Override // java.lang.Runnable
    public final void run() {
        String name = Thread.currentThread().getName();
        Thread.currentThread().setName(this.f31637o);
        try {
            k();
        } finally {
            Thread.currentThread().setName(name);
        }
    }
}
