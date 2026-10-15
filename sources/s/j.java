package s;

import s.e;

/* JADX INFO: compiled from: Optimizer.java */
/* JADX INFO: loaded from: classes.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static boolean[] f34456a = new boolean[3];

    static void a(f fVar, p.d dVar, e eVar) {
        eVar.f34419t = -1;
        eVar.f34421u = -1;
        e.b bVar = fVar.Z[0];
        e.b bVar2 = e.b.WRAP_CONTENT;
        if (bVar != bVar2 && eVar.Z[0] == e.b.MATCH_PARENT) {
            int i10 = eVar.O.f34367g;
            int iU = fVar.U() - eVar.Q.f34367g;
            d dVar2 = eVar.O;
            dVar2.f34369i = dVar.q(dVar2);
            d dVar3 = eVar.Q;
            dVar3.f34369i = dVar.q(dVar3);
            dVar.f(eVar.O.f34369i, i10);
            dVar.f(eVar.Q.f34369i, iU);
            eVar.f34419t = 2;
            eVar.L0(i10, iU);
        }
        if (fVar.Z[1] == bVar2 || eVar.Z[1] != e.b.MATCH_PARENT) {
            return;
        }
        int i11 = eVar.P.f34367g;
        int iV = fVar.v() - eVar.R.f34367g;
        d dVar4 = eVar.P;
        dVar4.f34369i = dVar.q(dVar4);
        d dVar5 = eVar.R;
        dVar5.f34369i = dVar.q(dVar5);
        dVar.f(eVar.P.f34369i, i11);
        dVar.f(eVar.R.f34369i, iV);
        if (eVar.f34404l0 > 0 || eVar.T() == 8) {
            d dVar6 = eVar.S;
            dVar6.f34369i = dVar.q(dVar6);
            dVar.f(eVar.S.f34369i, eVar.f34404l0 + i11);
        }
        eVar.f34421u = 2;
        eVar.c1(i11, iV);
    }

    public static final boolean b(int i10, int i11) {
        return (i10 & i11) == i11;
    }
}
