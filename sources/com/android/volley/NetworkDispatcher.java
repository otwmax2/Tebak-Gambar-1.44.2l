package com.android.volley;

import android.annotation.TargetApi;
import android.net.TrafficStats;
import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import java.util.concurrent.BlockingQueue;

/* JADX INFO: loaded from: classes.dex */
public class NetworkDispatcher extends Thread {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final BlockingQueue<Request<?>> f5089o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Network f5090p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Cache f5091q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final ResponseDelivery f5092r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile boolean f5093s;

    @TargetApi(14)
    private void a(Request<?> request) {
        if (Build.VERSION.SDK_INT >= 14) {
            TrafficStats.setThreadStatsTag(request.Q());
        }
    }

    private void b(Request<?> request, VolleyError volleyError) {
        this.f5092r.c(request, request.X(volleyError));
    }

    private void c() throws InterruptedException {
        d(this.f5089o.take());
    }

    void d(Request<?> request) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        request.Z(3);
        try {
            try {
                try {
                    request.e("network-queue-take");
                } catch (VolleyError e10) {
                    e10.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
                    b(request, e10);
                    request.V();
                }
            } catch (Exception e11) {
                VolleyLog.d(e11, "Unhandled exception %s", e11.toString());
                VolleyError volleyError = new VolleyError(e11);
                volleyError.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
                this.f5092r.c(request, volleyError);
                request.V();
            }
            if (request.T()) {
                request.m("network-discard-cancelled");
                request.V();
                return;
            }
            a(request);
            NetworkResponse networkResponseA = this.f5090p.a(request);
            request.e("network-http-complete");
            if (networkResponseA.f5098e && request.S()) {
                request.m("not-modified");
                request.V();
                return;
            }
            Response<?> responseY = request.Y(networkResponseA);
            request.e("network-parse-complete");
            if (request.f0() && responseY.f5130b != null) {
                this.f5091q.d(request.q(), responseY.f5130b);
                request.e("network-cache-written");
            }
            request.U();
            this.f5092r.a(request, responseY);
            request.W(responseY);
        } finally {
            request.Z(4);
        }
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public void run() {
        Process.setThreadPriority(10);
        while (true) {
            try {
                c();
            } catch (InterruptedException unused) {
                if (this.f5093s) {
                    Thread.currentThread().interrupt();
                    return;
                }
                VolleyLog.c("Ignoring spurious interrupt of NetworkDispatcher thread; use quit() to terminate it", new Object[0]);
            }
        }
    }
}
