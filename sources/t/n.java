package t;

import s.d;
import s.e;
import t.f;
import t.p;

/* JADX INFO: compiled from: VerticalWidgetRun.java */
/* JADX INFO: loaded from: classes.dex */
public class n extends p {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public f f35104k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    g f35105l;

    /* JADX INFO: compiled from: VerticalWidgetRun.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f35106a;

        static {
            int[] iArr = new int[p.b.values().length];
            f35106a = iArr;
            try {
                iArr[p.b.START.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35106a[p.b.END.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35106a[p.b.CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public n(s.e eVar) {
        super(eVar);
        f fVar = new f(this);
        this.f35104k = fVar;
        this.f35105l = null;
        this.f35129h.f35073e = f.a.TOP;
        this.f35130i.f35073e = f.a.BOTTOM;
        fVar.f35073e = f.a.BASELINE;
        this.f35127f = 1;
    }

    @Override // t.p, t.d
    public void a(d dVar) {
        float f10;
        float fT;
        float fT2;
        int i10;
        int i11 = a.f35106a[this.f35131j.ordinal()];
        if (i11 == 1) {
            p(dVar);
        } else if (i11 == 2) {
            o(dVar);
        } else if (i11 == 3) {
            s.e eVar = this.f35123b;
            n(dVar, eVar.P, eVar.R, 1);
            return;
        }
        g gVar = this.f35126e;
        if (gVar.f35071c && !gVar.f35078j && this.f35125d == e.b.MATCH_CONSTRAINT) {
            s.e eVar2 = this.f35123b;
            int i12 = eVar2.f34427x;
            if (i12 == 2) {
                s.e eVarI = eVar2.I();
                if (eVarI != null) {
                    if (eVarI.f34391f.f35126e.f35078j) {
                        this.f35126e.d((int) ((r7.f35075g * this.f35123b.E) + 0.5f));
                    }
                }
            } else if (i12 == 3 && eVar2.f34389e.f35126e.f35078j) {
                int iU = eVar2.u();
                if (iU == -1) {
                    s.e eVar3 = this.f35123b;
                    f10 = eVar3.f34389e.f35126e.f35075g;
                    fT = eVar3.t();
                } else if (iU == 0) {
                    fT2 = r7.f34389e.f35126e.f35075g * this.f35123b.t();
                    i10 = (int) (fT2 + 0.5f);
                    this.f35126e.d(i10);
                } else if (iU != 1) {
                    i10 = 0;
                    this.f35126e.d(i10);
                } else {
                    s.e eVar4 = this.f35123b;
                    f10 = eVar4.f34389e.f35126e.f35075g;
                    fT = eVar4.t();
                }
                fT2 = f10 / fT;
                i10 = (int) (fT2 + 0.5f);
                this.f35126e.d(i10);
            }
        }
        f fVar = this.f35129h;
        if (fVar.f35071c) {
            f fVar2 = this.f35130i;
            if (fVar2.f35071c) {
                if (fVar.f35078j && fVar2.f35078j && this.f35126e.f35078j) {
                    return;
                }
                if (!this.f35126e.f35078j && this.f35125d == e.b.MATCH_CONSTRAINT) {
                    s.e eVar5 = this.f35123b;
                    if (eVar5.f34425w == 0 && !eVar5.i0()) {
                        f fVar3 = this.f35129h.f35080l.get(0);
                        f fVar4 = this.f35130i.f35080l.get(0);
                        int i13 = fVar3.f35075g;
                        f fVar5 = this.f35129h;
                        int i14 = i13 + fVar5.f35074f;
                        int i15 = fVar4.f35075g + this.f35130i.f35074f;
                        fVar5.d(i14);
                        this.f35130i.d(i15);
                        this.f35126e.d(i15 - i14);
                        return;
                    }
                }
                if (!this.f35126e.f35078j && this.f35125d == e.b.MATCH_CONSTRAINT && this.f35122a == 1 && this.f35129h.f35080l.size() > 0 && this.f35130i.f35080l.size() > 0) {
                    f fVar6 = this.f35129h.f35080l.get(0);
                    int i16 = (this.f35130i.f35080l.get(0).f35075g + this.f35130i.f35074f) - (fVar6.f35075g + this.f35129h.f35074f);
                    g gVar2 = this.f35126e;
                    int i17 = gVar2.f35090m;
                    if (i16 < i17) {
                        gVar2.d(i16);
                    } else {
                        gVar2.d(i17);
                    }
                }
                if (this.f35126e.f35078j && this.f35129h.f35080l.size() > 0 && this.f35130i.f35080l.size() > 0) {
                    f fVar7 = this.f35129h.f35080l.get(0);
                    f fVar8 = this.f35130i.f35080l.get(0);
                    int i18 = fVar7.f35075g + this.f35129h.f35074f;
                    int i19 = fVar8.f35075g + this.f35130i.f35074f;
                    float fP = this.f35123b.P();
                    if (fVar7 == fVar8) {
                        i18 = fVar7.f35075g;
                        i19 = fVar8.f35075g;
                        fP = 0.5f;
                    }
                    this.f35129h.d((int) (i18 + 0.5f + (((i19 - i18) - this.f35126e.f35075g) * fP)));
                    this.f35130i.d(this.f35129h.f35075g + this.f35126e.f35075g);
                }
            }
        }
    }

    @Override // t.p
    void d() {
        s.e eVarI;
        s.e eVarI2;
        s.e eVar = this.f35123b;
        if (eVar.f34381a) {
            this.f35126e.d(eVar.v());
        }
        if (!this.f35126e.f35078j) {
            this.f35125d = this.f35123b.R();
            if (this.f35123b.X()) {
                this.f35105l = new t.a(this);
            }
            e.b bVar = this.f35125d;
            if (bVar != e.b.MATCH_CONSTRAINT) {
                if (bVar == e.b.MATCH_PARENT && (eVarI2 = this.f35123b.I()) != null && eVarI2.R() == e.b.FIXED) {
                    int iV = (eVarI2.v() - this.f35123b.P.e()) - this.f35123b.R.e();
                    b(this.f35129h, eVarI2.f34391f.f35129h, this.f35123b.P.e());
                    b(this.f35130i, eVarI2.f34391f.f35130i, -this.f35123b.R.e());
                    this.f35126e.d(iV);
                    return;
                }
                if (this.f35125d == e.b.FIXED) {
                    this.f35126e.d(this.f35123b.v());
                }
            }
        } else if (this.f35125d == e.b.MATCH_PARENT && (eVarI = this.f35123b.I()) != null && eVarI.R() == e.b.FIXED) {
            b(this.f35129h, eVarI.f34391f.f35129h, this.f35123b.P.e());
            b(this.f35130i, eVarI.f34391f.f35130i, -this.f35123b.R.e());
            return;
        }
        g gVar = this.f35126e;
        boolean z10 = gVar.f35078j;
        if (z10) {
            s.e eVar2 = this.f35123b;
            if (eVar2.f34381a) {
                s.d[] dVarArr = eVar2.W;
                if (dVarArr[2].f34366f != null && dVarArr[3].f34366f != null) {
                    if (eVar2.i0()) {
                        this.f35129h.f35074f = this.f35123b.W[2].e();
                        this.f35130i.f35074f = -this.f35123b.W[3].e();
                    } else {
                        f fVarH = h(this.f35123b.W[2]);
                        if (fVarH != null) {
                            b(this.f35129h, fVarH, this.f35123b.W[2].e());
                        }
                        f fVarH2 = h(this.f35123b.W[3]);
                        if (fVarH2 != null) {
                            b(this.f35130i, fVarH2, -this.f35123b.W[3].e());
                        }
                        this.f35129h.f35070b = true;
                        this.f35130i.f35070b = true;
                    }
                    if (this.f35123b.X()) {
                        b(this.f35104k, this.f35129h, this.f35123b.n());
                        return;
                    }
                    return;
                }
                if (dVarArr[2].f34366f != null) {
                    f fVarH3 = h(dVarArr[2]);
                    if (fVarH3 != null) {
                        b(this.f35129h, fVarH3, this.f35123b.W[2].e());
                        b(this.f35130i, this.f35129h, this.f35126e.f35075g);
                        if (this.f35123b.X()) {
                            b(this.f35104k, this.f35129h, this.f35123b.n());
                            return;
                        }
                        return;
                    }
                    return;
                }
                if (dVarArr[3].f34366f != null) {
                    f fVarH4 = h(dVarArr[3]);
                    if (fVarH4 != null) {
                        b(this.f35130i, fVarH4, -this.f35123b.W[3].e());
                        b(this.f35129h, this.f35130i, -this.f35126e.f35075g);
                    }
                    if (this.f35123b.X()) {
                        b(this.f35104k, this.f35129h, this.f35123b.n());
                        return;
                    }
                    return;
                }
                if (dVarArr[4].f34366f != null) {
                    f fVarH5 = h(dVarArr[4]);
                    if (fVarH5 != null) {
                        b(this.f35104k, fVarH5, 0);
                        b(this.f35129h, this.f35104k, -this.f35123b.n());
                        b(this.f35130i, this.f35129h, this.f35126e.f35075g);
                        return;
                    }
                    return;
                }
                if ((eVar2 instanceof s.h) || eVar2.I() == null || this.f35123b.m(d.b.CENTER).f34366f != null) {
                    return;
                }
                b(this.f35129h, this.f35123b.I().f34391f.f35129h, this.f35123b.W());
                b(this.f35130i, this.f35129h, this.f35126e.f35075g);
                if (this.f35123b.X()) {
                    b(this.f35104k, this.f35129h, this.f35123b.n());
                    return;
                }
                return;
            }
        }
        if (z10 || this.f35125d != e.b.MATCH_CONSTRAINT) {
            gVar.b(this);
        } else {
            s.e eVar3 = this.f35123b;
            int i10 = eVar3.f34427x;
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
            } else if (i10 == 3 && !eVar3.i0()) {
                s.e eVar4 = this.f35123b;
                if (eVar4.f34425w != 3) {
                    g gVar4 = eVar4.f34389e.f35126e;
                    this.f35126e.f35080l.add(gVar4);
                    gVar4.f35079k.add(this.f35126e);
                    g gVar5 = this.f35126e;
                    gVar5.f35070b = true;
                    gVar5.f35079k.add(this.f35129h);
                    this.f35126e.f35079k.add(this.f35130i);
                }
            }
        }
        s.e eVar5 = this.f35123b;
        s.d[] dVarArr2 = eVar5.W;
        if (dVarArr2[2].f34366f != null && dVarArr2[3].f34366f != null) {
            if (eVar5.i0()) {
                this.f35129h.f35074f = this.f35123b.W[2].e();
                this.f35130i.f35074f = -this.f35123b.W[3].e();
            } else {
                f fVarH6 = h(this.f35123b.W[2]);
                f fVarH7 = h(this.f35123b.W[3]);
                if (fVarH6 != null) {
                    fVarH6.b(this);
                }
                if (fVarH7 != null) {
                    fVarH7.b(this);
                }
                this.f35131j = p.b.CENTER;
            }
            if (this.f35123b.X()) {
                c(this.f35104k, this.f35129h, 1, this.f35105l);
            }
        } else if (dVarArr2[2].f34366f != null) {
            f fVarH8 = h(dVarArr2[2]);
            if (fVarH8 != null) {
                b(this.f35129h, fVarH8, this.f35123b.W[2].e());
                c(this.f35130i, this.f35129h, 1, this.f35126e);
                if (this.f35123b.X()) {
                    c(this.f35104k, this.f35129h, 1, this.f35105l);
                }
                e.b bVar2 = this.f35125d;
                e.b bVar3 = e.b.MATCH_CONSTRAINT;
                if (bVar2 == bVar3 && this.f35123b.t() > 0.0f) {
                    l lVar = this.f35123b.f34389e;
                    if (lVar.f35125d == bVar3) {
                        lVar.f35126e.f35079k.add(this.f35126e);
                        this.f35126e.f35080l.add(this.f35123b.f34389e.f35126e);
                        this.f35126e.f35069a = this;
                    }
                }
            }
        } else if (dVarArr2[3].f34366f != null) {
            f fVarH9 = h(dVarArr2[3]);
            if (fVarH9 != null) {
                b(this.f35130i, fVarH9, -this.f35123b.W[3].e());
                c(this.f35129h, this.f35130i, -1, this.f35126e);
                if (this.f35123b.X()) {
                    c(this.f35104k, this.f35129h, 1, this.f35105l);
                }
            }
        } else if (dVarArr2[4].f34366f != null) {
            f fVarH10 = h(dVarArr2[4]);
            if (fVarH10 != null) {
                b(this.f35104k, fVarH10, 0);
                c(this.f35129h, this.f35104k, -1, this.f35105l);
                c(this.f35130i, this.f35129h, 1, this.f35126e);
            }
        } else if (!(eVar5 instanceof s.h) && eVar5.I() != null) {
            b(this.f35129h, this.f35123b.I().f34391f.f35129h, this.f35123b.W());
            c(this.f35130i, this.f35129h, 1, this.f35126e);
            if (this.f35123b.X()) {
                c(this.f35104k, this.f35129h, 1, this.f35105l);
            }
            e.b bVar4 = this.f35125d;
            e.b bVar5 = e.b.MATCH_CONSTRAINT;
            if (bVar4 == bVar5 && this.f35123b.t() > 0.0f) {
                l lVar2 = this.f35123b.f34389e;
                if (lVar2.f35125d == bVar5) {
                    lVar2.f35126e.f35079k.add(this.f35126e);
                    this.f35126e.f35080l.add(this.f35123b.f34389e.f35126e);
                    this.f35126e.f35069a = this;
                }
            }
        }
        if (this.f35126e.f35080l.size() == 0) {
            this.f35126e.f35071c = true;
        }
    }

    @Override // t.p
    public void e() {
        f fVar = this.f35129h;
        if (fVar.f35078j) {
            this.f35123b.k1(fVar.f35075g);
        }
    }

    @Override // t.p
    void f() {
        this.f35124c = null;
        this.f35129h.c();
        this.f35130i.c();
        this.f35104k.c();
        this.f35126e.c();
        this.f35128g = false;
    }

    @Override // t.p
    boolean m() {
        return this.f35125d != e.b.MATCH_CONSTRAINT || this.f35123b.f34427x == 0;
    }

    void q() {
        this.f35128g = false;
        this.f35129h.c();
        this.f35129h.f35078j = false;
        this.f35130i.c();
        this.f35130i.f35078j = false;
        this.f35104k.c();
        this.f35104k.f35078j = false;
        this.f35126e.f35078j = false;
    }

    public String toString() {
        return "VerticalRun " + this.f35123b.r();
    }
}
