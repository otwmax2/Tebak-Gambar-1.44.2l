package com.android.volley.toolbox;

import android.os.SystemClock;
import com.android.volley.AsyncNetwork;
import com.android.volley.Header;
import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.RequestTask;
import com.android.volley.VolleyError;
import com.android.volley.toolbox.AsyncHttpStack;
import com.android.volley.toolbox.NetworkUtility;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class BasicAsyncNetwork extends AsyncNetwork {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AsyncHttpStack f5156b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final ByteArrayPool f5157c;

    public static class Builder {
    }

    private class InvokeRetryPolicyTask<T> extends RequestTask<T> {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final Request<T> f5162p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final NetworkUtility.RetryInfo f5163q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final AsyncNetwork.OnRequestComplete f5164r;

        InvokeRetryPolicyTask(Request<T> request, NetworkUtility.RetryInfo retryInfo, AsyncNetwork.OnRequestComplete onRequestComplete) {
            super(request);
            this.f5162p = request;
            this.f5163q = retryInfo;
            this.f5164r = onRequestComplete;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                NetworkUtility.a(this.f5162p, this.f5163q);
                BasicAsyncNetwork.this.c(this.f5162p, this.f5164r);
            } catch (VolleyError e10) {
                this.f5164r.a(e10);
            }
        }
    }

    private class ResponseParsingTask<T> extends RequestTask<T> {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        InputStream f5166p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        HttpResponse f5167q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Request<T> f5168r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        AsyncNetwork.OnRequestComplete f5169s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        long f5170t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        List<Header> f5171u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        int f5172v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        final /* synthetic */ BasicAsyncNetwork f5173w;

        @Override // java.lang.Runnable
        public void run() throws Throwable {
            try {
                this.f5173w.h(this.f5170t, this.f5172v, this.f5167q, this.f5168r, this.f5169s, this.f5171u, NetworkUtility.c(this.f5166p, this.f5167q.b(), this.f5173w.f5157c));
            } catch (IOException e10) {
                this.f5173w.g(this.f5168r, this.f5169s, e10, this.f5170t, this.f5167q, null);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g(Request<?> request, AsyncNetwork.OnRequestComplete onRequestComplete, IOException iOException, long j10, HttpResponse httpResponse, byte[] bArr) {
        try {
            b().execute(new InvokeRetryPolicyTask(request, NetworkUtility.e(request, iOException, j10, httpResponse, bArr), onRequestComplete));
        } catch (VolleyError e10) {
            onRequestComplete.a(e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h(long j10, int i10, HttpResponse httpResponse, Request<?> request, AsyncNetwork.OnRequestComplete onRequestComplete, List<Header> list, byte[] bArr) {
        NetworkUtility.d(SystemClock.elapsedRealtime() - j10, request, bArr, i10);
        if (i10 < 200 || i10 > 299) {
            g(request, onRequestComplete, new IOException(), j10, httpResponse, bArr);
        } else {
            onRequestComplete.b(new NetworkResponse(i10, bArr, false, SystemClock.elapsedRealtime() - j10, list));
        }
    }

    @Override // com.android.volley.AsyncNetwork
    public void c(final Request<?> request, final AsyncNetwork.OnRequestComplete onRequestComplete) {
        if (b() == null) {
            throw new IllegalStateException("mBlockingExecuter must be set before making a request");
        }
        final long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.f5156b.c(request, HttpHeaderParser.c(request.p()), new AsyncHttpStack.OnRequestComplete() { // from class: com.android.volley.toolbox.BasicAsyncNetwork.1
        });
    }
}
