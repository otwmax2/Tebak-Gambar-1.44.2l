package t;

import java.util.ArrayList;
import java.util.Iterator;
import s.d;
import s.e;
import t.b;

/* JADX INFO: compiled from: Direct.java */
/* JADX INFO: loaded from: classes.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static b.a f35091a = new b.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static int f35092b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static int f35093c = 0;

    private static boolean a(int i10, s.e eVar) {
        e.b bVar;
        e.b bVar2;
        e.b bVarY = eVar.y();
        e.b bVarR = eVar.R();
        s.f fVar = eVar.I() != null ? (s.f) eVar.I() : null;
        if (fVar != null) {
            fVar.y();
            e.b bVar3 = e.b.FIXED;
        }
        if (fVar != null) {
            fVar.R();
            e.b bVar4 = e.b.FIXED;
        }
        e.b bVar5 = e.b.FIXED;
        boolean z10 = bVarY == bVar5 || eVar.l0() || bVarY == e.b.WRAP_CONTENT || (bVarY == (bVar2 = e.b.MATCH_CONSTRAINT) && eVar.f34425w == 0 && eVar.f34388d0 == 0.0f && eVar.Y(0)) || (bVarY == bVar2 && eVar.f34425w == 1 && eVar.b0(0, eVar.U()));
        boolean z11 = bVarR == bVar5 || eVar.m0() || bVarR == e.b.WRAP_CONTENT || (bVarR == (bVar = e.b.MATCH_CONSTRAINT) && eVar.f34427x == 0 && eVar.f34388d0 == 0.0f && eVar.Y(1)) || (bVarR == bVar && eVar.f34427x == 1 && eVar.b0(1, eVar.v()));
        if (eVar.f34388d0 <= 0.0f || !(z10 || z11)) {
            return z10 && z11;
        }
        return true;
    }

    private static void b(int i10, s.e eVar, b.InterfaceC0249b interfaceC0249b, boolean z10) {
        s.d dVar;
        s.d dVar2;
        s.d dVar3;
        s.d dVar4;
        if (eVar.e0()) {
            return;
        }
        f35092b++;
        if (!(eVar instanceof s.f) && eVar.k0()) {
            int i11 = i10 + 1;
            if (a(i11, eVar)) {
                s.f.O1(i11, eVar, interfaceC0249b, new b.a(), b.a.f35045k);
            }
        }
        s.d dVarM = eVar.m(d.b.LEFT);
        s.d dVarM2 = eVar.m(d.b.RIGHT);
        int iD = dVarM.d();
        int iD2 = dVarM2.d();
        if (dVarM.c() != null && dVarM.m()) {
            Iterator<s.d> it = dVarM.c().iterator();
            while (it.hasNext()) {
                s.d next = it.next();
                s.e eVar2 = next.f34364d;
                int i12 = i10 + 1;
                boolean zA = a(i12, eVar2);
                if (eVar2.k0() && zA) {
                    s.f.O1(i12, eVar2, interfaceC0249b, new b.a(), b.a.f35045k);
                }
                boolean z11 = (next == eVar2.O && (dVar4 = eVar2.Q.f34366f) != null && dVar4.m()) || (next == eVar2.Q && (dVar3 = eVar2.O.f34366f) != null && dVar3.m());
                e.b bVarY = eVar2.y();
                e.b bVar = e.b.MATCH_CONSTRAINT;
                if (bVarY != bVar || zA) {
                    if (!eVar2.k0()) {
                        s.d dVar5 = eVar2.O;
                        if (next == dVar5 && eVar2.Q.f34366f == null) {
                            int iE = dVar5.e() + iD;
                            eVar2.C0(iE, eVar2.U() + iE);
                            b(i12, eVar2, interfaceC0249b, z10);
                        } else {
                            s.d dVar6 = eVar2.Q;
                            if (next == dVar6 && dVar5.f34366f == null) {
                                int iE2 = iD - dVar6.e();
                                eVar2.C0(iE2 - eVar2.U(), iE2);
                                b(i12, eVar2, interfaceC0249b, z10);
                            } else if (z11 && !eVar2.g0()) {
                                d(i12, interfaceC0249b, eVar2, z10);
                            }
                        }
                    }
                } else if (eVar2.y() == bVar && eVar2.A >= 0 && eVar2.f34431z >= 0 && ((eVar2.T() == 8 || (eVar2.f34425w == 0 && eVar2.t() == 0.0f)) && !eVar2.g0() && !eVar2.j0() && z11 && !eVar2.g0())) {
                    e(i12, eVar, interfaceC0249b, eVar2, z10);
                }
            }
        }
        if (eVar instanceof s.g) {
            return;
        }
        if (dVarM2.c() != null && dVarM2.m()) {
            Iterator<s.d> it2 = dVarM2.c().iterator();
            while (it2.hasNext()) {
                s.d next2 = it2.next();
                s.e eVar3 = next2.f34364d;
                int i13 = i10 + 1;
                boolean zA2 = a(i13, eVar3);
                if (eVar3.k0() && zA2) {
                    s.f.O1(i13, eVar3, interfaceC0249b, new b.a(), b.a.f35045k);
                }
                boolean z12 = (next2 == eVar3.O && (dVar2 = eVar3.Q.f34366f) != null && dVar2.m()) || (next2 == eVar3.Q && (dVar = eVar3.O.f34366f) != null && dVar.m());
                e.b bVarY2 = eVar3.y();
                e.b bVar2 = e.b.MATCH_CONSTRAINT;
                if (bVarY2 != bVar2 || zA2) {
                    if (!eVar3.k0()) {
                        s.d dVar7 = eVar3.O;
                        if (next2 == dVar7 && eVar3.Q.f34366f == null) {
                            int iE3 = dVar7.e() + iD2;
                            eVar3.C0(iE3, eVar3.U() + iE3);
                            b(i13, eVar3, interfaceC0249b, z10);
                        } else {
                            s.d dVar8 = eVar3.Q;
                            if (next2 == dVar8 && dVar7.f34366f == null) {
                                int iE4 = iD2 - dVar8.e();
                                eVar3.C0(iE4 - eVar3.U(), iE4);
                                b(i13, eVar3, interfaceC0249b, z10);
                            } else if (z12 && !eVar3.g0()) {
                                d(i13, interfaceC0249b, eVar3, z10);
                            }
                        }
                    }
                } else if (eVar3.y() == bVar2 && eVar3.A >= 0 && eVar3.f34431z >= 0 && (eVar3.T() == 8 || (eVar3.f34425w == 0 && eVar3.t() == 0.0f))) {
                    if (!eVar3.g0() && !eVar3.j0() && z12 && !eVar3.g0()) {
                        e(i13, eVar, interfaceC0249b, eVar3, z10);
                    }
                }
            }
        }
        eVar.o0();
    }

    private static void c(int i10, s.a aVar, b.InterfaceC0249b interfaceC0249b, int i11, boolean z10) {
        if (aVar.q1()) {
            if (i11 == 0) {
                b(i10 + 1, aVar, interfaceC0249b, z10);
            } else {
                i(i10 + 1, aVar, interfaceC0249b);
            }
        }
    }

    private static void d(int i10, b.InterfaceC0249b interfaceC0249b, s.e eVar, boolean z10) {
        float fW = eVar.w();
        int iD = eVar.O.f34366f.d();
        int iD2 = eVar.Q.f34366f.d();
        int iE = eVar.O.e() + iD;
        int iE2 = iD2 - eVar.Q.e();
        if (iD == iD2) {
            fW = 0.5f;
        } else {
            iD = iE;
            iD2 = iE2;
        }
        int iU = eVar.U();
        int i11 = (iD2 - iD) - iU;
        if (iD > iD2) {
            i11 = (iD - iD2) - iU;
        }
        int i12 = ((int) (i11 > 0 ? (fW * i11) + 0.5f : fW * i11)) + iD;
        int i13 = i12 + iU;
        if (iD > iD2) {
            i13 = i12 - iU;
        }
        eVar.C0(i12, i13);
        b(i10 + 1, eVar, interfaceC0249b, z10);
    }

    private static void e(int i10, s.e eVar, b.InterfaceC0249b interfaceC0249b, s.e eVar2, boolean z10) {
        float fW = eVar2.w();
        int iD = eVar2.O.f34366f.d() + eVar2.O.e();
        int iD2 = eVar2.Q.f34366f.d() - eVar2.Q.e();
        if (iD2 >= iD) {
            int iU = eVar2.U();
            if (eVar2.T() != 8) {
                int i11 = eVar2.f34425w;
                if (i11 == 2) {
                    iU = (int) (eVar2.w() * 0.5f * (eVar instanceof s.f ? eVar.U() : eVar.I().U()));
                } else if (i11 == 0) {
                    iU = iD2 - iD;
                }
                iU = Math.max(eVar2.f34431z, iU);
                int i12 = eVar2.A;
                if (i12 > 0) {
                    iU = Math.min(i12, iU);
                }
            }
            int i13 = iD + ((int) ((fW * ((iD2 - iD) - iU)) + 0.5f));
            eVar2.C0(i13, iU + i13);
            b(i10 + 1, eVar2, interfaceC0249b, z10);
        }
    }

    private static void f(int i10, b.InterfaceC0249b interfaceC0249b, s.e eVar) {
        float fP = eVar.P();
        int iD = eVar.P.f34366f.d();
        int iD2 = eVar.R.f34366f.d();
        int iE = eVar.P.e() + iD;
        int iE2 = iD2 - eVar.R.e();
        if (iD == iD2) {
            fP = 0.5f;
        } else {
            iD = iE;
            iD2 = iE2;
        }
        int iV = eVar.v();
        int i11 = (iD2 - iD) - iV;
        if (iD > iD2) {
            i11 = (iD - iD2) - iV;
        }
        int i12 = (int) (i11 > 0 ? (fP * i11) + 0.5f : fP * i11);
        int i13 = iD + i12;
        int i14 = i13 + iV;
        if (iD > iD2) {
            i13 = iD - i12;
            i14 = i13 - iV;
        }
        eVar.F0(i13, i14);
        i(i10 + 1, eVar, interfaceC0249b);
    }

    private static void g(int i10, s.e eVar, b.InterfaceC0249b interfaceC0249b, s.e eVar2) {
        float fP = eVar2.P();
        int iD = eVar2.P.f34366f.d() + eVar2.P.e();
        int iD2 = eVar2.R.f34366f.d() - eVar2.R.e();
        if (iD2 >= iD) {
            int iV = eVar2.v();
            if (eVar2.T() != 8) {
                int i11 = eVar2.f34427x;
                if (i11 == 2) {
                    iV = (int) (fP * 0.5f * (eVar instanceof s.f ? eVar.v() : eVar.I().v()));
                } else if (i11 == 0) {
                    iV = iD2 - iD;
                }
                iV = Math.max(eVar2.C, iV);
                int i12 = eVar2.D;
                if (i12 > 0) {
                    iV = Math.min(i12, iV);
                }
            }
            int i13 = iD + ((int) ((fP * ((iD2 - iD) - iV)) + 0.5f));
            eVar2.F0(i13, iV + i13);
            i(i10 + 1, eVar2, interfaceC0249b);
        }
    }

    public static void h(s.f fVar, b.InterfaceC0249b interfaceC0249b) {
        e.b bVarY = fVar.y();
        e.b bVarR = fVar.R();
        f35092b = 0;
        f35093c = 0;
        fVar.s0();
        ArrayList<s.e> arrayListO1 = fVar.o1();
        int size = arrayListO1.size();
        for (int i10 = 0; i10 < size; i10++) {
            arrayListO1.get(i10).s0();
        }
        boolean zL1 = fVar.L1();
        if (bVarY == e.b.FIXED) {
            fVar.C0(0, fVar.U());
        } else {
            fVar.D0(0);
        }
        boolean z10 = false;
        boolean z11 = false;
        for (int i11 = 0; i11 < size; i11++) {
            s.e eVar = arrayListO1.get(i11);
            if (eVar instanceof s.g) {
                s.g gVar = (s.g) eVar;
                if (gVar.p1() == 1) {
                    if (gVar.q1() != -1) {
                        gVar.t1(gVar.q1());
                    } else if (gVar.r1() != -1 && fVar.l0()) {
                        gVar.t1(fVar.U() - gVar.r1());
                    } else if (fVar.l0()) {
                        gVar.t1((int) ((gVar.s1() * fVar.U()) + 0.5f));
                    }
                    z10 = true;
                }
            } else if ((eVar instanceof s.a) && ((s.a) eVar).u1() == 0) {
                z11 = true;
            }
        }
        if (z10) {
            for (int i12 = 0; i12 < size; i12++) {
                s.e eVar2 = arrayListO1.get(i12);
                if (eVar2 instanceof s.g) {
                    s.g gVar2 = (s.g) eVar2;
                    if (gVar2.p1() == 1) {
                        b(0, gVar2, interfaceC0249b, zL1);
                    }
                }
            }
        }
        b(0, fVar, interfaceC0249b, zL1);
        if (z11) {
            for (int i13 = 0; i13 < size; i13++) {
                s.e eVar3 = arrayListO1.get(i13);
                if (eVar3 instanceof s.a) {
                    s.a aVar = (s.a) eVar3;
                    if (aVar.u1() == 0) {
                        c(0, aVar, interfaceC0249b, 0, zL1);
                    }
                }
            }
        }
        if (bVarR == e.b.FIXED) {
            fVar.F0(0, fVar.v());
        } else {
            fVar.E0(0);
        }
        boolean z12 = false;
        boolean z13 = false;
        for (int i14 = 0; i14 < size; i14++) {
            s.e eVar4 = arrayListO1.get(i14);
            if (eVar4 instanceof s.g) {
                s.g gVar3 = (s.g) eVar4;
                if (gVar3.p1() == 0) {
                    if (gVar3.q1() != -1) {
                        gVar3.t1(gVar3.q1());
                    } else if (gVar3.r1() != -1 && fVar.m0()) {
                        gVar3.t1(fVar.v() - gVar3.r1());
                    } else if (fVar.m0()) {
                        gVar3.t1((int) ((gVar3.s1() * fVar.v()) + 0.5f));
                    }
                    z12 = true;
                }
            } else if ((eVar4 instanceof s.a) && ((s.a) eVar4).u1() == 1) {
                z13 = true;
            }
        }
        if (z12) {
            for (int i15 = 0; i15 < size; i15++) {
                s.e eVar5 = arrayListO1.get(i15);
                if (eVar5 instanceof s.g) {
                    s.g gVar4 = (s.g) eVar5;
                    if (gVar4.p1() == 0) {
                        i(1, gVar4, interfaceC0249b);
                    }
                }
            }
        }
        i(0, fVar, interfaceC0249b);
        if (z13) {
            for (int i16 = 0; i16 < size; i16++) {
                s.e eVar6 = arrayListO1.get(i16);
                if (eVar6 instanceof s.a) {
                    s.a aVar2 = (s.a) eVar6;
                    if (aVar2.u1() == 1) {
                        c(0, aVar2, interfaceC0249b, 1, zL1);
                    }
                }
            }
        }
        for (int i17 = 0; i17 < size; i17++) {
            s.e eVar7 = arrayListO1.get(i17);
            if (eVar7.k0() && a(0, eVar7)) {
                s.f.O1(0, eVar7, interfaceC0249b, f35091a, b.a.f35045k);
                if (!(eVar7 instanceof s.g)) {
                    b(0, eVar7, interfaceC0249b, zL1);
                    i(0, eVar7, interfaceC0249b);
                } else if (((s.g) eVar7).p1() == 0) {
                    i(0, eVar7, interfaceC0249b);
                } else {
                    b(0, eVar7, interfaceC0249b, zL1);
                }
            }
        }
    }

    private static void i(int i10, s.e eVar, b.InterfaceC0249b interfaceC0249b) {
        s.d dVar;
        s.d dVar2;
        s.d dVar3;
        s.d dVar4;
        if (eVar.n0()) {
            return;
        }
        f35093c++;
        if (!(eVar instanceof s.f) && eVar.k0()) {
            int i11 = i10 + 1;
            if (a(i11, eVar)) {
                s.f.O1(i11, eVar, interfaceC0249b, new b.a(), b.a.f35045k);
            }
        }
        s.d dVarM = eVar.m(d.b.TOP);
        s.d dVarM2 = eVar.m(d.b.BOTTOM);
        int iD = dVarM.d();
        int iD2 = dVarM2.d();
        if (dVarM.c() != null && dVarM.m()) {
            Iterator<s.d> it = dVarM.c().iterator();
            while (it.hasNext()) {
                s.d next = it.next();
                s.e eVar2 = next.f34364d;
                int i12 = i10 + 1;
                boolean zA = a(i12, eVar2);
                if (eVar2.k0() && zA) {
                    s.f.O1(i12, eVar2, interfaceC0249b, new b.a(), b.a.f35045k);
                }
                boolean z10 = (next == eVar2.P && (dVar4 = eVar2.R.f34366f) != null && dVar4.m()) || (next == eVar2.R && (dVar3 = eVar2.P.f34366f) != null && dVar3.m());
                e.b bVarR = eVar2.R();
                e.b bVar = e.b.MATCH_CONSTRAINT;
                if (bVarR != bVar || zA) {
                    if (!eVar2.k0()) {
                        s.d dVar5 = eVar2.P;
                        if (next == dVar5 && eVar2.R.f34366f == null) {
                            int iE = dVar5.e() + iD;
                            eVar2.F0(iE, eVar2.v() + iE);
                            i(i12, eVar2, interfaceC0249b);
                        } else {
                            s.d dVar6 = eVar2.R;
                            if (next == dVar6 && dVar5.f34366f == null) {
                                int iE2 = iD - dVar6.e();
                                eVar2.F0(iE2 - eVar2.v(), iE2);
                                i(i12, eVar2, interfaceC0249b);
                            } else if (z10 && !eVar2.i0()) {
                                f(i12, interfaceC0249b, eVar2);
                            }
                        }
                    }
                } else if (eVar2.R() == bVar && eVar2.D >= 0 && eVar2.C >= 0 && (eVar2.T() == 8 || (eVar2.f34427x == 0 && eVar2.t() == 0.0f))) {
                    if (!eVar2.i0() && !eVar2.j0() && z10 && !eVar2.i0()) {
                        g(i12, eVar, interfaceC0249b, eVar2);
                    }
                }
            }
        }
        if (eVar instanceof s.g) {
            return;
        }
        if (dVarM2.c() != null && dVarM2.m()) {
            Iterator<s.d> it2 = dVarM2.c().iterator();
            while (it2.hasNext()) {
                s.d next2 = it2.next();
                s.e eVar3 = next2.f34364d;
                int i13 = i10 + 1;
                boolean zA2 = a(i13, eVar3);
                if (eVar3.k0() && zA2) {
                    s.f.O1(i13, eVar3, interfaceC0249b, new b.a(), b.a.f35045k);
                }
                boolean z11 = (next2 == eVar3.P && (dVar2 = eVar3.R.f34366f) != null && dVar2.m()) || (next2 == eVar3.R && (dVar = eVar3.P.f34366f) != null && dVar.m());
                e.b bVarR2 = eVar3.R();
                e.b bVar2 = e.b.MATCH_CONSTRAINT;
                if (bVarR2 != bVar2 || zA2) {
                    if (!eVar3.k0()) {
                        s.d dVar7 = eVar3.P;
                        if (next2 == dVar7 && eVar3.R.f34366f == null) {
                            int iE3 = dVar7.e() + iD2;
                            eVar3.F0(iE3, eVar3.v() + iE3);
                            i(i13, eVar3, interfaceC0249b);
                        } else {
                            s.d dVar8 = eVar3.R;
                            if (next2 == dVar8 && dVar7.f34366f == null) {
                                int iE4 = iD2 - dVar8.e();
                                eVar3.F0(iE4 - eVar3.v(), iE4);
                                i(i13, eVar3, interfaceC0249b);
                            } else if (z11 && !eVar3.i0()) {
                                f(i13, interfaceC0249b, eVar3);
                            }
                        }
                    }
                } else if (eVar3.R() == bVar2 && eVar3.D >= 0 && eVar3.C >= 0 && (eVar3.T() == 8 || (eVar3.f34427x == 0 && eVar3.t() == 0.0f))) {
                    if (!eVar3.i0() && !eVar3.j0() && z11 && !eVar3.i0()) {
                        g(i13, eVar, interfaceC0249b, eVar3);
                    }
                }
            }
        }
        s.d dVarM3 = eVar.m(d.b.BASELINE);
        if (dVarM3.c() != null && dVarM3.m()) {
            int iD3 = dVarM3.d();
            for (s.d dVar9 : dVarM3.c()) {
                s.e eVar4 = dVar9.f34364d;
                int i14 = i10 + 1;
                boolean zA3 = a(i14, eVar4);
                if (eVar4.k0() && zA3) {
                    s.f.O1(i14, eVar4, interfaceC0249b, new b.a(), b.a.f35045k);
                }
                if (eVar4.R() != e.b.MATCH_CONSTRAINT || zA3) {
                    if (!eVar4.k0() && dVar9 == eVar4.S) {
                        eVar4.B0(dVar9.e() + iD3);
                        i(i14, eVar4, interfaceC0249b);
                    }
                }
            }
        }
        eVar.p0();
    }
}
