package t;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import s.e;
import t.b;

/* JADX INFO: compiled from: DependencyGraph.java */
/* JADX INFO: loaded from: classes.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private s.f f35060a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private s.f f35063d;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f35061b = true;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f35062c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private ArrayList<p> f35064e = new ArrayList<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ArrayList<m> f35065f = new ArrayList<>();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private b.InterfaceC0249b f35066g = null;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private b.a f35067h = new b.a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    ArrayList<m> f35068i = new ArrayList<>();

    public e(s.f fVar) {
        this.f35060a = fVar;
        this.f35063d = fVar;
    }

    private void a(f fVar, int i10, int i11, f fVar2, ArrayList<m> arrayList, m mVar) {
        p pVar = fVar.f35072d;
        if (pVar.f35124c == null) {
            s.f fVar3 = this.f35060a;
            if (pVar == fVar3.f34389e || pVar == fVar3.f34391f) {
                return;
            }
            if (mVar == null) {
                mVar = new m(pVar, i11);
                arrayList.add(mVar);
            }
            pVar.f35124c = mVar;
            mVar.a(pVar);
            for (d dVar : pVar.f35129h.f35079k) {
                if (dVar instanceof f) {
                    a((f) dVar, i10, 0, fVar2, arrayList, mVar);
                }
            }
            for (d dVar2 : pVar.f35130i.f35079k) {
                if (dVar2 instanceof f) {
                    a((f) dVar2, i10, 1, fVar2, arrayList, mVar);
                }
            }
            if (i10 == 1 && (pVar instanceof n)) {
                for (d dVar3 : ((n) pVar).f35104k.f35079k) {
                    if (dVar3 instanceof f) {
                        a((f) dVar3, i10, 2, fVar2, arrayList, mVar);
                    }
                }
            }
            for (f fVar4 : pVar.f35129h.f35080l) {
                if (fVar4 == fVar2) {
                    mVar.f35098b = true;
                }
                a(fVar4, i10, 0, fVar2, arrayList, mVar);
            }
            for (f fVar5 : pVar.f35130i.f35080l) {
                if (fVar5 == fVar2) {
                    mVar.f35098b = true;
                }
                a(fVar5, i10, 1, fVar2, arrayList, mVar);
            }
            if (i10 == 1 && (pVar instanceof n)) {
                Iterator<f> it = ((n) pVar).f35104k.f35080l.iterator();
                while (it.hasNext()) {
                    a(it.next(), i10, 2, fVar2, arrayList, mVar);
                }
            }
        }
    }

    private boolean b(s.f fVar) {
        int iU;
        e.b bVar;
        int iV;
        e.b bVar2;
        e.b bVar3;
        e.b bVar4;
        for (s.e eVar : fVar.K0) {
            e.b[] bVarArr = eVar.Z;
            e.b bVar5 = bVarArr[0];
            e.b bVar6 = bVarArr[1];
            if (eVar.T() == 8) {
                eVar.f34381a = true;
            } else {
                if (eVar.B < 1.0f && bVar5 == e.b.MATCH_CONSTRAINT) {
                    eVar.f34425w = 2;
                }
                if (eVar.E < 1.0f && bVar6 == e.b.MATCH_CONSTRAINT) {
                    eVar.f34427x = 2;
                }
                if (eVar.t() > 0.0f) {
                    e.b bVar7 = e.b.MATCH_CONSTRAINT;
                    if (bVar5 == bVar7 && (bVar6 == e.b.WRAP_CONTENT || bVar6 == e.b.FIXED)) {
                        eVar.f34425w = 3;
                    } else if (bVar6 == bVar7 && (bVar5 == e.b.WRAP_CONTENT || bVar5 == e.b.FIXED)) {
                        eVar.f34427x = 3;
                    } else if (bVar5 == bVar7 && bVar6 == bVar7) {
                        if (eVar.f34425w == 0) {
                            eVar.f34425w = 3;
                        }
                        if (eVar.f34427x == 0) {
                            eVar.f34427x = 3;
                        }
                    }
                }
                e.b bVar8 = e.b.MATCH_CONSTRAINT;
                if (bVar5 == bVar8 && eVar.f34425w == 1 && (eVar.O.f34366f == null || eVar.Q.f34366f == null)) {
                    bVar5 = e.b.WRAP_CONTENT;
                }
                e.b bVar9 = bVar5;
                if (bVar6 == bVar8 && eVar.f34427x == 1 && (eVar.P.f34366f == null || eVar.R.f34366f == null)) {
                    bVar6 = e.b.WRAP_CONTENT;
                }
                e.b bVar10 = bVar6;
                l lVar = eVar.f34389e;
                lVar.f35125d = bVar9;
                int i10 = eVar.f34425w;
                lVar.f35122a = i10;
                n nVar = eVar.f34391f;
                nVar.f35125d = bVar10;
                int i11 = eVar.f34427x;
                nVar.f35122a = i11;
                e.b bVar11 = e.b.MATCH_PARENT;
                if ((bVar9 == bVar11 || bVar9 == e.b.FIXED || bVar9 == e.b.WRAP_CONTENT) && (bVar10 == bVar11 || bVar10 == e.b.FIXED || bVar10 == e.b.WRAP_CONTENT)) {
                    int iU2 = eVar.U();
                    if (bVar9 == bVar11) {
                        iU = (fVar.U() - eVar.O.f34367g) - eVar.Q.f34367g;
                        bVar = e.b.FIXED;
                    } else {
                        iU = iU2;
                        bVar = bVar9;
                    }
                    int iV2 = eVar.v();
                    if (bVar10 == bVar11) {
                        iV = (fVar.v() - eVar.P.f34367g) - eVar.R.f34367g;
                        bVar2 = e.b.FIXED;
                    } else {
                        iV = iV2;
                        bVar2 = bVar10;
                    }
                    l(eVar, bVar, iU, bVar2, iV);
                    eVar.f34389e.f35126e.d(eVar.U());
                    eVar.f34391f.f35126e.d(eVar.v());
                    eVar.f34381a = true;
                } else {
                    if (bVar9 == bVar8 && (bVar10 == (bVar4 = e.b.WRAP_CONTENT) || bVar10 == e.b.FIXED)) {
                        if (i10 == 3) {
                            if (bVar10 == bVar4) {
                                l(eVar, bVar4, 0, bVar4, 0);
                            }
                            int iV3 = eVar.v();
                            int i12 = (int) ((iV3 * eVar.f34388d0) + 0.5f);
                            e.b bVar12 = e.b.FIXED;
                            l(eVar, bVar12, i12, bVar12, iV3);
                            eVar.f34389e.f35126e.d(eVar.U());
                            eVar.f34391f.f35126e.d(eVar.v());
                            eVar.f34381a = true;
                        } else if (i10 == 1) {
                            l(eVar, bVar4, 0, bVar10, 0);
                            eVar.f34389e.f35126e.f35090m = eVar.U();
                        } else if (i10 == 2) {
                            e.b[] bVarArr2 = fVar.Z;
                            e.b bVar13 = bVarArr2[0];
                            e.b bVar14 = e.b.FIXED;
                            if (bVar13 == bVar14 || bVarArr2[0] == bVar11) {
                                l(eVar, bVar14, (int) ((eVar.B * fVar.U()) + 0.5f), bVar10, eVar.v());
                                eVar.f34389e.f35126e.d(eVar.U());
                                eVar.f34391f.f35126e.d(eVar.v());
                                eVar.f34381a = true;
                            }
                        } else {
                            s.d[] dVarArr = eVar.W;
                            if (dVarArr[0].f34366f == null || dVarArr[1].f34366f == null) {
                                l(eVar, bVar4, 0, bVar10, 0);
                                eVar.f34389e.f35126e.d(eVar.U());
                                eVar.f34391f.f35126e.d(eVar.v());
                                eVar.f34381a = true;
                            }
                        }
                    }
                    if (bVar10 == bVar8 && (bVar9 == (bVar3 = e.b.WRAP_CONTENT) || bVar9 == e.b.FIXED)) {
                        if (i11 == 3) {
                            if (bVar9 == bVar3) {
                                l(eVar, bVar3, 0, bVar3, 0);
                            }
                            int iU3 = eVar.U();
                            float f10 = eVar.f34388d0;
                            if (eVar.u() == -1) {
                                f10 = 1.0f / f10;
                            }
                            e.b bVar15 = e.b.FIXED;
                            l(eVar, bVar15, iU3, bVar15, (int) ((iU3 * f10) + 0.5f));
                            eVar.f34389e.f35126e.d(eVar.U());
                            eVar.f34391f.f35126e.d(eVar.v());
                            eVar.f34381a = true;
                        } else if (i11 == 1) {
                            l(eVar, bVar9, 0, bVar3, 0);
                            eVar.f34391f.f35126e.f35090m = eVar.v();
                        } else if (i11 == 2) {
                            e.b[] bVarArr3 = fVar.Z;
                            e.b bVar16 = bVarArr3[1];
                            e.b bVar17 = e.b.FIXED;
                            if (bVar16 == bVar17 || bVarArr3[1] == bVar11) {
                                l(eVar, bVar9, eVar.U(), bVar17, (int) ((eVar.E * fVar.v()) + 0.5f));
                                eVar.f34389e.f35126e.d(eVar.U());
                                eVar.f34391f.f35126e.d(eVar.v());
                                eVar.f34381a = true;
                            }
                        } else {
                            s.d[] dVarArr2 = eVar.W;
                            if (dVarArr2[2].f34366f == null || dVarArr2[3].f34366f == null) {
                                l(eVar, bVar3, 0, bVar10, 0);
                                eVar.f34389e.f35126e.d(eVar.U());
                                eVar.f34391f.f35126e.d(eVar.v());
                                eVar.f34381a = true;
                            }
                        }
                    }
                    if (bVar9 == bVar8 && bVar10 == bVar8) {
                        if (i10 == 1 || i11 == 1) {
                            e.b bVar18 = e.b.WRAP_CONTENT;
                            l(eVar, bVar18, 0, bVar18, 0);
                            eVar.f34389e.f35126e.f35090m = eVar.U();
                            eVar.f34391f.f35126e.f35090m = eVar.v();
                        } else if (i11 == 2 && i10 == 2) {
                            e.b[] bVarArr4 = fVar.Z;
                            e.b bVar19 = bVarArr4[0];
                            e.b bVar20 = e.b.FIXED;
                            if (bVar19 == bVar20 && bVarArr4[1] == bVar20) {
                                l(eVar, bVar20, (int) ((eVar.B * fVar.U()) + 0.5f), bVar20, (int) ((eVar.E * fVar.v()) + 0.5f));
                                eVar.f34389e.f35126e.d(eVar.U());
                                eVar.f34391f.f35126e.d(eVar.v());
                                eVar.f34381a = true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    private int e(s.f fVar, int i10) {
        int size = this.f35068i.size();
        long jMax = 0;
        for (int i11 = 0; i11 < size; i11++) {
            jMax = Math.max(jMax, this.f35068i.get(i11).b(fVar, i10));
        }
        return (int) jMax;
    }

    private void i(p pVar, int i10, ArrayList<m> arrayList) {
        for (d dVar : pVar.f35129h.f35079k) {
            if (dVar instanceof f) {
                a((f) dVar, i10, 0, pVar.f35130i, arrayList, null);
            } else if (dVar instanceof p) {
                a(((p) dVar).f35129h, i10, 0, pVar.f35130i, arrayList, null);
            }
        }
        for (d dVar2 : pVar.f35130i.f35079k) {
            if (dVar2 instanceof f) {
                a((f) dVar2, i10, 1, pVar.f35129h, arrayList, null);
            } else if (dVar2 instanceof p) {
                a(((p) dVar2).f35130i, i10, 1, pVar.f35129h, arrayList, null);
            }
        }
        if (i10 == 1) {
            for (d dVar3 : ((n) pVar).f35104k.f35079k) {
                if (dVar3 instanceof f) {
                    a((f) dVar3, i10, 2, null, arrayList, null);
                }
            }
        }
    }

    private void l(s.e eVar, e.b bVar, int i10, e.b bVar2, int i11) {
        b.a aVar = this.f35067h;
        aVar.f35048a = bVar;
        aVar.f35049b = bVar2;
        aVar.f35050c = i10;
        aVar.f35051d = i11;
        this.f35066g.b(eVar, aVar);
        eVar.h1(this.f35067h.f35052e);
        eVar.I0(this.f35067h.f35053f);
        eVar.H0(this.f35067h.f35055h);
        eVar.x0(this.f35067h.f35054g);
    }

    public void c() {
        d(this.f35064e);
        this.f35068i.clear();
        m.f35096h = 0;
        i(this.f35060a.f34389e, 0, this.f35068i);
        i(this.f35060a.f34391f, 1, this.f35068i);
        this.f35061b = false;
    }

    public void d(ArrayList<p> arrayList) {
        arrayList.clear();
        this.f35063d.f34389e.f();
        this.f35063d.f34391f.f();
        arrayList.add(this.f35063d.f34389e);
        arrayList.add(this.f35063d.f34391f);
        HashSet hashSet = null;
        for (s.e eVar : this.f35063d.K0) {
            if (eVar instanceof s.g) {
                arrayList.add(new j(eVar));
            } else {
                if (eVar.g0()) {
                    if (eVar.f34385c == null) {
                        eVar.f34385c = new c(eVar, 0);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(eVar.f34385c);
                } else {
                    arrayList.add(eVar.f34389e);
                }
                if (eVar.i0()) {
                    if (eVar.f34387d == null) {
                        eVar.f34387d = new c(eVar, 1);
                    }
                    if (hashSet == null) {
                        hashSet = new HashSet();
                    }
                    hashSet.add(eVar.f34387d);
                } else {
                    arrayList.add(eVar.f34391f);
                }
                if (eVar instanceof s.i) {
                    arrayList.add(new k(eVar));
                }
            }
        }
        if (hashSet != null) {
            arrayList.addAll(hashSet);
        }
        Iterator<p> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
        for (p pVar : arrayList) {
            if (pVar.f35123b != this.f35063d) {
                pVar.d();
            }
        }
    }

    public boolean f(boolean z10) {
        boolean z11;
        boolean z12 = true;
        boolean z13 = z10 & true;
        if (this.f35061b || this.f35062c) {
            for (s.e eVar : this.f35060a.K0) {
                eVar.l();
                eVar.f34381a = false;
                eVar.f34389e.r();
                eVar.f34391f.q();
            }
            this.f35060a.l();
            s.f fVar = this.f35060a;
            fVar.f34381a = false;
            fVar.f34389e.r();
            this.f35060a.f34391f.q();
            this.f35062c = false;
        }
        if (b(this.f35063d)) {
            return false;
        }
        this.f35060a.j1(0);
        this.f35060a.k1(0);
        e.b bVarS = this.f35060a.s(0);
        e.b bVarS2 = this.f35060a.s(1);
        if (this.f35061b) {
            c();
        }
        int iV = this.f35060a.V();
        int iW = this.f35060a.W();
        this.f35060a.f34389e.f35129h.d(iV);
        this.f35060a.f34391f.f35129h.d(iW);
        m();
        e.b bVar = e.b.WRAP_CONTENT;
        if (bVarS == bVar || bVarS2 == bVar) {
            if (z13) {
                Iterator<p> it = this.f35064e.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    if (!it.next().m()) {
                        z13 = false;
                        break;
                    }
                }
            }
            if (z13 && bVarS == e.b.WRAP_CONTENT) {
                this.f35060a.M0(e.b.FIXED);
                s.f fVar2 = this.f35060a;
                fVar2.h1(e(fVar2, 0));
                s.f fVar3 = this.f35060a;
                fVar3.f34389e.f35126e.d(fVar3.U());
            }
            if (z13 && bVarS2 == e.b.WRAP_CONTENT) {
                this.f35060a.d1(e.b.FIXED);
                s.f fVar4 = this.f35060a;
                fVar4.I0(e(fVar4, 1));
                s.f fVar5 = this.f35060a;
                fVar5.f34391f.f35126e.d(fVar5.v());
            }
        }
        s.f fVar6 = this.f35060a;
        e.b[] bVarArr = fVar6.Z;
        e.b bVar2 = bVarArr[0];
        e.b bVar3 = e.b.FIXED;
        if (bVar2 == bVar3 || bVarArr[0] == e.b.MATCH_PARENT) {
            int iU = fVar6.U() + iV;
            this.f35060a.f34389e.f35130i.d(iU);
            this.f35060a.f34389e.f35126e.d(iU - iV);
            m();
            s.f fVar7 = this.f35060a;
            e.b[] bVarArr2 = fVar7.Z;
            if (bVarArr2[1] == bVar3 || bVarArr2[1] == e.b.MATCH_PARENT) {
                int iV2 = fVar7.v() + iW;
                this.f35060a.f34391f.f35130i.d(iV2);
                this.f35060a.f34391f.f35126e.d(iV2 - iW);
            }
            m();
            z11 = true;
        } else {
            z11 = false;
        }
        for (p pVar : this.f35064e) {
            if (pVar.f35123b != this.f35060a || pVar.f35128g) {
                pVar.e();
            }
        }
        for (p pVar2 : this.f35064e) {
            if (z11 || pVar2.f35123b != this.f35060a) {
                if (!pVar2.f35129h.f35078j || ((!pVar2.f35130i.f35078j && !(pVar2 instanceof j)) || (!pVar2.f35126e.f35078j && !(pVar2 instanceof c) && !(pVar2 instanceof j)))) {
                    z12 = false;
                    break;
                }
            }
        }
        this.f35060a.M0(bVarS);
        this.f35060a.d1(bVarS2);
        return z12;
    }

    public boolean g(boolean z10) {
        if (this.f35061b) {
            for (s.e eVar : this.f35060a.K0) {
                eVar.l();
                eVar.f34381a = false;
                l lVar = eVar.f34389e;
                lVar.f35126e.f35078j = false;
                lVar.f35128g = false;
                lVar.r();
                n nVar = eVar.f34391f;
                nVar.f35126e.f35078j = false;
                nVar.f35128g = false;
                nVar.q();
            }
            this.f35060a.l();
            s.f fVar = this.f35060a;
            fVar.f34381a = false;
            l lVar2 = fVar.f34389e;
            lVar2.f35126e.f35078j = false;
            lVar2.f35128g = false;
            lVar2.r();
            n nVar2 = this.f35060a.f34391f;
            nVar2.f35126e.f35078j = false;
            nVar2.f35128g = false;
            nVar2.q();
            c();
        }
        if (b(this.f35063d)) {
            return false;
        }
        this.f35060a.j1(0);
        this.f35060a.k1(0);
        this.f35060a.f34389e.f35129h.d(0);
        this.f35060a.f34391f.f35129h.d(0);
        return true;
    }

    public boolean h(boolean z10, int i10) {
        boolean z11;
        e.b bVar;
        boolean z12 = true;
        boolean z13 = z10 & true;
        e.b bVarS = this.f35060a.s(0);
        e.b bVarS2 = this.f35060a.s(1);
        int iV = this.f35060a.V();
        int iW = this.f35060a.W();
        if (z13 && (bVarS == (bVar = e.b.WRAP_CONTENT) || bVarS2 == bVar)) {
            Iterator<p> it = this.f35064e.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                p next = it.next();
                if (next.f35127f == i10 && !next.m()) {
                    z13 = false;
                    break;
                }
            }
            if (i10 == 0) {
                if (z13 && bVarS == e.b.WRAP_CONTENT) {
                    this.f35060a.M0(e.b.FIXED);
                    s.f fVar = this.f35060a;
                    fVar.h1(e(fVar, 0));
                    s.f fVar2 = this.f35060a;
                    fVar2.f34389e.f35126e.d(fVar2.U());
                }
            } else if (z13 && bVarS2 == e.b.WRAP_CONTENT) {
                this.f35060a.d1(e.b.FIXED);
                s.f fVar3 = this.f35060a;
                fVar3.I0(e(fVar3, 1));
                s.f fVar4 = this.f35060a;
                fVar4.f34391f.f35126e.d(fVar4.v());
            }
        }
        if (i10 == 0) {
            s.f fVar5 = this.f35060a;
            e.b[] bVarArr = fVar5.Z;
            if (bVarArr[0] == e.b.FIXED || bVarArr[0] == e.b.MATCH_PARENT) {
                int iU = fVar5.U() + iV;
                this.f35060a.f34389e.f35130i.d(iU);
                this.f35060a.f34389e.f35126e.d(iU - iV);
                z11 = true;
            }
            z11 = false;
        } else {
            s.f fVar6 = this.f35060a;
            e.b[] bVarArr2 = fVar6.Z;
            if (bVarArr2[1] == e.b.FIXED || bVarArr2[1] == e.b.MATCH_PARENT) {
                int iV2 = fVar6.v() + iW;
                this.f35060a.f34391f.f35130i.d(iV2);
                this.f35060a.f34391f.f35126e.d(iV2 - iW);
                z11 = true;
            }
            z11 = false;
        }
        m();
        for (p pVar : this.f35064e) {
            if (pVar.f35127f == i10 && (pVar.f35123b != this.f35060a || pVar.f35128g)) {
                pVar.e();
            }
        }
        for (p pVar2 : this.f35064e) {
            if (pVar2.f35127f == i10 && (z11 || pVar2.f35123b != this.f35060a)) {
                if (!pVar2.f35129h.f35078j || !pVar2.f35130i.f35078j || (!(pVar2 instanceof c) && !pVar2.f35126e.f35078j)) {
                    z12 = false;
                    break;
                }
            }
        }
        this.f35060a.M0(bVarS);
        this.f35060a.d1(bVarS2);
        return z12;
    }

    public void j() {
        this.f35061b = true;
    }

    public void k() {
        this.f35062c = true;
    }

    public void m() {
        g gVar;
        for (s.e eVar : this.f35060a.K0) {
            if (!eVar.f34381a) {
                e.b[] bVarArr = eVar.Z;
                boolean z10 = false;
                e.b bVar = bVarArr[0];
                e.b bVar2 = bVarArr[1];
                int i10 = eVar.f34425w;
                int i11 = eVar.f34427x;
                e.b bVar3 = e.b.WRAP_CONTENT;
                boolean z11 = bVar == bVar3 || (bVar == e.b.MATCH_CONSTRAINT && i10 == 1);
                if (bVar2 == bVar3 || (bVar2 == e.b.MATCH_CONSTRAINT && i11 == 1)) {
                    z10 = true;
                }
                g gVar2 = eVar.f34389e.f35126e;
                boolean z12 = gVar2.f35078j;
                g gVar3 = eVar.f34391f.f35126e;
                boolean z13 = gVar3.f35078j;
                if (z12 && z13) {
                    e.b bVar4 = e.b.FIXED;
                    l(eVar, bVar4, gVar2.f35075g, bVar4, gVar3.f35075g);
                    eVar.f34381a = true;
                } else if (z12 && z10) {
                    l(eVar, e.b.FIXED, gVar2.f35075g, bVar3, gVar3.f35075g);
                    if (bVar2 == e.b.MATCH_CONSTRAINT) {
                        eVar.f34391f.f35126e.f35090m = eVar.v();
                    } else {
                        eVar.f34391f.f35126e.d(eVar.v());
                        eVar.f34381a = true;
                    }
                } else if (z13 && z11) {
                    l(eVar, bVar3, gVar2.f35075g, e.b.FIXED, gVar3.f35075g);
                    if (bVar == e.b.MATCH_CONSTRAINT) {
                        eVar.f34389e.f35126e.f35090m = eVar.U();
                    } else {
                        eVar.f34389e.f35126e.d(eVar.U());
                        eVar.f34381a = true;
                    }
                }
                if (eVar.f34381a && (gVar = eVar.f34391f.f35105l) != null) {
                    gVar.d(eVar.n());
                }
            }
        }
    }

    public void n(b.InterfaceC0249b interfaceC0249b) {
        this.f35066g = interfaceC0249b;
    }
}
