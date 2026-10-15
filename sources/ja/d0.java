package ja;

import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: ResponseBody.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d0 implements Closeable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @Nullable
    private Reader f31009o;

    /* JADX INFO: compiled from: ResponseBody.java */
    class a extends d0 {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ v f31010p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ long f31011q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ okio.e f31012r;

        a(v vVar, long j10, okio.e eVar) {
            this.f31010p = vVar;
            this.f31011q = j10;
            this.f31012r = eVar;
        }

        @Override // ja.d0
        public long contentLength() {
            return this.f31011q;
        }

        @Override // ja.d0
        @Nullable
        public v contentType() {
            return this.f31010p;
        }

        @Override // ja.d0
        public okio.e source() {
            return this.f31012r;
        }
    }

    /* JADX INFO: compiled from: ResponseBody.java */
    static final class b extends Reader {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final okio.e f31013o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final Charset f31014p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private boolean f31015q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        @Nullable
        private Reader f31016r;

        b(okio.e eVar, Charset charset) {
            this.f31013o = eVar;
            this.f31014p = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            this.f31015q = true;
            Reader reader = this.f31016r;
            if (reader != null) {
                reader.close();
            } else {
                this.f31013o.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i10, int i11) throws IOException {
            if (this.f31015q) {
                throw new IOException("Stream closed");
            }
            Reader reader = this.f31016r;
            if (reader == null) {
                InputStreamReader inputStreamReader = new InputStreamReader(this.f31013o.S3(), ka.c.c(this.f31013o, this.f31014p));
                this.f31016r = inputStreamReader;
                reader = inputStreamReader;
            }
            return reader.read(cArr, i10, i11);
        }
    }

    private Charset b() {
        v vVarContentType = contentType();
        return vVarContentType != null ? vVarContentType.b(ka.c.f31647j) : ka.c.f31647j;
    }

    public static d0 create(@Nullable v vVar, String str) {
        Charset charset = ka.c.f31647j;
        if (vVar != null) {
            Charset charsetA = vVar.a();
            if (charsetA == null) {
                vVar = v.d(vVar + "; charset=utf-8");
            } else {
                charset = charsetA;
            }
        }
        okio.c cVarI = new okio.c().I(str, charset);
        return create(vVar, cVarI.s(), cVarI);
    }

    public final InputStream byteStream() {
        return source().S3();
    }

    public final byte[] bytes() throws IOException {
        long jContentLength = contentLength();
        if (jContentLength > 2147483647L) {
            throw new IOException("Cannot buffer entire body for content length: " + jContentLength);
        }
        okio.e eVarSource = source();
        try {
            byte[] bArrM0 = eVarSource.M0();
            ka.c.g(eVarSource);
            if (jContentLength == -1 || jContentLength == bArrM0.length) {
                return bArrM0;
            }
            throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + bArrM0.length + ") disagree");
        } catch (Throwable th) {
            ka.c.g(eVarSource);
            throw th;
        }
    }

    public final Reader charStream() {
        Reader reader = this.f31009o;
        if (reader != null) {
            return reader;
        }
        b bVar = new b(source(), b());
        this.f31009o = bVar;
        return bVar;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        ka.c.g(source());
    }

    public abstract long contentLength();

    @Nullable
    public abstract v contentType();

    public abstract okio.e source();

    public final String string() throws IOException {
        okio.e eVarSource = source();
        try {
            return eVarSource.T1(ka.c.c(eVarSource, b()));
        } finally {
            ka.c.g(eVarSource);
        }
    }

    public static d0 create(@Nullable v vVar, byte[] bArr) {
        return create(vVar, bArr.length, new okio.c().Y2(bArr));
    }

    public static d0 create(@Nullable v vVar, okio.f fVar) {
        return create(vVar, fVar.J(), new okio.c().c3(fVar));
    }

    public static d0 create(@Nullable v vVar, long j10, okio.e eVar) {
        Objects.requireNonNull(eVar, "source == null");
        return new a(vVar, j10, eVar);
    }
}
