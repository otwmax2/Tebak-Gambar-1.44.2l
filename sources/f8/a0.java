package f8;

import android.graphics.Bitmap;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;

/* JADX INFO: compiled from: Stats.java */
/* JADX INFO: loaded from: classes2.dex */
class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final HandlerThread f29295a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final d f29296b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Handler f29297c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    long f29298d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    long f29299e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    long f29300f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    long f29301g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    long f29302h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    long f29303i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    long f29304j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    long f29305k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f29306l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f29307m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f29308n;

    /* JADX INFO: compiled from: Stats.java */
    private static class a extends Handler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a0 f29309a;

        /* JADX INFO: renamed from: f8.a0$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Stats.java */
        class RunnableC0157a implements Runnable {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ Message f29310o;

            RunnableC0157a(Message message) {
                this.f29310o = message;
            }

            @Override // java.lang.Runnable
            public void run() {
                throw new AssertionError("Unhandled stats message." + this.f29310o.what);
            }
        }

        public a(Looper looper, a0 a0Var) {
            super(looper);
            this.f29309a = a0Var;
        }

        @Override // android.os.Handler
        public void handleMessage(Message message) {
            int i10 = message.what;
            if (i10 == 0) {
                this.f29309a.j();
                return;
            }
            if (i10 == 1) {
                this.f29309a.k();
                return;
            }
            if (i10 == 2) {
                this.f29309a.h(message.arg1);
                return;
            }
            if (i10 == 3) {
                this.f29309a.i(message.arg1);
            } else if (i10 != 4) {
                t.f29415p.post(new RunnableC0157a(message));
            } else {
                this.f29309a.l((Long) message.obj);
            }
        }
    }

    a0(d dVar) {
        this.f29296b = dVar;
        HandlerThread handlerThread = new HandlerThread("Picasso-Stats", 10);
        this.f29295a = handlerThread;
        handlerThread.start();
        e0.j(handlerThread.getLooper());
        this.f29297c = new a(handlerThread.getLooper(), this);
    }

    private static long g(int i10, long j10) {
        return j10 / ((long) i10);
    }

    private void m(Bitmap bitmap, int i10) {
        int iK = e0.k(bitmap);
        Handler handler = this.f29297c;
        handler.sendMessage(handler.obtainMessage(i10, iK, 0));
    }

    b0 a() {
        return new b0(this.f29296b.b(), this.f29296b.size(), this.f29298d, this.f29299e, this.f29300f, this.f29301g, this.f29302h, this.f29303i, this.f29304j, this.f29305k, this.f29306l, this.f29307m, this.f29308n, System.currentTimeMillis());
    }

    void b(Bitmap bitmap) {
        m(bitmap, 2);
    }

    void c(Bitmap bitmap) {
        m(bitmap, 3);
    }

    void d() {
        this.f29297c.sendEmptyMessage(0);
    }

    void e() {
        this.f29297c.sendEmptyMessage(1);
    }

    void f(long j10) {
        Handler handler = this.f29297c;
        handler.sendMessage(handler.obtainMessage(4, Long.valueOf(j10)));
    }

    void h(long j10) {
        int i10 = this.f29307m + 1;
        this.f29307m = i10;
        long j11 = this.f29301g + j10;
        this.f29301g = j11;
        this.f29304j = g(i10, j11);
    }

    void i(long j10) {
        this.f29308n++;
        long j11 = this.f29302h + j10;
        this.f29302h = j11;
        this.f29305k = g(this.f29307m, j11);
    }

    void j() {
        this.f29298d++;
    }

    void k() {
        this.f29299e++;
    }

    void l(Long l10) {
        this.f29306l++;
        long jLongValue = this.f29300f + l10.longValue();
        this.f29300f = jLongValue;
        this.f29303i = g(this.f29306l, jLongValue);
    }
}
