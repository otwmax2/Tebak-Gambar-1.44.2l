package com.android.volley.toolbox;

import com.android.volley.AuthFailureError;
import com.android.volley.Header;
import com.android.volley.Request;
import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import java.io.DataOutputStream;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: loaded from: classes.dex */
public class HurlStack extends BaseHttpStack {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final UrlRewriter f5202a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final SSLSocketFactory f5203b;

    static class UrlConnectionInputStream extends FilterInputStream {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final HttpURLConnection f5204o;

        UrlConnectionInputStream(HttpURLConnection httpURLConnection) {
            super(HurlStack.k(httpURLConnection));
            this.f5204o = httpURLConnection;
        }

        @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            this.f5204o.disconnect();
        }
    }

    public interface UrlRewriter extends com.android.volley.toolbox.UrlRewriter {
    }

    public HurlStack() {
        this(null);
    }

    private void d(HttpURLConnection httpURLConnection, Request<?> request, byte[] bArr) throws IOException {
        httpURLConnection.setDoOutput(true);
        if (!httpURLConnection.getRequestProperties().containsKey("Content-Type")) {
            httpURLConnection.setRequestProperty("Content-Type", request.o());
        }
        DataOutputStream dataOutputStream = new DataOutputStream(i(request, httpURLConnection, bArr.length));
        dataOutputStream.write(bArr);
        dataOutputStream.close();
    }

    private void e(HttpURLConnection httpURLConnection, Request<?> request) throws IOException, AuthFailureError {
        byte[] bArrN = request.n();
        if (bArrN != null) {
            d(httpURLConnection, request, bArrN);
        }
    }

    static List<Header> f(Map<String, List<String>> map) {
        ArrayList arrayList = new ArrayList(map.size());
        for (Map.Entry<String, List<String>> entry : map.entrySet()) {
            if (entry.getKey() != null) {
                Iterator<String> it = entry.getValue().iterator();
                while (it.hasNext()) {
                    arrayList.add(new Header(entry.getKey(), it.next()));
                }
            }
        }
        return arrayList;
    }

    private static boolean j(int i10, int i11) {
        return (i10 == 4 || (100 <= i11 && i11 < 200) || i11 == 204 || i11 == 304) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static InputStream k(HttpURLConnection httpURLConnection) {
        try {
            return httpURLConnection.getInputStream();
        } catch (IOException unused) {
            return httpURLConnection.getErrorStream();
        }
    }

    private HttpURLConnection l(URL url, Request<?> request) throws IOException {
        SSLSocketFactory sSLSocketFactory;
        HttpURLConnection httpURLConnectionG = g(url);
        int iP = request.P();
        httpURLConnectionG.setConnectTimeout(iP);
        httpURLConnectionG.setReadTimeout(iP);
        httpURLConnectionG.setUseCaches(false);
        httpURLConnectionG.setDoInput(true);
        if (TournamentShareDialogURIBuilder.scheme.equals(url.getProtocol()) && (sSLSocketFactory = this.f5203b) != null) {
            ((HttpsURLConnection) httpURLConnectionG).setSSLSocketFactory(sSLSocketFactory);
        }
        return httpURLConnectionG;
    }

    @Override // com.android.volley.toolbox.BaseHttpStack
    public HttpResponse b(Request<?> request, Map<String, String> map) throws IOException, AuthFailureError {
        String strR = request.R();
        HashMap map2 = new HashMap();
        map2.putAll(map);
        map2.putAll(request.r());
        UrlRewriter urlRewriter = this.f5202a;
        if (urlRewriter != null) {
            String strA = urlRewriter.a(strR);
            if (strA == null) {
                throw new IOException("URL blocked by rewriter: " + strR);
            }
            strR = strA;
        }
        HttpURLConnection httpURLConnectionL = l(new URL(strR), request);
        try {
            for (String str : map2.keySet()) {
                httpURLConnectionL.setRequestProperty(str, (String) map2.get(str));
            }
            m(httpURLConnectionL, request);
            int responseCode = httpURLConnectionL.getResponseCode();
            if (responseCode == -1) {
                throw new IOException("Could not retrieve response code from HttpUrlConnection.");
            }
            if (j(request.s(), responseCode)) {
                return new HttpResponse(responseCode, f(httpURLConnectionL.getHeaderFields()), httpURLConnectionL.getContentLength(), h(request, httpURLConnectionL));
            }
            HttpResponse httpResponse = new HttpResponse(responseCode, f(httpURLConnectionL.getHeaderFields()));
            httpURLConnectionL.disconnect();
            return httpResponse;
        } catch (Throwable th) {
            if (0 == 0) {
                httpURLConnectionL.disconnect();
            }
            throw th;
        }
    }

    protected HttpURLConnection g(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        return httpURLConnection;
    }

    protected InputStream h(Request<?> request, HttpURLConnection httpURLConnection) {
        return new UrlConnectionInputStream(httpURLConnection);
    }

    protected OutputStream i(Request<?> request, HttpURLConnection httpURLConnection, int i10) throws IOException {
        return httpURLConnection.getOutputStream();
    }

    void m(HttpURLConnection httpURLConnection, Request<?> request) throws IOException, AuthFailureError {
        switch (request.s()) {
            case -1:
                byte[] bArrJ = request.J();
                if (bArrJ != null) {
                    httpURLConnection.setRequestMethod("POST");
                    d(httpURLConnection, request, bArrJ);
                    return;
                }
                return;
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                e(httpURLConnection, request);
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                e(httpURLConnection, request);
                return;
            case 3:
                httpURLConnection.setRequestMethod("DELETE");
                return;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                return;
            case 5:
                httpURLConnection.setRequestMethod("OPTIONS");
                return;
            case 6:
                httpURLConnection.setRequestMethod("TRACE");
                return;
            case 7:
                httpURLConnection.setRequestMethod("PATCH");
                e(httpURLConnection, request);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    public HurlStack(UrlRewriter urlRewriter) {
        this(urlRewriter, null);
    }

    public HurlStack(UrlRewriter urlRewriter, SSLSocketFactory sSLSocketFactory) {
        this.f5202a = urlRewriter;
        this.f5203b = sSLSocketFactory;
    }
}
