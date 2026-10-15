package okio;

import java.io.IOException;
import java.util.zip.Deflater;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: compiled from: DeflaterSink.java */
/* JADX INFO: loaded from: classes2.dex */
public final class g implements t {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final d f33362o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Deflater f33363p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f33364q;

    g(d dVar, Deflater deflater) {
        if (dVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (deflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f33362o = dVar;
        this.f33363p = deflater;
    }

    @IgnoreJRERequirement
    private void b(boolean z10) throws IOException {
        q qVarV;
        int iDeflate;
        c cVarB = this.f33362o.B();
        while (true) {
            qVarV = cVarB.v(1);
            if (z10) {
                Deflater deflater = this.f33363p;
                byte[] bArr = qVarV.f33395a;
                int i10 = qVarV.f33397c;
                iDeflate = deflater.deflate(bArr, i10, 8192 - i10, 2);
            } else {
                Deflater deflater2 = this.f33363p;
                byte[] bArr2 = qVarV.f33395a;
                int i11 = qVarV.f33397c;
                iDeflate = deflater2.deflate(bArr2, i11, 8192 - i11);
            }
            if (iDeflate > 0) {
                qVarV.f33397c += iDeflate;
                cVarB.f33354p += (long) iDeflate;
                this.f33362o.h1();
            } else if (this.f33363p.needsInput()) {
                break;
            }
        }
        if (qVarV.f33396b == qVarV.f33397c) {
            cVarB.f33353o = qVarV.b();
            r.a(qVarV);
        }
    }

    @Override // okio.t
    public void a2(c cVar, long j10) throws IOException {
        w.b(cVar.f33354p, 0L, j10);
        while (j10 > 0) {
            q qVar = cVar.f33353o;
            int iMin = (int) Math.min(j10, qVar.f33397c - qVar.f33396b);
            this.f33363p.setInput(qVar.f33395a, qVar.f33396b, iMin);
            b(false);
            long j11 = iMin;
            cVar.f33354p -= j11;
            int i10 = qVar.f33396b + iMin;
            qVar.f33396b = i10;
            if (i10 == qVar.f33397c) {
                cVar.f33353o = qVar.b();
                r.a(qVar);
            }
            j10 -= j11;
        }
    }

    void c() throws IOException {
        this.f33363p.finish();
        b(false);
    }

    @Override // okio.t, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws Throwable {
        if (this.f33364q) {
            return;
        }
        Throwable th = null;
        try {
            c();
        } catch (Throwable th2) {
            th = th2;
        }
        try {
            this.f33363p.end();
        } catch (Throwable th3) {
            if (th == null) {
                th = th3;
            }
        }
        try {
            this.f33362o.close();
        } catch (Throwable th4) {
            if (th == null) {
                th = th4;
            }
        }
        this.f33364q = true;
        if (th != null) {
            w.e(th);
        }
    }

    @Override // okio.t, java.io.Flushable
    public void flush() throws IOException {
        b(true);
        this.f33362o.flush();
    }

    @Override // okio.t
    public v timeout() {
        return this.f33362o.timeout();
    }

    public String toString() {
        return "DeflaterSink(" + this.f33362o + ")";
    }
}
