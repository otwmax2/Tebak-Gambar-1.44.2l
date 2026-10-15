package okio;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.util.Objects;

/* JADX INFO: compiled from: RealBufferedSource.java */
/* JADX INFO: loaded from: classes2.dex */
final class p implements e {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final c f33391o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final u f33392p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f33393q;

    p(u uVar) {
        Objects.requireNonNull(uVar, "source == null");
        this.f33392p = uVar;
    }

    @Override // okio.e, okio.d
    public c B() {
        return this.f33391o;
    }

    @Override // okio.e
    public String D2() throws IOException {
        return p1(Long.MAX_VALUE);
    }

    @Override // okio.e
    public int I2() throws IOException {
        y3(4L);
        return this.f33391o.I2();
    }

    @Override // okio.e
    public long K3(byte b10) throws IOException {
        return b(b10, 0L, Long.MAX_VALUE);
    }

    @Override // okio.e
    public byte[] M0() throws IOException {
        this.f33391o.h2(this.f33392p);
        return this.f33391o.M0();
    }

    @Override // okio.e
    public byte[] N2(long j10) throws IOException {
        y3(j10);
        return this.f33391o.N2(j10);
    }

    @Override // okio.e
    public long P3() throws IOException {
        byte bI;
        y3(1L);
        int i10 = 0;
        while (true) {
            int i11 = i10 + 1;
            if (!t2(i11)) {
                break;
            }
            bI = this.f33391o.i(i10);
            if ((bI < 48 || bI > 57) && ((bI < 97 || bI > 102) && (bI < 65 || bI > 70))) {
                break;
            }
            i10 = i11;
        }
        if (i10 == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(bI)));
        }
        return this.f33391o.P3();
    }

    @Override // okio.e
    public boolean Q1(long j10, f fVar) throws IOException {
        return c(j10, fVar, 0, fVar.J());
    }

    @Override // okio.e
    public boolean S0() throws IOException {
        if (this.f33393q) {
            throw new IllegalStateException("closed");
        }
        return this.f33391o.S0() && this.f33392p.read(this.f33391o, 8192L) == -1;
    }

    @Override // okio.e
    public InputStream S3() {
        return new a();
    }

    @Override // okio.e
    public String T1(Charset charset) throws IOException {
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        this.f33391o.h2(this.f33392p);
        return this.f33391o.T1(charset);
    }

    public long b(byte b10, long j10, long j11) throws IOException {
        if (this.f33393q) {
            throw new IllegalStateException("closed");
        }
        if (j10 < 0 || j11 < j10) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j10), Long.valueOf(j11)));
        }
        while (j10 < j11) {
            long j12 = this.f33391o.j(b10, j10, j11);
            if (j12 != -1) {
                return j12;
            }
            c cVar = this.f33391o;
            long j13 = cVar.f33354p;
            if (j13 >= j11 || this.f33392p.read(cVar, 8192L) == -1) {
                break;
            }
            j10 = Math.max(j10, j13);
        }
        return -1L;
    }

    public boolean c(long j10, f fVar, int i10, int i11) throws IOException {
        if (this.f33393q) {
            throw new IllegalStateException("closed");
        }
        if (j10 < 0 || i10 < 0 || i11 < 0 || fVar.J() - i10 < i11) {
            return false;
        }
        for (int i12 = 0; i12 < i11; i12++) {
            long j11 = ((long) i12) + j10;
            if (!t2(1 + j11) || this.f33391o.i(j11) != fVar.m(i10 + i12)) {
                return false;
            }
        }
        return true;
    }

    @Override // okio.u, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f33393q) {
            return;
        }
        this.f33393q = true;
        this.f33392p.close();
        this.f33391o.b();
    }

    @Override // okio.e
    public short e3() throws IOException {
        y3(2L);
        return this.f33391o.e3();
    }

    @Override // okio.e
    public f h0(long j10) throws IOException {
        y3(j10);
        return this.f33391o.h0(j10);
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f33393q;
    }

    @Override // okio.e
    public long l3(t tVar) throws IOException {
        if (tVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        long j10 = 0;
        while (this.f33392p.read(this.f33391o, 8192L) != -1) {
            long jF = this.f33391o.f();
            if (jF > 0) {
                j10 += jF;
                tVar.a2(this.f33391o, jF);
            }
        }
        if (this.f33391o.s() <= 0) {
            return j10;
        }
        long jS = j10 + this.f33391o.s();
        c cVar = this.f33391o;
        tVar.a2(cVar, cVar.s());
        return jS;
    }

    @Override // okio.e
    public String p1(long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException("limit < 0: " + j10);
        }
        long j11 = j10 == Long.MAX_VALUE ? Long.MAX_VALUE : j10 + 1;
        long jB = b((byte) 10, 0L, j11);
        if (jB != -1) {
            return this.f33391o.r(jB);
        }
        if (j11 < Long.MAX_VALUE && t2(j11) && this.f33391o.i(j11 - 1) == 13 && t2(1 + j11) && this.f33391o.i(j11) == 10) {
            return this.f33391o.r(j11);
        }
        c cVar = new c();
        c cVar2 = this.f33391o;
        cVar2.g(cVar, 0L, Math.min(32L, cVar2.s()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f33391o.s(), j10) + " content=" + cVar.m().n() + (char) 8230);
    }

    @Override // okio.u
    public long read(c cVar, long j10) throws IOException {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (this.f33393q) {
            throw new IllegalStateException("closed");
        }
        c cVar2 = this.f33391o;
        if (cVar2.f33354p == 0 && this.f33392p.read(cVar2, 8192L) == -1) {
            return -1L;
        }
        return this.f33391o.read(cVar, Math.min(j10, this.f33391o.f33354p));
    }

    @Override // okio.e
    public byte readByte() throws IOException {
        y3(1L);
        return this.f33391o.readByte();
    }

    @Override // okio.e
    public void readFully(byte[] bArr) throws IOException {
        try {
            y3(bArr.length);
            this.f33391o.readFully(bArr);
        } catch (EOFException e10) {
            int i10 = 0;
            while (true) {
                c cVar = this.f33391o;
                long j10 = cVar.f33354p;
                if (j10 <= 0) {
                    throw e10;
                }
                int i11 = cVar.read(bArr, i10, (int) j10);
                if (i11 == -1) {
                    throw new AssertionError();
                }
                i10 += i11;
            }
        }
    }

    @Override // okio.e
    public int readInt() throws IOException {
        y3(4L);
        return this.f33391o.readInt();
    }

    @Override // okio.e
    public short readShort() throws IOException {
        y3(2L);
        return this.f33391o.readShort();
    }

    @Override // okio.e
    public void skip(long j10) throws IOException {
        if (this.f33393q) {
            throw new IllegalStateException("closed");
        }
        while (j10 > 0) {
            c cVar = this.f33391o;
            if (cVar.f33354p == 0 && this.f33392p.read(cVar, 8192L) == -1) {
                throw new EOFException();
            }
            long jMin = Math.min(j10, this.f33391o.s());
            this.f33391o.skip(jMin);
            j10 -= jMin;
        }
    }

    @Override // okio.e
    public boolean t2(long j10) throws IOException {
        c cVar;
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (this.f33393q) {
            throw new IllegalStateException("closed");
        }
        do {
            cVar = this.f33391o;
            if (cVar.f33354p >= j10) {
                return true;
            }
        } while (this.f33392p.read(cVar, 8192L) != -1);
        return false;
    }

    @Override // okio.u
    public v timeout() {
        return this.f33392p.timeout();
    }

    public String toString() {
        return "buffer(" + this.f33392p + ")";
    }

    @Override // okio.e
    public void y3(long j10) throws IOException {
        if (!t2(j10)) {
            throw new EOFException();
        }
    }

    /* JADX INFO: compiled from: RealBufferedSource.java */
    class a extends InputStream {
        a() {
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            p pVar = p.this;
            if (pVar.f33393q) {
                throw new IOException("closed");
            }
            return (int) Math.min(pVar.f33391o.f33354p, 2147483647L);
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            p.this.close();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            p pVar = p.this;
            if (pVar.f33393q) {
                throw new IOException("closed");
            }
            c cVar = pVar.f33391o;
            if (cVar.f33354p == 0 && pVar.f33392p.read(cVar, 8192L) == -1) {
                return -1;
            }
            return p.this.f33391o.readByte() & 255;
        }

        public String toString() {
            return p.this + ".inputStream()";
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i10, int i11) throws IOException {
            if (!p.this.f33393q) {
                w.b(bArr.length, i10, i11);
                p pVar = p.this;
                c cVar = pVar.f33391o;
                if (cVar.f33354p == 0 && pVar.f33392p.read(cVar, 8192L) == -1) {
                    return -1;
                }
                return p.this.f33391o.read(bArr, i10, i11);
            }
            throw new IOException("closed");
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        c cVar = this.f33391o;
        if (cVar.f33354p == 0 && this.f33392p.read(cVar, 8192L) == -1) {
            return -1;
        }
        return this.f33391o.read(byteBuffer);
    }
}
