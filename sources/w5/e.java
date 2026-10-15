package w5;

import android.annotation.SuppressLint;
import android.database.SQLException;
import android.os.SystemClock;
import com.google.android.gms.tasks.TaskCompletionSource;
import com.vungle.warren.AdLoader;
import j3.f;
import j3.h;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import l3.l;
import n5.g;
import q5.g0;
import q5.q0;
import q5.u;
import s5.f0;

/* JADX INFO: compiled from: ReportQueue.java */
/* JADX INFO: loaded from: classes2.dex */
final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final double f36006a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final double f36007b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f36008c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f36009d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f36010e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final BlockingQueue<Runnable> f36011f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ThreadPoolExecutor f36012g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final f<f0> f36013h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final g0 f36014i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f36015j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private long f36016k;

    /* JADX INFO: compiled from: ReportQueue.java */
    private final class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final u f36017o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final TaskCompletionSource<u> f36018p;

        @Override // java.lang.Runnable
        public void run() {
            e.this.p(this.f36017o, this.f36018p);
            e.this.f36014i.c();
            double dG = e.this.g();
            g.f().b("Delay for: " + String.format(Locale.US, "%.2f", Double.valueOf(dG / 1000.0d)) + " s for report: " + this.f36017o.d());
            e.q(dG);
        }

        private b(u uVar, TaskCompletionSource<u> taskCompletionSource) {
            this.f36017o = uVar;
            this.f36018p = taskCompletionSource;
        }
    }

    e(f<f0> fVar, x5.d dVar, g0 g0Var) {
        this(dVar.f36274f, dVar.f36275g, ((long) dVar.f36276h) * 1000, fVar, g0Var);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public double g() {
        return Math.min(3600000.0d, (60000.0d / this.f36006a) * Math.pow(this.f36007b, h()));
    }

    private int h() {
        if (this.f36016k == 0) {
            this.f36016k = o();
        }
        int iO = (int) ((o() - this.f36016k) / this.f36008c);
        int iMin = l() ? Math.min(100, this.f36015j + iO) : Math.max(0, this.f36015j - iO);
        if (this.f36015j != iMin) {
            this.f36015j = iMin;
            this.f36016k = o();
        }
        return iMin;
    }

    private boolean k() {
        return this.f36011f.size() < this.f36010e;
    }

    private boolean l() {
        return this.f36011f.size() == this.f36010e;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void m(CountDownLatch countDownLatch) {
        try {
            l.a(this.f36013h, j3.d.HIGHEST);
        } catch (SQLException unused) {
        }
        countDownLatch.countDown();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void n(TaskCompletionSource taskCompletionSource, boolean z10, u uVar, Exception exc) {
        if (exc != null) {
            taskCompletionSource.d(exc);
            return;
        }
        if (z10) {
            j();
        }
        taskCompletionSource.e(uVar);
    }

    private long o() {
        return System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(final u uVar, final TaskCompletionSource<u> taskCompletionSource) {
        g.f().b("Sending report through Google DataTransport: " + uVar.d());
        final boolean z10 = SystemClock.elapsedRealtime() - this.f36009d < AdLoader.RETRY_DELAY;
        this.f36013h.a(j3.c.f(uVar.b()), new h() { // from class: w5.c
            @Override // j3.h
            public final void a(Exception exc) {
                this.f36000a.n(taskCompletionSource, z10, uVar, exc);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void q(double d10) {
        try {
            Thread.sleep((long) d10);
        } catch (InterruptedException unused) {
        }
    }

    TaskCompletionSource<u> i(u uVar, boolean z10) {
        synchronized (this.f36011f) {
            TaskCompletionSource<u> taskCompletionSource = new TaskCompletionSource<>();
            if (!z10) {
                p(uVar, taskCompletionSource);
                return taskCompletionSource;
            }
            this.f36014i.b();
            if (!k()) {
                h();
                g.f().b("Dropping report due to queue being full: " + uVar.d());
                this.f36014i.a();
                taskCompletionSource.e(uVar);
                return taskCompletionSource;
            }
            g.f().b("Enqueueing report: " + uVar.d());
            g.f().b("Queue size: " + this.f36011f.size());
            this.f36012g.execute(new b(uVar, taskCompletionSource));
            g.f().b("Closing task for report: " + uVar.d());
            taskCompletionSource.e(uVar);
            return taskCompletionSource;
        }
    }

    @SuppressLint({"DiscouragedApi", "ThreadPoolCreation"})
    public void j() {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        new Thread(new Runnable() { // from class: w5.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f36004o.m(countDownLatch);
            }
        }).start();
        q0.g(countDownLatch, 2L, TimeUnit.SECONDS);
    }

    @SuppressLint({"ThreadPoolCreation"})
    e(double d10, double d11, long j10, f<f0> fVar, g0 g0Var) {
        this.f36006a = d10;
        this.f36007b = d11;
        this.f36008c = j10;
        this.f36013h = fVar;
        this.f36014i = g0Var;
        this.f36009d = SystemClock.elapsedRealtime();
        int i10 = (int) d10;
        this.f36010e = i10;
        ArrayBlockingQueue arrayBlockingQueue = new ArrayBlockingQueue(i10);
        this.f36011f = arrayBlockingQueue;
        this.f36012g = new ThreadPoolExecutor(1, 1, 0L, TimeUnit.MILLISECONDS, arrayBlockingQueue);
        this.f36015j = 0;
        this.f36016k = 0L;
    }
}
