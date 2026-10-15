package h9;

import java.io.Serializable;

/* JADX INFO: compiled from: LazyJVM.kt */
/* JADX INFO: loaded from: classes2.dex */
final class p<T> implements h<T>, Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private s9.a<? extends T> f30297o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private volatile Object f30298p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Object f30299q;

    public p(s9.a<? extends T> aVar, Object obj) {
        t9.m.e(aVar, "initializer");
        this.f30297o = aVar;
        this.f30298p = r.f30300a;
        this.f30299q = obj == null ? this : obj;
    }

    private final Object writeReplace() {
        return new d(getValue());
    }

    public boolean a() {
        return this.f30298p != r.f30300a;
    }

    @Override // h9.h
    public T getValue() {
        T tInvoke;
        T t10 = (T) this.f30298p;
        r rVar = r.f30300a;
        if (t10 != rVar) {
            return t10;
        }
        synchronized (this.f30299q) {
            tInvoke = (T) this.f30298p;
            if (tInvoke == rVar) {
                s9.a<? extends T> aVar = this.f30297o;
                t9.m.b(aVar);
                tInvoke = aVar.invoke();
                this.f30298p = tInvoke;
                this.f30297o = null;
            }
        }
        return tInvoke;
    }

    public String toString() {
        return a() ? String.valueOf(getValue()) : "Lazy value not initialized yet.";
    }

    public /* synthetic */ p(s9.a aVar, Object obj, int i10, t9.g gVar) {
        this(aVar, (i10 & 2) != 0 ? null : obj);
    }
}
