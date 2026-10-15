package f8;

import android.content.Context;
import android.net.Uri;
import com.squareup.okhttp.Cache;
import com.squareup.okhttp.CacheControl;
import com.squareup.okhttp.OkHttpClient;
import com.squareup.okhttp.Request;
import com.squareup.okhttp.Response;
import com.squareup.okhttp.ResponseBody;
import f8.j;
import java.io.File;
import java.io.IOException;
import java.util.concurrent.TimeUnit;

/* JADX INFO: compiled from: OkHttpDownloader.java */
/* JADX INFO: loaded from: classes2.dex */
public class s implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final OkHttpClient f29414a;

    public s(Context context) {
        this(e0.f(context));
    }

    private static OkHttpClient b() {
        OkHttpClient okHttpClient = new OkHttpClient();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        okHttpClient.setConnectTimeout(15000L, timeUnit);
        okHttpClient.setReadTimeout(20000L, timeUnit);
        okHttpClient.setWriteTimeout(20000L, timeUnit);
        return okHttpClient;
    }

    @Override // f8.j
    public j.a a(Uri uri, int i10) throws IOException {
        CacheControl cacheControlBuild;
        if (i10 == 0) {
            cacheControlBuild = null;
        } else if (q.c(i10)) {
            cacheControlBuild = CacheControl.FORCE_CACHE;
        } else {
            CacheControl.Builder builder = new CacheControl.Builder();
            if (!q.e(i10)) {
                builder.noCache();
            }
            if (!q.f(i10)) {
                builder.noStore();
            }
            cacheControlBuild = builder.build();
        }
        Request.Builder builderUrl = new Request.Builder().url(uri.toString());
        if (cacheControlBuild != null) {
            builderUrl.cacheControl(cacheControlBuild);
        }
        Response responseExecute = this.f29414a.newCall(builderUrl.build()).execute();
        int iCode = responseExecute.code();
        if (iCode < 300) {
            boolean z10 = responseExecute.cacheResponse() != null;
            ResponseBody responseBodyBody = responseExecute.body();
            return new j.a(responseBodyBody.byteStream(), z10, responseBodyBody.contentLength());
        }
        responseExecute.body().close();
        throw new j.b(iCode + " " + responseExecute.message(), i10, iCode);
    }

    public s(File file) {
        this(file, e0.a(file));
    }

    public s(File file, long j10) {
        this(b());
        try {
            this.f29414a.setCache(new Cache(file, j10));
        } catch (IOException unused) {
        }
    }

    public s(OkHttpClient okHttpClient) {
        this.f29414a = okHttpClient;
    }
}
