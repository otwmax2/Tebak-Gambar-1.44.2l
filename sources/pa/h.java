package pa;

import java.io.Closeable;
import java.io.IOException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.u;
import okio.v;
import pa.d;

/* JADX INFO: compiled from: Http2Reader.java */
/* JADX INFO: loaded from: classes2.dex */
final class h implements Closeable {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static final Logger f33665s = Logger.getLogger(e.class.getName());

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final okio.e f33666o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final a f33667p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final boolean f33668q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final d.a f33669r;

    /* JADX INFO: compiled from: Http2Reader.java */
    static final class a implements u {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final okio.e f33670o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        int f33671p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        byte f33672q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        int f33673r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f33674s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        short f33675t;

        a(okio.e eVar) {
            this.f33670o = eVar;
        }

        private void b() throws IOException {
            int i10 = this.f33673r;
            int i11 = h.i(this.f33670o);
            this.f33674s = i11;
            this.f33671p = i11;
            byte b10 = (byte) (this.f33670o.readByte() & 255);
            this.f33672q = (byte) (this.f33670o.readByte() & 255);
            Logger logger = h.f33665s;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(e.b(true, this.f33673r, this.f33671p, b10, this.f33672q));
            }
            int i12 = this.f33670o.readInt() & Integer.MAX_VALUE;
            this.f33673r = i12;
            if (b10 != 9) {
                throw e.d("%s != TYPE_CONTINUATION", Byte.valueOf(b10));
            }
            if (i12 != i10) {
                throw e.d("TYPE_CONTINUATION streamId changed", new Object[0]);
            }
        }

