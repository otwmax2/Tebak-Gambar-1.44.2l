package m9;

import k9.g;
import t9.m;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class d extends a {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final k9.g f32222p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private transient k9.d<Object> f32223q;

    public d(k9.d<Object> dVar, k9.g gVar) {
        super(dVar);
        this.f32222p = gVar;
    }

    @Override // k9.d
    public k9.g getContext() {
        k9.g gVar = this.f32222p;
        m.b(gVar);
        return gVar;
    }

    @Override // m9.a
    protected void j() {
        k9.d<?> dVar = this.f32223q;
        if (dVar != null && dVar != this) {
            g.b bVarB = getContext().b(k9.e.f31632n);
            m.b(bVarB);
            ((k9.e) bVarB).h(dVar);
        }
        this.f32223q = c.f32221o;
    }

    public final k9.d<Object> k() {
        k9.d<Object> dVarP = this.f32223q;
        if (dVarP == null) {
            k9.e eVar = (k9.e) getContext().b(k9.e.f31632n);
            if (eVar == null || (dVarP = eVar.p(this)) == null) {
                dVarP = this;
            }
            this.f32223q = dVarP;
        }
        return dVarP;
    }

    public d(k9.d<Object> dVar) {
        this(dVar, dVar != null ? dVar.getContext() : null);
    }
}
