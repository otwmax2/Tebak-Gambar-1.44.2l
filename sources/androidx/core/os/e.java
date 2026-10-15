package androidx.core.os;

import android.os.Build;
import android.os.CancellationSignal;

/* JADX INFO: compiled from: CancellationSignal.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private boolean f2269a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private b f2270b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Object f2271c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2272d;

    /* JADX INFO: compiled from: CancellationSignal.java */
    static class a {
        static void a(Object obj) {
            ((CancellationSignal) obj).cancel();
        }

        static CancellationSignal b() {
            return new CancellationSignal();
        }
    }

    /* JADX INFO: compiled from: CancellationSignal.java */
    public interface b {
        void onCancel();
    }

    private void d() {
        while (this.f2272d) {
            try {
                wait();
            } catch (InterruptedException unused) {
            }
        }
    }

    public void a() {
        synchronized (this) {
            if (this.f2269a) {
                return;
            }
            this.f2269a = true;
            this.f2272d = true;
            b bVar = this.f2270b;
            Object obj = this.f2271c;
            if (bVar != null) {
                try {
                    bVar.onCancel();
                } catch (Throwable th) {
                    synchronized (this) {
                        this.f2272d = false;
                        notifyAll();
                        throw th;
                    }
                }
            }
            if (obj != null && Build.VERSION.SDK_INT >= 16) {
                a.a(obj);
            }
            synchronized (this) {
                this.f2272d = false;
                notifyAll();
            }
        }
    }

    public boolean b() {
        boolean z10;
        synchronized (this) {
            z10 = this.f2269a;
        }
        return z10;
    }

    public void c(b bVar) {
        synchronized (this) {
            d();
            if (this.f2270b == bVar) {
                return;
            }
            this.f2270b = bVar;
            if (this.f2269a && bVar != null) {
                bVar.onCancel();
            }
        }
    }
}
