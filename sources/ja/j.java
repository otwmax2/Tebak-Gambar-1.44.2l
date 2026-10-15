package ja;

import java.lang.ref.Reference;
import java.net.Socket;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import ma.g;

/* JADX INFO: compiled from: ConnectionPool.java */
/* JADX INFO: loaded from: classes.dex */
public final class j {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Executor f31105g = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), ka.c.G("OkHttp ConnectionPool", true));

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f31106a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f31107b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Runnable f31108c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Deque<ma.c> f31109d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final ma.d f31110e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    boolean f31111f;

    /* JADX INFO: compiled from: ConnectionPool.java */
    /* JADX INFO: loaded from: classes2.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (true) {
                long jA = j.this.a(System.nanoTime());
                if (jA == -1) {
                    return;
                }
                if (jA > 0) {
                    long j10 = jA / 1000000;
                    long j11 = jA - (1000000 * j10);
                    synchronized (j.this) {
                        try {
                            j.this.wait(j10, (int) j11);
                        } catch (InterruptedException unused) {
                        }
                    }
                }
            }
        }
    }

    public j() {
        this(5, 5L, TimeUnit.MINUTES);
    }

    private int e(ma.c cVar, long j10) {
        List<Reference<ma.g>> list = cVar.f32248n;
        int i10 = 0;
        while (i10 < list.size()) {
            Reference<ma.g> reference = list.get(i10);
            if (reference.get() != null) {
                i10++;
            } else {
                qa.g.l().t("A connection to " + cVar.q().a().l() + " was leaked. Did you forget to close a response body?", ((g.a) reference).f32277a);
                list.remove(i10);
                cVar.f32245k = true;
                if (list.isEmpty()) {
                    cVar.f32249o = j10 - this.f31107b;
                    return 0;
                }
            }
        }
        return list.size();
    }

    long a(long j10) {
        synchronized (this) {
            ma.c cVar = null;
            long j11 = Long.MIN_VALUE;
            int i10 = 0;
            int i11 = 0;
            for (ma.c cVar2 : this.f31109d) {
                if (e(cVar2, j10) > 0) {
                    i11++;
                } else {
                    i10++;
                    long j12 = j10 - cVar2.f32249o;
                    if (j12 > j11) {
                        cVar = cVar2;
                        j11 = j12;
                    }
                }
            }
            long j13 = this.f31107b;
            if (j11 < j13 && i10 <= this.f31106a) {
                if (i10 > 0) {
                    return j13 - j11;
                }
                if (i11 > 0) {
                    return j13;
                }
                this.f31111f = false;
                return -1L;
            }
            this.f31109d.remove(cVar);
            ka.c.h(cVar.r());
            return 0L;
        }
    }

    boolean b(ma.c cVar) {
        if (cVar.f32245k || this.f31106a == 0) {
            this.f31109d.remove(cVar);
            return true;
        }
        notifyAll();
        return false;
    }

    @Nullable
    Socket c(ja.a aVar, ma.g gVar) {
        for (ma.c cVar : this.f31109d) {
            if (cVar.m(aVar, null) && cVar.o() && cVar != gVar.d()) {
                return gVar.m(cVar);
            }
        }
        return null;
    }

    @Nullable
    ma.c d(ja.a aVar, ma.g gVar, e0 e0Var) {
        for (ma.c cVar : this.f31109d) {
            if (cVar.m(aVar, e0Var)) {
                gVar.a(cVar, true);
                return cVar;
            }
        }
        return null;
    }

    void f(ma.c cVar) {
        if (!this.f31111f) {
            this.f31111f = true;
            f31105g.execute(this.f31108c);
        }
        this.f31109d.add(cVar);
    }

    public j(int i10, long j10, TimeUnit timeUnit) {
        this.f31108c = new a();
        this.f31109d = new ArrayDeque();
        this.f31110e = new ma.d();
        this.f31106a = i10;
        this.f31107b = timeUnit.toNanos(j10);
        if (j10 > 0) {
            return;
        }
        throw new IllegalArgumentException("keepAliveDuration <= 0: " + j10);
    }
}
