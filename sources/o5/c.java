package o5;

import android.os.Bundle;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
import n5.g;

/* JADX INFO: compiled from: BlockingAnalyticsEventLogger.java */
/* JADX INFO: loaded from: classes2.dex */
public class c implements b, a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f33082a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f33083b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final TimeUnit f33084c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CountDownLatch f33086e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f33085d = new Object();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f33087f = false;

    public c(e eVar, int i10, TimeUnit timeUnit) {
        this.f33082a = eVar;
        this.f33083b = i10;
        this.f33084c = timeUnit;
    }

    @Override // o5.a
    public void a(String str, Bundle bundle) {
        synchronized (this.f33085d) {
            g.f().i("Logging event " + str + " to Firebase Analytics with params " + bundle);
            this.f33086e = new CountDownLatch(1);
            this.f33087f = false;
            this.f33082a.a(str, bundle);
            g.f().i("Awaiting app exception callback from Analytics...");
            try {
                if (this.f33086e.await(this.f33083b, this.f33084c)) {
                    this.f33087f = true;
                    g.f().i("App exception callback received from Analytics listener.");
                } else {
                    g.f().k("Timeout exceeded while awaiting app exception callback from Analytics listener.");
                }
            } catch (InterruptedException unused) {
                g.f().d("Interrupted while awaiting app exception callback from Analytics listener.");
            }
            this.f33086e = null;
        }
    }

    @Override // o5.b
    public void s1(String str, Bundle bundle) {
        CountDownLatch countDownLatch = this.f33086e;
        if (countDownLatch != null && "_ae".equals(str)) {
            countDownLatch.countDown();
        }
    }
}
