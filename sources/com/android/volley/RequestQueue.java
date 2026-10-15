package com.android.volley;

import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes.dex */
public class RequestQueue {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicInteger f5120a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<Request<?>> f5121b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final PriorityBlockingQueue<Request<?>> f5122c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PriorityBlockingQueue<Request<?>> f5123d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Cache f5124e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ResponseDelivery f5125f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<RequestFinishedListener> f5126g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<RequestEventListener> f5127h;

    /* JADX INFO: renamed from: com.android.volley.RequestQueue$1, reason: invalid class name */
    class AnonymousClass1 implements RequestFilter {
    }

    @Retention(RetentionPolicy.SOURCE)
    public @interface RequestEvent {
    }

    public interface RequestEventListener {
        void a(Request<?> request, int i10);
    }

    public interface RequestFilter {
    }

    @Deprecated
    public interface RequestFinishedListener<T> {
        void a(Request<T> request);
    }

    public <T> Request<T> a(Request<T> request) {
        request.c0(this);
        synchronized (this.f5121b) {
            this.f5121b.add(request);
        }
        request.e0(f());
        request.e("add-to-queue");
        g(request, 0);
        b(request);
        return request;
    }

    <T> void b(Request<T> request) {
        if (request.f0()) {
            this.f5122c.add(request);
        } else {
            h(request);
        }
    }

    <T> void c(Request<T> request) {
        synchronized (this.f5121b) {
            this.f5121b.remove(request);
        }
        synchronized (this.f5126g) {
            Iterator<RequestFinishedListener> it = this.f5126g.iterator();
            while (it.hasNext()) {
                it.next().a(request);
            }
        }
        g(request, 5);
    }

    public Cache d() {
        return this.f5124e;
    }

    public ResponseDelivery e() {
        return this.f5125f;
    }

    public int f() {
        return this.f5120a.incrementAndGet();
    }

    void g(Request<?> request, int i10) {
        synchronized (this.f5127h) {
            Iterator<RequestEventListener> it = this.f5127h.iterator();
            while (it.hasNext()) {
                it.next().a(request, i10);
            }
        }
    }

    <T> void h(Request<T> request) {
        this.f5123d.add(request);
    }
}
