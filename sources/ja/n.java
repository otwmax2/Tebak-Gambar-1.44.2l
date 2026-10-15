package ja;

import ja.z;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Dispatcher.java */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private Runnable f31143c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    private ExecutorService f31144d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f31141a = 64;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f31142b = 5;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Deque<z.b> f31145e = new ArrayDeque();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Deque<z.b> f31146f = new ArrayDeque();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Deque<z> f31147g = new ArrayDeque();

    private <T> void f(Deque<T> deque, T t10) {
        Runnable runnable;
        synchronized (this) {
            if (!deque.remove(t10)) {
                throw new AssertionError("Call wasn't in-flight!");
            }
            runnable = this.f31143c;
        }
        if (g() || runnable == null) {
            return;
        }
        runnable.run();
    }

    private boolean g() {
        int i10;
        boolean z10;
        ArrayList arrayList = new ArrayList();
        synchronized (this) {
            Iterator<z.b> it = this.f31145e.iterator();
            while (it.hasNext()) {
                z.b next = it.next();
                if (this.f31146f.size() >= this.f31141a) {
                    break;
                }
                if (i(next) < this.f31142b) {
                    it.remove();
                    arrayList.add(next);
                    this.f31146f.add(next);
                }
            }
            z10 = h() > 0;
        }
        int size = arrayList.size();
        for (i10 = 0; i10 < size; i10++) {
            ((z.b) arrayList.get(i10)).l(c());
        }
        return z10;
    }

    private int i(z.b bVar) {
        int i10 = 0;
        for (z.b bVar2 : this.f31146f) {
            if (!bVar2.m().f31256t && bVar2.n().equals(bVar.n())) {
                i10++;
            }
        }
        return i10;
    }

    void a(z.b bVar) {
        synchronized (this) {
            this.f31145e.add(bVar);
        }
        g();
    }

    synchronized void b(z zVar) {
        this.f31147g.add(zVar);
    }

    public synchronized ExecutorService c() {
        if (this.f31144d == null) {
            this.f31144d = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60L, TimeUnit.SECONDS, new SynchronousQueue(), ka.c.G("OkHttp Dispatcher", false));
        }
        return this.f31144d;
    }

    void d(z.b bVar) {
        f(this.f31146f, bVar);
    }

    void e(z zVar) {
        f(this.f31147g, zVar);
    }

    public synchronized int h() {
        return this.f31146f.size() + this.f31147g.size();
    }
}
