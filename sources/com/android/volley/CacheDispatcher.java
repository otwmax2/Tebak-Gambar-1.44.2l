package com.android.volley;

import android.os.Process;
import com.android.volley.Cache;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public class CacheDispatcher extends Thread {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final boolean f5069u = VolleyLog.f5136b;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final BlockingQueue<Request<?>> f5070o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final BlockingQueue<Request<?>> f5071p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Cache f5072q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final ResponseDelivery f5073r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile boolean f5074s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final WaitingRequestManager f5075t;

    private void b() throws InterruptedException {
        c(this.f5070o.take());
    }

    void c(final Request<?> request) throws InterruptedException {
        request.e("cache-queue-take");
        request.Z(1);
        try {
            if (request.T()) {
                request.m("cache-discard-canceled");
                return;
            }
            Cache.Entry entryA = this.f5072q.a(request.q());
            if (entryA == null) {
                request.e("cache-miss");
                if (!this.f5075t.c(request)) {
                    this.f5071p.put(request);
                }
                return;
            }
            long jCurrentTimeMillis = System.currentTimeMillis();
            if (entryA.b(jCurrentTimeMillis)) {
                request.e("cache-hit-expired");
                request.a0(entryA);
                if (!this.f5075t.c(request)) {
                    this.f5071p.put(request);
                }
                return;
            }
            request.e("cache-hit");
            Response<?> responseY = request.Y(new NetworkResponse(entryA.f5061a, entryA.f5067g));
            request.e("cache-hit-parsed");
            if (!responseY.b()) {
                request.e("cache-parsing-failed");
                this.f5072q.c(request.q(), true);
                request.a0(null);
                if (!this.f5075t.c(request)) {
                    this.f5071p.put(request);
                }
                return;
            }
            if (entryA.c(jCurrentTimeMillis)) {
                request.e("cache-hit-refresh-needed");
                request.a0(entryA);
                responseY.f5132d = true;
                if (this.f5075t.c(request)) {
                    this.f5073r.a(request, responseY);
                } else {
                    this.f5073r.b(request, responseY, new Runnable() { // from class: com.android.volley.CacheDispatcher.1
                        @Override // java.lang.Runnable
                        public void run() {
                            try {
                                CacheDispatcher.this.f5071p.put(request);
                            } catch (InterruptedException unused) {
                                Thread.currentThread().interrupt();
                            }
                        }
                    });
                }
            } else {
                this.f5073r.a(request, responseY);
            }
        } finally {
            request.Z(2);
        }
    }

    public void d() {
        this.f5074s = true;
        interrupt();
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        if (f5069u) {
            VolleyLog.e("start new dispatcher", new Object[0]);
        }
        Process.setThreadPriority(10);
        this.f5072q.b();
        while (true) {
            try {
                b();
            } catch (InterruptedException unused) {
                if (this.f5074s) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.c("Ignoring spurious interrupt of CacheDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
