package t1;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;

/* JADX INFO: compiled from: CancellationTokenSource.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements Closeable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Object f35191o = new Object();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final List<d> f35192p = new ArrayList();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final ScheduledExecutorService f35193q = b.d();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ScheduledFuture<?> f35194r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f35195s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f35196t;

    private void c() {
        ScheduledFuture<?> scheduledFuture = this.f35194r;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(true);
            this.f35194r = null;
        }
    }

    private void f(List<d> list) {
        Iterator<d> it = list.iterator();
        while (it.hasNext()) {
            it.next().b();
        }
    }

    private void g() {
        if (this.f35196t) {
            throw new IllegalStateException("Object already closed");
        }
    }

    public void b() {
        synchronized (this.f35191o) {
            g();
            if (this.f35195s) {
                return;
            }
            c();
            this.f35195s = true;
            f(new ArrayList(this.f35192p));
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f35191o) {
            if (this.f35196t) {
                return;
            }
            c();
            Iterator<d> it = this.f35192p.iterator();
            while (it.hasNext()) {
                it.next().close();
            }
            this.f35192p.clear();
            this.f35196t = true;
        }
    }

    public c d() {
        c cVar;
        synchronized (this.f35191o) {
            g();
            cVar = new c(this);
        }
        return cVar;
    }

    public boolean e() {
        boolean z10;
        synchronized (this.f35191o) {
            g();
            z10 = this.f35195s;
        }
        return z10;
    }

    void h(d dVar) {
        synchronized (this.f35191o) {
            g();
            this.f35192p.remove(dVar);
        }
    }

    public String toString() {
        return String.format(Locale.US, "%s@%s[cancellationRequested=%s]", getClass().getName(), Integer.toHexString(hashCode()), Boolean.toString(e()));
    }
}
