package com.google.android.gms.ads.identifier;

import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-identifier@@17.1.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
final class b extends Thread {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final WeakReference<AdvertisingIdClient> f5690o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final long f5691p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final CountDownLatch f5692q = new CountDownLatch(1);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    boolean f5693r = false;

    public b(AdvertisingIdClient advertisingIdClient, long j10) {
        this.f5690o = new WeakReference<>(advertisingIdClient);
        this.f5691p = j10;
        start();
    }

    private final void a() {
        AdvertisingIdClient advertisingIdClient = this.f5690o.get();
        if (advertisingIdClient != null) {
            advertisingIdClient.f();
            this.f5693r = true;
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        try {
            if (this.f5692q.await(this.f5691p, TimeUnit.MILLISECONDS)) {
                return;
            }
            a();
        } catch (InterruptedException unused) {
            a();
        }
    }
}
