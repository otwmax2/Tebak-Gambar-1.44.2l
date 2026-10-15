package r1;

import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: WorkTimer.java */
/* JADX INFO: loaded from: classes.dex */
public class n {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f34211f = i1.j.f("WorkTimer");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ThreadFactory f34212a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final ScheduledExecutorService f34213b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Map<String, c> f34214c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Map<String, b> f34215d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Object f34216e;

    /* JADX INFO: compiled from: WorkTimer.java */
    class a implements ThreadFactory {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f34217a = 0;

        a() {
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
            threadNewThread.setName("WorkManager-WorkTimer-thread-" + this.f34217a);
            this.f34217a = this.f34217a + 1;
            return threadNewThread;
        }
    }

    /* JADX INFO: compiled from: WorkTimer.java */
    public interface b {
        void a(String str);
    }

    /* JADX INFO: compiled from: WorkTimer.java */
    public static class c implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final n f34219o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final String f34220p;

        c(n nVar, String str) {
            this.f34219o = nVar;
            this.f34220p = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (this.f34219o.f34216e) {
                if (this.f34219o.f34214c.remove(this.f34220p) != null) {
                    b bVarRemove = this.f34219o.f34215d.remove(this.f34220p);
                    if (bVarRemove != null) {
                        bVarRemove.a(this.f34220p);
                    }
                } else {
                    i1.j.c().a("WrkTimerRunnable", String.format("Timer with %s is already marked as complete.", this.f34220p), new Throwable[0]);
                }
            }
        }
    }

    public n() {
        a aVar = new a();
        this.f34212a = aVar;
        this.f34214c = new HashMap();
        this.f34215d = new HashMap();
        this.f34216e = new Object();
        this.f34213b = Executors.newSingleThreadScheduledExecutor(aVar);
    }

    public void a() {
        if (this.f34213b.isShutdown()) {
            return;
        }
        this.f34213b.shutdownNow();
    }

    public void b(String str, long j10, b bVar) {
        synchronized (this.f34216e) {
            i1.j.c().a(f34211f, String.format("Starting timer for %s", str), new Throwable[0]);
            c(str);
            c cVar = new c(this, str);
            this.f34214c.put(str, cVar);
            this.f34215d.put(str, bVar);
            this.f34213b.schedule(cVar, j10, TimeUnit.MILLISECONDS);
        }
    }

    public void c(String str) {
        synchronized (this.f34216e) {
            if (this.f34214c.remove(str) != null) {
                i1.j.c().a(f34211f, String.format("Stopping timer for %s", str), new Throwable[0]);
                this.f34215d.remove(str);
            }
        }
    }
}
