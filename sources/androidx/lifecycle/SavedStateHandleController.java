package androidx.lifecycle;

import androidx.lifecycle.j;

/* JADX INFO: loaded from: classes.dex */
final class SavedStateHandleController implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f3486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f3487b = false;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final z f3488c;

    SavedStateHandleController(String str, z zVar) {
        this.f3486a = str;
        this.f3488c = zVar;
    }

    @Override // androidx.lifecycle.l
    public void c(n nVar, j.b bVar) {
        if (bVar == j.b.ON_DESTROY) {
            this.f3487b = false;
            nVar.getLifecycle().c(this);
        }
    }

    void h(a1.c cVar, j jVar) {
        if (this.f3487b) {
            throw new IllegalStateException("Already attached to lifecycleOwner");
        }
        this.f3487b = true;
        jVar.a(this);
        cVar.h(this.f3486a, this.f3488c.d());
    }

    z i() {
        return this.f3488c;
    }

    boolean j() {
        return this.f3487b;
    }
}
