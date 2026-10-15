package t;

import s.d;
import s.e;

/* JADX INFO: compiled from: WidgetRun.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class p implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f35122a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    s.e f35123b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    m f35124c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected e.b f35125d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    g f35126e = new g(this);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f35127f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    boolean f35128g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public f f35129h = new f(this);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public f f35130i = new f(this);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected b f35131j = b.NONE;

    /* JADX INFO: compiled from: WidgetRun.java */
    static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f35132a;

        static {
            int[] iArr = new int[d.b.values().length];
            f35132a = iArr;
            try {
                iArr[d.b.LEFT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f35132a[d.b.RIGHT.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f35132a[d.b.TOP.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f35132a[d.b.BASELINE.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f35132a[d.b.BOTTOM.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    /* JADX INFO: compiled from: WidgetRun.java */
    enum b {
        NONE,
        START,
        END,
        CENTER
    }

    public p(s.e eVar) {
        this.f35123b = eVar;
    }

    private void l(int i10, int i11) {
        int i12 = this.f35122a;
        if (i12 == 0) {
            this.f35126e.d(g(i11, i10));
            return;
        }
        if (i12 == 1) {
            this.f35126e.d(Math.min(g(this.f35126e.f35090m, i10), i11));
            return;
        }
        if (i12 == 2) {
            s.e eVarI = this.f35123b.I();
            if (eVarI != null) {
                if ((i10 == 0 ? eVarI.f34389e : eVarI.f34391f).f35126e.f35078j) {
                    s.e eVar = this.f35123b;
                    this.f35126e.d(g((int) ((r9.f35075g * (i10 == 0 ? eVar.B : eVar.E)) + 0.5f), i10));
                    return;
                }
                return;
            }
            return;
        }
        if (i12 != 3) {
            return;
        }
        s.e eVar2 = this.f35123b;
        p pVar = eVar2.f34389e;
        e.b bVar = pVar.f35125d;
        e.b bVar2 = e.b.MATCH_CONSTRAINT;
        if (bVar == bVar2 && pVar.f35122a == 3) {
            n nVar = eVar2.f34391f;
            if (nVar.f35125d == bVar2 && nVar.f35122a == 3) {
                return;
            }
        }
        if (i10 == 0) {
            pVar = eVar2.f34391f;
        }
        if (pVar.f35126e.f35078j) {
            float fT = eVar2.t();
            this.f35126e.d(i10 == 1 ? (int) ((pVar.f35126e.f35075g / fT) + 0.5f) : (int) ((fT * pVar.f35126e.f35075g) + 0.5f));
        }
    }

    @Override // t.d
    public void a(d dVar) {
    }

    protected final void b(f fVar, f fVar2, int i10) {
        fVar.f35080l.add(fVar2);
        fVar.f35074f = i10;
        fVar2.f35079k.add(fVar);
    }

    protected final void c(f fVar, f fVar2, int i10, g gVar) {
        fVar.f35080l.add(fVar2);
        fVar.f35080l.add(this.f35126e);
        fVar.f35076h = i10;
        fVar.f35077i = gVar;
        fVar2.f35079k.add(fVar);
        gVar.f35079k.add(fVar);
    }

    abstract void d();

    abstract void e();

    abstract void f();

    protected final int g(int i10, int i11) {
        int iMax;
        if (i11 == 0) {
            s.e eVar = this.f35123b;
            int i12 = eVar.A;
            iMax = Math.max(eVar.f34431z, i10);
            if (i12 > 0) {
                iMax = Math.min(i12, i10);
            }
            if (iMax == i10) {
                return i10;
            }
        } else {
            s.e eVar2 = this.f35123b;
            int i13 = eVar2.D;
            iMax = Math.max(eVar2.C, i10);
            if (i13 > 0) {
                iMax = Math.min(i13, i10);
            }
            if (iMax == i10) {
                return i10;
            }
        }
        return iMax;
    }

    protected final f h(s.d dVar) {
        s.d dVar2 = dVar.f34366f;
        if (dVar2 == null) {
            return null;
        }
        s.e eVar = dVar2.f34364d;
        int i10 = a.f35132a[dVar2.f34365e.ordinal()];
        if (i10 == 1) {
            return eVar.f34389e.f35129h;
        }
        if (i10 == 2) {
            return eVar.f34389e.f35130i;
        }
        if (i10 == 3) {
            return eVar.f34391f.f35129h;
        }
        if (i10 == 4) {
            return eVar.f34391f.f35104k;
        }
        if (i10 != 5) {
            return null;
        }
        return eVar.f34391f.f35130i;
    }

    protected final f i(s.d dVar, int i10) {
        s.d dVar2 = dVar.f34366f;
        if (dVar2 == null) {
            return null;
        }
        s.e eVar = dVar2.f34364d;
        p pVar = i10 == 0 ? eVar.f34389e : eVar.f34391f;
        int i11 = a.f35132a[dVar2.f34365e.ordinal()];
        if (i11 != 1) {
            if (i11 != 2) {
                if (i11 != 3) {
                    if (i11 != 5) {
                        return null;
                    }
                }
            }
            return pVar.f35130i;
        }
        return pVar.f35129h;
    }

    public long j() {
        if (this.f35126e.f35078j) {
            return r0.f35075g;
        }
        return 0L;
    }

    public boolean k() {
        return this.f35128g;
    }

    abstract boolean m();

    protected void n(d dVar, s.d dVar2, s.d dVar3, int i10) {
        f fVarH = h(dVar2);
        f fVarH2 = h(dVar3);
        if (fVarH.f35078j && fVarH2.f35078j) {
            int iE = fVarH.f35075g + dVar2.e();
            int iE2 = fVarH2.f35075g - dVar3.e();
            int i11 = iE2 - iE;
            if (!this.f35126e.f35078j && this.f35125d == e.b.MATCH_CONSTRAINT) {
                l(i10, i11);
            }
            g gVar = this.f35126e;
            if (gVar.f35078j) {
                if (gVar.f35075g == i11) {
                    this.f35129h.d(iE);
                    this.f35130i.d(iE2);
                    return;
                }
                s.e eVar = this.f35123b;
                float fW = i10 == 0 ? eVar.w() : eVar.P();
                if (fVarH == fVarH2) {
                    iE = fVarH.f35075g;
                    iE2 = fVarH2.f35075g;
                    fW = 0.5f;
                }
                this.f35129h.d((int) (iE + 0.5f + (((iE2 - iE) - this.f35126e.f35075g) * fW)));
                this.f35130i.d(this.f35129h.f35075g + this.f35126e.f35075g);
            }
        }
    }

    protected void o(d dVar) {
    }

    protected void p(d dVar) {
    }
}
