package com.android.volley;

import android.os.Handler;
import java.util.concurrent.Executor;

/* JADX INFO: loaded from: classes.dex */
public class ExecutorDelivery implements ResponseDelivery {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Executor f5082a;

    /* JADX INFO: renamed from: com.android.volley.ExecutorDelivery$1, reason: invalid class name */
    class AnonymousClass1 implements Executor {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Handler f5083o;

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            this.f5083o.post(runnable);
        }
    }

    private static class ResponseDeliveryRunnable implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Request f5084o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final Response f5085p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final Runnable f5086q;

        public ResponseDeliveryRunnable(Request request, Response response, Runnable runnable) {
            this.f5084o = request;
            this.f5085p = response;
            this.f5086q = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f5084o.T()) {
                this.f5084o.m("canceled-at-delivery");
                return;
            }
            if (this.f5085p.b()) {
                this.f5084o.j(this.f5085p.f5129a);
            } else {
                this.f5084o.i(this.f5085p.f5131c);
            }
            if (this.f5085p.f5132d) {
                this.f5084o.e("intermediate-response");
            } else {
                this.f5084o.m("done");
            }
            Runnable runnable = this.f5086q;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    @Override // com.android.volley.ResponseDelivery
    public void a(Request<?> request, Response<?> response) {
        b(request, response, null);
    }

    @Override // com.android.volley.ResponseDelivery
    public void b(Request<?> request, Response<?> response, Runnable runnable) {
        request.U();
        request.e("post-response");
        this.f5082a.execute(new ResponseDeliveryRunnable(request, response, runnable));
    }

    @Override // com.android.volley.ResponseDelivery
    public void c(Request<?> request, VolleyError volleyError) {
        request.e("post-error");
        this.f5082a.execute(new ResponseDeliveryRunnable(request, Response.a(volleyError), null));
    }
}
