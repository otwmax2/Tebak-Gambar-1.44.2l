package pa;

import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import pa.h;

/* JADX INFO: compiled from: Http2Connection.java */
/* JADX INFO: loaded from: classes2.dex */
public final class g implements Closeable {
    private static final ExecutorService N = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), ka.c.G("OkHttp Http2Connection", true));
    long G;
    final m I;
    final Socket J;
    final pa.j K;
    final l L;
    final Set<Integer> M;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final boolean f33609o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final j f33610p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final String f33612r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f33613s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    int f33614t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f33615u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final ScheduledExecutorService f33616v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final ExecutorService f33617w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final pa.l f33618x;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final Map<Integer, pa.i> f33611q = new LinkedHashMap();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f33619y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f33620z = 0;
    private long A = 0;
    private long B = 0;
    private long C = 0;
    private long D = 0;
    private long E = 0;
    long F = 0;
    m H = new m();

    /* JADX INFO: compiled from: Http2Connection.java */
    class a extends ka.b {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ int f33621p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ pa.b f33622q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(String str, Object[] objArr, int i10, pa.b bVar) {
            super(str, objArr);
            this.f33621p = i10;
            this.f33622q = bVar;
        }

        @Override // ka.b
        public void k() {
            try {
                g.this.J(this.f33621p, this.f33622q);
            } catch (IOException unused) {
                g.this.n();
            }
        }
    }

    /* JADX INFO: compiled from: Http2Connection.java */
    class b extends ka.b {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ int f33624p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ long f33625q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(String str, Object[] objArr, int i10, long j10) {
            super(str, objArr);
            this.f33624p = i10;
            this.f33625q = j10;
        }

        @Override // ka.b
        public void k() {
            try {
                g.this.K.o(this.f33624p, this.f33625q);
            } catch (IOException unused) {
                g.this.n();
            }
        }
    }

    /* JADX INFO: compiled from: Http2Connection.java */
    class c extends ka.b {
        c(String str, Object... objArr) {
            super(str, objArr);
        }

        @Override // ka.b
        public void k() {
            g.this.I(false, 2, 0);
        }
    }

    /* JADX INFO: compiled from: Http2Connection.java */
    class d extends ka.b {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ int f33628p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ List f33629q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(String str, Object[] objArr, int i10, List list) {
            super(str, objArr);
            this.f33628p = i10;
            this.f33629q = list;
        }

        @Override // ka.b
        public void k() {
            if (g.this.f33618x.a(this.f33628p, this.f33629q)) {
                try {
                    g.this.K.l(this.f33628p, pa.b.CANCEL);
                    synchronized (g.this) {
                        g.this.M.remove(Integer.valueOf(this.f33628p));
                    }
                } catch (IOException unused) {
                }
            }
        }
    }

    /* JADX INFO: compiled from: Http2Connection.java */
    class e extends ka.b {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ int f33631p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ List f33632q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ boolean f33633r;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(String str, Object[] objArr, int i10, List list, boolean z10) {
            super(str, objArr);
            this.f33631p = i10;
            this.f33632q = list;
            this.f33633r = z10;
        }

        @Override // ka.b
        public void k() {
            boolean zB = g.this.f33618x.b(this.f33631p, this.f33632q, this.f33633r);
            if (zB) {
                try {
                    g.this.K.l(this.f33631p, pa.b.CANCEL);
                } catch (IOException unused) {
                    return;
                }
            }
            if (zB || this.f33633r) {
                synchronized (g.this) {
                    g.this.M.remove(Integer.valueOf(this.f33631p));
                }
            }
        }
    }

    /* JADX INFO: compiled from: Http2Connection.java */
    class f extends ka.b {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ int f33635p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ okio.c f33636q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final /* synthetic */ int f33637r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        final /* synthetic */ boolean f33638s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, Object[] objArr, int i10, okio.c cVar, int i11, boolean z10) {
            super(str, objArr);
            this.f33635p = i10;
            this.f33636q = cVar;
            this.f33637r = i11;
            this.f33638s = z10;
        }

        @Override // ka.b
        public void k() {
            try {
                boolean zD = g.this.f33618x.d(this.f33635p, this.f33636q, this.f33637r, this.f33638s);
                if (zD) {
                    g.this.K.l(this.f33635p, pa.b.CANCEL);
                }
                if (zD || this.f33638s) {
                    synchronized (g.this) {
                        g.this.M.remove(Integer.valueOf(this.f33635p));
                    }
                }
            } catch (IOException unused) {
            }
        }
    }

    /* JADX INFO: renamed from: pa.g$g, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Http2Connection.java */
    class C0220g extends ka.b {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ int f33640p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ pa.b f33641q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0220g(String str, Object[] objArr, int i10, pa.b bVar) {
            super(str, objArr);
            this.f33640p = i10;
            this.f33641q = bVar;
        }

        @Override // ka.b
        public void k() {
            g.this.f33618x.c(this.f33640p, this.f33641q);
            synchronized (g.this) {
                g.this.M.remove(Integer.valueOf(this.f33640p));
            }
        }
    }

    /* JADX INFO: compiled from: Http2Connection.java */
    public static class h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        Socket f33643a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f33644b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        okio.e f33645c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        okio.d f33646d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        j f33647e = j.f33652a;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        pa.l f33648f = pa.l.f33713a;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f33649g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        int f33650h;

        public h(boolean z10) {
            this.f33649g = z10;
        }

        public g a() {
            return new g(this);
        }

        public h b(j jVar) {
            this.f33647e = jVar;
            return this;
        }

        public h c(int i10) {
            this.f33650h = i10;
            return this;
        }

        public h d(Socket socket, String str, okio.e eVar, okio.d dVar) {
            this.f33643a = socket;
            this.f33644b = str;
            this.f33645c = eVar;
            this.f33646d = dVar;
            return this;
        }
    }

    /* JADX INFO: compiled from: Http2Connection.java */
    final class i extends ka.b {
        i() {
            super("OkHttp %s ping", g.this.f33612r);
        }

        @Override // ka.b
        public void k() {
            boolean z10;
            synchronized (g.this) {
                if (g.this.f33620z < g.this.f33619y) {
                    z10 = true;
                } else {
                    g.f(g.this);
                    z10 = false;
                }
            }
            if (z10) {
                g.this.n();
            } else {
                g.this.I(false, 1, 0);
            }
        }
    }

    /* JADX INFO: compiled from: Http2Connection.java */
    public static abstract class j {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final j f33652a = new a();

        /* JADX INFO: compiled from: Http2Connection.java */
        class a extends j {
            a() {
            }

            @Override // pa.g.j
            public void c(pa.i iVar) throws IOException {
                iVar.f(pa.b.REFUSED_STREAM);
            }
        }

        public void b(g gVar) {
        }

        public abstract void c(pa.i iVar) throws IOException;
    }

    /* JADX INFO: compiled from: Http2Connection.java */
    final class k extends ka.b {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final boolean f33653p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final int f33654q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        final int f33655r;

        k(boolean z10, int i10, int i11) {
            super("OkHttp %s ping %08x%08x", g.this.f33612r, Integer.valueOf(i10), Integer.valueOf(i11));
            this.f33653p = z10;
            this.f33654q = i10;
            this.f33655r = i11;
        }

        @Override // ka.b
        public void k() {
            g.this.I(this.f33653p, this.f33654q, this.f33655r);
        }
    }

    /* JADX INFO: compiled from: Http2Connection.java */
    class l extends ka.b implements h.b {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final pa.h f33657p;

        /* JADX INFO: compiled from: Http2Connection.java */
        class a extends ka.b {

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            final /* synthetic */ pa.i f33659p;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(String str, Object[] objArr, pa.i iVar) {
                super(str, objArr);
                this.f33659p = iVar;
            }

            @Override // ka.b
            public void k() {
                try {
                    g.this.f33610p.c(this.f33659p);
                } catch (IOException e10) {
                    qa.g.l().s(4, "Http2Connection.Listener failure for " + g.this.f33612r, e10);
                    try {
                        this.f33659p.f(pa.b.PROTOCOL_ERROR);
                    } catch (IOException unused) {
                    }
                }
            }
        }

        /* JADX INFO: compiled from: Http2Connection.java */
        class b extends ka.b {

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            final /* synthetic */ boolean f33661p;

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            final /* synthetic */ m f33662q;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            b(String str, Object[] objArr, boolean z10, m mVar) {
                super(str, objArr);
                this.f33661p = z10;
                this.f33662q = mVar;
            }

            @Override // ka.b
            public void k() {
                l.this.l(this.f33661p, this.f33662q);
            }
        }

        /* JADX INFO: compiled from: Http2Connection.java */
        class c extends ka.b {
            c(String str, Object... objArr) {
                super(str, objArr);
            }

            @Override // ka.b
            public void k() {
                g gVar = g.this;
                gVar.f33610p.b(gVar);
            }
        }

        l(pa.h hVar) {
            super("OkHttp %s", g.this.f33612r);
            this.f33657p = hVar;
        }

        @Override // pa.h.b
        public void a() {
        }

        @Override // pa.h.b
        public void b(boolean z10, int i10, int i11, List<pa.c> list) {
            if (g.this.y(i10)) {
                g.this.v(i10, list, z10);
                return;
            }
            synchronized (g.this) {
                pa.i iVarO = g.this.o(i10);
                if (iVarO != null) {
                    iVarO.q(list);
                    if (z10) {
                        iVarO.p();
                        return;
                    }
                    return;
                }
                if (g.this.f33615u) {
                    return;
                }
                g gVar = g.this;
                if (i10 <= gVar.f33613s) {
                    return;
                }
                if (i10 % 2 == gVar.f33614t % 2) {
                    return;
                }
                pa.i iVar = new pa.i(i10, g.this, false, z10, ka.c.H(list));
                g gVar2 = g.this;
                gVar2.f33613s = i10;
                gVar2.f33611q.put(Integer.valueOf(i10), iVar);
                g.N.execute(new a("OkHttp %s stream %d", new Object[]{g.this.f33612r, Integer.valueOf(i10)}, iVar));
            }
        }

        @Override // pa.h.b
        public void c(int i10, long j10) {
            if (i10 == 0) {
                synchronized (g.this) {
                    g gVar = g.this;
                    gVar.G += j10;
                    gVar.notifyAll();
                }
                return;
            }
            pa.i iVarO = g.this.o(i10);
            if (iVarO != null) {
                synchronized (iVarO) {
                    iVarO.c(j10);
                }
            }
        }

        @Override // pa.h.b
        public void d(int i10, pa.b bVar, okio.f fVar) {
            pa.i[] iVarArr;
            fVar.J();
            synchronized (g.this) {
                iVarArr = (pa.i[]) g.this.f33611q.values().toArray(new pa.i[g.this.f33611q.size()]);
                g.this.f33615u = true;
            }
            for (pa.i iVar : iVarArr) {
                if (iVar.i() > i10 && iVar.l()) {
                    iVar.r(pa.b.REFUSED_STREAM);
                    g.this.z(iVar.i());
                }
            }
        }

        @Override // pa.h.b
        public void e(boolean z10, m mVar) {
            try {
                g.this.f33616v.execute(new b("OkHttp %s ACK Settings", new Object[]{g.this.f33612r}, z10, mVar));
            } catch (RejectedExecutionException unused) {
            }
        }

        @Override // pa.h.b
        public void f(boolean z10, int i10, okio.e eVar, int i11) throws IOException {
            if (g.this.y(i10)) {
                g.this.t(i10, eVar, i11, z10);
                return;
            }
            pa.i iVarO = g.this.o(i10);
            if (iVarO == null) {
                g.this.K(i10, pa.b.PROTOCOL_ERROR);
                long j10 = i11;
                g.this.G(j10);
                eVar.skip(j10);
                return;
            }
            iVarO.o(eVar, i11);
            if (z10) {
                iVarO.p();
            }
        }

        @Override // pa.h.b
        public void g(boolean z10, int i10, int i11) {
            if (!z10) {
                try {
                    g.this.f33616v.execute(g.this.new k(true, i10, i11));
                    return;
                } catch (RejectedExecutionException unused) {
                    return;
                }
            }
            synchronized (g.this) {
                try {
                    if (i10 == 1) {
                        g.d(g.this);
                    } else if (i10 == 2) {
                        g.k(g.this);
                    } else if (i10 == 3) {
                        g.l(g.this);
                        g.this.notifyAll();
                    }
                } finally {
                }
            }
        }

        @Override // pa.h.b
        public void h(int i10, int i11, int i12, boolean z10) {
        }

        @Override // pa.h.b
        public void i(int i10, pa.b bVar) {
            if (g.this.y(i10)) {
                g.this.x(i10, bVar);
                return;
            }
            pa.i iVarZ = g.this.z(i10);
            if (iVarZ != null) {
                iVarZ.r(bVar);
            }
        }

        @Override // pa.h.b
        public void j(int i10, int i11, List<pa.c> list) {
            g.this.w(i11, list);
        }

        @Override // ka.b
        protected void k() throws Throwable {
            pa.b bVar;
            pa.b bVar2 = pa.b.INTERNAL_ERROR;
            try {
                try {
                    this.f33657p.d(this);
                    while (this.f33657p.c(false, this)) {
                    }
                    bVar = pa.b.NO_ERROR;
                    try {
                        try {
                            g.this.m(bVar, pa.b.CANCEL);
                        } catch (IOException unused) {
                            pa.b bVar3 = pa.b.PROTOCOL_ERROR;
                            g.this.m(bVar3, bVar3);
                        }
                    } catch (Throwable th) {
                        th = th;
                        try {
                            g.this.m(bVar, bVar2);
                        } catch (IOException unused2) {
                        }
                        ka.c.g(this.f33657p);
                        throw th;
                    }
                } catch (IOException unused3) {
                }
            } catch (IOException unused4) {
                bVar = bVar2;
            } catch (Throwable th2) {
                th = th2;
                bVar = bVar2;
                g.this.m(bVar, bVar2);
                ka.c.g(this.f33657p);
                throw th;
            }
            ka.c.g(this.f33657p);
        }

        void l(boolean z10, m mVar) {
            pa.i[] iVarArr;
            long j10;
            synchronized (g.this.K) {
                synchronized (g.this) {
                    int iD = g.this.I.d();
                    if (z10) {
                        g.this.I.a();
                    }
                    g.this.I.h(mVar);
                    int iD2 = g.this.I.d();
                    iVarArr = null;
                    if (iD2 == -1 || iD2 == iD) {
                        j10 = 0;
                    } else {
                        j10 = iD2 - iD;
                        if (!g.this.f33611q.isEmpty()) {
                            iVarArr = (pa.i[]) g.this.f33611q.values().toArray(new pa.i[g.this.f33611q.size()]);
                        }
                    }
                }
                try {
                    g gVar = g.this;
                    gVar.K.b(gVar.I);
                } catch (IOException unused) {
                    g.this.n();
                }
            }
            if (iVarArr != null) {
                for (pa.i iVar : iVarArr) {
                    synchronized (iVar) {
                        iVar.c(j10);
                    }
                }
            }
            g.N.execute(new c("OkHttp %s settings", g.this.f33612r));
        }
    }

    g(h hVar) {
        m mVar = new m();
        this.I = mVar;
        this.M = new LinkedHashSet();
        this.f33618x = hVar.f33648f;
        boolean z10 = hVar.f33649g;
        this.f33609o = z10;
        this.f33610p = hVar.f33647e;
        int i10 = z10 ? 1 : 2;
        this.f33614t = i10;
        if (z10) {
            this.f33614t = i10 + 2;
        }
        if (z10) {
            this.H.i(7, 16777216);
        }
        String str = hVar.f33644b;
        this.f33612r = str;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, ka.c.G(ka.c.r("OkHttp %s Writer", str), false));
        this.f33616v = scheduledThreadPoolExecutor;
        if (hVar.f33650h != 0) {
            i iVar = new i();
            int i11 = hVar.f33650h;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(iVar, i11, i11, TimeUnit.MILLISECONDS);
        }
        this.f33617w = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), ka.c.G(ka.c.r("OkHttp %s Push Observer", str), true));
        mVar.i(7, 65535);
        mVar.i(5, 16384);
        this.G = mVar.d();
        this.J = hVar.f33643a;
        this.K = new pa.j(hVar.f33646d, z10);
        this.L = new l(new pa.h(hVar.f33645c, z10));
    }

    static /* synthetic */ long d(g gVar) {
        long j10 = gVar.f33620z;
        gVar.f33620z = 1 + j10;
        return j10;
    }

    static /* synthetic */ long f(g gVar) {
        long j10 = gVar.f33619y;
        gVar.f33619y = 1 + j10;
        return j10;
    }

    static /* synthetic */ long k(g gVar) {
        long j10 = gVar.B;
        gVar.B = 1 + j10;
        return j10;
    }

    static /* synthetic */ long l(g gVar) {
        long j10 = gVar.D;
        gVar.D = 1 + j10;
        return j10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        try {
            pa.b bVar = pa.b.PROTOCOL_ERROR;
            m(bVar, bVar);
        } catch (IOException unused) {
        }
    }

    private pa.i r(int i10, List<pa.c> list, boolean z10) throws IOException {
        int i11;
        pa.i iVar;
        boolean z11;
        boolean z12 = !z10;
        synchronized (this.K) {
            synchronized (this) {
                if (this.f33614t > 1073741823) {
                    C(pa.b.REFUSED_STREAM);
                }
                if (this.f33615u) {
                    throw new pa.a();
                }
                i11 = this.f33614t;
                this.f33614t = i11 + 2;
                iVar = new pa.i(i11, this, z12, false, null);
                z11 = !z10 || this.G == 0 || iVar.f33677b == 0;
                if (iVar.m()) {
                    this.f33611q.put(Integer.valueOf(i11), iVar);
                }
            }
            if (i10 == 0) {
                this.K.n(z12, i11, i10, list);
            } else {
                if (this.f33609o) {
                    throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
                }
                this.K.k(i10, i11, list);
            }
        }
        if (z11) {
            this.K.flush();
        }
        return iVar;
    }

    private synchronized void u(ka.b bVar) {
        if (!this.f33615u) {
            this.f33617w.execute(bVar);
        }
    }

    void A() {
        synchronized (this) {
            long j10 = this.B;
            long j11 = this.A;
            if (j10 < j11) {
                return;
            }
            this.A = j11 + 1;
            this.E = System.nanoTime() + 1000000000;
            try {
                this.f33616v.execute(new c("OkHttp %s ping", this.f33612r));
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    public void C(pa.b bVar) throws IOException {
        synchronized (this.K) {
            synchronized (this) {
                if (this.f33615u) {
                    return;
                }
                this.f33615u = true;
                this.K.g(this.f33613s, bVar, ka.c.f31638a);
            }
        }
    }

    public void E() throws IOException {
        F(true);
    }

    void F(boolean z10) throws IOException {
        if (z10) {
            this.K.c();
            this.K.m(this.H);
            if (this.H.d() != 65535) {
                this.K.o(0, r6 - 65535);
            }
        }
        new Thread(this.L).start();
    }

    synchronized void G(long j10) {
        long j11 = this.F + j10;
        this.F = j11;
        if (j11 >= this.H.d() / 2) {
            L(0, this.F);
            this.F = 0L;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0030, code lost:
    
        r3 = java.lang.Math.min((int) java.lang.Math.min(r12, r3), r8.K.i());
        r6 = r3;
        r8.G -= r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void H(int r9, boolean r10, okio.c r11, long r12) throws java.io.IOException {
        /*
            r8 = this;
            r0 = 0
            r1 = 0
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 != 0) goto Ld
            pa.j r12 = r8.K
            r12.d(r10, r9, r11, r0)
            return
        Ld:
            int r3 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r3 <= 0) goto L67
            monitor-enter(r8)
        L12:
            long r3 = r8.G     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            int r5 = (r3 > r1 ? 1 : (r3 == r1 ? 0 : -1))
            if (r5 > 0) goto L30
            java.util.Map<java.lang.Integer, pa.i> r3 = r8.f33611q     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            java.lang.Integer r4 = java.lang.Integer.valueOf(r9)     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            boolean r3 = r3.containsKey(r4)     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            if (r3 == 0) goto L28
            r8.wait()     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            goto L12
        L28:
            java.io.IOException r9 = new java.io.IOException     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            java.lang.String r10 = "stream closed"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
            throw r9     // Catch: java.lang.Throwable -> L56 java.lang.InterruptedException -> L58
        L30:
            long r3 = java.lang.Math.min(r12, r3)     // Catch: java.lang.Throwable -> L56
            int r4 = (int) r3     // Catch: java.lang.Throwable -> L56
            pa.j r3 = r8.K     // Catch: java.lang.Throwable -> L56
            int r3 = r3.i()     // Catch: java.lang.Throwable -> L56
            int r3 = java.lang.Math.min(r4, r3)     // Catch: java.lang.Throwable -> L56
            long r4 = r8.G     // Catch: java.lang.Throwable -> L56
            long r6 = (long) r3     // Catch: java.lang.Throwable -> L56
            long r4 = r4 - r6
            r8.G = r4     // Catch: java.lang.Throwable -> L56
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L56
            long r12 = r12 - r6
            pa.j r4 = r8.K
            if (r10 == 0) goto L51
            int r5 = (r12 > r1 ? 1 : (r12 == r1 ? 0 : -1))
            if (r5 != 0) goto L51
            r5 = 1
            goto L52
        L51:
            r5 = 0
        L52:
            r4.d(r5, r9, r11, r3)
            goto Ld
        L56:
            r9 = move-exception
            goto L65
        L58:
            java.lang.Thread r9 = java.lang.Thread.currentThread()     // Catch: java.lang.Throwable -> L56
            r9.interrupt()     // Catch: java.lang.Throwable -> L56
            java.io.InterruptedIOException r9 = new java.io.InterruptedIOException     // Catch: java.lang.Throwable -> L56
            r9.<init>()     // Catch: java.lang.Throwable -> L56
            throw r9     // Catch: java.lang.Throwable -> L56
        L65:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L56
            throw r9
        L67:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: pa.g.H(int, boolean, okio.c, long):void");
    }

    void I(boolean z10, int i10, int i11) {
        try {
            this.K.j(z10, i10, i11);
        } catch (IOException unused) {
            n();
        }
    }

    void J(int i10, pa.b bVar) throws IOException {
        this.K.l(i10, bVar);
    }

    void K(int i10, pa.b bVar) {
        try {
            this.f33616v.execute(new a("OkHttp %s stream %d", new Object[]{this.f33612r, Integer.valueOf(i10)}, i10, bVar));
        } catch (RejectedExecutionException unused) {
        }
    }

    void L(int i10, long j10) {
        try {
            this.f33616v.execute(new b("OkHttp Window Update %s stream %d", new Object[]{this.f33612r, Integer.valueOf(i10)}, i10, j10));
        } catch (RejectedExecutionException unused) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        m(pa.b.NO_ERROR, pa.b.CANCEL);
    }

    public void flush() throws IOException {
        this.K.flush();
    }

    void m(pa.b bVar, pa.b bVar2) throws IOException {
        pa.i[] iVarArr = null;
        try {
            C(bVar);
            e = null;
        } catch (IOException e10) {
            e = e10;
        }
        synchronized (this) {
            if (!this.f33611q.isEmpty()) {
                iVarArr = (pa.i[]) this.f33611q.values().toArray(new pa.i[this.f33611q.size()]);
                this.f33611q.clear();
            }
        }
        if (iVarArr != null) {
            for (pa.i iVar : iVarArr) {
                try {
                    iVar.f(bVar2);
                } catch (IOException e11) {
                    if (e != null) {
                        e = e11;
                    }
                }
            }
        }
        try {
            this.K.close();
        } catch (IOException e12) {
            if (e == null) {
                e = e12;
            }
        }
        try {
            this.J.close();
        } catch (IOException e13) {
            e = e13;
        }
        this.f33616v.shutdown();
        this.f33617w.shutdown();
        if (e != null) {
            throw e;
        }
    }

    synchronized pa.i o(int i10) {
        return this.f33611q.get(Integer.valueOf(i10));
    }

    public synchronized boolean p(long j10) {
        if (this.f33615u) {
            return false;
        }
        if (this.B < this.A) {
            if (j10 >= this.E) {
                return false;
            }
        }
        return true;
    }

    public synchronized int q() {
        return this.I.e(Integer.MAX_VALUE);
    }

    public pa.i s(List<pa.c> list, boolean z10) throws IOException {
        return r(0, list, z10);
    }

    void t(int i10, okio.e eVar, int i11, boolean z10) throws IOException {
        okio.c cVar = new okio.c();
        long j10 = i11;
        eVar.y3(j10);
        eVar.read(cVar, j10);
        if (cVar.s() == j10) {
            u(new f("OkHttp %s Push Data[%s]", new Object[]{this.f33612r, Integer.valueOf(i10)}, i10, cVar, i11, z10));
            return;
        }
        throw new IOException(cVar.s() + " != " + i11);
    }

    void v(int i10, List<pa.c> list, boolean z10) {
        try {
            u(new e("OkHttp %s Push Headers[%s]", new Object[]{this.f33612r, Integer.valueOf(i10)}, i10, list, z10));
        } catch (RejectedExecutionException unused) {
        }
    }

    void w(int i10, List<pa.c> list) {
        synchronized (this) {
            if (this.M.contains(Integer.valueOf(i10))) {
                K(i10, pa.b.PROTOCOL_ERROR);
                return;
            }
            this.M.add(Integer.valueOf(i10));
            try {
                u(new d("OkHttp %s Push Request[%s]", new Object[]{this.f33612r, Integer.valueOf(i10)}, i10, list));
            } catch (RejectedExecutionException unused) {
            }
        }
    }

    void x(int i10, pa.b bVar) {
        u(new C0220g("OkHttp %s Push Reset[%s]", new Object[]{this.f33612r, Integer.valueOf(i10)}, i10, bVar));
    }

    boolean y(int i10) {
        return i10 != 0 && (i10 & 1) == 0;
    }

    synchronized pa.i z(int i10) {
        pa.i iVarRemove;
        iVarRemove = this.f33611q.remove(Integer.valueOf(i10));
        notifyAll();
        return iVarRemove;
    }
}
