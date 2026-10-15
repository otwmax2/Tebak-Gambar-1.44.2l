package a2;

import android.text.TextUtils;
import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.Map;

/* JADX INFO: compiled from: HttpUrlFetcher.java */
/* JADX INFO: loaded from: classes.dex */
public class f implements a2.c<InputStream> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final c f35f = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g2.d f36a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c f37b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HttpURLConnection f38c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private InputStream f39d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f40e;

    /* JADX INFO: compiled from: HttpUrlFetcher.java */
    private static class b implements c {
        private b() {
        }

        @Override // a2.f.c
        public HttpURLConnection a(URL url) throws IOException {
            return (HttpURLConnection) url.openConnection();
        }
    }

    /* JADX INFO: compiled from: HttpUrlFetcher.java */
    interface c {
        HttpURLConnection a(URL url) throws IOException;
    }

    public f(g2.d dVar) {
        this(dVar, f35f);
    }

    private InputStream d(HttpURLConnection httpURLConnection) throws IOException {
        if (TextUtils.isEmpty(httpURLConnection.getContentEncoding())) {
            this.f39d = x2.b.c(httpURLConnection.getInputStream(), httpURLConnection.getContentLength());
        } else {
            if (Log.isLoggable("HttpUrlFetcher", 3)) {
                Log.d("HttpUrlFetcher", "Got non empty content encoding: " + httpURLConnection.getContentEncoding());
            }
            this.f39d = httpURLConnection.getInputStream();
        }
        return this.f39d;
    }

    private InputStream f(URL url, int i10, URL url2, Map<String, String> map) throws IOException {
        if (i10 >= 5) {
            throw new IOException("Too many (> 5) redirects!");
        }
        if (url2 != null) {
            try {
                if (url.toURI().equals(url2.toURI())) {
                    throw new IOException("In re-direct loop");
                }
            } catch (URISyntaxException unused) {
            }
        }
        this.f38c = this.f37b.a(url);
        for (Map.Entry<String, String> entry : map.entrySet()) {
            this.f38c.addRequestProperty(entry.getKey(), entry.getValue());
        }
        this.f38c.setConnectTimeout(2500);
        this.f38c.setReadTimeout(2500);
        this.f38c.setUseCaches(false);
        this.f38c.setDoInput(true);
        this.f38c.connect();
        if (this.f40e) {
            return null;
        }
        int responseCode = this.f38c.getResponseCode();
        int i11 = responseCode / 100;
        if (i11 == 2) {
            return d(this.f38c);
        }
        if (i11 == 3) {
            String headerField = this.f38c.getHeaderField("Location");
            if (TextUtils.isEmpty(headerField)) {
                throw new IOException("Received empty or null redirect url");
            }
            return f(new URL(url, headerField), i10 + 1, url, map);
        }
        if (responseCode == -1) {
            throw new IOException("Unable to retrieve response code from HttpUrlConnection.");
        }
        throw new IOException("Request failed " + responseCode + ": " + this.f38c.getResponseMessage());
    }

    @Override // a2.c
    public String a() {
        return this.f36a.a();
    }

    @Override // a2.c
    public void c() {
        InputStream inputStream = this.f39d;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
        HttpURLConnection httpURLConnection = this.f38c;
        if (httpURLConnection != null) {
            httpURLConnection.disconnect();
        }
    }

    @Override // a2.c
    public void cancel() {
        this.f40e = true;
    }

    @Override // a2.c
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public InputStream b(v1.i iVar) throws Exception {
        return f(this.f36a.e(), 0, null, this.f36a.b());
    }

    f(g2.d dVar, c cVar) {
        this.f36a = dVar;
        this.f37b = cVar;
    }
}
