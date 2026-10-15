package x2;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: ContentLengthInputStream.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends FilterInputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final long f36243o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f36244p;

    b(InputStream inputStream, long j10) {
        super(inputStream);
        this.f36243o = j10;
    }

    private int b(int i10) throws IOException {
        if (i10 >= 0) {
            this.f36244p += i10;
        } else if (this.f36243o - ((long) this.f36244p) > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f36243o + ", but read: " + this.f36244p);
        }
        return i10;
    }

    public static InputStream c(InputStream inputStream, long j10) {
        return new b(inputStream, j10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        return (int) Math.max(this.f36243o - ((long) this.f36244p), ((FilterInputStream) this).in.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        return b(super.read());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i10, int i11) throws IOException {
        return b(super.read(bArr, i10, i11));
    }
}
