package s;

import s.d;
import s.e;

/* JADX INFO: compiled from: Barrier.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends i {
    private int M0 = 0;
    private boolean N0 = true;
    private int O0 = 0;
    boolean P0 = false;

    @Override // s.e
    public void g(p.d dVar, boolean z10) {
        d[] dVarArr;
        boolean z11;
        int i10;
        int i11;
        int i12;
        d[] dVarArr2 = this.W;
        dVarArr2[0] = this.O;
        dVarArr2[2] = this.P;
        dVarArr2[1] = this.Q;
        dVarArr2[3] = this.R;
        int i13 = 0;
        while (true) {
            dVarArr = this.W;
            if (i13 >= dVarArr.length) {
                break;
            }
            dVarArr[i13].f34369i = dVar.q(dVarArr[i13]);
            i13++;
        }
        int i14 = this.M0;
        if (i14 < 0 || i14 >= 4) {
            return;
        }
        d dVar2 = dVarArr[i14];
        if (!this.P0) {
            q1();
        }
        if (this.P0) {
            this.P0 = false;
            int i15 = this.M0;
            if (i15 == 0 || i15 == 1) {
                dVar.f(this.O.f34369i, this.f34392f0);
                dVar.f(this.Q.f34369i, this.f34392f0);
                return;
            } else {
                if (i15 == 2 || i15 == 3) {
                    dVar.f(this.P.f34369i, this.f34394g0);
                    dVar.f(this.R.f34369i, this.f34394g0);
                    return;
                }
                return;
            }
        }
        for (int i16 = 0; i16 < this.L0; i16++) {
            e eVar = this.K0[i16];
            if ((this.N0 || eVar.h()) && ((((i11 = this.M0) == 0 || i11 == 1) && eVar.y() == e.b.MATCH_CONSTRAINT && eVar.O.f34366f != null && eVar.Q.f34366f != null) || (((i12 = this.M0) == 2 || i12 == 3) && eVar.R() == e.b.MATCH_CONSTRAINT && eVar.P.f34366f != null && eVar.R.f34366f != null))) {
                z11 = true;
                break;
            }
        }
        z11 = false;
        boolean z12 = this.O.k() || this.Q.k();
        boolean z13 = this.P.k() || this.R.k();
        int i17 = !z11 && (((i10 = this.M0) == 0 && z12) || ((i10 == 2 && z13) || ((i10 == 1 && z12) || (i10 == 3 && z13)))) ? 5 : 4;
        for (int i18 = 0; i18 < this.L0; i18++) {
            e eVar2 = this.K0[i18];
            if (this.N0 || eVar2.h()) {
                p.i iVarQ = dVar.q(eVar2.W[this.M0]);
                d[] dVarArr3 = eVar2.W;
                int i19 = this.M0;
                dVarArr3[i19].f34369i = iVarQ;
                int i20 = (dVarArr3[i19].f34366f == null || dVarArr3[i19].f34366f.f34364d != this) ? 0 : dVarArr3[i19].f34367g + 0;
                if (i19 == 0 || i19 == 2) {
                    dVar.i(dVar2.f34369i, iVarQ, this.O0 - i20, z11);
                } else {
                    dVar.g(dVar2.f34369i, iVarQ, this.O0 + i20, z11);
                }
                dVar.e(dVar2.f34369i, iVarQ, this.O0 + i20, i17);
            }
        }
        int i21 = this.M0;
        if (i21 == 0) {
            dVar.e(this.Q.f34369i, this.O.f34369i, 0, 8);
            dVar.e(this.O.f34369i, this.f34382a0.Q.f34369i, 0, 4);
            dVar.e(this.O.f34369i, this.f34382a0.O.f34369i, 0, 0);
            return;
        }
        if (i21 == 1) {
            dVar.e(this.O.f34369i, this.Q.f34369i, 0, 8);
            dVar.e(this.O.f34369i, this.f34382a0.O.f34369i, 0, 4);
            dVar.e(this.O.f34369i, this.f34382a0.Q.f34369i, 0, 0);
        } else if (i21 == 2) {
            dVar.e(this.R.f34369i, this.P.f34369i, 0, 8);
            dVar.e(this.P.f34369i, this.f34382a0.R.f34369i, 0, 4);
            dVar.e(this.P.f34369i, this.f34382a0.P.f34369i, 0, 0);
        } else if (i21 == 3) {
            dVar.e(this.P.f34369i, this.R.f34369i, 0, 8);
            dVar.e(this.P.f34369i, this.f34382a0.P.f34369i, 0, 4);
            dVar.e(this.P.f34369i, this.f34382a0.R.f34369i, 0, 0);
        }
    }

    @Override // s.e
    public boolean h() {
        return true;
    }

    @Override // s.e
    public boolean l0() {
        return this.P0;
    }

    @Override // s.e
    public boolean m0() {
        return this.P0;
    }

    public boolean q1() {
        int i10;
        int i11;
        int i12;
        int i13 = 0;
        boolean z10 = true;
        while (true) {
            i10 = this.L0;
            if (i13 >= i10) {
                break;
            }
            e eVar = this.K0[i13];
            if ((this.N0 || eVar.h()) && ((((i11 = this.M0) == 0 || i11 == 1) && !eVar.l0()) || (((i12 = this.M0) == 2 || i12 == 3) && !eVar.m0()))) {
                z10 = false;
            }
            i13++;
        }
        if (!z10 || i10 <= 0) {
            return false;
        }
        int iMax = 0;
        boolean z11 = false;
        for (int i14 = 0; i14 < this.L0; i14++) {
            e eVar2 = this.K0[i14];
            if (this.N0 || eVar2.h()) {
                if (!z11) {
                    int i15 = this.M0;
                    if (i15 == 0) {
                        iMax = eVar2.m(d.b.LEFT).d();
                    } else if (i15 == 1) {
                        iMax = eVar2.m(d.b.RIGHT).d();
                    } else if (i15 == 2) {
                        iMax = eVar2.m(d.b.TOP).d();
                    } else if (i15 == 3) {
                        iMax = eVar2.m(d.b.BOTTOM).d();
                    }
                    z11 = true;
                }
                int i16 = this.M0;
                if (i16 == 0) {
                    iMax = Math.min(iMax, eVar2.m(d.b.LEFT).d());
                } else if (i16 == 1) {
                    iMax = Math.max(iMax, eVar2.m(d.b.RIGHT).d());
                } else if (i16 == 2) {
                    iMax = Math.min(iMax, eVar2.m(d.b.TOP).d());
                } else if (i16 == 3) {
                    iMax = Math.max(iMax, eVar2.m(d.b.BOTTOM).d());
                }
            }
        }
        int i17 = iMax + this.O0;
        int i18 = this.M0;
        if (i18 == 0 || i18 == 1) {
            C0(i17, i17);
        } else {
            F0(i17, i17);
        }
        this.P0 = true;
        return true;
    }

    public boolean r1() {
        return this.N0;
    }

    public int s1() {
        return this.M0;
    }

    public int t1() {
        return this.O0;
    }

    @Override // s.e
    public String toString() {
        String str = "[Barrier] " + r() + " {";
        for (int i10 = 0; i10 < this.L0; i10++) {
            e eVar = this.K0[i10];
            if (i10 > 0) {
                str = str + ", ";
            }
            str = str + eVar.r();
        }
        return str + "}";
    }

    public int u1() {
        int i10 = this.M0;
        if (i10 == 0 || i10 == 1) {
            return 0;
        }
        return (i10 == 2 || i10 == 3) ? 1 : -1;
    }

    protected void v1() {
        for (int i10 = 0; i10 < this.L0; i10++) {
            e eVar = this.K0[i10];
            if (this.N0 || eVar.h()) {
                int i11 = this.M0;
                if (i11 == 0 || i11 == 1) {
                    eVar.P0(0, true);
                } else if (i11 == 2 || i11 == 3) {
                    eVar.P0(1, true);
                }
            }
        }
    }

    public void w1(boolean z10) {
        this.N0 = z10;
    }

    public void x1(int i10) {
        this.M0 = i10;
    }

    public void y1(int i10) {
        this.O0 = i10;
    }
}