        @Override // okio.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
        }

        @Override // okio.u
        public long read(okio.c cVar, long j10) throws IOException {
            while (true) {
                int i10 = this.f33674s;
                if (i10 != 0) {
                    long j11 = this.f33670o.read(cVar, Math.min(j10, i10));
                    if (j11 == -1) {
                        return -1L;
                    }
                    this.f33674s = (int) (((long) this.f33674s) - j11);
                    return j11;
                }
                this.f33670o.skip(this.f33675t);
                this.f33675t = (short) 0;
                if ((this.f33672q & 4) != 0) {
                    return -1L;
                }
                b();
            }
        }

        @Override // okio.u
        public v timeout() {
            return this.f33670o.timeout();
        }
    }

    /* JADX INFO: compiled from: Http2Reader.java */
    interface b {
        void a();

        void b(boolean z10, int i10, int i11, List<c> list);

        void c(int i10, long j10);

        void d(int i10, pa.b bVar, okio.f fVar);

        void e(boolean z10, m mVar);

        void f(boolean z10, int i10, okio.e eVar, int i11) throws IOException;

        void g(boolean z10, int i10, int i11);

        void h(int i10, int i11, int i12, boolean z10);

        void i(int i10, pa.b bVar);

        void j(int i10, int i11, List<c> list) throws IOException;
    }

    h(okio.e eVar, boolean z10) {
        this.f33666o = eVar;
        this.f33668q = z10;
        a aVar = new a(eVar);
        this.f33667p = aVar;
        this.f33669r = new d.a(4096, aVar);
    }

    static int b(int i10, byte b10, short s10) throws IOException {
        if ((b10 & 8) != 0) {
            i10--;
        }
        if (s10 <= i10) {
            return (short) (i10 - s10);
        }
        throw e.d("PROTOCOL_ERROR padding %s > remaining length %s", Short.valueOf(s10), Integer.valueOf(i10));
    }

    private void e(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw e.d("PROTOCOL_ERROR: TYPE_DATA streamId == 0", new Object[0]);
        }
        boolean z10 = (b10 & 1) != 0;
        if ((b10 & 32) != 0) {
            throw e.d("PROTOCOL_ERROR: FLAG_COMPRESSED without SETTINGS_COMPRESS_DATA", new Object[0]);
        }
        short s10 = (b10 & 8) != 0 ? (short) (this.f33666o.readByte() & 255) : (short) 0;
        bVar.f(z10, i11, this.f33666o, b(i10, b10, s10));
        this.f33666o.skip(s10);
    }

    private void f(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 < 8) {
            throw e.d("TYPE_GOAWAY length < 8: %s", Integer.valueOf(i10));
        }
        if (i11 != 0) {
            throw e.d("TYPE_GOAWAY streamId != 0", new Object[0]);
        }
        int i12 = this.f33666o.readInt();
        int i13 = this.f33666o.readInt();
        int i14 = i10 - 8;
        pa.b bVarC = pa.b.c(i13);
        if (bVarC == null) {
            throw e.d("TYPE_GOAWAY unexpected error code: %d", Integer.valueOf(i13));
        }
        okio.f fVarH0 = okio.f.f33358s;
        if (i14 > 0) {
            fVarH0 = this.f33666o.h0(i14);
        }
        bVar.d(i12, bVarC, fVarH0);
    }

    private List<c> g(int i10, short s10, byte b10, int i11) throws IOException {
        a aVar = this.f33667p;
        aVar.f33674s = i10;
        aVar.f33671p = i10;
        aVar.f33675t = s10;
        aVar.f33672q = b10;
        aVar.f33673r = i11;
        this.f33669r.k();
        return this.f33669r.e();
    }

    private void h(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw e.d("PROTOCOL_ERROR: TYPE_HEADERS streamId == 0", new Object[0]);
        }
        boolean z10 = (b10 & 1) != 0;
        short s10 = (b10 & 8) != 0 ? (short) (this.f33666o.readByte() & 255) : (short) 0;
        if ((b10 & 32) != 0) {
            k(bVar, i11);
            i10 -= 5;
        }
        bVar.b(z10, i11, -1, g(b(i10, b10, s10), s10, b10, i11));
    }

    static int i(okio.e eVar) throws IOException {
        return (eVar.readByte() & 255) | ((eVar.readByte() & 255) << 16) | ((eVar.readByte() & 255) << 8);
    }

    private void j(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 8) {
            throw e.d("TYPE_PING length != 8: %s", Integer.valueOf(i10));
        }
        if (i11 != 0) {
            throw e.d("TYPE_PING streamId != 0", new Object[0]);
        }
        bVar.g((b10 & 1) != 0, this.f33666o.readInt(), this.f33666o.readInt());
    }

    private void k(b bVar, int i10) throws IOException {
        int i11 = this.f33666o.readInt();
        bVar.h(i10, i11 & Integer.MAX_VALUE, (this.f33666o.readByte() & 255) + 1, (Integer.MIN_VALUE & i11) != 0);
    }

    private void l(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 5) {
            throw e.d("TYPE_PRIORITY length: %d != 5", Integer.valueOf(i10));
        }
        if (i11 == 0) {
            throw e.d("TYPE_PRIORITY streamId == 0", new Object[0]);
        }
        k(bVar, i11);
    }

    private void m(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i11 == 0) {
            throw e.d("PROTOCOL_ERROR: TYPE_PUSH_PROMISE streamId == 0", new Object[0]);
        }
        short s10 = (b10 & 8) != 0 ? (short) (this.f33666o.readByte() & 255) : (short) 0;
        bVar.j(i11, this.f33666o.readInt() & Integer.MAX_VALUE, g(b(i10 - 4, b10, s10), s10, b10, i11));
    }

    private void n(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 4) {
            throw e.d("TYPE_RST_STREAM length: %d != 4", Integer.valueOf(i10));
        }
        if (i11 == 0) {
            throw e.d("TYPE_RST_STREAM streamId == 0", new Object[0]);
        }
        int i12 = this.f33666o.readInt();
        pa.b bVarC = pa.b.c(i12);
        if (bVarC == null) {
            throw e.d("TYPE_RST_STREAM unexpected error code: %d", Integer.valueOf(i12));
        }
        bVar.i(i11, bVarC);
    }

    private void o(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i11 != 0) {
            throw e.d("TYPE_SETTINGS streamId != 0", new Object[0]);
        }
        if ((b10 & 1) != 0) {
            if (i10 != 0) {
                throw e.d("FRAME_SIZE_ERROR ack frame should be empty!", new Object[0]);
            }
            bVar.a();
            return;
        }
        if (i10 % 6 != 0) {
            throw e.d("TYPE_SETTINGS length %% 6 != 0: %s", Integer.valueOf(i10));
        }
        m mVar = new m();
        for (int i12 = 0; i12 < i10; i12 += 6) {
            int i13 = this.f33666o.readShort() & 65535;
            int i14 = this.f33666o.readInt();
            if (i13 == 2) {
                if (i14 != 0 && i14 != 1) {
                    throw e.d("PROTOCOL_ERROR SETTINGS_ENABLE_PUSH != 0 or 1", new Object[0]);
                }
            } else if (i13 == 3) {
                i13 = 4;
            } else if (i13 == 4) {
                i13 = 7;
                if (i14 < 0) {
                    throw e.d("PROTOCOL_ERROR SETTINGS_INITIAL_WINDOW_SIZE > 2^31 - 1", new Object[0]);
                }
            } else if (i13 == 5 && (i14 < 16384 || i14 > 16777215)) {
                throw e.d("PROTOCOL_ERROR SETTINGS_MAX_FRAME_SIZE: %s", Integer.valueOf(i14));
            }
            mVar.i(i13, i14);
        }
        bVar.e(false, mVar);
    }

    private void p(b bVar, int i10, byte b10, int i11) throws IOException {
        if (i10 != 4) {
            throw e.d("TYPE_WINDOW_UPDATE length !=4: %s", Integer.valueOf(i10));
        }
        long j10 = ((long) this.f33666o.readInt()) & 2147483647L;
        if (j10 == 0) {
            throw e.d("windowSizeIncrement was 0", Long.valueOf(j10));
        }
        bVar.c(i11, j10);
    }

    public boolean c(boolean z10, b bVar) throws IOException {
        try {
            this.f33666o.y3(9L);
            int i10 = i(this.f33666o);
            if (i10 < 0 || i10 > 16384) {
                throw e.d("FRAME_SIZE_ERROR: %s", Integer.valueOf(i10));
            }
            byte b10 = (byte) (this.f33666o.readByte() & 255);
            if (z10 && b10 != 4) {
                throw e.d("Expected a SETTINGS frame but was %s", Byte.valueOf(b10));
            }
            byte b11 = (byte) (this.f33666o.readByte() & 255);
            int i11 = this.f33666o.readInt() & Integer.MAX_VALUE;
            Logger logger = f33665s;
            if (logger.isLoggable(Level.FINE)) {
                logger.fine(e.b(true, i11, i10, b10, b11));
            }
            switch (b10) {
                case 0:
                    e(bVar, i10, b11, i11);
                    return true;
                case 1:
                    h(bVar, i10, b11, i11);
                    return true;
                case 2:
                    l(bVar, i10, b11, i11);
                    return true;
                case 3:
                    n(bVar, i10, b11, i11);
                    return true;
                case 4:
                    o(bVar, i10, b11, i11);
                    return true;
                case 5:
                    m(bVar, i10, b11, i11);
                    return true;
                case 6:
                    j(bVar, i10, b11, i11);
                    return true;
                case 7:
                    f(bVar, i10, b11, i11);
                    return true;
                case 8:
                    p(bVar, i10, b11, i11);
                    return true;
                default:
                    this.f33666o.skip(i10);
                    return true;
            }
        } catch (IOException unused) {
            return false;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f33666o.close();
    }

    public void d(b bVar) throws IOException {
        if (this.f33668q) {
            if (!c(true, bVar)) {
                throw e.d("Required SETTINGS preface not received", new Object[0]);
            }
            return;
        }
        okio.e eVar = this.f33666o;
        okio.f fVar = e.f33595a;
        okio.f fVarH0 = eVar.h0(fVar.J());
        Logger logger = f33665s;
        if (logger.isLoggable(Level.FINE)) {
            logger.fine(ka.c.r("<< CONNECTION %s", fVarH0.n()));
        }
        if (!fVar.equals(fVarH0)) {
            throw e.d("Expected a connection header but was %s", fVarH0.O());
        }
    }
}
