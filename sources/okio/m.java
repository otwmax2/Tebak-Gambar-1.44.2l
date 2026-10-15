package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: InflaterSource.java */
/* JADX INFO: loaded from: classes2.dex */
public final class m implements u {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final e f33378o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Inflater f33379p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f33380q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f33381r;

    m(e eVar, Inflater inflater) {
        if (eVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (inflater == null) {
            throw new IllegalArgumentException("inflater == null");
        }
        this.f33378o = eVar;
        this.f33379p = inflater;
    }

    private void c() throws IOException {
        int i10 = this.f33380q;
        if (i10 == 0) {
            return;
        }
        int remaining = i10 - this.f33379p.getRemaining();
        this.f33380q -= remaining;
        this.f33378o.skip(remaining);
    }

    public final boolean b() throws IOException {
        if (!this.f33379p.needsInput()) {
            return false;
        }
        c();
        if (this.f33379p.getRemaining() != 0) {
            throw new IllegalStateException("?");
        }
        if (this.f33378o.S0()) {
            return true;
        }
        q qVar = this.f33378o.B().f33353o;
        int i10 = qVar.f33397c;
        int i11 = qVar.f33396b;
        int i12 = i10 - i11;
        this.f33380q = i12;
        this.f33379p.setInput(qVar.f33395a, i11, i12);
        return false;
    }

    @Override // okio.u, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f33381r) {
            return;
        }
        this.f33379p.end();
        this.f33381r = true;
        this.f33378o.close();
    }

    @Override // okio.u
    public long read(c cVar, long j10) throws IOException {
        boolean zB;
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (this.f33381r) {
            throw new IllegalStateException("closed");
        }
        if (j10 == 0) {
            return 0L;
        }
        do {
            zB = b();
            try {
                q qVarV = cVar.v(1);
                int iInflate = this.f33379p.inflate(qVarV.f33395a, qVarV.f33397c, (int) Math.min(j10, 8192 - qVarV.f33397c));
                if (iInflate > 0) {
                    qVarV.f33397c += iInflate;
                    long j11 = iInflate;
                    cVar.f33354p += j11;
                    return j11;
                }
                if (!this.f33379p.finished() && !this.f33379p.needsDictionary()) {
                }
                c();
                if (qVarV.f33396b != qVarV.f33397c) {
                    return -1L;
                }
                cVar.f33353o = qVarV.b();
                r.a(qVarV);
                return -1L;
            } catch (DataFormatException e10) {
                throw new IOException(e10);
            }
        } while (!zB);
        throw new EOFException("source exhausted prematurely");
    }

    @Override // okio.u
    public v timeout() {
        return this.f33378o.timeout();
    }
}
