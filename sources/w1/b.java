package w1;

import com.facebook.internal.Utility;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;

/* JADX INFO: compiled from: StrictLineReader.java */
/* JADX INFO: loaded from: classes.dex */
class b implements Closeable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final InputStream f35973o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Charset f35974p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private byte[] f35975q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f35976r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f35977s;

    /* JADX INFO: compiled from: StrictLineReader.java */
    class a extends ByteArrayOutputStream {
        a(int i10) {
            super(i10);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i10 = ((ByteArrayOutputStream) this).count;
            if (i10 > 0 && ((ByteArrayOutputStream) this).buf[i10 - 1] == 13) {
                i10--;
            }
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i10, b.this.f35974p.name());
            } catch (UnsupportedEncodingException e10) {
                throw new AssertionError(e10);
            }
        }
    }

    public b(InputStream inputStream, Charset charset) {
        this(inputStream, Utility.DEFAULT_STREAM_BUFFER_SIZE, charset);
    }

    private void c() throws IOException {
        InputStream inputStream = this.f35973o;
        byte[] bArr = this.f35975q;
        int i10 = inputStream.read(bArr, 0, bArr.length);
        if (i10 == -1) {
            throw new EOFException();
        }
        this.f35976r = 0;
        this.f35977s = i10;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f35973o) {
            if (this.f35975q != null) {
                this.f35975q = null;
                this.f35973o.close();
            }
        }
    }

    public boolean d() {
        return this.f35977s == -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x002b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String e() throws java.io.IOException {
        /*
            r7 = this;
            java.io.InputStream r0 = r7.f35973o
            monitor-enter(r0)
            byte[] r1 = r7.f35975q     // Catch: java.lang.Throwable -> L87
            if (r1 == 0) goto L7f
            int r1 = r7.f35976r     // Catch: java.lang.Throwable -> L87
            int r2 = r7.f35977s     // Catch: java.lang.Throwable -> L87
            if (r1 < r2) goto L10
            r7.c()     // Catch: java.lang.Throwable -> L87
        L10:
            int r1 = r7.f35976r     // Catch: java.lang.Throwable -> L87
        L12:
            int r2 = r7.f35977s     // Catch: java.lang.Throwable -> L87
            r3 = 10
            if (r1 == r2) goto L41
            byte[] r2 = r7.f35975q     // Catch: java.lang.Throwable -> L87
            r4 = r2[r1]     // Catch: java.lang.Throwable -> L87
            if (r4 != r3) goto L3e
            int r3 = r7.f35976r     // Catch: java.lang.Throwable -> L87
            if (r1 == r3) goto L2b
            int r4 = r1 + (-1)
            r5 = r2[r4]     // Catch: java.lang.Throwable -> L87
            r6 = 13
            if (r5 != r6) goto L2b
            goto L2c
        L2b:
            r4 = r1
        L2c:
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> L87
            int r4 = r4 - r3
            java.nio.charset.Charset r6 = r7.f35974p     // Catch: java.lang.Throwable -> L87
            java.lang.String r6 = r6.name()     // Catch: java.lang.Throwable -> L87
            r5.<init>(r2, r3, r4, r6)     // Catch: java.lang.Throwable -> L87
            int r1 = r1 + 1
            r7.f35976r = r1     // Catch: java.lang.Throwable -> L87
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L87
            return r5
        L3e:
            int r1 = r1 + 1
            goto L12
        L41:
            w1.b$a r1 = new w1.b$a     // Catch: java.lang.Throwable -> L87
            int r2 = r7.f35977s     // Catch: java.lang.Throwable -> L87
            int r4 = r7.f35976r     // Catch: java.lang.Throwable -> L87
            int r2 = r2 - r4
            int r2 = r2 + 80
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L87
        L4d:
            byte[] r2 = r7.f35975q     // Catch: java.lang.Throwable -> L87
            int r4 = r7.f35976r     // Catch: java.lang.Throwable -> L87
            int r5 = r7.f35977s     // Catch: java.lang.Throwable -> L87
            int r5 = r5 - r4
            r1.write(r2, r4, r5)     // Catch: java.lang.Throwable -> L87
            r2 = -1
            r7.f35977s = r2     // Catch: java.lang.Throwable -> L87
            r7.c()     // Catch: java.lang.Throwable -> L87
            int r2 = r7.f35976r     // Catch: java.lang.Throwable -> L87
        L5f:
            int r4 = r7.f35977s     // Catch: java.lang.Throwable -> L87
            if (r2 == r4) goto L4d
            byte[] r4 = r7.f35975q     // Catch: java.lang.Throwable -> L87
            r5 = r4[r2]     // Catch: java.lang.Throwable -> L87
            if (r5 != r3) goto L7c
            int r3 = r7.f35976r     // Catch: java.lang.Throwable -> L87
            if (r2 == r3) goto L72
            int r5 = r2 - r3
            r1.write(r4, r3, r5)     // Catch: java.lang.Throwable -> L87
        L72:
            int r2 = r2 + 1
            r7.f35976r = r2     // Catch: java.lang.Throwable -> L87
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L87
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L87
            return r1
        L7c:
            int r2 = r2 + 1
            goto L5f
        L7f:
            java.io.IOException r1 = new java.io.IOException     // Catch: java.lang.Throwable -> L87
            java.lang.String r2 = "LineReader is closed"
            r1.<init>(r2)     // Catch: java.lang.Throwable -> L87
            throw r1     // Catch: java.lang.Throwable -> L87
        L87:
            r1 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L87
            goto L8b
        L8a:
            throw r1
        L8b:
            goto L8a
        */
        throw new UnsupportedOperationException("Method not decompiled: w1.b.e():java.lang.String");
    }

    public b(InputStream inputStream, int i10, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i10 < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(c.f35979a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f35973o = inputStream;
        this.f35974p = charset;
        this.f35975q = new byte[i10];
    }
}
