package s;

import java.lang.ref.WeakReference;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import s.e;
import t.b;

/* JADX INFO: compiled from: ConstraintWidgetContainer.java */
/* JADX INFO: loaded from: classes.dex */
public class f extends l {
    private int N0;
    int R0;
    int S0;
    int T0;
    int U0;
    t.b L0 = new t.b(this);
    public t.e M0 = new t.e(this);
    protected b.InterfaceC0249b O0 = null;
    private boolean P0 = false;
    protected p.d Q0 = new p.d();
    public int V0 = 0;
    public int W0 = 0;
    c[] X0 = new c[4];
    c[] Y0 = new c[4];
    public boolean Z0 = false;

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public boolean f34440a1 = false;

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public boolean f34441b1 = false;

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public int f34442c1 = 0;

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public int f34443d1 = 0;

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    private int f34444e1 = 257;

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public boolean f34445f1 = false;

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    private boolean f34446g1 = false;

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    private boolean f34447h1 = false;

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    int f34448i1 = 0;

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    private WeakReference<d> f34449j1 = null;

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    private WeakReference<d> f34450k1 = null;

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    private WeakReference<d> f34451l1 = null;

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    private WeakReference<d> f34452m1 = null;

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    HashSet<e> f34453n1 = new HashSet<>();

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public b.a f34454o1 = new b.a();

    public static boolean O1(int i10, e eVar, b.InterfaceC0249b interfaceC0249b, b.a aVar, int i11) {
        int i12;
        int i13;
        if (interfaceC0249b == null) {
            return false;
        }
        if (eVar.T() == 8 || (eVar instanceof g) || (eVar instanceof a)) {
            aVar.f35052e = 0;
            aVar.f35053f = 0;
            return false;
        }
        aVar.f35048a = eVar.y();
        aVar.f35049b = eVar.R();
        aVar.f35050c = eVar.U();
        aVar.f35051d = eVar.v();
        aVar.f35056i = false;
        aVar.f35057j = i11;
        e.b bVar = aVar.f35048a;
        e.b bVar2 = e.b.MATCH_CONSTRAINT;
        boolean z10 = bVar == bVar2;
        boolean z11 = aVar.f35049b == bVar2;
        boolean z12 = z10 && eVar.f34388d0 > 0.0f;
        boolean z13 = z11 && eVar.f34388d0 > 0.0f;
        if (z10 && eVar.Y(0) && eVar.f34425w == 0 && !z12) {
            aVar.f35048a = e.b.WRAP_CONTENT;
            if (z11 && eVar.f34427x == 0) {
                aVar.f35048a = e.b.FIXED;
            }
            z10 = false;
        }
        if (z11 && eVar.Y(1) && eVar.f34427x == 0 && !z13) {
            aVar.f35049b = e.b.WRAP_CONTENT;
            if (z10 && eVar.f34425w == 0) {
                aVar.f35049b = e.b.FIXED;
            }
            z11 = false;
        }
        if (eVar.l0()) {
            aVar.f35048a = e.b.FIXED;
            z10 = false;
        }
        if (eVar.m0()) {
            aVar.f35049b = e.b.FIXED;
            z11 = false;
        }
        if (z12) {
            if (eVar.f34429y[0] == 4) {
                aVar.f35048a = e.b.FIXED;
            } else if (!z11) {
                e.b bVar3 = aVar.f35049b;
                e.b bVar4 = e.b.FIXED;
                if (bVar3 == bVar4) {
                    i13 = aVar.f35051d;
                } else {
                    aVar.f35048a = e.b.WRAP_CONTENT;
                    interfaceC0249b.b(eVar, aVar);
                    i13 = aVar.f35053f;
                }
                aVar.f35048a = bVar4;
                aVar.f35050c = (int) (eVar.t() * i13);
            }
        }
        if (z13) {
            if (eVar.f34429y[1] == 4) {
                aVar.f35049b = e.b.FIXED;
            } else if (!z10) {
                e.b bVar5 = aVar.f35048a;
                e.b bVar6 = e.b.FIXED;
                if (bVar5 == bVar6) {
                    i12 = aVar.f35050c;
                } else {
                    aVar.f35049b = e.b.WRAP_CONTENT;
                    interfaceC0249b.b(eVar, aVar);
                    i12 = aVar.f35052e;
                }
                aVar.f35049b = bVar6;
                if (eVar.u() == -1) {
                    aVar.f35051d = (int) (i12 / eVar.t());
                } else {
                    aVar.f35051d = (int) (eVar.t() * i12);
                }
            }
        }
        interfaceC0249b.b(eVar, aVar);
        eVar.h1(aVar.f35052e);
        eVar.I0(aVar.f35053f);
        eVar.H0(aVar.f35055h);
        eVar.x0(aVar.f35054g);
        aVar.f35057j = b.a.f35045k;
        return aVar.f35056i;
    }

