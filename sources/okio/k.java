package okio;

import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Deflater;

/* JADX INFO: compiled from: GzipSink.java */
/* JADX INFO: loaded from: classes2.dex */
public final class k implements t {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final d f33368o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Deflater f33369p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final g f33370q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f33371r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final CRC32 f33372s = new CRC32();

    public k(t tVar) {
        if (tVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        Deflater deflater = new Deflater(-1, true);
        this.f33369p = deflater;
        d dVarB = n.b(tVar);
        this.f33368o = dVarB;
        this.f33370q = new g(dVarB, deflater);
        d();
    }

    private void b(c cVar, long j10) {
        q qVar = cVar.f33353o;
        while (j10 > 0) {
            int iMin = (int) Math.min(j10, qVar.f33397c - qVar.f33396b);
            this.f33372s.update(qVar.f33395a, qVar.f33396b, iMin);
            j10 -= (long) iMin;
            qVar = qVar.f33400f;
        }
    }

    private void c() throws IOException {
        this.f33368o.R0((int) this.f33372s.getValue());
        this.f33368o.R0((int) this.f33369p.getBytesRead());
    }

    private void d() {
        c cVarB = this.f33368o.B();
        cVarB.r0(8075);
        cVarB.T0(8);
        cVarB.T0(0);
        cVarB.x0(0);
        cVarB.T0(0);
        cVarB.T0(0);
    }

    @Override // okio.t
    public void a2(c cVar, long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (j10 == 0) {
            return;
        }
        b(cVar, j10);
        this.f33370q.a2(cVar, j10);
    }

    @Override // okio.t, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f33371r) {
            return;
        }
        Throwable th = null;
        try {
            this.f33370q.c();
            c();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f33369p.end();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.f33368o.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.f33371r = true;
        if (th != null) {
            w.e(th);
        }
    }

    @Override // okio.t, java.io.Flushable
    public void flush() throws IOException {
        this.f33370q.flush();
    }

    @Override // okio.t
    public v timeout() {
        return this.f33368o.timeout();
    }
}
