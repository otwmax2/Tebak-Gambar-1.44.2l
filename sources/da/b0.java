package da;

/* JADX INFO: compiled from: CompletionState.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f28777a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s9.l<Throwable, h9.t> f28778b;

    /* JADX WARN: Multi-variable type inference failed */
    public b0(Object obj, s9.l<? super Throwable, h9.t> lVar) {
        this.f28777a = obj;
        this.f28778b = lVar;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof b0)) {
            return false;
        }
        b0 b0Var = (b0) obj;
        return t9.m.a(this.f28777a, b0Var.f28777a) && t9.m.a(this.f28778b, b0Var.f28778b);
    }

    public int hashCode() {
        Object obj = this.f28777a;
        return ((obj == null ? 0 : obj.hashCode()) * 31) + this.f28778b.hashCode();
    }

    public String toString() {
        return "CompletedWithCancellation(result=" + this.f28777a + ", onCancellation=" + this.f28778b + ')';
    }
}