    private void Q1() {
        this.V0 = 0;
        this.W0 = 0;
    }

    private void u1(e eVar) {
        int i10 = this.V0 + 1;
        c[] cVarArr = this.Y0;
        if (i10 >= cVarArr.length) {
            this.Y0 = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.Y0[this.V0] = new c(eVar, 0, L1());
        this.V0++;
    }

    private void x1(d dVar, p.i iVar) {
        this.Q0.h(iVar, this.Q0.q(dVar), 0, 5);
    }

    private void y1(d dVar, p.i iVar) {
        this.Q0.h(this.Q0.q(dVar), iVar, 0, 5);
    }

    private void z1(e eVar) {
        int i10 = this.W0 + 1;
        c[] cVarArr = this.X0;
        if (i10 >= cVarArr.length) {
            this.X0 = (c[]) Arrays.copyOf(cVarArr, cVarArr.length * 2);
        }
        this.X0[this.W0] = new c(eVar, 1, L1());
        this.W0++;
    }

    void A1(d dVar) {
        WeakReference<d> weakReference = this.f34451l1;
        if (weakReference == null || weakReference.get() == null || dVar.d() > this.f34451l1.get().d()) {
            this.f34451l1 = new WeakReference<>(dVar);
        }
    }

    void B1(d dVar) {
        WeakReference<d> weakReference = this.f34449j1;
        if (weakReference == null || weakReference.get() == null || dVar.d() > this.f34449j1.get().d()) {
            this.f34449j1 = new WeakReference<>(dVar);
        }
    }

    public boolean C1(boolean z10) {
        return this.M0.f(z10);
    }

    public boolean D1(boolean z10) {
        return this.M0.g(z10);
    }

    public boolean E1(boolean z10, int i10) {
        return this.M0.h(z10, i10);
    }

    public b.InterfaceC0249b F1() {
        return this.O0;
    }

    public int G1() {
        return this.f34444e1;
    }

    public p.d H1() {
        return this.Q0;
    }

    public void I1() {
        this.M0.j();
    }

    public void J1() {
        this.M0.k();
    }

    public boolean K1() {
        return this.f34447h1;
    }

    public boolean L1() {
        return this.P0;
    }

    @Override // s.e
    public void M(StringBuilder sb) {
        sb.append(this.f34409o + ":{\n");
        sb.append("  actualWidth:" + this.f34384b0);
        sb.append("\n");
        sb.append("  actualHeight:" + this.f34386c0);
        sb.append("\n");
        Iterator<e> it = o1().iterator();
        while (it.hasNext()) {
            it.next().M(sb);
            sb.append(",\n");
        }
        sb.append("}");
    }

    public boolean M1() {
        return this.f34446g1;
    }

    public long N1(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18) {
        this.R0 = i17;
        this.S0 = i18;
        return this.L0.d(this, i10, i17, i18, i11, i12, i13, i14, i15, i16);
    }

    public boolean P1(int i10) {
        return (this.f34444e1 & i10) == i10;
    }

    public void R1(b.InterfaceC0249b interfaceC0249b) {
        this.O0 = interfaceC0249b;
        this.M0.n(interfaceC0249b);
    }

    public void S1(int i10) {
        this.f34444e1 = i10;
        p.d.f33437r = P1(512);
    }

    public void T1(int i10) {
        this.N0 = i10;
    }

    public void U1(boolean z10) {
        this.P0 = z10;
    }

    public boolean V1(p.d dVar, boolean[] zArr) {
        zArr[2] = false;
        boolean zP1 = P1(64);
        n1(dVar, zP1);
        int size = this.K0.size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size; i10++) {
            e eVar = this.K0.get(i10);
            eVar.n1(dVar, zP1);
            if (eVar.a0()) {
                z10 = true;
            }
        }
        return z10;
    }

    public void W1() {
        this.L0.e(this);
    }

