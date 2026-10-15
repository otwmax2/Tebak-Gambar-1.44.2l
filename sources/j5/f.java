package j5;

import android.os.Handler;
import android.os.HandlerThread;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.firebase_auth.zzj;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Logger f30692h = new Logger("TokenRefresher", "FirebaseAuth:");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b5.g f30693a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    volatile long f30694b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    volatile long f30695c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    private long f30696d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    private HandlerThread f30697e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @VisibleForTesting
    private Handler f30698f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @VisibleForTesting
    private Runnable f30699g;

    public f(b5.g gVar) {
        f30692h.g("Initializing TokenRefresher", new Object[0]);
        b5.g gVar2 = (b5.g) Preconditions.k(gVar);
        this.f30693a = gVar2;
        HandlerThread handlerThread = new HandlerThread("TokenRefresher", 10);
        this.f30697e = handlerThread;
        handlerThread.start();
        this.f30698f = new zzj(this.f30697e.getLooper());
        this.f30699g = new e(this, gVar2.o());
        this.f30696d = 300000L;
    }

    public final void a() {
        Logger logger = f30692h;
        long j10 = this.f30694b - this.f30696d;
        StringBuilder sb = new StringBuilder(43);
        sb.append("Scheduling refresh for ");
        sb.append(j10);
        logger.g(sb.toString(), new Object[0]);
        c();
        this.f30695c = Math.max((this.f30694b - DefaultClock.d().a()) - this.f30696d, 0L) / 1000;
        this.f30698f.postDelayed(this.f30699g, this.f30695c * 1000);
    }

    final void b() {
        int i10 = (int) this.f30695c;
        this.f30695c = (i10 == 30 || i10 == 60 || i10 == 120 || i10 == 240 || i10 == 480) ? 2 * this.f30695c : i10 != 960 ? 30L : 960L;
        this.f30694b = DefaultClock.d().a() + (this.f30695c * 1000);
        Logger logger = f30692h;
        long j10 = this.f30694b;
        StringBuilder sb = new StringBuilder(43);
        sb.append("Scheduling refresh for ");
        sb.append(j10);
        logger.g(sb.toString(), new Object[0]);
        this.f30698f.postDelayed(this.f30699g, this.f30695c * 1000);
    }

    public final void c() {
        this.f30698f.removeCallbacks(this.f30699g);
    }
}
