package pa;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import pa.d;

/* JADX INFO: compiled from: Http2Writer.java */
/* JADX INFO: loaded from: classes2.dex */
final class j implements Closeable {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final Logger f33699u = Logger.getLogger(e.class.getName());

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final okio.d f33700o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final boolean f33701p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final okio.c f33702q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f33703r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f33704s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final d.b f33705t;

    j(okio.d dVar, boolean z10) {
        this.f33700o = dVar;
        this.f33701p = z10;
        okio.c cVar = new okio.c();
        this.f33702q = cVar;
        this.f33705t = new d.b(cVar);
        this.f33703r = 16384;
    }

    private void p(int i10, long j10) throws IOException {
        while (j10 > 0) {
            int iMin = (int) Math.min(this.f33703r, j10);
            long j11 = iMin;
            j10 -= j11;
            f(i10, iMin, (byte) 9, j10 == 0 ? (byte) 4 : (byte) 0);
            this.f33700o.a2(this.f33702q, j11);
        }
    }

    private static void q(okio.d dVar, int i10) throws IOException {
        dVar.T0((i10 >>> 16) & 255);
        dVar.T0((i10 >>> 8) & 255);
        dVar.T0(i10 & 255);
    }

    public synchronized void b(m mVar) throws IOException {
        if (this.f33704s) {
            throw new IOException("closed");
        }
        this.f33703r = mVar.f(this.f33703r);
        if (mVar.c() != -1) {
            this.f33705t.e(mVar.c());
        }
        f(0, 0, (byte) 4, (byte) 1);
        this.f33700o.flush();
    }

    public synchronized void c() throws IOException {
        if (this.f33704s) {
            throw new IOException("closed");
        }
        if (this.f33701p) {
            Logger logger = f33699u;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(ka.c.r(">> CONNECTION %s", e.f33595a.n()));
            }
            this.f33700o.Y2(e.f33595a.N());
            this.f33700o.flush();
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.f33704s = true;
        this.f33700o.close();
    }

    public synchronized void d(boolean z10, int i10, okio.c cVar, int i11) throws IOException {
        if (this.f33704s) {
            throw new IOException("closed");
        }
        e(i10, z10 ? (byte) 1 : (byte) 0, cVar, i11);
    }

    void e(int i10, byte b10, okio.c cVar, int i11) throws IOException {
        f(i10, i11, (byte) 0, b10);
        if (i11 > 0) {
            this.f33700o.a2(cVar, i11);
        }
    }

    public void f(int i10, int i11, byte b10, byte b11) throws IOException {
        Logger logger = f33699u;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(e.b(false, i10, i11, b10, b11));
        }
        int i12 = this.f33703r;
        if (i11 > i12) {
            throw e.c("FRAME_SIZE_ERROR length > %d: %d", Integer.valueOf(i12), Integer.valueOf(i11));
        }
        if ((Integer.MIN_VALUE & i10) != 0) {
            throw e.c("reserved bit set: %s", Integer.valueOf(i10));
        }
        q(this.f33700o, i11);
        this.f33700o.T0(b10 & 255);
        this.f33700o.T0(b11 & 255);
        this.f33700o.x0(i10 & Integer.MAX_VALUE);
    }

    public synchronized void flush() throws IOException {
        if (this.f33704s) {
            throw new IOException("closed");
        }
        this.f33700o.flush();
    }

    public synchronized void g(int i10, b bVar, byte[] bArr) throws IOException {
        if (this.f33704s) {
            throw new IOException("closed");
        }
        if (bVar.f33565o == -1) {
            throw e.c("errorCode.httpCode == -1", new Object[0]);
        }
        f(0, bArr.length + 8, (byte) 7, (byte) 0);
        this.f33700o.x0(i10);
        this.f33700o.x0(bVar.f33565o);
        if (bArr.length > 0) {
            this.f33700o.Y2(bArr);
        }
        this.f33700o.flush();
    }

    void h(boolean z10, int i10, List<c> list) throws IOException {
        if (this.f33704s) {
            throw new IOException("closed");
        }
        this.f33705t.g(list);
        long jS = this.f33702q.s();
        int iMin = (int) Math.min(this.f33703r, jS);
        long j10 = iMin;
        byte b10 = jS == j10 ? (byte) 4 : (byte) 0;
        if (z10) {
            b10 = (byte) (b10 | 1);
        }
        f(i10, iMin, (byte) 1, b10);
        this.f33700o.a2(this.f33702q, j10);
        if (jS > j10) {
            p(i10, jS - j10);
        }
    }

    public int i() {
        return this.f33703r;
    }

    public synchronized void j(boolean z10, int i10, int i11) throws IOException {
        if (this.f33704s) {
            throw new IOException("closed");
        }
        f(0, 8, (byte) 6, z10 ? (byte) 1 : (byte) 0);
        this.f33700o.x0(i10);
        this.f33700o.x0(i11);
        this.f33700o.flush();
    }

    public synchronized void k(int i10, int i11, List<c> list) throws IOException {
        if (this.f33704s) {
            throw new IOException("closed");
        }
        this.f33705t.g(list);
        long jS = this.f33702q.s();
        int iMin = (int) Math.min(this.f33703r - 4, jS);
        long j10 = iMin;
        f(i10, iMin + 4, (byte) 5, jS == j10 ? (byte) 4 : (byte) 0);
        this.f33700o.x0(i11 & Integer.MAX_VALUE);
        this.f33700o.a2(this.f33702q, j10);
        if (jS > j10) {
            p(i10, jS - j10);
        }
    }

    public synchronized void l(int i10, b bVar) throws IOException {
        if (this.f33704s) {
            throw new IOException("closed");
        }
        if (bVar.f33565o == -1) {
            throw new IllegalArgumentException();
        }
        f(i10, 4, (byte) 3, (byte) 0);
        this.f33700o.x0(bVar.f33565o);
        this.f33700o.flush();
    }

    public synchronized void m(m mVar) throws IOException {
        if (this.f33704s) {
            throw new IOException("closed");
        }
        int i10 = 0;
        f(0, mVar.j() * 6, (byte) 4, (byte) 0);
        while (i10 < 10) {
            if (mVar.g(i10)) {
                this.f33700o.r0(i10 == 4 ? 3 : i10 == 7 ? 4 : i10);
                this.f33700o.x0(mVar.b(i10));
            }
            i10++;
        }
        this.f33700o.flush();
    }

    public synchronized void n(boolean z10, int i10, int i11, List<c> list) throws IOException {
        if (this.f33704s) {
            throw new IOException("closed");
        }
        h(z10, i10, list);
    }

    public synchronized void o(int i10, long j10) throws IOException {
        if (this.f33704s) {
            throw new IOException("closed");
        }
        if (j10 == 0 || j10 > 2147483647L) {
            throw e.c("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: %s", Long.valueOf(j10));
        }
        f(i10, 4, (byte) 8, (byte) 0);
        this.f33700o.x0((int) j10);
        this.f33700o.flush();
    }
}
