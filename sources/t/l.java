package t;

import s.d;
import s.e;
import t.f;
import t.p;

/* JADX INFO: compiled from: HorizontalWidgetRun.java */
/* JADX INFO: loaded from: classes.dex */
public class l extends p {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static int[] f35094k = new int[2];

    /* JADX INFO: compiled from: HorizontalWidgetRun.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f35095a;

        static {
            int[] iArr = new int[p.b.values().length];
            f35095a = iArr;
            try {
                iArr[p.b.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35095a[p.b.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35095a[p.b.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public l(s.e eVar) {
        super(eVar);
        this.f35129h.f35073e = f.a.LEFT;
        this.f35130i.f35073e = f.a.RIGHT;
        this.f35127f = 0;
    }

    private void q(int[] iArr, int i10, int i11, int i12, int i13, float f10, int i14) {
        int i15 = i11 - i10;
        int i16 = i13 - i12;
        if (i14 != -1) {
            if (i14 == 0) {
                iArr[0] = (int) ((i16 * f10) + 0.5f);
                iArr[1] = i16;
                return;
            } else {
                if (i14 != 1) {
                    return;
                }
                iArr[0] = i15;
                iArr[1] = (int) ((i15 * f10) + 0.5f);
                return;
            }
        }
        int i17 = (int) ((i16 * f10) + 0.5f);
        int i18 = (int) ((i15 / f10) + 0.5f);
        if (i17 <= i15) {
            iArr[0] = i17;
            iArr[1] = i16;
        } else if (i18 <= i16) {
            iArr[0] = i15;
            iArr[1] = i18;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:125:0x02e2  */
    @Override // t.p, t.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(t.d r17) {
        /*
            Method dump skipped, instruction units count: 1095
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: t.l.a(t.d):void");
    }

    @Override // t.p
    void d() {
        s.e eVarI;
        s.e eVarI2;
        s.e eVar = this.f35123b;
        if (eVar.f34381a) {
            this.f35126e.d(eVar.U());
        }
        if (this.f35126e.f35078j) {
            e.b bVar = this.f35125d;
            e.b bVar2 = e.b.MATCH_PARENT;
            if (bVar == bVar2 && (eVarI = this.f35123b.I()) != null && (eVarI.y() == e.b.FIXED || eVarI.y() == bVar2)) {
                b(this.f35129h, eVarI.f34389e.f35129h, this.f35123b.O.e());
                b(this.f35130i, eVarI.f34389e.f35130i, -this.f35123b.Q.e());
                return;
            }
        } else {
            e.b bVarY = this.f35123b.y();
            this.f35125d = bVarY;
            if (bVarY != e.b.MATCH_CONSTRAINT) {
                e.b bVar3 = e.b.MATCH_PARENT;
                if (bVarY == bVar3 && (eVarI2 = this.f35123b.I()) != null && (eVarI2.y() == e.b.FIXED || eVarI2.y() == bVar3)) {
                    int iU = (eVarI2.U() - this.f35123b.O.e()) - this.f35123b.Q.e();
                    b(this.f35129h, eVarI2.f34389e.f35129h, this.f35123b.O.e());
                    b(this.f35130i, eVarI2.f34389e.f35130i, -this.f35123b.Q.e());
                    this.f35126e.d(iU);
                    return;
                }
                if (this.f35125d == e.b.FIXED) {
                    this.f35126e.d(this.f35123b.U());
                }
            }
        }
        g gVar = this.f35126e;
        if (gVar.f35078j) {
            s.e eVar2 = this.f35123b;
            if (eVar2.f34381a) {
                s.d[] dVarArr = eVar2.W;
                if (dVarArr[0].f34366f != null && dVarArr[1].f34366f != null) {
                    if (eVar2.g0()) {
                        this.f35129h.f35074f = this.f35123b.W[0].e();
                        this.f35130i.f35074f = -this.f35123b.W[1].e();
                        return;
                    }
                    f fVarH = h(this.f35123b.W[0]);
                    if (fVarH != null) {
                        b(this.f35129h, fVarH, this.f35123b.W[0].e());
                    }
                    f fVarH2 = h(this.f35123b.W[1]);
                    if (fVarH2 != null) {
                        b(this.f35130i, fVarH2, -this.f35123b.W[1].e());
                    }
                    this.f35129h.f35070b = true;
                    this.f35130i.f35070b = true;
                    return;
                }
                if (dVarArr[0].f34366f != null) {
                    f fVarH3 = h(dVarArr[0]);
                    if (fVarH3 != null) {
                        b(this.f35129h, fVarH3, this.f35123b.W[0].e());
                        b(this.f35130i, this.f35129h, this.f35126e.f35075g);
                        return;
                    }
                    return;
                }
                if (dVarArr[1].f34366f != null) {
                    f fVarH4 = h(dVarArr[1]);
                    if (fVarH4 != null) {
                        b(this.f35130i, fVarH4, -this.f35123b.W[1].e());
                        b(this.f35129h, this.f35130i, -this.f35126e.f35075g);
                        return;
                    }
                    return;
                }
                if ((eVar2 instanceof s.h) || eVar2.I() == null || this.f35123b.m(d.b.CENTER).f34366f != null) {
                    return;
                }
                b(this.f35129h, this.f35123b.I().f34389e.f35129h, this.f35123b.V());
                b(this.f35130i, this.f35129h, this.f35126e.f35075g);
                return;
            }
        }
        if (this.f35125d == e.b.MATCH_CONSTRAINT) {
            s.e eVar3 = this.f35123b;
            int i10 = eVar3.f34425w;
            if (i10 == 2) {
                s.e eVarI3 = eVar3.I();
                if (eVarI3 != null) {
                    g gVar2 = eVarI3.f34391f.f35126e;
                    this.f35126e.f35080l.add(gVar2);
                    gVar2.f35079k.add(this.f35126e);
                    g gVar3 = this.f35126e;
                    gVar3.f35070b = true;
                    gVar3.f35079k.add(this.f35129h);
                    this.f35126e.f35079k.add(this.f35130i);
                }
            } else if (i10 == 3) {
                if (eVar3.f34427x == 3) {
                    this.f35129h.f35069a = this;
                    this.f35130i.f35069a = this;
                    n nVar = eVar3.f34391f;
                    nVar.f35129h.f35069a = this;
                    nVar.f35130i.f35069a = this;
                    gVar.f35069a = this;
                    if (eVar3.i0()) {
                        this.f35126e.f35080l.add(this.f35123b.f34391f.f35126e);
                        this.f35123b.f34391f.f35126e.f35079k.add(this.f35126e);
                        n nVar2 = this.f35123b.f34391f;
                        nVar2.f35126e.f35069a = this;
                        this.f35126e.f35080l.add(nVar2.f35129h);
                        this.f35126e.f35080l.add(this.f35123b.f34391f.f35130i);
                        this.f35123b.f34391f.f35129h.f35079k.add(this.f35126e);
                        this.f35123b.f34391f.f35130i.f35079k.add(this.f35126e);
                    } else if (this.f35123b.g0()) {
                        this.f35123b.f34391f.f35126e.f35080l.add(this.f35126e);
                        this.f35126e.f35079k.add(this.f35123b.f34391f.f35126e);
                    } else {
                        this.f35123b.f34391f.f35126e.f35080l.add(this.f35126e);
                    }
                } else {
                    g gVar4 = eVar3.f34391f.f35126e;
                    gVar.f35080l.add(gVar4);
                    gVar4.f35079k.add(this.f35126e);
                    this.f35123b.f34391f.f35129h.f35079k.add(this.f35126e);
                    this.f35123b.f34391f.f35130i.f35079k.add(this.f35126e);
                    g gVar5 = this.f35126e;
                    gVar5.f35070b = true;
                    gVar5.f35079k.add(this.f35129h);
                    this.f35126e.f35079k.add(this.f35130i);
                    this.f35129h.f35080l.add(this.f35126e);
                    this.f35130i.f35080l.add(this.f35126e);
                }
            }
        }
        s.e eVar4 = this.f35123b;
        s.d[] dVarArr2 = eVar4.W;
        if (dVarArr2[0].f34366f != null && dVarArr2[1].f34366f != null) {
            if (eVar4.g0()) {
                this.f35129h.f35074f = this.f35123b.W[0].e();
                this.f35130i.f35074f = -this.f35123b.W[1].e();
                return;
            }
            f fVarH5 = h(this.f35123b.W[0]);
            f fVarH6 = h(this.f35123b.W[1]);
            if (fVarH5 != null) {
                fVarH5.b(this);
            }
            if (fVarH6 != null) {
                fVarH6.b(this);
            }
            this.f35131j = p.b.CENTER;
            return;
        }
        if (dVarArr2[0].f34366f != null) {
            f fVarH7 = h(dVarArr2[0]);
            if (fVarH7 != null) {
                b(this.f35129h, fVarH7, this.f35123b.W[0].e());
                c(this.f35130i, this.f35129h, 1, this.f35126e);
                return;
            }
            return;
        }
        if (dVarArr2[1].f34366f != null) {
            f fVarH8 = h(dVarArr2[1]);
            if (fVarH8 != null) {
                b(this.f35130i, fVarH8, -this.f35123b.W[1].e());
                c(this.f35129h, this.f35130i, -1, this.f35126e);
                return;
            }
            return;
        }
        if ((eVar4 instanceof s.h) || eVar4.I() == null) {
            return;
        }
        b(this.f35129h, this.f35123b.I().f34389e.f35129h, this.f35123b.V());
        c(this.f35130i, this.f35129h, 1, this.f35126e);
    }

    @Override // t.p
    public void e() {
        f fVar = this.f35129h;
        if (fVar.f35078j) {
            this.f35123b.j1(fVar.f35075g);
        }
    }

    @Override // t.p
    void f() {
        this.f35124c = null;
        this.f35129h.c();
        this.f35130i.c();
        this.f35126e.c();
        this.f35128g = false;
    }

    @Override // t.p
    boolean m() {
        return this.f35125d != e.b.MATCH_CONSTRAINT || this.f35123b.f34425w == 0;
    }

    void r() {
        this.f35128g = false;
        this.f35129h.c();
        this.f35129h.f35078j = false;
        this.f35130i.c();
        this.f35130i.f35078j = false;
        this.f35126e.f35078j = false;
    }

    public String toString() {
        return "HorizontalRun " + this.f35123b.r();
    }
}