    @Override // s.e
    public void m1(boolean z10, boolean z11) {
        super.m1(z10, z11);
        int size = this.K0.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.K0.get(i10).m1(z10, z11);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:152:0x0309 A[PHI: r2 r16
      0x0309: PHI (r2v14 boolean) = (r2v13 boolean), (r2v18 boolean), (r2v18 boolean), (r2v18 boolean) binds: [B:139:0x02ca, B:147:0x02ef, B:148:0x02f1, B:150:0x02f7] A[DONT_GENERATE, DONT_INLINE]
      0x0309: PHI (r16v4 boolean) = (r16v3 boolean), (r16v5 boolean), (r16v5 boolean), (r16v5 boolean) binds: [B:139:0x02ca, B:147:0x02ef, B:148:0x02f1, B:150:0x02f7] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v4, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v6 */
    @Override // s.l
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void p1() {
        /*
            Method dump skipped, instruction units count: 815
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: s.f.p1():void");
    }

    @Override // s.l, s.e
    public void r0() {
        this.Q0.D();
        this.R0 = 0;
        this.T0 = 0;
        this.S0 = 0;
        this.U0 = 0;
        this.f34445f1 = false;
        super.r0();
    }

    void s1(e eVar, int i10) {
        if (i10 == 0) {
            u1(eVar);
        } else if (i10 == 1) {
            z1(eVar);
        }
    }

    public boolean t1(p.d dVar) {
        boolean zP1 = P1(64);
        g(dVar, zP1);
        int size = this.K0.size();
        boolean z10 = false;
        for (int i10 = 0; i10 < size; i10++) {
            e eVar = this.K0.get(i10);
            eVar.P0(0, false);
            eVar.P0(1, false);
            if (eVar instanceof a) {
                z10 = true;
            }
        }
        if (z10) {
            for (int i11 = 0; i11 < size; i11++) {
                e eVar2 = this.K0.get(i11);
                if (eVar2 instanceof a) {
                    ((a) eVar2).v1();
                }
            }
        }
        this.f34453n1.clear();
        for (int i12 = 0; i12 < size; i12++) {
            e eVar3 = this.K0.get(i12);
            if (eVar3.f()) {
                if (eVar3 instanceof k) {
                    this.f34453n1.add(eVar3);
                } else {
                    eVar3.g(dVar, zP1);
                }
            }
        }
        while (this.f34453n1.size() > 0) {
            int size2 = this.f34453n1.size();
            Iterator<e> it = this.f34453n1.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                k kVar = (k) it.next();
                if (kVar.r1(this.f34453n1)) {
                    kVar.g(dVar, zP1);
                    this.f34453n1.remove(kVar);
                    break;
                }
            }
            if (size2 == this.f34453n1.size()) {
                Iterator<e> it2 = this.f34453n1.iterator();
                while (it2.hasNext()) {
                    it2.next().g(dVar, zP1);
                }
                this.f34453n1.clear();
            }
        }
        if (p.d.f33437r) {
            HashSet<e> hashSet = new HashSet<>();
            for (int i13 = 0; i13 < size; i13++) {
                e eVar4 = this.K0.get(i13);
                if (!eVar4.f()) {
                    hashSet.add(eVar4);
                }
            }
            e(this, dVar, hashSet, y() == e.b.WRAP_CONTENT ? 0 : 1, false);
            for (e eVar5 : hashSet) {
                j.a(this, dVar, eVar5);
                eVar5.g(dVar, zP1);
            }
        } else {
            for (int i14 = 0; i14 < size; i14++) {
                e eVar6 = this.K0.get(i14);
                if (eVar6 instanceof f) {
                    e.b[] bVarArr = eVar6.Z;
                    e.b bVar = bVarArr[0];
                    e.b bVar2 = bVarArr[1];
                    e.b bVar3 = e.b.WRAP_CONTENT;
                    if (bVar == bVar3) {
                        eVar6.M0(e.b.FIXED);
                    }
                    if (bVar2 == bVar3) {
                        eVar6.d1(e.b.FIXED);
                    }
                    eVar6.g(dVar, zP1);
                    if (bVar == bVar3) {
                        eVar6.M0(bVar);
                    }
                    if (bVar2 == bVar3) {
                        eVar6.d1(bVar2);
                    }
                } else {
                    j.a(this, dVar, eVar6);
                    if (!eVar6.f()) {
                        eVar6.g(dVar, zP1);
                    }
                }
            }
        }
        if (this.V0 > 0) {
            b.b(this, dVar, null, 0);
        }
        if (this.W0 > 0) {
            b.b(this, dVar, null, 1);
        }
        return true;
    }

    public void v1(d dVar) {
        WeakReference<d> weakReference = this.f34452m1;
        if (weakReference == null || weakReference.get() == null || dVar.d() > this.f34452m1.get().d()) {
            this.f34452m1 = new WeakReference<>(dVar);
        }
    }

    public void w1(d dVar) {
        WeakReference<d> weakReference = this.f34450k1;
        if (weakReference == null || weakReference.get() == null || dVar.d() > this.f34450k1.get().d()) {
            this.f34450k1 = new WeakReference<>(dVar);
        }
    }
}
