package okio;

import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;

/* JADX INFO: compiled from: GzipSource.java */
/* JADX INFO: loaded from: classes2.dex */
public final class l implements u {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final e f33374p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Inflater f33375q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final m f33376r;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f33373o = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final CRC32 f33377s = new CRC32();

    public l(u uVar) {
        if (uVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        Inflater inflater = new Inflater(true);
        this.f33375q = inflater;
        e eVarC = n.c(uVar);
        this.f33374p = eVarC;
        this.f33376r = new m(eVarC, inflater);
    }

    private void b(String str, int i10, int i11) throws IOException {
        if (i11 != i10) {
            throw new IOException(String.format("%s: actual 0x%08x != expected 0x%08x", str, Integer.valueOf(i11), Integer.valueOf(i10)));
        }
    }

    private void c() throws IOException {
        this.f33374p.y3(10L);
        byte bI = this.f33374p.B().i(3L);
        boolean z10 = ((bI >> 1) & 1) == 1;
        if (z10) {
            e(this.f33374p.B(), 0L, 10L);
        }
        b("ID1ID2", 8075, this.f33374p.readShort());
        this.f33374p.skip(8L);
        if (((bI >> 2) & 1) == 1) {
            this.f33374p.y3(2L);
            if (z10) {
                e(this.f33374p.B(), 0L, 2L);
            }
            long jE3 = this.f33374p.B().e3();
            this.f33374p.y3(jE3);
            if (z10) {
                e(this.f33374p.B(), 0L, jE3);
            }
            this.f33374p.skip(jE3);
        }
        if (((bI >> 3) & 1) == 1) {
            long jK3 = this.f33374p.K3((byte) 0);
            if (jK3 == -1) {
                throw new EOFException();
            }
            if (z10) {
                e(this.f33374p.B(), 0L, jK3 + 1);
            }
            this.f33374p.skip(jK3 + 1);
        }
        if (((bI >> 4) & 1) == 1) {
            long jK32 = this.f33374p.K3((byte) 0);
            if (jK32 == -1) {
                throw new EOFException();
            }
            if (z10) {
                e(this.f33374p.B(), 0L, jK32 + 1);
            }
            this.f33374p.skip(jK32 + 1);
        }
        if (z10) {
            b("FHCRC", this.f33374p.e3(), (short) this.f33377s.getValue());
            this.f33377s.reset();
        }
    }

    private void d() throws IOException {
        b("CRC", this.f33374p.I2(), (int) this.f33377s.getValue());
        b("ISIZE", this.f33374p.I2(), (int) this.f33375q.getBytesWritten());
    }

    private void e(c cVar, long j10, long j11) {
        q qVar = cVar.f33353o;
        while (true) {
            int i10 = qVar.f33397c;
            int i11 = qVar.f33396b;
            if (j10 < i10 - i11) {
                break;
            }
            j10 -= (long) (i10 - i11);
            qVar = qVar.f33400f;
        }
        while (j11 > 0) {
            int i12 = (int) (((long) qVar.f33396b) + j10);
            int iMin = (int) Math.min(qVar.f33397c - i12, j11);
            this.f33377s.update(qVar.f33395a, i12, iMin);
            j11 -= (long) iMin;
            qVar = qVar.f33400f;
            j10 = 0;
        }
    }

    @Override // okio.u, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33376r.close();
    }

    @Override // okio.u
    public long read(c cVar, long j10) throws IOException {
        if (j10 < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j10);
        }
        if (j10 == 0) {
            return 0L;
        }
        if (this.f33373o == 0) {
            c();
            this.f33373o = 1;
        }
        if (this.f33373o == 1) {
            long j11 = cVar.f33354p;
            long j12 = this.f33376r.read(cVar, j10);
            if (j12 != -1) {
                e(cVar, j11, j12);
                return j12;
            }
            this.f33373o = 2;
        }
        if (this.f33373o == 2) {
            d();
            this.f33373o = 3;
            if (!this.f33374p.S0()) {
                throw new IOException("gzip finished without exhausting source");
            }
        }
        return -1L;
    }

    @Override // okio.u
    public v timeout() {
        return this.f33374p.timeout();
    }
}
