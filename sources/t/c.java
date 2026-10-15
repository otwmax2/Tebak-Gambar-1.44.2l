package t;

import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: compiled from: ChainRun.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends p {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    ArrayList<p> f35058k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private int f35059l;

    public c(s.e eVar, int i10) {
        super(eVar);
        this.f35058k = new ArrayList<>();
        this.f35127f = i10;
        q();
    }

    private void q() {
        s.e eVar;
        s.e eVar2 = this.f35123b;
        s.e eVarJ = eVar2.J(this.f35127f);
        while (true) {
            s.e eVar3 = eVarJ;
            eVar = eVar2;
            eVar2 = eVar3;
            if (eVar2 == null) {
                break;
            } else {
                eVarJ = eVar2.J(this.f35127f);
            }
        }
        this.f35123b = eVar;
        this.f35058k.add(eVar.L(this.f35127f));
        s.e eVarH = eVar.H(this.f35127f);
        while (eVarH != null) {
            this.f35058k.add(eVarH.L(this.f35127f));
            eVarH = eVarH.H(this.f35127f);
        }
        for (p pVar : this.f35058k) {
            int i10 = this.f35127f;
            if (i10 == 0) {
                pVar.f35123b.f34385c = this;
            } else if (i10 == 1) {
                pVar.f35123b.f34387d = this;
            }
        }
        if ((this.f35127f == 0 && ((s.f) this.f35123b.I()).L1()) && this.f35058k.size() > 1) {
            ArrayList<p> arrayList = this.f35058k;
            this.f35123b = arrayList.get(arrayList.size() - 1).f35123b;
        }
        this.f35059l = this.f35127f == 0 ? this.f35123b.x() : this.f35123b.Q();
    }

    private s.e r() {
        for (int i10 = 0; i10 < this.f35058k.size(); i10++) {
            p pVar = this.f35058k.get(i10);
            if (pVar.f35123b.T() != 8) {
                return pVar.f35123b;
            }
        }
        return null;
    }

    private s.e s() {
        for (int size = this.f35058k.size() - 1; size >= 0; size--) {
            p pVar = this.f35058k.get(size);
            if (pVar.f35123b.T() != 8) {
                return pVar.f35123b;
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:113:0x01bf  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00e9  */
    @Override // t.p, t.d
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void a(t.d r27) {
        /*
            Method dump skipped, instruction units count: 1066
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: t.c.a(t.d):void");
    }

    @Override // t.p
    void d() {
        Iterator<p> it = this.f35058k.iterator();
        while (it.hasNext()) {
            it.next().d();
        }
        int size = this.f35058k.size();
        if (size < 1) {
            return;
        }
        s.e eVar = this.f35058k.get(0).f35123b;
        s.e eVar2 = this.f35058k.get(size - 1).f35123b;
        if (this.f35127f == 0) {
            s.d dVar = eVar.O;
            s.d dVar2 = eVar2.Q;
            f fVarI = i(dVar, 0);
            int iE = dVar.e();
            s.e eVarR = r();
            if (eVarR != null) {
                iE = eVarR.O.e();
            }
            if (fVarI != null) {
                b(this.f35129h, fVarI, iE);
            }
            f fVarI2 = i(dVar2, 0);
            int iE2 = dVar2.e();
            s.e eVarS = s();
            if (eVarS != null) {
                iE2 = eVarS.Q.e();
            }
            if (fVarI2 != null) {
                b(this.f35130i, fVarI2, -iE2);
            }
        } else {
            s.d dVar3 = eVar.P;
            s.d dVar4 = eVar2.R;
            f fVarI3 = i(dVar3, 1);
            int iE3 = dVar3.e();
            s.e eVarR2 = r();
            if (eVarR2 != null) {
                iE3 = eVarR2.P.e();
            }
            if (fVarI3 != null) {
                b(this.f35129h, fVarI3, iE3);
            }
            f fVarI4 = i(dVar4, 1);
            int iE4 = dVar4.e();
            s.e eVarS2 = s();
            if (eVarS2 != null) {
                iE4 = eVarS2.R.e();
            }
            if (fVarI4 != null) {
                b(this.f35130i, fVarI4, -iE4);
            }
        }
        this.f35129h.f35069a = this;
        this.f35130i.f35069a = this;
    }

    @Override // t.p
    public void e() {
        for (int i10 = 0; i10 < this.f35058k.size(); i10++) {
            this.f35058k.get(i10).e();
        }
    }

    @Override // t.p
    void f() {
        this.f35124c = null;
        Iterator<p> it = this.f35058k.iterator();
        while (it.hasNext()) {
            it.next().f();
        }
    }

    @Override // t.p
    public long j() {
        int size = this.f35058k.size();
        long j10 = 0;
        for (int i10 = 0; i10 < size; i10++) {
            p pVar = this.f35058k.get(i10);
            j10 = j10 + ((long) pVar.f35129h.f35074f) + pVar.j() + ((long) pVar.f35130i.f35074f);
        }
        return j10;
    }

    @Override // t.p
    boolean m() {
        int size = this.f35058k.size();
        for (int i10 = 0; i10 < size; i10++) {
            if (!this.f35058k.get(i10).m()) {
                return false;
            }
        }
        return true;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("ChainRun ");
        sb.append(this.f35127f == 0 ? "horizontal : " : "vertical : ");
        for (p pVar : this.f35058k) {
            sb.append("<");
            sb.append(pVar);
            sb.append("> ");
        }
        return sb.toString();
    }
}
