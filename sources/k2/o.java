package k2;

import android.util.Log;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: RecyclableBufferedInputStream.java */
/* JADX INFO: loaded from: classes.dex */
public class o extends FilterInputStream {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private volatile byte[] f31354o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f31355p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f31356q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f31357r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f31358s;

    /* JADX INFO: compiled from: RecyclableBufferedInputStream.java */
    public static class a extends RuntimeException {
        private static final long serialVersionUID = -4338378848813561757L;

        public a(String str) {
            super(str);
        }
    }

    public o(InputStream inputStream, byte[] bArr) {
        super(inputStream);
        this.f31357r = -1;
        if (bArr == null || bArr.length == 0) {
            throw new IllegalArgumentException("buffer is null or empty");
        }
        this.f31354o = bArr;
    }

    private int b(InputStream inputStream, byte[] bArr) throws IOException {
        int i10 = this.f31357r;
        if (i10 != -1) {
            int i11 = this.f31358s - i10;
            int i12 = this.f31356q;
            if (i11 < i12) {
                if (i10 == 0 && i12 > bArr.length && this.f31355p == bArr.length) {
                    int length = bArr.length * 2;
                    if (length <= i12) {
                        i12 = length;
                    }
                    if (Log.isLoggable("BufferedIs", 3)) {
                        Log.d("BufferedIs", "allocate buffer of length: " + i12);
                    }
                    byte[] bArr2 = new byte[i12];
                    System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                    this.f31354o = bArr2;
                    bArr = bArr2;
                } else if (i10 > 0) {
                    System.arraycopy(bArr, i10, bArr, 0, bArr.length - i10);
                }
                int i13 = this.f31358s - this.f31357r;
                this.f31358s = i13;
                this.f31357r = 0;
                this.f31355p = 0;
                int i14 = inputStream.read(bArr, i13, bArr.length - i13);
                int i15 = this.f31358s;
                if (i14 > 0) {
                    i15 += i14;
                }
                this.f31355p = i15;
                return i14;
            }
        }
        int i16 = inputStream.read(bArr);
        if (i16 > 0) {
            this.f31357r = -1;
            this.f31358s = 0;
            this.f31355p = i16;
        }
        return i16;
    }

    private static IOException d() throws IOException {
        throw new IOException("BufferedInputStream is closed");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int available() throws IOException {
        InputStream inputStream;
        inputStream = ((FilterInputStream) this).in;
        if (this.f31354o == null || inputStream == null) {
            throw d();
        }
        return (this.f31355p - this.f31358s) + inputStream.available();
    }

    public synchronized void c() {
        this.f31356q = this.f31354o.length;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f31354o = null;
        InputStream inputStream = ((FilterInputStream) this).in;
        ((FilterInputStream) this).in = null;
        if (inputStream != null) {
            inputStream.close();
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void mark(int i10) {
        this.f31356q = Math.max(this.f31356q, i10);
        this.f31357r = this.f31358s;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read() throws IOException {
        byte[] bArr = this.f31354o;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null || inputStream == null) {
            throw d();
        }
        if (this.f31358s >= this.f31355p && b(inputStream, bArr) == -1) {
            return -1;
        }
        if (bArr != this.f31354o && (bArr = this.f31354o) == null) {
            throw d();
        }
        int i10 = this.f31355p;
        int i11 = this.f31358s;
        if (i10 - i11 <= 0) {
            return -1;
        }
        this.f31358s = i11 + 1;
        return bArr[i11] & 255;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized void reset() throws IOException {
        if (this.f31354o == null) {
            throw new IOException("Stream is closed");
        }
        int i10 = this.f31357r;
        if (-1 == i10) {
            throw new a("Mark has been invalidated");
        }
        this.f31358s = i10;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized long skip(long j10) throws IOException {
        byte[] bArr = this.f31354o;
        InputStream inputStream = ((FilterInputStream) this).in;
        if (bArr == null) {
            throw d();
        }
        if (j10 < 1) {
            return 0L;
        }
        if (inputStream == null) {
            throw d();
        }
        int i10 = this.f31355p;
        int i11 = this.f31358s;
        if (i10 - i11 >= j10) {
            this.f31358s = (int) (((long) i11) + j10);
            return j10;
        }
        long j11 = i10 - i11;
        this.f31358s = i10;
        if (this.f31357r == -1 || j10 > this.f31356q) {
            return j11 + inputStream.skip(j10 - j11);
        }
        if (b(inputStream, bArr) == -1) {
            return j11;
        }
        int i12 = this.f31355p;
        int i13 = this.f31358s;
        long j12 = j10 - j11;
        if (i12 - i13 >= j12) {
            this.f31358s = (int) (((long) i13) + j12);
            return j10;
        }
        long j13 = (j11 + ((long) i12)) - ((long) i13);
        this.f31358s = i12;
        return j13;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public synchronized int read(byte[] bArr, int i10, int i11) throws IOException {
        int i12;
        int i13;
        byte[] bArr2 = this.f31354o;
        if (bArr2 == null) {
            throw d();
        }
        if (i11 == 0) {
            return 0;
        }
        InputStream inputStream = ((FilterInputStream) this).in;
        if (inputStream != null) {
            int i14 = this.f31358s;
            int i15 = this.f31355p;
            if (i14 < i15) {
                int i16 = i15 - i14 >= i11 ? i11 : i15 - i14;
                System.arraycopy(bArr2, i14, bArr, i10, i16);
                this.f31358s += i16;
                if (i16 == i11 || inputStream.available() == 0) {
                    return i16;
                }
                i10 += i16;
                i12 = i11 - i16;
            } else {
                i12 = i11;
            }
            while (true) {
                if (this.f31357r == -1 && i12 >= bArr2.length) {
                    i13 = inputStream.read(bArr, i10, i12);
                    if (i13 == -1) {
                        return i12 != i11 ? i11 - i12 : -1;
                    }
                } else {
                    if (b(inputStream, bArr2) == -1) {
                        return i12 != i11 ? i11 - i12 : -1;
                    }
                    if (bArr2 != this.f31354o && (bArr2 = this.f31354o) == null) {
                        throw d();
                    }
                    int i17 = this.f31355p;
                    int i18 = this.f31358s;
                    i13 = i17 - i18 >= i12 ? i12 : i17 - i18;
                    System.arraycopy(bArr2, i18, bArr, i10, i13);
                    this.f31358s += i13;
                }
                i12 -= i13;
                if (i12 == 0) {
                    return i11;
                }
                if (inputStream.available() == 0) {
                    return i11 - i12;
                }
                i10 += i13;
            }
        } else {
            throw d();
        }
    }
}
