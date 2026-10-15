package okio;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;

/* JADX INFO: compiled from: RealBufferedSink.java */
/* JADX INFO: loaded from: classes2.dex */
final class o implements d {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final c f33388o = new c();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final t f33389p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    boolean f33390q;

    o(t tVar) {
        Objects.requireNonNull(tVar, "sink == null");
        this.f33389p = tVar;
    }

    @Override // okio.d
    public c B() {
        return this.f33388o;
    }

    @Override // okio.d
    public d D3(long j10) throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        this.f33388o.D3(j10);
        return h1();
    }

    @Override // okio.d
    public d H1(String str) throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        this.f33388o.H1(str);
        return h1();
    }

    @Override // okio.d
    public d R0(int i10) throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        this.f33388o.R0(i10);
        return h1();
    }

    @Override // okio.d
    public d T0(int i10) throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        this.f33388o.T0(i10);
        return h1();
    }

    @Override // okio.d
    public d W1(byte[] bArr, int i10, int i11) throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        this.f33388o.W1(bArr, i10, i11);
        return h1();
    }

    @Override // okio.d
    public d Y2(byte[] bArr) throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        this.f33388o.Y2(bArr);
        return h1();
    }

    @Override // okio.t
    public void a2(c cVar, long j10) throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        this.f33388o.a2(cVar, j10);
        h1();
    }

    @Override // okio.d
    public d c3(f fVar) throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        this.f33388o.c3(fVar);
        return h1();
    }

    @Override // okio.t, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f33390q) {
            return;
        }
        Throwable th = null;
        try {
            c cVar = this.f33388o;
            long j10 = cVar.f33354p;
            if (j10 > 0) {
                this.f33389p.a2(cVar, j10);
            }
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f33389p.close();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        this.f33390q = true;
        if (th != null) {
            w.e(th);
        }
    }

    @Override // okio.d, okio.t, java.io.Flushable
    public void flush() throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        c cVar = this.f33388o;
        long j10 = cVar.f33354p;
        if (j10 > 0) {
            this.f33389p.a2(cVar, j10);
        }
        this.f33389p.flush();
    }

    @Override // okio.d
    public d h1() throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        long jF = this.f33388o.f();
        if (jF > 0) {
            this.f33389p.a2(this.f33388o, jF);
        }
        return this;
    }

    @Override // okio.d
    public long h2(u uVar) throws IOException {
        if (uVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j10 = 0;
        while (true) {
            long j11 = uVar.read(this.f33388o, 8192L);
            if (j11 == -1) {
                return j10;
            }
            j10 += j11;
            h1();
        }
    }

    @Override // okio.d
    public d i2(long j10) throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        this.f33388o.i2(j10);
        return h1();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f33390q;
    }

    @Override // okio.d
    public d q0() throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        long jS = this.f33388o.s();
        if (jS > 0) {
            this.f33389p.a2(this.f33388o, jS);
        }
        return this;
    }

    @Override // okio.d
    public d r0(int i10) throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        this.f33388o.r0(i10);
        return h1();
    }

    @Override // okio.t
    public v timeout() {
        return this.f33389p.timeout();
    }

    public String toString() {
        return "buffer(" + this.f33389p + ")";
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        int iWrite = this.f33388o.write(byteBuffer);
        h1();
        return iWrite;
    }

    @Override // okio.d
    public d x0(int i10) throws IOException {
        if (this.f33390q) {
            throw new IllegalStateException("closed");
        }
        this.f33388o.x0(i10);
        return h1();
    }
}
