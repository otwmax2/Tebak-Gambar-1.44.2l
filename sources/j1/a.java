package j1;

import android.os.Handler;
import android.os.Looper;
import i1.q;

/* JADX INFO: compiled from: DefaultRunnableScheduler.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f30586a = androidx.core.os.g.a(Looper.getMainLooper());

    @Override // i1.q
    public void a(long j10, Runnable runnable) {
        this.f30586a.postDelayed(runnable, j10);
    }

    @Override // i1.q
    public void b(Runnable runnable) {
        this.f30586a.removeCallbacks(runnable);
    }
}
