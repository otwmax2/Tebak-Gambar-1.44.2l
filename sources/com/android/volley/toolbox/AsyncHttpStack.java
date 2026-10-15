package com.android.volley.toolbox;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import com.android.volley.VolleyLog;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.util.Map;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class AsyncHttpStack extends BaseHttpStack {

    public interface OnRequestComplete {
    }

    private static class Response {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        HttpResponse f5153a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        IOException f5154b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        AuthFailureError f5155c;
    }

    @Override // com.android.volley.toolbox.BaseHttpStack
    public final HttpResponse b(Request<?> request, Map<String, String> map) throws IOException, AuthFailureError {
        final CountDownLatch countDownLatch = new CountDownLatch(1);
        final AtomicReference atomicReference = new AtomicReference();
        c(request, map, new OnRequestComplete() { // from class: com.android.volley.toolbox.AsyncHttpStack.1
        });
        try {
            countDownLatch.await();
            Response response = (Response) atomicReference.get();
            HttpResponse httpResponse = response.f5153a;
            if (httpResponse != null) {
                return httpResponse;
            }
            IOException iOException = response.f5154b;
            if (iOException != null) {
                throw iOException;
            }
            throw response.f5155c;
        } catch (InterruptedException e10) {
            VolleyLog.d(e10, "while waiting for CountDownLatch", new Object[0]);
            Thread.currentThread().interrupt();
            throw new InterruptedIOException(e10.toString());
        }
    }

    public abstract void c(Request<?> request, Map<String, String> map, OnRequestComplete onRequestComplete);
}
