package t;

/* JADX INFO: compiled from: GuidelineReference.java */
/* JADX INFO: loaded from: classes.dex */
class j extends p {
    public j(s.e eVar) {
        super(eVar);
        eVar.f34389e.f();
        eVar.f34391f.f();
        this.f35127f = ((s.g) eVar).p1();
    }

    private void q(f fVar) {
        this.f35129h.f35079k.add(fVar);
        fVar.f35080l.add(this.f35129h);
    }

    @Override // t.p, t.d
    public void a(d dVar) {
        f fVar = this.f35129h;
        if (fVar.f35071c && !fVar.f35078j) {
            this.f35129h.d((int) ((fVar.f35080l.get(0).f35075g * ((s.g) this.f35123b).s1()) + 0.5f));
        }
    }

    @Override // t.p
    void d() {
        s.g gVar = (s.g) this.f35123b;
        int iQ1 = gVar.q1();
        int iR1 = gVar.r1();
        gVar.s1();
        if (gVar.p1() == 1) {
            if (iQ1 != -1) {
                this.f35129h.f35080l.add(this.f35123b.f34382a0.f34389e.f35129h);
                this.f35123b.f34382a0.f34389e.f35129h.f35079k.add(this.f35129h);
                this.f35129h.f35074f = iQ1;
            } else if (iR1 != -1) {
                this.f35129h.f35080l.add(this.f35123b.f34382a0.f34389e.f35130i);
                this.f35123b.f34382a0.f34389e.f35130i.f35079k.add(this.f35129h);
                this.f35129h.f35074f = -iR1;
            } else {
                f fVar = this.f35129h;
                fVar.f35070b = true;
                fVar.f35080l.add(this.f35123b.f34382a0.f34389e.f35130i);
                this.f35123b.f34382a0.f34389e.f35130i.f35079k.add(this.f35129h);
            }
            q(this.f35123b.f34389e.f35129h);
            q(this.f35123b.f34389e.f35130i);
            return;
        }
        if (iQ1 != -1) {
            this.f35129h.f35080l.add(this.f35123b.f34382a0.f34391f.f35129h);
            this.f35123b.f34382a0.f34391f.f35129h.f35079k.add(this.f35129h);
            this.f35129h.f35074f = iQ1;
        } else if (iR1 != -1) {
            this.f35129h.f35080l.add(this.f35123b.f34382a0.f34391f.f35130i);
            this.f35123b.f34382a0.f34391f.f35130i.f35079k.add(this.f35129h);
            this.f35129h.f35074f = -iR1;
        } else {
            f fVar2 = this.f35129h;
            fVar2.f35070b = true;
            fVar2.f35080l.add(this.f35123b.f34382a0.f34391f.f35130i);
            this.f35123b.f34382a0.f34391f.f35130i.f35079k.add(this.f35129h);
        }
        q(this.f35123b.f34391f.f35129h);
        q(this.f35123b.f34391f.f35130i);
    }

    @Override // t.p
    public void e() {
        if (((s.g) this.f35123b).p1() == 1) {
            this.f35123b.j1(this.f35129h.f35075g);
        } else {
            this.f35123b.k1(this.f35129h.f35075g);
        }
    }

    @Override // t.p
    void f() {
        this.f35129h.c();
    }

    @Override // t.p
    boolean m() {
        return false;
    }
}
