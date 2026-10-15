package f8;

import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: MarkableInputStream.java */
/* JADX INFO: loaded from: classes2.dex */
final class n extends InputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final InputStream f29390o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long f29391p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private long f29392q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private long f29393r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private long f29394s;

    public n(InputStream inputStream) {
        this(inputStream, 4096);
    }

    private void d(long j10) {
        try {
            long j11 = this.f29392q;
            long j12 = this.f29391p;
            if (j11 >= j12 || j12 > this.f29393r) {
                this.f29392q = j12;
                this.f29390o.mark((int) (j10 - j12));
            } else {
                this.f29390o.reset();
                this.f29390o.mark((int) (j10 - this.f29392q));
                e(this.f29392q, this.f29391p);
            }
            this.f29393r = j10;
        } catch (IOException e10) {
            throw new IllegalStateException("Unable to mark: " + e10);
        }
    }

    private void e(long j10, long j11) throws IOException {
        while (j10 < j11) {
            long jSkip = this.f29390o.skip(j11 - j10);
            if (jSkip == 0) {
                if (read() == -1) {
                    return;
                } else {
                    jSkip = 1;
                }
            }
            j10 += jSkip;
        }
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f29390o.available();
    }

    public void b(long j10) throws IOException {
        if (this.f29391p > this.f29393r || j10 < this.f29392q) {
            throw new IOException("Cannot reset");
        }
        this.f29390o.reset();
        e(this.f29392q, j10);
        this.f29391p = j10;
    }

    public long c(int i10) {
        long j10 = this.f29391p + ((long) i10);
        if (this.f29393r < j10) {
            d(j10);
        }
        return this.f29391p;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f29390o.close();
    }

    @Override // java.io.InputStream
    public void mark(int i10) {
        this.f29394s = c(i10);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f29390o.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i10 = this.f29390o.read();
        if (i10 != -1) {
            this.f29391p++;
        }
        return i10;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        b(this.f29394s);
    }

    @Override // java.io.InputStream
    public long skip(long j10) throws IOException {
        long jSkip = this.f29390o.skip(j10);
        this.f29391p += jSkip;
        return jSkip;
    }

    public n(InputStream inputStream, int i10) {
        this.f29394s = -1L;
        this.f29390o = inputStream.markSupported() ? inputStream : new BufferedInputStream(inputStream, i10);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        int i10 = this.f29390o.read(bArr);
        if (i10 != -1) {
            this.f29391p += (long) i10;
        }
        return i10;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12 = this.f29390o.read(bArr, i10, i11);
        if (i12 != -1) {
            this.f29391p += (long) i12;
        }
        return i12;
    }
}
