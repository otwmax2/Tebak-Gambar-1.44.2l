package pa;

import ja.s;
import java.io.EOFException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.SocketTimeoutException;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Deque;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import okio.t;
import okio.u;
import okio.v;
import pa.c;

/* JADX INFO: compiled from: Http2Stream.java */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    long f33676a = 0;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    long f33677b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final int f33678c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final g f33679d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Deque<s> f33680e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private c.a f33681f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f33682g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final b f33683h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    final a f33684i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    final c f33685j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    final c f33686k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    pa.b f33687l;

    /* JADX INFO: compiled from: Http2Stream.java */
    /* JADX INFO: loaded from: classes2.dex */
    final class a implements t {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final okio.c f33688o = new okio.c();

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        boolean f33689p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        boolean f33690q;

        a() {
        }

        private void b(boolean z10) throws IOException {
            i iVar;
            long jMin;
            i iVar2;
            synchronized (i.this) {
                i.this.f33686k.k();
                while (true) {
                    try {
                        iVar = i.this;
                        if (iVar.f33677b > 0 || this.f33690q || this.f33689p || iVar.f33687l != null) {
                            break;
                        } else {
                            iVar.t();
                        }
                    } finally {
                    }
                }
                iVar.f33686k.u();
                i.this.e();
                jMin = Math.min(i.this.f33677b, this.f33688o.s());
                iVar2 = i.this;
                iVar2.f33677b -= jMin;
            }
            iVar2.f33686k.k();
            try {
                i iVar3 = i.this;
                iVar3.f33679d.H(iVar3.f33678c, z10 && jMin == this.f33688o.s(), this.f33688o, jMin);
            } finally {
            }
        }

        @Override // okio.t
        public void a2(okio.c cVar, long j10) throws IOException {
            this.f33688o.a2(cVar, j10);
            while (this.f33688o.s() >= 16384) {
                b(false);
            }
        }

        @Override // okio.t, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            synchronized (i.this) {
                if (this.f33689p) {
                    return;
                }
                if (!i.this.f33684i.f33690q) {
                    if (this.f33688o.s() > 0) {
                        while (this.f33688o.s() > 0) {
                            b(true);
                        }
                    } else {
                        i iVar = i.this;
                        iVar.f33679d.H(iVar.f33678c, true, null, 0L);
                    }
                }
                synchronized (i.this) {
                    this.f33689p = true;
                }
                i.this.f33679d.flush();
                i.this.d();
            }
        }

        @Override // okio.t, java.io.Flushable
        public void flush() throws IOException {
            synchronized (i.this) {
                i.this.e();
            }
            while (this.f33688o.s() > 0) {
                b(false);
                i.this.f33679d.flush();
            }
        }

        @Override // okio.t
        public v timeout() {
            return i.this.f33686k;
        }
    }

    /* JADX INFO: compiled from: Http2Stream.java */
    /* JADX INFO: loaded from: classes2.dex */
    private final class b implements u {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final okio.c f33692o = new okio.c();

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final okio.c f33693p = new okio.c();

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final long f33694q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        boolean f33695r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        boolean f33696s;

        b(long j10) {
            this.f33694q = j10;
        }

        private void c(long j10) {
            i.this.f33679d.G(j10);
        }

        void b(okio.e eVar, long j10) throws IOException {
            boolean z10;
            boolean z11;
            boolean z12;
            long jS;
            while (j10 > 0) {
                synchronized (i.this) {
                    z10 = this.f33696s;
                    z11 = true;
                    z12 = this.f33693p.s() + j10 > this.f33694q;
                }
                if (z12) {
                    eVar.skip(j10);
                    i.this.h(pa.b.FLOW_CONTROL_ERROR);
                    return;
                }
                if (z10) {
                    eVar.skip(j10);
                    return;
                }
                long j11 = eVar.read(this.f33692o, j10);
                if (j11 == -1) {
                    throw new EOFException();
                }
                j10 -= j11;
                synchronized (i.this) {
                    if (this.f33695r) {
                        jS = this.f33692o.s();
                        this.f33692o.b();
                    } else {
                        if (this.f33693p.s() != 0) {
                            z11 = false;
                        }
                        this.f33693p.h2(this.f33692o);
                        if (z11) {
                            i.this.notifyAll();
                        }
                        jS = 0;
                    }
                }
                if (jS > 0) {
                    c(jS);
                }
            }
        }

        @Override // okio.u, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            long jS;
            c.a aVar;
            ArrayList arrayList;
            synchronized (i.this) {
                this.f33695r = true;
                jS = this.f33693p.s();
                this.f33693p.b();
                aVar = null;
                if (i.this.f33680e.isEmpty() || i.this.f33681f == null) {
                    arrayList = null;
                } else {
                    ArrayList arrayList2 = new ArrayList(i.this.f33680e);
                    i.this.f33680e.clear();
                    aVar = i.this.f33681f;
                    arrayList = arrayList2;
                }
                i.this.notifyAll();
            }
            if (jS > 0) {
                c(jS);
            }
            i.this.d();
            if (aVar != null) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    aVar.a((s) it.next());
                }
            }
        }

        @Override // okio.u
        public long read(okio.c cVar, long j10) throws IOException {
            pa.b bVar;
            long j11;
            s sVar;
            c.a aVar;
            if (j10 < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j10);
            }
            while (true) {
                synchronized (i.this) {
                    i.this.f33685j.k();
                    try {
                        i iVar = i.this;
                        bVar = iVar.f33687l;
                        if (bVar == null) {
                            bVar = null;
                        }
                        if (!this.f33695r) {
                            if (!iVar.f33680e.isEmpty() && i.this.f33681f != null) {
                                sVar = (s) i.this.f33680e.removeFirst();
                                aVar = i.this.f33681f;
                            } else if (this.f33693p.s() > 0) {
                                okio.c cVar2 = this.f33693p;
                                j11 = cVar2.read(cVar, Math.min(j10, cVar2.s()));
                                i iVar2 = i.this;
                                long j12 = iVar2.f33676a + j11;
                                iVar2.f33676a = j12;
                                if (bVar == null && j12 >= iVar2.f33679d.H.d() / 2) {
                                    i iVar3 = i.this;
                                    iVar3.f33679d.L(iVar3.f33678c, iVar3.f33676a);
                                    i.this.f33676a = 0L;
                                }
                                sVar = null;
                                aVar = null;
                                if (sVar == null || aVar == null) {
                                    break;
                                }
                                aVar.a(sVar);
                            } else if (this.f33696s || bVar != null) {
                                sVar = null;
                                aVar = null;
                            } else {
                                i.this.t();
                                i.this.f33685j.u();
                            }
                            j11 = -1;
                            if (sVar == null) {
                                break;
                            }
                            break;
                            break;
                        }
                        throw new IOException("stream closed");
                    } finally {
                    }
                }
            }
            if (j11 != -1) {
                c(j11);
                return j11;
            }
            if (bVar == null) {
                return -1L;
            }
            throw new n(bVar);
        }

        @Override // okio.u
        public v timeout() {
            return i.this.f33685j;
        }
    }

    /* JADX INFO: compiled from: Http2Stream.java */
    /* JADX INFO: loaded from: classes2.dex */
    class c extends okio.a {
        c() {
        }

        @Override // okio.a
        protected IOException o(IOException iOException) {
            SocketTimeoutException socketTimeoutException = new SocketTimeoutException("timeout");
            if (iOException != null) {
                socketTimeoutException.initCause(iOException);
            }
            return socketTimeoutException;
        }

        @Override // okio.a
        protected void t() {
            i.this.h(pa.b.CANCEL);
            i.this.f33679d.A();
        }

        public void u() throws IOException {
            if (n()) {
                throw o(null);
            }
        }
    }

    i(int i10, g gVar, boolean z10, boolean z11, @Nullable s sVar) {
        ArrayDeque arrayDeque = new ArrayDeque();
        this.f33680e = arrayDeque;
        this.f33685j = new c();
        this.f33686k = new c();
        this.f33687l = null;
        Objects.requireNonNull(gVar, "connection == null");
        this.f33678c = i10;
        this.f33679d = gVar;
        this.f33677b = gVar.I.d();
        b bVar = new b(gVar.H.d());
        this.f33683h = bVar;
        a aVar = new a();
        this.f33684i = aVar;
        bVar.f33696s = z11;
        aVar.f33690q = z10;
        if (sVar != null) {
            arrayDeque.add(sVar);
        }
        if (l() && sVar != null) {
            throw new IllegalStateException("locally-initiated streams shouldn't have headers yet");
        }
        if (!l() && sVar == null) {
            throw new IllegalStateException("remotely-initiated streams should have headers");
        }
    }

    private boolean g(pa.b bVar) {
        synchronized (this) {
            if (this.f33687l != null) {
                return false;
            }
            if (this.f33683h.f33696s && this.f33684i.f33690q) {
                return false;
            }
            this.f33687l = bVar;
            notifyAll();
            this.f33679d.z(this.f33678c);
            return true;
        }
    }

    void c(long j10) {
        this.f33677b += j10;
        if (j10 > 0) {
            notifyAll();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0017  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    void d() throws java.io.IOException {
        /*
            r2 = this;
            monitor-enter(r2)
            pa.i$b r0 = r2.f33683h     // Catch: java.lang.Throwable -> L2f
            boolean r1 = r0.f33696s     // Catch: java.lang.Throwable -> L2f
            if (r1 != 0) goto L17
            boolean r0 = r0.f33695r     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto L17
            pa.i$a r0 = r2.f33684i     // Catch: java.lang.Throwable -> L2f
            boolean r1 = r0.f33690q     // Catch: java.lang.Throwable -> L2f
            if (r1 != 0) goto L15
            boolean r0 = r0.f33689p     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto L17
        L15:
            r0 = 1
            goto L18
        L17:
            r0 = 0
        L18:
            boolean r1 = r2.m()     // Catch: java.lang.Throwable -> L2f
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2f
            if (r0 == 0) goto L25
            pa.b r0 = pa.b.CANCEL
            r2.f(r0)
            goto L2e
        L25:
            if (r1 != 0) goto L2e
            pa.g r0 = r2.f33679d
            int r1 = r2.f33678c
            r0.z(r1)
        L2e:
            return
        L2f:
            r0 = move-exception
            monitor-exit(r2)     // Catch: java.lang.Throwable -> L2f
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: pa.i.d():void");
    }

    void e() throws IOException {
        a aVar = this.f33684i;
        if (aVar.f33689p) {
            throw new IOException("stream closed");
        }
        if (aVar.f33690q) {
            throw new IOException("stream finished");
        }
        if (this.f33687l != null) {
            throw new n(this.f33687l);
        }
    }

    public void f(pa.b bVar) throws IOException {
        if (g(bVar)) {
            this.f33679d.J(this.f33678c, bVar);
        }
    }

    public void h(pa.b bVar) {
        if (g(bVar)) {
            this.f33679d.K(this.f33678c, bVar);
        }
    }

    public int i() {
        return this.f33678c;
    }

    public t j() {
        synchronized (this) {
            if (!this.f33682g && !l()) {
                throw new IllegalStateException("reply before requesting the sink");
            }
        }
        return this.f33684i;
    }

    public u k() {
        return this.f33683h;
    }

    public boolean l() {
        return this.f33679d.f33609o == ((this.f33678c & 1) == 1);
    }

    public synchronized boolean m() {
        if (this.f33687l != null) {
            return false;
        }
        b bVar = this.f33683h;
        if (bVar.f33696s || bVar.f33695r) {
            a aVar = this.f33684i;
            if (aVar.f33690q || aVar.f33689p) {
                if (this.f33682g) {
                    return false;
                }
            }
        }
        return true;
    }

    public v n() {
        return this.f33685j;
    }

    void o(okio.e eVar, int i10) throws IOException {
        this.f33683h.b(eVar, i10);
    }

    void p() {
        boolean zM;
        synchronized (this) {
            this.f33683h.f33696s = true;
            zM = m();
            notifyAll();
        }
        if (zM) {
            return;
        }
        this.f33679d.z(this.f33678c);
    }

    void q(List<pa.c> list) {
        boolean zM;
        synchronized (this) {
            this.f33682g = true;
            this.f33680e.add(ka.c.H(list));
            zM = m();
            notifyAll();
        }
        if (zM) {
            return;
        }
        this.f33679d.z(this.f33678c);
    }

    synchronized void r(pa.b bVar) {
        if (this.f33687l == null) {
            this.f33687l = bVar;
            notifyAll();
        }
    }

    public synchronized s s() throws IOException {
        this.f33685j.k();
        while (this.f33680e.isEmpty() && this.f33687l == null) {
            try {
                t();
            } catch (Throwable th) {
                this.f33685j.u();
                throw th;
            }
        }
        this.f33685j.u();
        if (this.f33680e.isEmpty()) {
            throw new n(this.f33687l);
        }
        return this.f33680e.removeFirst();
    }

    void t() throws InterruptedIOException {
        try {
            wait();
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            throw new InterruptedIOException();
        }
    }

    public v u() {
        return this.f33686k;
    }
}
