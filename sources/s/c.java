package s;

import java.util.ArrayList;
import s.e;

/* JADX INFO: compiled from: ChainHead.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected e f34339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected e f34340b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected e f34341c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected e f34342d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected e f34343e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected e f34344f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    protected e f34345g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    protected ArrayList<e> f34346h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    protected int f34347i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    protected int f34348j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    protected float f34349k = 0.0f;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f34350l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    int f34351m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f34352n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    boolean f34353o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f34354p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f34355q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected boolean f34356r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected boolean f34357s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected boolean f34358t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    protected boolean f34359u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f34360v;

    public c(e eVar, int i10, boolean z10) {
        this.f34355q = false;
        this.f34339a = eVar;
        this.f34354p = i10;
        this.f34355q = z10;
    }

    private void b() {
        int i10 = this.f34354p * 2;
        e eVar = this.f34339a;
        this.f34353o = true;
        e eVar2 = eVar;
        boolean z10 = false;
        while (!z10) {
            this.f34347i++;
            e[] eVarArr = eVar.E0;
            int i11 = this.f34354p;
            e eVar3 = null;
            eVarArr[i11] = null;
            eVar.D0[i11] = null;
            if (eVar.T() != 8) {
                this.f34350l++;
                e.b bVarS = eVar.s(this.f34354p);
                e.b bVar = e.b.MATCH_CONSTRAINT;
                if (bVarS != bVar) {
                    this.f34351m += eVar.C(this.f34354p);
                }
                int iE = this.f34351m + eVar.W[i10].e();
                this.f34351m = iE;
                int i12 = i10 + 1;
                this.f34351m = iE + eVar.W[i12].e();
                int iE2 = this.f34352n + eVar.W[i10].e();
                this.f34352n = iE2;
                this.f34352n = iE2 + eVar.W[i12].e();
                if (this.f34340b == null) {
                    this.f34340b = eVar;
                }
                this.f34342d = eVar;
                e.b[] bVarArr = eVar.Z;
                int i13 = this.f34354p;
                if (bVarArr[i13] == bVar) {
                    int[] iArr = eVar.f34429y;
                    if (iArr[i13] == 0 || iArr[i13] == 3 || iArr[i13] == 2) {
                        this.f34348j++;
                        float[] fArr = eVar.C0;
                        float f10 = fArr[i13];
                        if (f10 > 0.0f) {
                            this.f34349k += fArr[i13];
                        }
                        if (c(eVar, i13)) {
                            if (f10 < 0.0f) {
                                this.f34356r = true;
                            } else {
                                this.f34357s = true;
                            }
                            if (this.f34346h == null) {
                                this.f34346h = new ArrayList<>();
                            }
                            this.f34346h.add(eVar);
                        }
                        if (this.f34344f == null) {
                            this.f34344f = eVar;
                        }
                        e eVar4 = this.f34345g;
                        if (eVar4 != null) {
                            eVar4.D0[this.f34354p] = eVar;
                        }
                        this.f34345g = eVar;
                    }
                    if (this.f34354p == 0) {
                        if (eVar.f34425w != 0 || eVar.f34431z != 0 || eVar.A != 0) {
                            this.f34353o = false;
                        }
                    } else if (eVar.f34427x != 0 || eVar.C != 0 || eVar.D != 0) {
                        this.f34353o = false;
                    }
                    if (eVar.f34388d0 != 0.0f) {
                        this.f34353o = false;
                        this.f34359u = true;
                    }
                }
            }
            if (eVar2 != eVar) {
                eVar2.E0[this.f34354p] = eVar;
            }
            d dVar = eVar.W[i10 + 1].f34366f;
            if (dVar != null) {
                e eVar5 = dVar.f34364d;
                d[] dVarArr = eVar5.W;
                if (dVarArr[i10].f34366f != null && dVarArr[i10].f34366f.f34364d == eVar) {
                    eVar3 = eVar5;
                }
            }
            if (eVar3 == null) {
                eVar3 = eVar;
                z10 = true;
            }
            eVar2 = eVar;
            eVar = eVar3;
        }
        e eVar6 = this.f34340b;
        if (eVar6 != null) {
            this.f34351m -= eVar6.W[i10].e();
        }
        e eVar7 = this.f34342d;
        if (eVar7 != null) {
            this.f34351m -= eVar7.W[i10 + 1].e();
        }
        this.f34341c = eVar;
        if (this.f34354p == 0 && this.f34355q) {
            this.f34343e = eVar;
        } else {
            this.f34343e = this.f34339a;
        }
        this.f34358t = this.f34357s && this.f34356r;
    }

    private static boolean c(e eVar, int i10) {
        if (eVar.T() != 8 && eVar.Z[i10] == e.b.MATCH_CONSTRAINT) {
            int[] iArr = eVar.f34429y;
            if (iArr[i10] == 0 || iArr[i10] == 3) {
                return true;
            }
        }
        return false;
    }

    public void a() {
        if (!this.f34360v) {
            b();
        }
        this.f34360v = true;
    }
}
