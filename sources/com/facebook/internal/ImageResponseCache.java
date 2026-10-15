package com.facebook.internal;

import android.net.Uri;
import com.facebook.LoggingBehavior;
import com.facebook.internal.FileLruCache;
import com.facebook.internal.Logger;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.net.HttpURLConnection;

/* JADX INFO: compiled from: ImageResponseCache.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ImageResponseCache {
    public static final ImageResponseCache INSTANCE = new ImageResponseCache();
    private static final String TAG = ImageResponseCache.class.getSimpleName();
    private static FileLruCache imageCache;

    /* JADX INFO: compiled from: ImageResponseCache.kt */
    private static final class BufferedHttpInputStream extends BufferedInputStream {
        private HttpURLConnection connection;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BufferedHttpInputStream(InputStream inputStream, HttpURLConnection httpURLConnection) {
            super(inputStream, Utility.DEFAULT_STREAM_BUFFER_SIZE);
            t9.m.e(httpURLConnection, "connection");
            this.connection = httpURLConnection;
        }

        @Override // java.io.BufferedInputStream, java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            super.close();
            Utility utility = Utility.INSTANCE;
            Utility.disconnectQuietly(this.connection);
        }

        public final HttpURLConnection getConnection() {
            return this.connection;
        }

        public final void setConnection(HttpURLConnection httpURLConnection) {
            t9.m.e(httpURLConnection, "<set-?>");
            this.connection = httpURLConnection;
        }
    }

    private ImageResponseCache() {
    }

    public static final void clearCache() {
        try {
            getCache().clearCache();
        } catch (IOException e10) {
            Logger.Companion companion = Logger.Companion;
            LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
            String str = TAG;
            t9.m.d(str, "TAG");
            companion.log(loggingBehavior, 5, str, t9.m.k("clearCache failed ", e10.getMessage()));
        }
    }

    public static final synchronized FileLruCache getCache() throws IOException {
        FileLruCache fileLruCache;
        if (imageCache == null) {
            String str = TAG;
            t9.m.d(str, "TAG");
            imageCache = new FileLruCache(str, new FileLruCache.Limits());
        }
        fileLruCache = imageCache;
        if (fileLruCache == null) {
            t9.m.p("imageCache");
            throw null;
        }
        return fileLruCache;
    }

    public static final InputStream getCachedImageStream(Uri uri) {
        if (uri == null || !INSTANCE.isCDNURL(uri)) {
            return null;
        }
        try {
            FileLruCache cache = getCache();
            String string = uri.toString();
            t9.m.d(string, "uri.toString()");
            return FileLruCache.get$default(cache, string, null, 2, null);
        } catch (IOException e10) {
            Logger.Companion companion = Logger.Companion;
            LoggingBehavior loggingBehavior = LoggingBehavior.CACHE;
            String str = TAG;
            t9.m.d(str, "TAG");
            companion.log(loggingBehavior, 5, str, e10.toString());
            return null;
        }
    }

    public static final InputStream interceptAndCacheImageStream(HttpURLConnection httpURLConnection) throws IOException {
        t9.m.e(httpURLConnection, "connection");
        if (httpURLConnection.getResponseCode() != 200) {
            return null;
        }
        Uri uri = Uri.parse(httpURLConnection.getURL().toString());
        InputStream inputStream = httpURLConnection.getInputStream();
        try {
            if (!INSTANCE.isCDNURL(uri)) {
                return inputStream;
            }
            FileLruCache cache = getCache();
            String string = uri.toString();
            t9.m.d(string, "uri.toString()");
            return cache.interceptAndPut(string, new BufferedHttpInputStream(inputStream, httpURLConnection));
        } catch (IOException unused) {
            return inputStream;
        }
    }

    private final boolean isCDNURL(Uri uri) {
        String host;
        return (uri == null || (host = uri.getHost()) == null || (!t9.m.a(host, "fbcdn.net") && !ba.p.l(host, ".fbcdn.net", false, 2, null) && (!ba.p.u(host, "fbcdn", false, 2, null) || !ba.p.l(host, ".akamaihd.net", false, 2, null)))) ? false : true;
    }

    public final String getTAG() {
        return TAG;
    }
}
