package t1;

import java.io.Closeable;

/* JADX INFO: compiled from: CancellationTokenRegistration.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements Closeable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f35187o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private e f35188p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Runnable f35189q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f35190r;

    private void c() {
        if (this.f35190r) {
            throw new IllegalStateException("Object already closed");
        }
    }

    void b() {
        synchronized (this.f35187o) {
            c();
            this.f35189q.run();
            close();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f35187o) {
            if (this.f35190r) {
                return;
            }
            this.f35190r = true;
            this.f35188p.h(this);
            this.f35188p = null;
            this.f35189q = null;
        }
    }
}
