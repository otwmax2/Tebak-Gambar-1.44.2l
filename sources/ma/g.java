package ma;

import ja.e0;
import ja.j;
import ja.p;
import ja.u;
import ja.x;
import java.io.IOException;
import java.lang.ref.Reference;
import java.lang.ref.WeakReference;
import java.net.Socket;
import java.util.List;
import ma.f;
import pa.n;

/* JADX INFO: compiled from: StreamAllocation.java */
/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ja.a f32263a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private f.a f32264b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private e0 f32265c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j f32266d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ja.e f32267e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final p f32268f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Object f32269g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final f f32270h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f32271i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private c f32272j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private boolean f32273k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f32274l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f32275m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private na.c f32276n;

    /* JADX INFO: compiled from: StreamAllocation.java */
    public static final class a extends WeakReference<g> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Object f32277a;

        a(g gVar, Object obj) {
            super(gVar);
            this.f32277a = obj;
        }
    }

    public g(j jVar, ja.a aVar, ja.e eVar, p pVar, Object obj) {
        this.f32266d = jVar;
        this.f32263a = aVar;
        this.f32267e = eVar;
        this.f32268f = pVar;
        this.f32270h = new f(aVar, p(), eVar, pVar);
        this.f32269g = obj;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0046  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.net.Socket e(boolean r2, boolean r3, boolean r4) {
        /*
            r1 = this;
            r0 = 0
            if (r4 == 0) goto L5
            r1.f32276n = r0
        L5:
            r4 = 1
            if (r3 == 0) goto La
            r1.f32274l = r4
        La:
            ma.c r3 = r1.f32272j
            if (r3 == 0) goto L4a
            if (r2 == 0) goto L12
            r3.f32245k = r4
        L12:
            na.c r2 = r1.f32276n
            if (r2 != 0) goto L4a
            boolean r2 = r1.f32274l
            if (r2 != 0) goto L1e
            boolean r2 = r3.f32245k
            if (r2 == 0) goto L4a
        L1e:
            r1.l(r3)
            ma.c r2 = r1.f32272j
            java.util.List<java.lang.ref.Reference<ma.g>> r2 = r2.f32248n
            boolean r2 = r2.isEmpty()
            if (r2 == 0) goto L46
            ma.c r2 = r1.f32272j
            long r3 = java.lang.System.nanoTime()
            r2.f32249o = r3
            ka.a r2 = ka.a.f31636a
            ja.j r3 = r1.f32266d
            ma.c r4 = r1.f32272j
            boolean r2 = r2.e(r3, r4)
            if (r2 == 0) goto L46
            ma.c r2 = r1.f32272j
            java.net.Socket r2 = r2.r()
            goto L47
        L46:
            r2 = r0
        L47:
            r1.f32272j = r0
            r0 = r2
        L4a:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: ma.g.e(boolean, boolean, boolean):java.net.Socket");
    }

    private c f(int i10, int i11, int i12, int i13, boolean z10) throws Throwable {
        c cVar;
        Socket socketN;
        c cVar2;
        Socket socketF;
        e0 e0VarC;
        boolean z11;
        boolean z12;
        f.a aVar;
        synchronized (this.f32266d) {
            if (this.f32274l) {
                throw new IllegalStateException("released");
            }
            if (this.f32276n != null) {
                throw new IllegalStateException("codec != null");
            }
            if (this.f32275m) {
                throw new IOException("Canceled");
            }
            cVar = this.f32272j;
            socketN = n();
            cVar2 = this.f32272j;
            socketF = null;
            if (cVar2 != null) {
                cVar = null;
            } else {
                cVar2 = null;
            }
            if (!this.f32273k) {
                cVar = null;
            }
            if (cVar2 == null) {
                ka.a.f31636a.h(this.f32266d, this.f32263a, this, null);
                c cVar3 = this.f32272j;
                if (cVar3 != null) {
                    cVar2 = cVar3;
                    z11 = true;
                    e0VarC = null;
                } else {
                    e0VarC = this.f32265c;
                }
            } else {
                e0VarC = null;
            }
            z11 = false;
        }
        ka.c.h(socketN);
        if (cVar != null) {
            this.f32268f.h(this.f32267e, cVar);
        }
        if (z11) {
            this.f32268f.g(this.f32267e, cVar2);
        }
        if (cVar2 != null) {
            this.f32265c = this.f32272j.q();
            return cVar2;
        }
        if (e0VarC != null || ((aVar = this.f32264b) != null && aVar.b())) {
            z12 = false;
        } else {
            this.f32264b = this.f32270h.e();
            z12 = true;
        }
        synchronized (this.f32266d) {
            if (this.f32275m) {
                throw new IOException("Canceled");
            }
            if (z12) {
                List<e0> listA = this.f32264b.a();
                int size = listA.size();
                int i14 = 0;
                while (true) {
                    if (i14 >= size) {
                        break;
                    }
                    e0 e0Var = listA.get(i14);
                    ka.a.f31636a.h(this.f32266d, this.f32263a, this, e0Var);
                    c cVar4 = this.f32272j;
                    if (cVar4 != null) {
                        this.f32265c = e0Var;
                        cVar2 = cVar4;
                        z11 = true;
                        break;
                    }
                    i14++;
                }
            }
            if (!z11) {
                if (e0VarC == null) {
                    e0VarC = this.f32264b.c();
                }
                this.f32265c = e0VarC;
                this.f32271i = 0;
                cVar2 = new c(this.f32266d, e0VarC);
                a(cVar2, false);
            }
        }
        if (z11) {
            this.f32268f.g(this.f32267e, cVar2);
            return cVar2;
        }
        cVar2.e(i10, i11, i12, i13, z10, this.f32267e, this.f32268f);
        p().a(cVar2.q());
        synchronized (this.f32266d) {
            this.f32273k = true;
            ka.a.f31636a.i(this.f32266d, cVar2);
            if (cVar2.o()) {
                socketF = ka.a.f31636a.f(this.f32266d, this.f32263a, this);
                cVar2 = this.f32272j;
            }
        }
        ka.c.h(socketF);
        this.f32268f.g(this.f32267e, cVar2);
        return cVar2;
    }

    private c g(int i10, int i11, int i12, int i13, boolean z10, boolean z11) throws Throwable {
        while (true) {
            c cVarF = f(i10, i11, i12, i13, z10);
            synchronized (this.f32266d) {
                if (cVarF.f32246l == 0 && !cVarF.o()) {
                    return cVarF;
                }
                if (cVarF.n(z11)) {
                    return cVarF;
                }
                j();
            }
        }
    }

    private void l(c cVar) {
        int size = cVar.f32248n.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (cVar.f32248n.get(i10).get() == this) {
                cVar.f32248n.remove(i10);
                return;
            }
        }
        throw new IllegalStateException();
    }

    private Socket n() {
        c cVar = this.f32272j;
        if (cVar == null || !cVar.f32245k) {
            return null;
        }
        return e(false, false, true);
    }

    private d p() {
        return ka.a.f31636a.j(this.f32266d);
    }

    public void a(c cVar, boolean z10) {
        if (this.f32272j != null) {
            throw new IllegalStateException();
        }
        this.f32272j = cVar;
        this.f32273k = z10;
        cVar.f32248n.add(new a(this, this.f32269g));
    }

    public void b() {
        na.c cVar;
        c cVar2;
        synchronized (this.f32266d) {
            this.f32275m = true;
            cVar = this.f32276n;
            cVar2 = this.f32272j;
        }
        if (cVar != null) {
            cVar.cancel();
        } else if (cVar2 != null) {
            cVar2.d();
        }
    }

    public na.c c() {
        na.c cVar;
        synchronized (this.f32266d) {
            cVar = this.f32276n;
        }
        return cVar;
    }

    public synchronized c d() {
        return this.f32272j;
    }

    public boolean h() {
        f.a aVar;
        return this.f32265c != null || ((aVar = this.f32264b) != null && aVar.b()) || this.f32270h.c();
    }

    public na.c i(x xVar, u.a aVar, boolean z10) {
        try {
            na.c cVarP = g(aVar.d(), aVar.a(), aVar.b(), xVar.v(), xVar.B(), z10).p(xVar, aVar, this);
            synchronized (this.f32266d) {
                this.f32276n = cVarP;
            }
            return cVarP;
        } catch (IOException e10) {
            throw new e(e10);
        }
    }

    public void j() {
        c cVar;
        Socket socketE;
        synchronized (this.f32266d) {
            cVar = this.f32272j;
            socketE = e(true, false, false);
            if (this.f32272j != null) {
                cVar = null;
            }
        }
        ka.c.h(socketE);
        if (cVar != null) {
            this.f32268f.h(this.f32267e, cVar);
        }
    }

    public void k() {
        c cVar;
        Socket socketE;
        synchronized (this.f32266d) {
            cVar = this.f32272j;
            socketE = e(false, true, false);
            if (this.f32272j != null) {
                cVar = null;
            }
        }
        ka.c.h(socketE);
        if (cVar != null) {
            ka.a.f31636a.k(this.f32267e, null);
            this.f32268f.h(this.f32267e, cVar);
            this.f32268f.a(this.f32267e);
        }
    }

    public Socket m(c cVar) {
        if (this.f32276n != null || this.f32272j.f32248n.size() != 1) {
            throw new IllegalStateException();
        }
        Reference<g> reference = this.f32272j.f32248n.get(0);
        Socket socketE = e(true, false, false);
        this.f32272j = cVar;
        cVar.f32248n.add(reference);
        return socketE;
    }

    public e0 o() {
        return this.f32265c;
    }

    public void q(IOException iOException) {
        c cVar;
        boolean z10;
        Socket socketE;
        synchronized (this.f32266d) {
            cVar = null;
            if (iOException instanceof n) {
                pa.b bVar = ((n) iOException).f33716o;
                if (bVar == pa.b.REFUSED_STREAM) {
                    int i10 = this.f32271i + 1;
                    this.f32271i = i10;
                    if (i10 > 1) {
                        this.f32265c = null;
                        z10 = true;
                    }
                    z10 = false;
                } else {
                    if (bVar != pa.b.CANCEL) {
                        this.f32265c = null;
                        z10 = true;
                    }
                    z10 = false;
                }
            } else {
                c cVar2 = this.f32272j;
                if (cVar2 != null && (!cVar2.o() || (iOException instanceof pa.a))) {
                    if (this.f32272j.f32246l == 0) {
                        e0 e0Var = this.f32265c;
                        if (e0Var != null && iOException != null) {
                            this.f32270h.a(e0Var, iOException);
                        }
                        this.f32265c = null;
                    }
                    z10 = true;
                }
                z10 = false;
            }
            c cVar3 = this.f32272j;
            socketE = e(z10, false, true);
            if (this.f32272j == null && this.f32273k) {
                cVar = cVar3;
            }
        }
        ka.c.h(socketE);
        if (cVar != null) {
            this.f32268f.h(this.f32267e, cVar);
        }
    }

    public void r(boolean z10, na.c cVar, long j10, IOException iOException) {
        c cVar2;
        Socket socketE;
        boolean z11;
        this.f32268f.p(this.f32267e, j10);
        synchronized (this.f32266d) {
            if (cVar != null) {
                if (cVar == this.f32276n) {
                    if (!z10) {
                        this.f32272j.f32246l++;
                    }
                    cVar2 = this.f32272j;
                    socketE = e(z10, false, true);
                    if (this.f32272j != null) {
                        cVar2 = null;
                    }
                    z11 = this.f32274l;
                }
            }
            throw new IllegalStateException("expected " + this.f32276n + " but was " + cVar);
        }
        ka.c.h(socketE);
        if (cVar2 != null) {
            this.f32268f.h(this.f32267e, cVar2);
        }
        if (iOException != null) {
            this.f32268f.b(this.f32267e, ka.a.f31636a.k(this.f32267e, iOException));
        } else if (z11) {
            ka.a.f31636a.k(this.f32267e, null);
            this.f32268f.a(this.f32267e);
        }
    }

    public String toString() {
        c cVarD = d();
        return cVarD != null ? cVarD.toString() : this.f32263a.toString();
    }
}
