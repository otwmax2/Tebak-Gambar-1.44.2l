package x2;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: MarkEnforcingInputStream.java */
/* JADX INFO: loaded from: classes.dex */
public class f extends FilterInputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f36253o;

    public f(InputStream inputStream) {
        super(inputStream);
        this.f36253o = Integer.MIN_VALUE;
    }

    private long b(long j10) {
        int i10 = this.f36253o;
        if (i10 == 0) {
            return -1L;
        }
        return (i10 == Integer.MIN_VALUE || j10 <= ((long) i10)) ? j10 : i10;
    }

    private void c(long j10) {
        int i10 = this.f36253o;
        if (i10 == Integer.MIN_VALUE || j10 == -1) {
            return;
        }
        this.f36253o = (int) (((long) i10) - j10);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i10 = this.f36253o;
        return i10 == Integer.MIN_VALUE ? super.available() : Math.min(i10, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i10) {
        super.mark(i10);
        this.f36253o = i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (b(1L) == -1) {
            return -1;
        }
        int i10 = super.read();
        c(1L);
        return i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        super.reset();
        this.f36253o = Integer.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j10) throws IOException {
        long jB = b(j10);
        if (jB == -1) {
            return -1L;
        }
        long jSkip = super.skip(jB);
        c(jSkip);
        return jSkip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i10, int i11) throws IOException {
        int iB = (int) b(i11);
        if (iB == -1) {
            return -1;
        }
        int i12 = super.read(bArr, i10, iB);
        c(i12);
        return i12;
    }
}
