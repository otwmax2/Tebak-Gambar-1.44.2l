package f8;

import android.graphics.Bitmap;
import android.net.Uri;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: Downloader.java */
/* JADX INFO: loaded from: classes2.dex */
public interface j {

    /* JADX INFO: compiled from: Downloader.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final InputStream f29376a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Bitmap f29377b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final boolean f29378c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final long f29379d;

        public a(InputStream inputStream, boolean z10, long j10) {
            if (inputStream == null) {
                throw new IllegalArgumentException("Stream may not be null.");
            }
            this.f29376a = inputStream;
            this.f29377b = null;
            this.f29378c = z10;
            this.f29379d = j10;
        }

        @Deprecated
        public Bitmap a() {
            return this.f29377b;
        }

        public long b() {
            return this.f29379d;
        }

        public InputStream c() {
            return this.f29376a;
        }
    }

    /* JADX INFO: compiled from: Downloader.java */
    public static class b extends IOException {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final boolean f29380o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final int f29381p;

        public b(String str, int i10, int i11) {
            super(str);
            this.f29380o = q.c(i10);
            this.f29381p = i11;
        }
    }

    a a(Uri uri, int i10) throws IOException;
}
