package androidx.lifecycle;

import androidx.lifecycle.j;

/* JADX INFO: loaded from: classes.dex */
class CompositeGeneratedAdaptersObserver implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final g[] f3457a;

    CompositeGeneratedAdaptersObserver(g[] gVarArr) {
        this.f3457a = gVarArr;
    }

    @Override // androidx.lifecycle.l
    public void c(n nVar, j.b bVar) {
        s sVar = new s();
        for (g gVar : this.f3457a) {
            gVar.a(nVar, bVar, false, sVar);
        }
        for (g gVar2 : this.f3457a) {
            gVar2.a(nVar, bVar, true, sVar);
        }
    }
}
