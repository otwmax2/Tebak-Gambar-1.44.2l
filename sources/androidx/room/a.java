package androidx.room;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: AutoCloser.java */
/* JADX INFO: loaded from: classes.dex */
final class a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final long f4014e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final Executor f4015f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    b1.g f4018i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b1.h f4010a = null;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Handler f4011b = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    Runnable f4012c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Object f4013d = new Object();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    int f4016g = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    long f4017h = SystemClock.uptimeMillis();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f4019j = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final Runnable f4020k = new RunnableC0065a();

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    final Runnable f4021l = new b();

    /* JADX INFO: renamed from: androidx.room.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AutoCloser.java */
    class RunnableC0065a implements Runnable {
        RunnableC0065a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            aVar.f4015f.execute(aVar.f4021l);
        }
    }

    /* JADX INFO: compiled from: AutoCloser.java */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            synchronized (a.this.f4013d) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                a aVar = a.this;
                if (jUptimeMillis - aVar.f4017h < aVar.f4014e) {
                    return;
                }
                if (aVar.f4016g != 0) {
                    return;
                }
                Runnable runnable = aVar.f4012c;
                if (runnable == null) {
                    throw new IllegalStateException("mOnAutoCloseCallback is null but it should have been set before use. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568");
                }
                runnable.run();
                b1.g gVar = a.this.f4018i;
                if (gVar != null && gVar.isOpen()) {
                    try {
                        a.this.f4018i.close();
                    } catch (IOException e10) {
                        z0.e.a(e10);
                    }
                    a.this.f4018i = null;
                }
            }
        }
    }

    a(long j10, TimeUnit timeUnit, Executor executor) {
        this.f4014e = timeUnit.toMillis(j10);
        this.f4015f = executor;
    }

    public void a() throws IOException {
        synchronized (this.f4013d) {
            this.f4019j = true;
            b1.g gVar = this.f4018i;
            if (gVar != null) {
                gVar.close();
            }
            this.f4018i = null;
        }
    }

    public void b() {
        synchronized (this.f4013d) {
            int i10 = this.f4016g;
            if (i10 <= 0) {
                throw new IllegalStateException("ref count is 0 or lower but we're supposed to decrement");
            }
            int i11 = i10 - 1;
            this.f4016g = i11;
            if (i11 == 0) {
                if (this.f4018i == null) {
                } else {
                    this.f4011b.postDelayed(this.f4020k, this.f4014e);
                }
            }
        }
    }

    public <V> V c(l.a<b1.g, V> aVar) {
        try {
            return aVar.a(e());
        } finally {
            b();
        }
    }

    public b1.g d() {
        b1.g gVar;
        synchronized (this.f4013d) {
            gVar = this.f4018i;
        }
        return gVar;
    }

    public b1.g e() {
        synchronized (this.f4013d) {
            this.f4011b.removeCallbacks(this.f4020k);
            this.f4016g++;
            if (this.f4019j) {
                throw new IllegalStateException("Attempting to open already closed database.");
            }
            b1.g gVar = this.f4018i;
            if (gVar != null && gVar.isOpen()) {
                return this.f4018i;
            }
            b1.h hVar = this.f4010a;
            if (hVar == null) {
                throw new IllegalStateException("AutoCloser has not been initialized. Please file a bug against Room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568");
            }
            b1.g gVarK1 = hVar.K1();
            this.f4018i = gVarK1;
            return gVarK1;
        }
    }

    public void f(b1.h hVar) {
        if (this.f4010a != null) {
            Log.e("ROOM", "AutoCloser initialized multiple times. Please file a bug against room at: https://issuetracker.google.com/issues/new?component=413107&template=1096568");
        } else {
            this.f4010a = hVar;
        }
    }

    public boolean g() {
        return !this.f4019j;
    }

    public void h(Runnable runnable) {
        this.f4012c = runnable;
    }
}
