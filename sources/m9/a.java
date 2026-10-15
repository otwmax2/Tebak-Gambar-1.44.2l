package m9;

import h9.n;
import h9.o;
import h9.t;
import java.io.Serializable;
import t9.m;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a implements k9.d<Object>, e, Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final k9.d<Object> f32220o;

    public a(k9.d<Object> dVar) {
        this.f32220o = dVar;
    }

    public k9.d<t> d(Object obj, k9.d<?> dVar) {
        m.e(dVar, "completion");
        throw new UnsupportedOperationException("create(Any?;Continuation) has not been overridden");
    }

    public e e() {
        k9.d<Object> dVar = this.f32220o;
        if (dVar instanceof e) {
            return (e) dVar;
        }
        return null;
    }

    public final k9.d<Object> f() {
        return this.f32220o;
    }

    @Override // k9.d
    public final void g(Object obj) {
        Object objI;
        k9.d<Object> dVar = this;
        while (true) {
            h.b(dVar);
            a aVar = (a) dVar;
            k9.d<Object> dVar2 = aVar.f32220o;
            m.b(dVar2);
            try {
                objI = aVar.i(obj);
            } catch (Throwable th) {
                n.a aVar2 = n.f30295o;
                obj = n.a(o.a(th));
            }
            if (objI == l9.d.c()) {
                return;
            }
            n.a aVar3 = n.f30295o;
            obj = n.a(objI);
            aVar.j();
            if (!(dVar2 instanceof a)) {
                dVar2.g(obj);
                return;
            }
            dVar = dVar2;
        }
    }

    protected abstract Object i(Object obj);

    protected void j() {
    }

    public StackTraceElement o() {
        return g.d(this);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Continuation at ");
        Object objO = o();
        if (objO == null) {
            objO = getClass().getName();
        }
        sb.append(objO);
        return sb.toString();
    }
}
