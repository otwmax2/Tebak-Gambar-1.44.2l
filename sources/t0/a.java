package t0;

import android.content.Context;
import android.os.Handler;
import android.os.SystemClock;
import androidx.core.os.l;
import androidx.core.util.i;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;

/* JADX INFO: compiled from: AsyncTaskLoader.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<D> extends b<D> {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Executor f35138j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    volatile a<D>.RunnableC0250a f35139k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    volatile a<D>.RunnableC0250a f35140l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    long f35141m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    long f35142n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    Handler f35143o;

    /* JADX INFO: renamed from: t0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AsyncTaskLoader.java */
    final class RunnableC0250a extends c<Void, Void, D> implements Runnable {

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        private final CountDownLatch f35144y = new CountDownLatch(1);

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        boolean f35145z;

        RunnableC0250a() {
        }

        @Override // t0.c
        protected void h(D d10) {
            try {
                a.this.x(this, d10);
            } finally {
                this.f35144y.countDown();
            }
        }

        @Override // t0.c
        protected void i(D d10) {
            try {
                a.this.y(this, d10);
            } finally {
                this.f35144y.countDown();
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // t0.c
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public D b(Void... voidArr) {
            try {
                return (D) a.this.C();
            } catch (l e10) {
                if (f()) {
                    return null;
                }
                throw e10;
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f35145z = false;
            a.this.z();
        }
    }

    public a(Context context) {
        this(context, c.f35157v);
    }

    public abstract D A();

    public void B(D d10) {
    }

    protected D C() {
        return A();
    }

    @Override // t0.b
    @Deprecated
    public void g(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        super.g(str, fileDescriptor, printWriter, strArr);
        if (this.f35139k != null) {
            printWriter.print(str);
            printWriter.print("mTask=");
            printWriter.print(this.f35139k);
            printWriter.print(" waiting=");
            printWriter.println(this.f35139k.f35145z);
        }
        if (this.f35140l != null) {
            printWriter.print(str);
            printWriter.print("mCancellingTask=");
            printWriter.print(this.f35140l);
            printWriter.print(" waiting=");
            printWriter.println(this.f35140l.f35145z);
        }
        if (this.f35141m != 0) {
            printWriter.print(str);
            printWriter.print("mUpdateThrottle=");
            i.c(this.f35141m, printWriter);
            printWriter.print(" mLastLoadCompleteTime=");
            i.b(this.f35142n, SystemClock.uptimeMillis(), printWriter);
            printWriter.println();
        }
    }

    @Override // t0.b
    protected boolean k() {
        if (this.f35139k == null) {
            return false;
        }
        if (!this.f35150e) {
            this.f35153h = true;
        }
        if (this.f35140l != null) {
            if (this.f35139k.f35145z) {
                this.f35139k.f35145z = false;
                this.f35143o.removeCallbacks(this.f35139k);
            }
            this.f35139k = null;
            return false;
        }
        if (this.f35139k.f35145z) {
            this.f35139k.f35145z = false;
            this.f35143o.removeCallbacks(this.f35139k);
            this.f35139k = null;
            return false;
        }
        boolean zA = this.f35139k.a(false);
        if (zA) {
            this.f35140l = this.f35139k;
            w();
        }
        this.f35139k = null;
        return zA;
    }

    @Override // t0.b
    protected void m() {
        super.m();
        b();
        this.f35139k = new RunnableC0250a();
        z();
    }

    public void w() {
    }

    void x(a<D>.RunnableC0250a runnableC0250a, D d10) {
        B(d10);
        if (this.f35140l == runnableC0250a) {
            s();
            this.f35142n = SystemClock.uptimeMillis();
            this.f35140l = null;
            e();
            z();
        }
    }

    void y(a<D>.RunnableC0250a runnableC0250a, D d10) {
        if (this.f35139k != runnableC0250a) {
            x(runnableC0250a, d10);
            return;
        }
        if (i()) {
            B(d10);
            return;
        }
        c();
        this.f35142n = SystemClock.uptimeMillis();
        this.f35139k = null;
        f(d10);
    }

    void z() {
        if (this.f35140l != null || this.f35139k == null) {
            return;
        }
        if (this.f35139k.f35145z) {
            this.f35139k.f35145z = false;
            this.f35143o.removeCallbacks(this.f35139k);
        }
        if (this.f35141m <= 0 || SystemClock.uptimeMillis() >= this.f35142n + this.f35141m) {
            this.f35139k.c(this.f35138j, null);
        } else {
            this.f35139k.f35145z = true;
            this.f35143o.postAtTime(this.f35139k, this.f35142n + this.f35141m);
        }
    }

    private a(Context context, Executor executor) {
        super(context);
        this.f35142n = -10000L;
        this.f35138j = executor;
    }
}
