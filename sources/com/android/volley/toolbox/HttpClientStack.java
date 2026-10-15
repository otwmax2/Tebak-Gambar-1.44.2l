package com.android.volley.toolbox;

import com.android.volley.AuthFailureError;
import com.android.volley.Request;
import java.io.IOException;
import java.net.URI;
import java.util.Map;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpDelete;
import org.apache.http.client.methods.HttpEntityEnclosingRequestBase;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpHead;
import org.apache.http.client.methods.HttpOptions;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.client.methods.HttpPut;
import org.apache.http.client.methods.HttpTrace;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.entity.ByteArrayEntity;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpParams;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
public class HttpClientStack implements HttpStack {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final HttpClient f5196a;

    public static final class HttpPatch extends HttpEntityEnclosingRequestBase {
        public HttpPatch() {
        }

        @Override // org.apache.http.client.methods.HttpRequestBase, org.apache.http.client.methods.HttpUriRequest
        public String getMethod() {
            return "PATCH";
        }

        public HttpPatch(String str) {
            setURI(URI.create(str));
        }
    }

    static HttpUriRequest b(Request<?> request, Map<String, String> map) throws AuthFailureError {
        switch (request.s()) {
            case -1:
                byte[] bArrJ = request.J();
                if (bArrJ == null) {
                    return new HttpGet(request.R());
                }
                HttpPost httpPost = new HttpPost(request.R());
                httpPost.addHeader("Content-Type", request.K());
                httpPost.setEntity(new ByteArrayEntity(bArrJ));
                return httpPost;
            case 0:
                return new HttpGet(request.R());
            case 1:
                HttpPost httpPost2 = new HttpPost(request.R());
                httpPost2.addHeader("Content-Type", request.o());
                d(httpPost2, request);
                return httpPost2;
            case 2:
                HttpPut httpPut = new HttpPut(request.R());
                httpPut.addHeader("Content-Type", request.o());
                d(httpPut, request);
                return httpPut;
            case 3:
                return new HttpDelete(request.R());
            case 4:
                return new HttpHead(request.R());
            case 5:
                return new HttpOptions(request.R());
            case 6:
                return new HttpTrace(request.R());
            case 7:
                HttpPatch httpPatch = new HttpPatch(request.R());
                httpPatch.addHeader("Content-Type", request.o());
                d(httpPatch, request);
                return httpPatch;
            default:
                throw new IllegalStateException("Unknown request method.");
        }
    }

    private static void d(HttpEntityEnclosingRequestBase httpEntityEnclosingRequestBase, Request<?> request) throws AuthFailureError {
        byte[] bArrN = request.n();
        if (bArrN != null) {
            httpEntityEnclosingRequestBase.setEntity(new ByteArrayEntity(bArrN));
        }
    }

    private static void e(HttpUriRequest httpUriRequest, Map<String, String> map) {
        for (String str : map.keySet()) {
            httpUriRequest.setHeader(str, map.get(str));
        }
    }

    @Override // com.android.volley.toolbox.HttpStack
    public org.apache.http.HttpResponse a(Request<?> request, Map<String, String> map) throws IOException, AuthFailureError {
        HttpUriRequest httpUriRequestB = b(request, map);
        e(httpUriRequestB, map);
        e(httpUriRequestB, request.r());
        c(httpUriRequestB);
        HttpParams params = httpUriRequestB.getParams();
        int iP = request.P();
        HttpConnectionParams.setConnectionTimeout(params, 5000);
        HttpConnectionParams.setSoTimeout(params, iP);
        return this.f5196a.execute(httpUriRequestB);
    }

    protected void c(HttpUriRequest httpUriRequest) throws IOException {
    }
}
