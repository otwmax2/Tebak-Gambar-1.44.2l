package t;

import t.f;

/* JADX INFO: compiled from: DimensionDependency.java */
/* JADX INFO: loaded from: classes.dex */
class g extends f {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f35090m;

    public g(p pVar) {
        super(pVar);
        if (pVar instanceof l) {
            this.f35073e = f.a.HORIZONTAL_DIMENSION;
        } else {
            this.f35073e = f.a.VERTICAL_DIMENSION;
        }
    }

    @Override // t.f
    public void d(int i10) {
        if (this.f35078j) {
            return;
        }
        this.f35078j = true;
        this.f35075g = i10;
        for (d dVar : this.f35079k) {
            dVar.a(dVar);
        }
    }
}
