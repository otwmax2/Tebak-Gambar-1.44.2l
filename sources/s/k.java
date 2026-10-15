package s;

import java.util.HashSet;
import t.b;

/* JADX INFO: compiled from: VirtualLayout.java */
/* JADX INFO: loaded from: classes.dex */
public class k extends i {
    private int M0 = 0;
    private int N0 = 0;
    private int O0 = 0;
    private int P0 = 0;
    private int Q0 = 0;
    private int R0 = 0;
    private int S0 = 0;
    private int T0 = 0;
    private boolean U0 = false;
    private int V0 = 0;
    private int W0 = 0;
    protected b.a X0 = new b.a();
    b.InterfaceC0249b Y0 = null;

    @Override // s.i, s.h
    public void c(f fVar) {
        q1();
    }

    public void q1() {
        for (int i10 = 0; i10 < this.L0; i10++) {
            e eVar = this.K0[i10];
            if (eVar != null) {
                eVar.R0(true);
            }
        }
    }

    public boolean r1(HashSet<e> hashSet) {
        for (int i10 = 0; i10 < this.L0; i10++) {
            if (hashSet.contains(this.K0[i10])) {
                return true;
            }
        }
        return false;
    }

    public boolean s1() {
        return this.U0;
    }
}
