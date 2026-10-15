package t;

import java.util.Iterator;
import t.f;

/* JADX INFO: compiled from: HelperReferences.java */
/* JADX INFO: loaded from: classes.dex */
class k extends p {
    public k(s.e eVar) {
        super(eVar);
    }

    private void q(f fVar) {
        this.f35129h.f35079k.add(fVar);
        fVar.f35080l.add(this.f35129h);
    }

    @Override // t.p, t.d
    public void a(d dVar) {
        s.a aVar = (s.a) this.f35123b;
        int iS1 = aVar.s1();
        Iterator<f> it = this.f35129h.f35080l.iterator();
        int i10 = 0;
        int i11 = -1;
        while (it.hasNext()) {
            int i12 = it.next().f35075g;
            if (i11 == -1 || i12 < i11) {
                i11 = i12;
            }
            if (i10 < i12) {
                i10 = i12;
            }
        }
        if (iS1 == 0 || iS1 == 2) {
            this.f35129h.d(i11 + aVar.t1());
        } else {
            this.f35129h.d(i10 + aVar.t1());
        }
    }

    @Override // t.p
    void d() {
        s.e eVar = this.f35123b;
        if (eVar instanceof s.a) {
            this.f35129h.f35070b = true;
            s.a aVar = (s.a) eVar;
            int iS1 = aVar.s1();
            boolean zR1 = aVar.r1();
            int i10 = 0;
            if (iS1 == 0) {
                this.f35129h.f35073e = f.a.LEFT;
                while (i10 < aVar.L0) {
                    s.e eVar2 = aVar.K0[i10];
                    if (zR1 || eVar2.T() != 8) {
                        f fVar = eVar2.f34389e.f35129h;
                        fVar.f35079k.add(this.f35129h);
                        this.f35129h.f35080l.add(fVar);
                    }
                    i10++;
                }
                q(this.f35123b.f34389e.f35129h);
                q(this.f35123b.f34389e.f35130i);
                return;
            }
            if (iS1 == 1) {
                this.f35129h.f35073e = f.a.RIGHT;
                while (i10 < aVar.L0) {
                    s.e eVar3 = aVar.K0[i10];
                    if (zR1 || eVar3.T() != 8) {
                        f fVar2 = eVar3.f34389e.f35130i;
                        fVar2.f35079k.add(this.f35129h);
                        this.f35129h.f35080l.add(fVar2);
                    }
                    i10++;
                }
                q(this.f35123b.f34389e.f35129h);
                q(this.f35123b.f34389e.f35130i);
                return;
            }
            if (iS1 == 2) {
                this.f35129h.f35073e = f.a.TOP;
                while (i10 < aVar.L0) {
                    s.e eVar4 = aVar.K0[i10];
                    if (zR1 || eVar4.T() != 8) {
                        f fVar3 = eVar4.f34391f.f35129h;
                        fVar3.f35079k.add(this.f35129h);
                        this.f35129h.f35080l.add(fVar3);
                    }
                    i10++;
                }
                q(this.f35123b.f34391f.f35129h);
                q(this.f35123b.f34391f.f35130i);
                return;
            }
            if (iS1 != 3) {
                return;
            }
            this.f35129h.f35073e = f.a.BOTTOM;
            while (i10 < aVar.L0) {
                s.e eVar5 = aVar.K0[i10];
                if (zR1 || eVar5.T() != 8) {
                    f fVar4 = eVar5.f34391f.f35130i;
                    fVar4.f35079k.add(this.f35129h);
                    this.f35129h.f35080l.add(fVar4);
                }
                i10++;
            }
            q(this.f35123b.f34391f.f35129h);
            q(this.f35123b.f34391f.f35130i);
        }
    }

    @Override // t.p
    public void e() {
        s.e eVar = this.f35123b;
        if (eVar instanceof s.a) {
            int iS1 = ((s.a) eVar).s1();
            if (iS1 == 0 || iS1 == 1) {
                this.f35123b.j1(this.f35129h.f35075g);
            } else {
                this.f35123b.k1(this.f35129h.f35075g);
            }
        }
    }

    @Override // t.p
    void f() {
        this.f35124c = null;
        this.f35129h.c();
    }

    @Override // t.p
    boolean m() {
        return false;
    }
}
