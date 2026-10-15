package com.android.volley;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class AsyncNetwork implements Network {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private ExecutorService f5026a;

    public interface OnRequestComplete {
        void a(VolleyError volleyError);

        void b(NetworkResponse networkResponse);
    }

    protected AsyncNetwork() {
    }

    @Override // com.android.volley.Network
    public NetworkResponse a(Request<?> request) throws VolleyError {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        final AtomicReference atomicReference2 = new AtomicReference();
        c(request, new OnRequestComplete() { // from class: com.android.volley.AsyncNetwork.1
            @Override // com.android.volley.AsyncNetwork.OnRequestComplete
            public void a(VolleyError volleyError) {
                atomicReference2.set(volleyError);
                countDownLatch.countDown();
            }

            @Override // com.android.volley.AsyncNetwork.OnRequestComplete
            public void b(NetworkResponse networkResponse) {
                atomicReference.set(networkResponse);
                countDownLatch.countDown();
            }
        });
        try {
            countDownLatch.await();
            if (atomicReference.get() != null) {
                return (NetworkResponse) atomicReference.get();
            }
            if (atomicReference2.get() != null) {
                throw ((VolleyError) atomicReference2.get());
            }
            throw new VolleyError("Neither response entry was set");
        } catch (InterruptedException e10) {
            VolleyLog.d(e10, "while waiting for CountDownLatch", new Object[0]);
            Thread.currentThread().interrupt();
            throw new VolleyError(e10);
        }
    }

    protected ExecutorService b() {
        return this.f5026a;
    }

    public abstract void c(Request<?> request, OnRequestComplete onRequestComplete);
}
