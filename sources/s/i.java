package s;

import java.util.ArrayList;
import java.util.Arrays;
import t.o;

/* JADX INFO: compiled from: HelperWidget.java */
/* JADX INFO: loaded from: classes.dex */
public class i extends e implements h {
    public e[] K0 = new e[4];
    public int L0 = 0;

    @Override // s.h
    public void a(e eVar) {
        if (eVar == this || eVar == null) {
            return;
        }
        int i10 = this.L0 + 1;
        e[] eVarArr = this.K0;
        if (i10 > eVarArr.length) {
            this.K0 = (e[]) Arrays.copyOf(eVarArr, eVarArr.length * 2);
        }
        e[] eVarArr2 = this.K0;
        int i11 = this.L0;
        eVarArr2[i11] = eVar;
        this.L0 = i11 + 1;
    }

    @Override // s.h
    public void b() {
        this.L0 = 0;
        Arrays.fill(this.K0, (Object) null);
    }

    @Override // s.h
    public void c(f fVar) {
    }

    public void o1(ArrayList<o> arrayList, int i10, o oVar) {
        for (int i11 = 0; i11 < this.L0; i11++) {
            oVar.a(this.K0[i11]);
        }
        for (int i12 = 0; i12 < this.L0; i12++) {
            t.i.a(this.K0[i12], i10, arrayList, oVar);
        }
    }

    public int p1(int i10) {
        int i11;
        int i12;
        for (int i13 = 0; i13 < this.L0; i13++) {
            e eVar = this.K0[i13];
            if (i10 == 0 && (i12 = eVar.H0) != -1) {
                return i12;
            }
            if (i10 == 1 && (i11 = eVar.I0) != -1) {
                return i11;
            }
        }
        return -1;
    }
}
