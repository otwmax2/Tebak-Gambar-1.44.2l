package com.android.volley;

import android.os.SystemClock;
import com.android.volley.AsyncCache;
import com.android.volley.AsyncNetwork;
import com.android.volley.Cache;
import java.util.ArrayList;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;

/* JADX INFO: loaded from: classes.dex */
public class AsyncRequestQueue extends RequestQueue {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final AsyncCache f5031i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final AsyncNetwork f5032j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private ExecutorService f5033k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private ExecutorService f5034l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final WaitingRequestManager f5035m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final List<Request<?>> f5036n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private volatile boolean f5037o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Object f5038p;

    /* JADX INFO: renamed from: com.android.volley.AsyncRequestQueue$1, reason: invalid class name */
    class AnonymousClass1 implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ AsyncRequestQueue f5039o;

        @Override // java.lang.Runnable
        public void run() {
            this.f5039o.f5031i.b(new AsyncCache.OnWriteCompleteCallback() { // from class: com.android.volley.AsyncRequestQueue.1.1
                @Override // com.android.volley.AsyncCache.OnWriteCompleteCallback
                public void a() {
                    AnonymousClass1.this.f5039o.s();
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.android.volley.AsyncRequestQueue$2, reason: invalid class name */
    class AnonymousClass2 implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ AsyncRequestQueue f5041o;

        @Override // java.lang.Runnable
        public void run() {
            this.f5041o.d().b();
            this.f5041o.f5033k.execute(new Runnable() { // from class: com.android.volley.AsyncRequestQueue.2.1
                @Override // java.lang.Runnable
                public void run() {
                    AnonymousClass2.this.f5041o.s();
                }
            });
        }
    }

    /* JADX INFO: renamed from: com.android.volley.AsyncRequestQueue$3, reason: invalid class name */
    class AnonymousClass3 implements Comparator<Runnable> {
        AnonymousClass3() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(Runnable runnable, Runnable runnable2) {
            if (!(runnable instanceof RequestTask)) {
                return runnable2 instanceof RequestTask ? -1 : 0;
            }
            if (runnable2 instanceof RequestTask) {
                return ((RequestTask) runnable).a((RequestTask) runnable2);
            }
            return 1;
        }
    }

    public static class Builder {

        /* JADX INFO: renamed from: com.android.volley.AsyncRequestQueue$Builder$1, reason: invalid class name */
        class AnonymousClass1 extends ExecutorFactory {

            /* JADX INFO: renamed from: com.android.volley.AsyncRequestQueue$Builder$1$1, reason: invalid class name and collision with other inner class name */
            class ThreadFactoryC01021 implements ThreadFactory {

                /* JADX INFO: renamed from: a, reason: collision with root package name */
                final /* synthetic */ String f5043a;

                @Override // java.util.concurrent.ThreadFactory
                public Thread newThread(Runnable runnable) {
                    Thread threadNewThread = Executors.defaultThreadFactory().newThread(runnable);
                    threadNewThread.setName("Volley-" + this.f5043a);
                    return threadNewThread;
                }
            }
        }
    }

    private class CacheParseTask<T> extends RequestTask<T> {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        Cache.Entry f5044p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        long f5045q;

        CacheParseTask(Request<T> request, Cache.Entry entry, long j10) {
            super(request);
            this.f5044p = entry;
            this.f5045q = j10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f5128o.e("cache-hit");
            Request<T> request = this.f5128o;
            Cache.Entry entry = this.f5044p;
            Response<T> responseY = request.Y(new NetworkResponse(200, entry.f5061a, false, 0L, entry.f5068h));
            this.f5128o.e("cache-hit-parsed");
            if (!this.f5044p.c(this.f5045q)) {
                AsyncRequestQueue.this.e().a(this.f5128o, responseY);
                return;
            }
            this.f5128o.e("cache-hit-refresh-needed");
            this.f5128o.a0(this.f5044p);
            responseY.f5132d = true;
            if (AsyncRequestQueue.this.f5035m.c(this.f5128o)) {
                AsyncRequestQueue.this.e().a(this.f5128o, responseY);
            } else {
                AsyncRequestQueue.this.e().b(this.f5128o, responseY, new Runnable() { // from class: com.android.volley.AsyncRequestQueue.CacheParseTask.1
                    @Override // java.lang.Runnable
                    public void run() {
                        CacheParseTask cacheParseTask = CacheParseTask.this;
                        AsyncRequestQueue.this.h(cacheParseTask.f5128o);
                    }
                });
            }
        }
    }

    private class CachePutTask<T> extends RequestTask<T> {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        Response<?> f5048p;

        CachePutTask(Request<T> request, Response<?> response) {
            super(request);
            this.f5048p = response;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (AsyncRequestQueue.this.f5031i != null) {
                AsyncRequestQueue.this.f5031i.c(this.f5128o.q(), this.f5048p.f5130b, new AsyncCache.OnWriteCompleteCallback() { // from class: com.android.volley.AsyncRequestQueue.CachePutTask.1
                    @Override // com.android.volley.AsyncCache.OnWriteCompleteCallback
                    public void a() {
                        CachePutTask cachePutTask = CachePutTask.this;
                        AsyncRequestQueue.this.q(cachePutTask.f5128o, cachePutTask.f5048p, true);
                    }
                });
            } else {
                AsyncRequestQueue.this.d().d(this.f5128o.q(), this.f5048p.f5130b);
                AsyncRequestQueue.this.q(this.f5128o, this.f5048p, true);
            }
        }
    }

    private class CacheTask<T> extends RequestTask<T> {
        CacheTask(Request<T> request) {
            super(request);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f5128o.T()) {
                this.f5128o.m("cache-discard-canceled");
                return;
            }
            this.f5128o.e("cache-queue-take");
            if (AsyncRequestQueue.this.f5031i != null) {
                AsyncRequestQueue.this.f5031i.a(this.f5128o.q(), new AsyncCache.OnGetCompleteCallback() { // from class: com.android.volley.AsyncRequestQueue.CacheTask.1
                    @Override // com.android.volley.AsyncCache.OnGetCompleteCallback
                    public void a(Cache.Entry entry) {
                        CacheTask cacheTask = CacheTask.this;
                        AsyncRequestQueue.this.r(entry, cacheTask.f5128o);
                    }
                });
            } else {
                AsyncRequestQueue.this.r(AsyncRequestQueue.this.d().a(this.f5128o.q()), this.f5128o);
            }
        }
    }

    public static abstract class ExecutorFactory {
    }

    private class NetworkParseTask<T> extends RequestTask<T> {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        NetworkResponse f5053p;

        NetworkParseTask(Request<T> request, NetworkResponse networkResponse) {
            super(request);
            this.f5053p = networkResponse;
        }

        @Override // java.lang.Runnable
        public void run() {
            Response<T> responseY = this.f5128o.Y(this.f5053p);
            this.f5128o.e("network-parse-complete");
            if (!this.f5128o.f0() || responseY.f5130b == null) {
                AsyncRequestQueue.this.q(this.f5128o, responseY, false);
            } else if (AsyncRequestQueue.this.f5031i != null) {
                AsyncRequestQueue.this.f5033k.execute(AsyncRequestQueue.this.new CachePutTask(this.f5128o, responseY));
            } else {
                AsyncRequestQueue.this.f5034l.execute(AsyncRequestQueue.this.new CachePutTask(this.f5128o, responseY));
            }
        }
    }

    private class NetworkTask<T> extends RequestTask<T> {
        NetworkTask(Request<T> request) {
            super(request);
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f5128o.T()) {
                this.f5128o.m("network-discard-cancelled");
                this.f5128o.V();
            } else {
                final long jElapsedRealtime = SystemClock.elapsedRealtime();
                this.f5128o.e("network-queue-take");
                AsyncRequestQueue.this.f5032j.c(this.f5128o, new AsyncNetwork.OnRequestComplete() { // from class: com.android.volley.AsyncRequestQueue.NetworkTask.1
                    @Override // com.android.volley.AsyncNetwork.OnRequestComplete
                    public void a(VolleyError volleyError) {
                        volleyError.a(SystemClock.elapsedRealtime() - jElapsedRealtime);
                        ExecutorService executorService = AsyncRequestQueue.this.f5034l;
                        NetworkTask networkTask = NetworkTask.this;
                        executorService.execute(AsyncRequestQueue.this.new ParseErrorTask(networkTask.f5128o, volleyError));
                    }

                    @Override // com.android.volley.AsyncNetwork.OnRequestComplete
                    public void b(NetworkResponse networkResponse) {
                        NetworkTask.this.f5128o.e("network-http-complete");
                        if (networkResponse.f5098e && NetworkTask.this.f5128o.S()) {
                            NetworkTask.this.f5128o.m("not-modified");
                            NetworkTask.this.f5128o.V();
                        } else {
                            ExecutorService executorService = AsyncRequestQueue.this.f5034l;
                            NetworkTask networkTask = NetworkTask.this;
                            executorService.execute(AsyncRequestQueue.this.new NetworkParseTask(networkTask.f5128o, networkResponse));
                        }
                    }
                });
            }
        }
    }

    private class ParseErrorTask<T> extends RequestTask<T> {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        VolleyError f5058p;

        ParseErrorTask(Request<T> request, VolleyError volleyError) {
            super(request);
            this.f5058p = volleyError;
        }

        @Override // java.lang.Runnable
        public void run() {
            AsyncRequestQueue.this.e().c(this.f5128o, this.f5128o.X(this.f5058p));
            this.f5128o.V();
        }
    }

    private static class ThrowingCache implements Cache {
        private ThrowingCache() {
        }

        @Override // com.android.volley.Cache
        public Cache.Entry a(String str) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.volley.Cache
        public void b() {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.volley.Cache
        public void c(String str, boolean z10) {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.volley.Cache
        public void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // com.android.volley.Cache
        public void d(String str, Cache.Entry entry) {
            throw new UnsupportedOperationException();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q(Request<?> request, Response<?> response, boolean z10) {
        if (z10) {
            request.e("network-cache-written");
        }
        request.U();
        e().a(request, response);
        request.W(response);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(Cache.Entry entry, Request<?> request) {
        if (entry == null) {
            request.e("cache-miss");
            if (this.f5035m.c(request)) {
                return;
            }
            h(request);
            return;
        }
        long jCurrentTimeMillis = System.currentTimeMillis();
        if (!entry.b(jCurrentTimeMillis)) {
            this.f5034l.execute(new CacheParseTask(request, entry, jCurrentTimeMillis));
            return;
        }
        request.e("cache-hit-expired");
        request.a0(entry);
        if (this.f5035m.c(request)) {
            return;
        }
        h(request);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        ArrayList arrayList;
        synchronized (this.f5038p) {
            arrayList = new ArrayList(this.f5036n);
            this.f5036n.clear();
            this.f5037o = true;
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            b((Request) it.next());
        }
    }

    @Override // com.android.volley.RequestQueue
    <T> void b(Request<T> request) {
        if (!this.f5037o) {
            synchronized (this.f5038p) {
                if (!this.f5037o) {
                    this.f5036n.add(request);
                    return;
                }
            }
        }
        if (!request.f0()) {
            h(request);
        } else if (this.f5031i != null) {
            this.f5033k.execute(new CacheTask(request));
        } else {
            this.f5034l.execute(new CacheTask(request));
        }
    }

    @Override // com.android.volley.RequestQueue
    <T> void h(Request<T> request) {
        this.f5033k.execute(new NetworkTask(request));
    }
}
