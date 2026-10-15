package t1;

import t1.h;

/* JADX INFO: compiled from: UnobservedErrorNotifier.java */
/* JADX INFO: loaded from: classes.dex */
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h<?> f35243a;

    public j(h<?> hVar) {
        this.f35243a = hVar;
    }

    public void a() {
        this.f35243a = null;
    }

    protected void finalize() throws Throwable {
        h.i iVarT;
        try {
            h<?> hVar = this.f35243a;
            if (hVar != null && (iVarT = h.t()) != null) {
                iVarT.a(hVar, new k(hVar.r()));
            }
        } finally {
            super.finalize();
        }
    }
}
