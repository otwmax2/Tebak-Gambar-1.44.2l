package f8;

import android.content.Context;
import android.net.Uri;
import android.net.http.HttpResponseCache;
import android.os.Build;
import f8.j;
import java.io.File;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;

/* JADX INFO: compiled from: UrlConnectionDownloader.java */
/* JADX INFO: loaded from: classes2.dex */
public class d0 implements j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static volatile Object f29345b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f29346c = new Object();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final ThreadLocal<StringBuilder> f29347d = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f29348a;

    /* JADX INFO: compiled from: UrlConnectionDownloader.java */
    static class a extends ThreadLocal<StringBuilder> {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // java.lang.ThreadLocal
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public StringBuilder initialValue() {
            return new StringBuilder();
        }
    }

    /* JADX INFO: compiled from: UrlConnectionDownloader.java */
    private static class b {
        static Object a(Context context) throws IOException {
            File fileF = e0.f(context);
            HttpResponseCache installed = HttpResponseCache.getInstalled();
            return installed == null ? HttpResponseCache.install(fileF, e0.a(fileF)) : installed;
        }
    }

    public d0(Context context) {
        this.f29348a = context.getApplicationContext();
    }

    private static void b(Context context) {
        if (f29345b == null) {
            try {
                synchronized (f29346c) {
                    if (f29345b == null) {
                        f29345b = b.a(context);
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    @Override // f8.j
    public j.a a(Uri uri, int i10) throws IOException {
        String string;
        if (Build.VERSION.SDK_INT >= 14) {
            b(this.f29348a);
        }
        HttpURLConnection httpURLConnectionC = c(uri);
        httpURLConnectionC.setUseCaches(true);
        if (i10 != 0) {
            if (q.c(i10)) {
                string = "only-if-cached,max-age=2147483647";
            } else {
                StringBuilder sb = f29347d.get();
                sb.setLength(0);
                if (!q.e(i10)) {
                    sb.append("no-cache");
                }
                if (!q.f(i10)) {
                    if (sb.length() > 0) {
                        sb.append(',');
                    }
                    sb.append("no-store");
                }
                string = sb.toString();
            }
            httpURLConnectionC.setRequestProperty("Cache-Control", string);
        }
        int responseCode = httpURLConnectionC.getResponseCode();
        if (responseCode < 300) {
            return new j.a(httpURLConnectionC.getInputStream(), e0.w(httpURLConnectionC.getHeaderField("X-Android-Response-Source")), httpURLConnectionC.getHeaderFieldInt("Content-Length", -1));
        }
        httpURLConnectionC.disconnect();
        throw new j.b(responseCode + " " + httpURLConnectionC.getResponseMessage(), i10, responseCode);
    }

    protected HttpURLConnection c(Uri uri) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) new URL(uri.toString()).openConnection();
        httpURLConnection.setConnectTimeout(15000);
        httpURLConnection.setReadTimeout(20000);
        return httpURLConnection;
    }
}
