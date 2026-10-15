package p;

import java.util.Arrays;
import java.util.HashMap;
import p.i;
import s.d;

/* JADX INFO: compiled from: LinearSystem.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static boolean f33437r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static boolean f33438s = true;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static boolean f33439t = true;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static boolean f33440u = true;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static boolean f33441v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static int f33442w = 1000;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static e f33443x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static long f33444y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static long f33445z;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private a f33449d;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    p.b[] f33452g;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    final c f33459n;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private a f33462q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f33446a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    int f33447b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private HashMap<String, i> f33448c = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f33450e = 32;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f33451f = 32;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f33453h = false;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f33454i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean[] f33455j = new boolean[32];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f33456k = 1;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f33457l = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f33458m = 32;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private i[] f33460o = new i[f33442w];

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f33461p = 0;

    /* JADX INFO: compiled from: LinearSystem.java */
    interface a {
        void a(i iVar);

        i b(d dVar, boolean[] zArr);

        void c(a aVar);

        void clear();

        i getKey();

        boolean isEmpty();
    }

    /* JADX INFO: compiled from: LinearSystem.java */
    class b extends p.b {
        public b(c cVar) {
            this.f33431e = new j(this, cVar);
        }
    }

    public d() {
        this.f33452g = null;
        this.f33452g = new p.b[32];
        C();
        c cVar = new c();
        this.f33459n = cVar;
        this.f33449d = new h(cVar);
        if (f33441v) {
            this.f33462q = new b(cVar);
        } else {
            this.f33462q = new p.b(cVar);
        }
    }

    private final int B(a aVar, boolean z10) {
        for (int i10 = 0; i10 < this.f33456k; i10++) {
            this.f33455j[i10] = false;
        }
        boolean z11 = false;
        int i11 = 0;
        while (!z11) {
            i11++;
            if (i11 >= this.f33456k * 2) {
                return i11;
            }
            if (aVar.getKey() != null) {
                this.f33455j[aVar.getKey().f33478q] = true;
            }
            i iVarB = aVar.b(this, this.f33455j);
            if (iVarB != null) {
                boolean[] zArr = this.f33455j;
                int i12 = iVarB.f33478q;
                if (zArr[i12]) {
                    return i11;
                }
                zArr[i12] = true;
            }
            if (iVarB != null) {
                float f10 = Float.MAX_VALUE;
                int i13 = -1;
                for (int i14 = 0; i14 < this.f33457l; i14++) {
                    p.b bVar = this.f33452g[i14];
                    if (bVar.f33427a.f33485x != i.a.UNRESTRICTED && !bVar.f33432f && bVar.t(iVarB)) {
                        float fJ = bVar.f33431e.j(iVarB);
                        if (fJ < 0.0f) {
                            float f11 = (-bVar.f33428b) / fJ;
                            if (f11 < f10) {
                                i13 = i14;
                                f10 = f11;
                            }
                        }
                    }
                }
                if (i13 > -1) {
                    p.b bVar2 = this.f33452g[i13];
                    bVar2.f33427a.f33479r = -1;
                    bVar2.x(iVarB);
                    i iVar = bVar2.f33427a;
                    iVar.f33479r = i13;
                    iVar.l(this, bVar2);
                }
            } else {
                z11 = true;
            }
        }
        return i11;
    }

    private void C() {
        int i10 = 0;
        if (f33441v) {
            while (i10 < this.f33457l) {
                p.b bVar = this.f33452g[i10];
                if (bVar != null) {
                    this.f33459n.f33433a.a(bVar);
                }
                this.f33452g[i10] = null;
                i10++;
            }
            return;
        }
        while (i10 < this.f33457l) {
            p.b bVar2 = this.f33452g[i10];
            if (bVar2 != null) {
                this.f33459n.f33434b.a(bVar2);
            }
            this.f33452g[i10] = null;
            i10++;
        }
    }

    private i a(i.a aVar, String str) {
        i iVarB = this.f33459n.f33435c.b();
        if (iVarB == null) {
            iVarB = new i(aVar, str);
            iVarB.k(aVar, str);
        } else {
            iVarB.i();
            iVarB.k(aVar, str);
        }
        int i10 = this.f33461p;
        int i11 = f33442w;
        if (i10 >= i11) {
            int i12 = i11 * 2;
            f33442w = i12;
            this.f33460o = (i[]) Arrays.copyOf(this.f33460o, i12);
        }
        i[] iVarArr = this.f33460o;
        int i13 = this.f33461p;
        this.f33461p = i13 + 1;
        iVarArr[i13] = iVarB;
        return iVarB;
    }

    private final void l(p.b bVar) {
        int i10;
        if (f33439t && bVar.f33432f) {
            bVar.f33427a.j(this, bVar.f33428b);
        } else {
            p.b[] bVarArr = this.f33452g;
            int i11 = this.f33457l;
            bVarArr[i11] = bVar;
            i iVar = bVar.f33427a;
            iVar.f33479r = i11;
            this.f33457l = i11 + 1;
            iVar.l(this, bVar);
        }
        if (f33439t && this.f33446a) {
            int i12 = 0;
            while (i12 < this.f33457l) {
                if (this.f33452g[i12] == null) {
                    System.out.println("WTF");
                }
                p.b[] bVarArr2 = this.f33452g;
                if (bVarArr2[i12] != null && bVarArr2[i12].f33432f) {
                    p.b bVar2 = bVarArr2[i12];
                    bVar2.f33427a.j(this, bVar2.f33428b);
                    if (f33441v) {
                        this.f33459n.f33433a.a(bVar2);
                    } else {
                        this.f33459n.f33434b.a(bVar2);
                    }
                    this.f33452g[i12] = null;
                    int i13 = i12 + 1;
                    int i14 = i13;
                    while (true) {
                        i10 = this.f33457l;
                        if (i13 >= i10) {
                            break;
                        }
                        p.b[] bVarArr3 = this.f33452g;
                        int i15 = i13 - 1;
                        bVarArr3[i15] = bVarArr3[i13];
                        if (bVarArr3[i15].f33427a.f33479r == i13) {
                            bVarArr3[i15].f33427a.f33479r = i15;
                        }
                        i14 = i13;
                        i13++;
                    }
                    if (i14 < i10) {
                        this.f33452g[i14] = null;
                    }
                    this.f33457l = i10 - 1;
                    i12--;
                }
                i12++;
            }
            this.f33446a = false;
        }
    }

    private void n() {
        for (int i10 = 0; i10 < this.f33457l; i10++) {
            p.b bVar = this.f33452g[i10];
            bVar.f33427a.f33481t = bVar.f33428b;
        }
    }

    public static p.b s(d dVar, i iVar, i iVar2, float f10) {
        return dVar.r().j(iVar, iVar2, f10);
    }

    private int u(a aVar) throws Exception {
        boolean z10;
        int i10 = 0;
        while (true) {
            if (i10 >= this.f33457l) {
                z10 = false;
                break;
            }
            p.b[] bVarArr = this.f33452g;
            if (bVarArr[i10].f33427a.f33485x != i.a.UNRESTRICTED && bVarArr[i10].f33428b < 0.0f) {
                z10 = true;
                break;
            }
            i10++;
        }
        if (!z10) {
            return 0;
        }
        boolean z11 = false;
        int i11 = 0;
        while (!z11) {
            i11++;
            float f10 = Float.MAX_VALUE;
            int i12 = -1;
            int i13 = -1;
            int i14 = 0;
            for (int i15 = 0; i15 < this.f33457l; i15++) {
                p.b bVar = this.f33452g[i15];
                if (bVar.f33427a.f33485x != i.a.UNRESTRICTED && !bVar.f33432f && bVar.f33428b < 0.0f) {
                    int i16 = 9;
                    if (f33440u) {
                        int iC = bVar.f33431e.c();
                        int i17 = 0;
                        while (i17 < iC) {
                            i iVarD = bVar.f33431e.d(i17);
                            float fJ = bVar.f33431e.j(iVarD);
                            if (fJ > 0.0f) {
                                int i18 = 0;
                                while (i18 < i16) {
                                    float f11 = iVarD.f33483v[i18] / fJ;
                                    if ((f11 < f10 && i18 == i14) || i18 > i14) {
                                        i13 = iVarD.f33478q;
                                        i14 = i18;
                                        i12 = i15;
                                        f10 = f11;
                                    }
                                    i18++;
                                    i16 = 9;
                                }
                            }
                            i17++;
                            i16 = 9;
                        }
                    } else {
                        for (int i19 = 1; i19 < this.f33456k; i19++) {
                            i iVar = this.f33459n.f33436d[i19];
                            float fJ2 = bVar.f33431e.j(iVar);
                            if (fJ2 > 0.0f) {
                                for (int i20 = 0; i20 < 9; i20++) {
                                    float f12 = iVar.f33483v[i20] / fJ2;
                                    if ((f12 < f10 && i20 == i14) || i20 > i14) {
                                        i13 = i19;
                                        i12 = i15;
                                        i14 = i20;
                                        f10 = f12;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            if (i12 != -1) {
                p.b bVar2 = this.f33452g[i12];
                bVar2.f33427a.f33479r = -1;
                bVar2.x(this.f33459n.f33436d[i13]);
                i iVar2 = bVar2.f33427a;
                iVar2.f33479r = i12;
                iVar2.l(this, bVar2);
            } else {
                z11 = true;
            }
            if (i11 > this.f33456k / 2) {
                z11 = true;
            }
        }
        return i11;
    }

    public static e w() {
        return f33443x;
    }

    private void y() {
        int i10 = this.f33450e * 2;
        this.f33450e = i10;
        this.f33452g = (p.b[]) Arrays.copyOf(this.f33452g, i10);
        c cVar = this.f33459n;
        cVar.f33436d = (i[]) Arrays.copyOf(cVar.f33436d, this.f33450e);
        int i11 = this.f33450e;
        this.f33455j = new boolean[i11];
        this.f33451f = i11;
        this.f33458m = i11;
    }

    void A(a aVar) throws Exception {
        u(aVar);
        B(aVar, false);
        n();
    }

    public void D() {
        c cVar;
        int i10 = 0;
        while (true) {
            cVar = this.f33459n;
            i[] iVarArr = cVar.f33436d;
            if (i10 >= iVarArr.length) {
                break;
            }
            i iVar = iVarArr[i10];
            if (iVar != null) {
                iVar.i();
            }
            i10++;
        }
        cVar.f33435c.c(this.f33460o, this.f33461p);
        this.f33461p = 0;
        Arrays.fill(this.f33459n.f33436d, (Object) null);
        HashMap<String, i> map = this.f33448c;
        if (map != null) {
            map.clear();
        }
        this.f33447b = 0;
        this.f33449d.clear();
        this.f33456k = 1;
        for (int i11 = 0; i11 < this.f33457l; i11++) {
            p.b[] bVarArr = this.f33452g;
            if (bVarArr[i11] != null) {
                bVarArr[i11].f33429c = false;
            }
        }
        C();
        this.f33457l = 0;
        if (f33441v) {
            this.f33462q = new b(this.f33459n);
        } else {
            this.f33462q = new p.b(this.f33459n);
        }
    }

    public void b(s.e eVar, s.e eVar2, float f10, int i10) {
        d.b bVar = d.b.LEFT;
        i iVarQ = q(eVar.m(bVar));
        d.b bVar2 = d.b.TOP;
        i iVarQ2 = q(eVar.m(bVar2));
        d.b bVar3 = d.b.RIGHT;
        i iVarQ3 = q(eVar.m(bVar3));
        d.b bVar4 = d.b.BOTTOM;
        i iVarQ4 = q(eVar.m(bVar4));
        i iVarQ5 = q(eVar2.m(bVar));
        i iVarQ6 = q(eVar2.m(bVar2));
        i iVarQ7 = q(eVar2.m(bVar3));
        i iVarQ8 = q(eVar2.m(bVar4));
        p.b bVarR = r();
        double d10 = f10;
        double dSin = Math.sin(d10);
        double d11 = i10;
        Double.isNaN(d11);
        bVarR.q(iVarQ2, iVarQ4, iVarQ6, iVarQ8, (float) (dSin * d11));
        d(bVarR);
        p.b bVarR2 = r();
        double dCos = Math.cos(d10);
        Double.isNaN(d11);
        bVarR2.q(iVarQ, iVarQ3, iVarQ5, iVarQ7, (float) (dCos * d11));
        d(bVarR2);
    }

    public void c(i iVar, i iVar2, int i10, float f10, i iVar3, i iVar4, int i11, int i12) {
        p.b bVarR = r();
        bVarR.h(iVar, iVar2, i10, f10, iVar3, iVar4, i11);
        if (i12 != 8) {
            bVarR.d(this, i12);
        }
        d(bVarR);
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x007b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void d(p.b r6) {
        /*
            r5 = this;
            if (r6 != 0) goto L3
            return
        L3:
            int r0 = r5.f33457l
            r1 = 1
            int r0 = r0 + r1
            int r2 = r5.f33458m
            if (r0 >= r2) goto L12
            int r0 = r5.f33456k
            int r0 = r0 + r1
            int r2 = r5.f33451f
            if (r0 < r2) goto L15
        L12:
            r5.y()
        L15:
            r0 = 0
            boolean r2 = r6.f33432f
            if (r2 != 0) goto L84
            r6.D(r5)
            boolean r2 = r6.isEmpty()
            if (r2 == 0) goto L24
            return
        L24:
            r6.r()
            boolean r2 = r6.f(r5)
            if (r2 == 0) goto L7b
            p.i r2 = r5.p()
            r6.f33427a = r2
            int r3 = r5.f33457l
            r5.l(r6)
            int r4 = r5.f33457l
            int r3 = r3 + r1
            if (r4 != r3) goto L7b
            p.d$a r0 = r5.f33462q
            r0.c(r6)
            p.d$a r0 = r5.f33462q
            r5.B(r0, r1)
            int r0 = r2.f33479r
            r3 = -1
            if (r0 != r3) goto L7c
            p.i r0 = r6.f33427a
            if (r0 != r2) goto L59
            p.i r0 = r6.v(r2)
            if (r0 == 0) goto L59
            r6.x(r0)
        L59:
            boolean r0 = r6.f33432f
            if (r0 != 0) goto L62
            p.i r0 = r6.f33427a
            r0.l(r5, r6)
        L62:
            boolean r0 = p.d.f33441v
            if (r0 == 0) goto L6e
            p.c r0 = r5.f33459n
            p.f<p.b> r0 = r0.f33433a
            r0.a(r6)
            goto L75
        L6e:
            p.c r0 = r5.f33459n
            p.f<p.b> r0 = r0.f33434b
            r0.a(r6)
        L75:
            int r0 = r5.f33457l
            int r0 = r0 - r1
            r5.f33457l = r0
            goto L7c
        L7b:
            r1 = 0
        L7c:
            boolean r0 = r6.s()
            if (r0 != 0) goto L83
            return
        L83:
            r0 = r1
        L84:
            if (r0 != 0) goto L89
            r5.l(r6)
        L89:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: p.d.d(p.b):void");
    }

    public p.b e(i iVar, i iVar2, int i10, int i11) {
        if (f33438s && i11 == 8 && iVar2.f33482u && iVar.f33479r == -1) {
            iVar.j(this, iVar2.f33481t + i10);
            return null;
        }
        p.b bVarR = r();
        bVarR.n(iVar, iVar2, i10);
        if (i11 != 8) {
            bVarR.d(this, i11);
        }
        d(bVarR);
        return bVarR;
    }

    public void f(i iVar, int i10) {
        if (f33438s && iVar.f33479r == -1) {
            float f10 = i10;
            iVar.j(this, f10);
            for (int i11 = 0; i11 < this.f33447b + 1; i11++) {
                i iVar2 = this.f33459n.f33436d[i11];
                if (iVar2 != null && iVar2.B && iVar2.C == iVar.f33478q) {
                    iVar2.j(this, iVar2.D + f10);
                }
            }
            return;
        }
        int i12 = iVar.f33479r;
        if (i12 == -1) {
            p.b bVarR = r();
            bVarR.i(iVar, i10);
            d(bVarR);
            return;
        }
        p.b bVar = this.f33452g[i12];
        if (bVar.f33432f) {
            bVar.f33428b = i10;
            return;
        }
        if (bVar.f33431e.c() == 0) {
            bVar.f33432f = true;
            bVar.f33428b = i10;
        } else {
            p.b bVarR2 = r();
            bVarR2.m(iVar, i10);
            d(bVarR2);
        }
    }

    public void g(i iVar, i iVar2, int i10, boolean z10) {
        p.b bVarR = r();
        i iVarT = t();
        iVarT.f33480s = 0;
        bVarR.o(iVar, iVar2, iVarT, i10);
        d(bVarR);
    }

    public void h(i iVar, i iVar2, int i10, int i11) {
        p.b bVarR = r();
        i iVarT = t();
        iVarT.f33480s = 0;
        bVarR.o(iVar, iVar2, iVarT, i10);
        if (i11 != 8) {
            m(bVarR, (int) (bVarR.f33431e.j(iVarT) * (-1.0f)), i11);
        }
        d(bVarR);
    }

    public void i(i iVar, i iVar2, int i10, boolean z10) {
        p.b bVarR = r();
        i iVarT = t();
        iVarT.f33480s = 0;
        bVarR.p(iVar, iVar2, iVarT, i10);
        d(bVarR);
    }

    public void j(i iVar, i iVar2, int i10, int i11) {
        p.b bVarR = r();
        i iVarT = t();
        iVarT.f33480s = 0;
        bVarR.p(iVar, iVar2, iVarT, i10);
        if (i11 != 8) {
            m(bVarR, (int) (bVarR.f33431e.j(iVarT) * (-1.0f)), i11);
        }
        d(bVarR);
    }

    public void k(i iVar, i iVar2, i iVar3, i iVar4, float f10, int i10) {
        p.b bVarR = r();
        bVarR.k(iVar, iVar2, iVar3, iVar4, f10);
        if (i10 != 8) {
            bVarR.d(this, i10);
        }
        d(bVarR);
    }

    void m(p.b bVar, int i10, int i11) {
        bVar.e(o(i11, null), i10);
    }

    public i o(int i10, String str) {
        if (this.f33456k + 1 >= this.f33451f) {
            y();
        }
        i iVarA = a(i.a.ERROR, str);
        int i11 = this.f33447b + 1;
        this.f33447b = i11;
        this.f33456k++;
        iVarA.f33478q = i11;
        iVarA.f33480s = i10;
        this.f33459n.f33436d[i11] = iVarA;
        this.f33449d.a(iVarA);
        return iVarA;
    }

    public i p() {
        if (this.f33456k + 1 >= this.f33451f) {
            y();
        }
        i iVarA = a(i.a.SLACK, null);
        int i10 = this.f33447b + 1;
        this.f33447b = i10;
        this.f33456k++;
        iVarA.f33478q = i10;
        this.f33459n.f33436d[i10] = iVarA;
        return iVarA;
    }

    public i q(Object obj) {
        i iVarH = null;
        if (obj == null) {
            return null;
        }
        if (this.f33456k + 1 >= this.f33451f) {
            y();
        }
        if (obj instanceof s.d) {
            s.d dVar = (s.d) obj;
            iVarH = dVar.h();
            if (iVarH == null) {
                dVar.r(this.f33459n);
                iVarH = dVar.h();
            }
            int i10 = iVarH.f33478q;
            if (i10 == -1 || i10 > this.f33447b || this.f33459n.f33436d[i10] == null) {
                if (i10 != -1) {
                    iVarH.i();
                }
                int i11 = this.f33447b + 1;
                this.f33447b = i11;
                this.f33456k++;
                iVarH.f33478q = i11;
                iVarH.f33485x = i.a.UNRESTRICTED;
                this.f33459n.f33436d[i11] = iVarH;
            }
        }
        return iVarH;
    }

    public p.b r() {
        p.b bVarB;
        if (f33441v) {
            bVarB = this.f33459n.f33433a.b();
            if (bVarB == null) {
                bVarB = new b(this.f33459n);
                f33445z++;
            } else {
                bVarB.y();
            }
        } else {
            bVarB = this.f33459n.f33434b.b();
            if (bVarB == null) {
                bVarB = new p.b(this.f33459n);
                f33444y++;
            } else {
                bVarB.y();
            }
        }
        i.f();
        return bVarB;
    }

    public i t() {
        if (this.f33456k + 1 >= this.f33451f) {
            y();
        }
        i iVarA = a(i.a.SLACK, null);
        int i10 = this.f33447b + 1;
        this.f33447b = i10;
        this.f33456k++;
        iVarA.f33478q = i10;
        this.f33459n.f33436d[i10] = iVarA;
        return iVarA;
    }

    public c v() {
        return this.f33459n;
    }

    public int x(Object obj) {
        i iVarH = ((s.d) obj).h();
        if (iVarH != null) {
            return (int) (iVarH.f33481t + 0.5f);
        }
        return 0;
    }

    public void z() throws Exception {
        if (this.f33449d.isEmpty()) {
            n();
            return;
        }
        if (!this.f33453h && !this.f33454i) {
            A(this.f33449d);
            return;
        }
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            if (i10 >= this.f33457l) {
                z10 = true;
                break;
            } else if (!this.f33452g[i10].f33432f) {
                break;
            } else {
                i10++;
            }
        }
        if (z10) {
            n();
        } else {
            A(this.f33449d);
        }
    }
}
