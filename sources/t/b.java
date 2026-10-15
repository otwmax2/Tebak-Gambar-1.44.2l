package t;

import java.util.ArrayList;
import s.d;
import s.e;

/* JADX INFO: compiled from: BasicMeasure.java */
/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ArrayList<s.e> f35042a = new ArrayList<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private a f35043b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private s.f f35044c;

    /* JADX INFO: compiled from: BasicMeasure.java */
    public static class a {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public static int f35045k = 0;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public static int f35046l = 1;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static int f35047m = 2;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public e.b f35048a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public e.b f35049b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f35050c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f35051d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f35052e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f35053f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f35054g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f35055h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public boolean f35056i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f35057j;
    }

    /* JADX INFO: renamed from: t.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: BasicMeasure.java */
    public interface InterfaceC0249b {
        void a();

        void b(s.e eVar, a aVar);
    }

    public b(s.f fVar) {
        this.f35044c = fVar;
    }

    private boolean a(InterfaceC0249b interfaceC0249b, s.e eVar, int i10) {
        this.f35043b.f35048a = eVar.y();
        this.f35043b.f35049b = eVar.R();
        this.f35043b.f35050c = eVar.U();
        this.f35043b.f35051d = eVar.v();
        a aVar = this.f35043b;
        aVar.f35056i = false;
        aVar.f35057j = i10;
        e.b bVar = aVar.f35048a;
        e.b bVar2 = e.b.MATCH_CONSTRAINT;
        boolean z10 = bVar == bVar2;
        boolean z11 = aVar.f35049b == bVar2;
        boolean z12 = z10 && eVar.f34388d0 > 0.0f;
        boolean z13 = z11 && eVar.f34388d0 > 0.0f;
        if (z12 && eVar.f34429y[0] == 4) {
            aVar.f35048a = e.b.FIXED;
        }
        if (z13 && eVar.f34429y[1] == 4) {
            aVar.f35049b = e.b.FIXED;
        }
        interfaceC0249b.b(eVar, aVar);
        eVar.h1(this.f35043b.f35052e);
        eVar.I0(this.f35043b.f35053f);
        eVar.H0(this.f35043b.f35055h);
        eVar.x0(this.f35043b.f35054g);
        a aVar2 = this.f35043b;
        aVar2.f35057j = a.f35045k;
        return aVar2.f35056i;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x0097 A[PHI: r10
      0x0097: PHI (r10v2 boolean) = (r10v1 boolean), (r10v1 boolean), (r10v1 boolean), (r10v4 boolean), (r10v4 boolean) binds: [B:32:0x0061, B:34:0x0067, B:36:0x006b, B:54:0x0094, B:52:0x008d] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:59:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00a0 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void b(s.f r13) {
        /*
            r12 = this;
            java.util.ArrayList<s.e> r0 = r13.K0
            int r0 = r0.size()
            r1 = 64
            boolean r1 = r13.P1(r1)
            t.b$b r2 = r13.F1()
            r3 = 0
            r4 = 0
        L12:
            if (r4 >= r0) goto La4
            java.util.ArrayList<s.e> r5 = r13.K0
            java.lang.Object r5 = r5.get(r4)
            s.e r5 = (s.e) r5
            boolean r6 = r5 instanceof s.g
            if (r6 == 0) goto L22
            goto La0
        L22:
            boolean r6 = r5 instanceof s.a
            if (r6 == 0) goto L28
            goto La0
        L28:
            boolean r6 = r5.j0()
            if (r6 == 0) goto L30
            goto La0
        L30:
            if (r1 == 0) goto L47
            t.l r6 = r5.f34389e
            if (r6 == 0) goto L47
            t.n r7 = r5.f34391f
            if (r7 == 0) goto L47
            t.g r6 = r6.f35126e
            boolean r6 = r6.f35078j
            if (r6 == 0) goto L47
            t.g r6 = r7.f35126e
            boolean r6 = r6.f35078j
            if (r6 == 0) goto L47
            goto La0
        L47:
            s.e$b r6 = r5.s(r3)
            r7 = 1
            s.e$b r8 = r5.s(r7)
            s.e$b r9 = s.e.b.MATCH_CONSTRAINT
            if (r6 != r9) goto L60
            int r10 = r5.f34425w
            if (r10 == r7) goto L60
            if (r8 != r9) goto L60
            int r10 = r5.f34427x
            if (r10 == r7) goto L60
            r10 = 1
            goto L61
        L60:
            r10 = 0
        L61:
            if (r10 != 0) goto L97
            boolean r11 = r13.P1(r7)
            if (r11 == 0) goto L97
            boolean r11 = r5 instanceof s.k
            if (r11 != 0) goto L97
            if (r6 != r9) goto L7c
            int r11 = r5.f34425w
            if (r11 != 0) goto L7c
            if (r8 == r9) goto L7c
            boolean r11 = r5.g0()
            if (r11 != 0) goto L7c
            r10 = 1
        L7c:
            if (r8 != r9) goto L8b
            int r11 = r5.f34427x
            if (r11 != 0) goto L8b
            if (r6 == r9) goto L8b
            boolean r11 = r5.g0()
            if (r11 != 0) goto L8b
            r10 = 1
        L8b:
            if (r6 == r9) goto L8f
            if (r8 != r9) goto L97
        L8f:
            float r6 = r5.f34388d0
            r8 = 0
            int r6 = (r6 > r8 ? 1 : (r6 == r8 ? 0 : -1))
            if (r6 <= 0) goto L97
            goto L98
        L97:
            r7 = r10
        L98:
            if (r7 == 0) goto L9b
            goto La0
        L9b:
            int r6 = t.b.a.f35045k
            r12.a(r2, r5, r6)
        La0:
            int r4 = r4 + 1
            goto L12
        La4:
            r2.a()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: t.b.b(s.f):void");
    }

    private void c(s.f fVar, String str, int i10, int i11, int i12) {
        int iG = fVar.G();
        int iF = fVar.F();
        fVar.X0(0);
        fVar.W0(0);
        fVar.h1(i11);
        fVar.I0(i12);
        fVar.X0(iG);
        fVar.W0(iF);
        this.f35044c.T1(i10);
        this.f35044c.p1();
    }

    public long d(s.f fVar, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        boolean zE1;
        int i19;
        s.f fVar2;
        int i20;
        boolean z10;
        int i21;
        int i22;
        boolean z11;
        b bVar = this;
        InterfaceC0249b interfaceC0249bF1 = fVar.F1();
        int size = fVar.K0.size();
        int iU = fVar.U();
        int iV = fVar.v();
        boolean zB = s.j.b(i10, 128);
        boolean z12 = zB || s.j.b(i10, 64);
        if (z12) {
            for (int i23 = 0; i23 < size; i23++) {
                s.e eVar = fVar.K0.get(i23);
                e.b bVarY = eVar.y();
                e.b bVar2 = e.b.MATCH_CONSTRAINT;
                boolean z13 = (bVarY == bVar2) && (eVar.R() == bVar2) && eVar.t() > 0.0f;
                if ((eVar.g0() && z13) || ((eVar.i0() && z13) || (eVar instanceof s.k) || eVar.g0() || eVar.i0())) {
                    z12 = false;
                    break;
                }
            }
        }
        if (z12) {
            p.e eVar2 = p.d.f33443x;
        }
        boolean z14 = z12 & ((i13 == 1073741824 && i15 == 1073741824) || zB);
        if (z14) {
            int iMin = Math.min(fVar.E(), i14);
            int iMin2 = Math.min(fVar.D(), i16);
            if (i13 == 1073741824 && fVar.U() != iMin) {
                fVar.h1(iMin);
                fVar.I1();
            }
            if (i15 == 1073741824 && fVar.v() != iMin2) {
                fVar.I0(iMin2);
                fVar.I1();
            }
            if (i13 == 1073741824 && i15 == 1073741824) {
                zE1 = fVar.C1(zB);
                i19 = 2;
            } else {
                boolean zD1 = fVar.D1(zB);
                if (i13 == 1073741824) {
                    zD1 &= fVar.E1(zB, 0);
                    i19 = 1;
                } else {
                    i19 = 0;
                }
                if (i15 == 1073741824) {
                    zE1 = fVar.E1(zB, 1) & zD1;
                    i19++;
                } else {
                    zE1 = zD1;
                }
            }
            if (zE1) {
                fVar.m1(i13 == 1073741824, i15 == 1073741824);
            }
        } else {
            zE1 = false;
            i19 = 0;
        }
        if (zE1 && i19 == 2) {
            return 0L;
        }
        int iG1 = fVar.G1();
        if (size > 0) {
            b(fVar);
        }
        e(fVar);
        int size2 = bVar.f35042a.size();
        if (size > 0) {
            c(fVar, "First pass", 0, iU, iV);
        }
        if (size2 > 0) {
            e.b bVarY2 = fVar.y();
            e.b bVar3 = e.b.WRAP_CONTENT;
            boolean z15 = bVarY2 == bVar3;
            boolean z16 = fVar.R() == bVar3;
            int iMax = Math.max(fVar.U(), bVar.f35044c.G());
            int iMax2 = Math.max(fVar.v(), bVar.f35044c.F());
            int i24 = 0;
            boolean zS1 = false;
            while (i24 < size2) {
                s.e eVar3 = bVar.f35042a.get(i24);
                if (eVar3 instanceof s.k) {
                    int iU2 = eVar3.U();
                    int iV2 = eVar3.v();
                    i22 = iG1;
                    boolean zA = bVar.a(interfaceC0249bF1, eVar3, a.f35046l) | zS1;
                    int iU3 = eVar3.U();
                    int iV3 = eVar3.v();
                    if (iU3 != iU2) {
                        eVar3.h1(iU3);
                        if (z15 && eVar3.K() > iMax) {
                            iMax = Math.max(iMax, eVar3.K() + eVar3.m(d.b.RIGHT).e());
                        }
                        z11 = true;
                    } else {
                        z11 = zA;
                    }
                    if (iV3 != iV2) {
                        eVar3.I0(iV3);
                        if (z16 && eVar3.p() > iMax2) {
                            iMax2 = Math.max(iMax2, eVar3.p() + eVar3.m(d.b.BOTTOM).e());
                        }
                        z11 = true;
                    }
                    zS1 = z11 | ((s.k) eVar3).s1();
                } else {
                    i22 = iG1;
                }
                i24++;
                iG1 = i22;
            }
            int i25 = iG1;
            int i26 = 0;
            int i27 = 2;
            while (i26 < i27) {
                int i28 = 0;
                while (i28 < size2) {
                    s.e eVar4 = bVar.f35042a.get(i28);
                    if (((eVar4 instanceof s.h) && !(eVar4 instanceof s.k)) || (eVar4 instanceof s.g) || eVar4.T() == 8 || ((z14 && eVar4.f34389e.f35126e.f35078j && eVar4.f34391f.f35126e.f35078j) || (eVar4 instanceof s.k))) {
                        z10 = z14;
                        i21 = size2;
                    } else {
                        int iU4 = eVar4.U();
                        int iV4 = eVar4.v();
                        z10 = z14;
                        int iN = eVar4.n();
                        int i29 = a.f35046l;
                        i21 = size2;
                        if (i26 == 1) {
                            i29 = a.f35047m;
                        }
                        boolean zA2 = bVar.a(interfaceC0249bF1, eVar4, i29) | zS1;
                        int iU5 = eVar4.U();
                        int iV5 = eVar4.v();
                        if (iU5 != iU4) {
                            eVar4.h1(iU5);
                            if (z15 && eVar4.K() > iMax) {
                                iMax = Math.max(iMax, eVar4.K() + eVar4.m(d.b.RIGHT).e());
                            }
                            zA2 = true;
                        }
                        if (iV5 != iV4) {
                            eVar4.I0(iV5);
                            if (z16 && eVar4.p() > iMax2) {
                                iMax2 = Math.max(iMax2, eVar4.p() + eVar4.m(d.b.BOTTOM).e());
                            }
                            zA2 = true;
                        }
                        zS1 = (!eVar4.X() || iN == eVar4.n()) ? zA2 : true;
                    }
                    i28++;
                    bVar = this;
                    z14 = z10;
                    size2 = i21;
                }
                boolean z17 = z14;
                int i30 = size2;
                if (!zS1) {
                    break;
                }
                i26++;
                c(fVar, "intermediate pass", i26, iU, iV);
                bVar = this;
                z14 = z17;
                size2 = i30;
                i27 = 2;
                zS1 = false;
            }
            fVar2 = fVar;
            i20 = i25;
        } else {
            fVar2 = fVar;
            i20 = iG1;
        }
        fVar2.S1(i20);
        return 0L;
    }

    public void e(s.f fVar) {
        this.f35042a.clear();
        int size = fVar.K0.size();
        for (int i10 = 0; i10 < size; i10++) {
            s.e eVar = fVar.K0.get(i10);
            e.b bVarY = eVar.y();
            e.b bVar = e.b.MATCH_CONSTRAINT;
            if (bVarY == bVar || eVar.R() == bVar) {
                this.f35042a.add(eVar);
            }
        }
        fVar.I1();
    }
}
