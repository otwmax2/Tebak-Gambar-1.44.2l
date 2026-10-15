package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyError;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* JADX INFO: loaded from: classes.dex */
public class RequestFuture<T> implements Future<T>, Response.Listener<T>, Response.ErrorListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Request<?> f5245o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f5246p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private T f5247q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private VolleyError f5248r;

    private RequestFuture() {
    }

    private synchronized T d(Long l10) throws ExecutionException, InterruptedException, TimeoutException {
        if (this.f5248r != null) {
            throw new ExecutionException(this.f5248r);
        }
        if (this.f5246p) {
            return this.f5247q;
        }
        if (l10 == null) {
            while (!isDone()) {
                wait(0L);
            }
        } else if (l10.longValue() > 0) {
            long jUptimeMillis = SystemClock.uptimeMillis();
            long jLongValue = l10.longValue() + jUptimeMillis;
            while (!isDone() && jUptimeMillis < jLongValue) {
                wait(jLongValue - jUptimeMillis);
                jUptimeMillis = SystemClock.uptimeMillis();
            }
        }
        if (this.f5248r != null) {
            throw new ExecutionException(this.f5248r);
        }
        if (!this.f5246p) {
            throw new TimeoutException();
        }
        return this.f5247q;
    }

    @Override // com.android.volley.Response.Listener
    public synchronized void b(T t10) {
        this.f5246p = true;
        this.f5247q = t10;
        notifyAll();
    }

    @Override // com.android.volley.Response.ErrorListener
    public synchronized void c(VolleyError volleyError) {
        this.f5248r = volleyError;
        notifyAll();
    }

    @Override // java.util.concurrent.Future
    public synchronized boolean cancel(boolean z10) {
        if (this.f5245o == null) {
            return false;
        }
        if (isDone()) {
            return false;
        }
        this.f5245o.f();
        return true;
    }

    @Override // java.util.concurrent.Future
    public T get() throws ExecutionException, InterruptedException {
        try {
            return d(null);
        } catch (TimeoutException e10) {
            throw new AssertionError(e10);
        }
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        Request<?> request = this.f5245o;
        if (request == null) {
            return false;
        }
        return request.T();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0012  */
    @Override // java.util.concurrent.Future
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public synchronized boolean isDone() {
        /*
            r1 = this;
            monitor-enter(r1)
            boolean r0 = r1.f5246p     // Catch: java.lang.Throwable -> L15
            if (r0 != 0) goto L12
            com.android.volley.VolleyError r0 = r1.f5248r     // Catch: java.lang.Throwable -> L15
            if (r0 != 0) goto L12
            boolean r0 = r1.isCancelled()     // Catch: java.lang.Throwable -> L15
            if (r0 == 0) goto L10
            goto L12
        L10:
            r0 = 0
            goto L13
        L12:
            r0 = 1
        L13:
            monitor-exit(r1)
            return r0
        L15:
            r0 = move-exception
            monitor-exit(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.android.volley.toolbox.RequestFuture.isDone():boolean");
    }

    @Override // java.util.concurrent.Future
    public T get(long j10, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
        return d(Long.valueOf(TimeUnit.MILLISECONDS.convert(j10, timeUnit)));
    }
}
