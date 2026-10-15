package da;

/* JADX INFO: compiled from: CancellableContinuationImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
final class z {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object f28879a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final k f28880b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s9.l<Throwable, h9.t> f28881c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f28882d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Throwable f28883e;

    /* JADX WARN: Multi-variable type inference failed */
    public z(Object obj, k kVar, s9.l<? super Throwable, h9.t> lVar, Object obj2, Throwable th) {
        this.f28879a = obj;
        this.f28880b = kVar;
        this.f28881c = lVar;
        this.f28882d = obj2;
        this.f28883e = th;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ z b(z zVar, Object obj, k kVar, s9.l lVar, Object obj2, Throwable th, int i10, Object obj3) {
        if ((i10 & 1) != 0) {
            obj = zVar.f28879a;
        }
        if ((i10 & 2) != 0) {
            kVar = zVar.f28880b;
        }
        k kVar2 = kVar;
        if ((i10 & 4) != 0) {
            lVar = zVar.f28881c;
        }
        s9.l lVar2 = lVar;
        if ((i10 & 8) != 0) {
            obj2 = zVar.f28882d;
        }
        Object obj4 = obj2;
        if ((i10 & 16) != 0) {
            th = zVar.f28883e;
        }
        return zVar.a(obj, kVar2, lVar2, obj4, th);
    }

    public final z a(Object obj, k kVar, s9.l<? super Throwable, h9.t> lVar, Object obj2, Throwable th) {
        return new z(obj, kVar, lVar, obj2, th);
    }

    public final boolean c() {
        return this.f28883e != null;
    }

    public final void d(n<?> nVar, Throwable th) {
        k kVar = this.f28880b;
        if (kVar != null) {
            nVar.j(kVar, th);
        }
        s9.l<Throwable, h9.t> lVar = this.f28881c;
        if (lVar != null) {
            nVar.l(lVar, th);
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return false;
        }
        z zVar = (z) obj;
        return t9.m.a(this.f28879a, zVar.f28879a) && t9.m.a(this.f28880b, zVar.f28880b) && t9.m.a(this.f28881c, zVar.f28881c) && t9.m.a(this.f28882d, zVar.f28882d) && t9.m.a(this.f28883e, zVar.f28883e);
    }

    public int hashCode() {
        Object obj = this.f28879a;
        int iHashCode = (obj == null ? 0 : obj.hashCode()) * 31;
        k kVar = this.f28880b;
        int iHashCode2 = (iHashCode + (kVar == null ? 0 : kVar.hashCode())) * 31;
        s9.l<Throwable, h9.t> lVar = this.f28881c;
        int iHashCode3 = (iHashCode2 + (lVar == null ? 0 : lVar.hashCode())) * 31;
        Object obj2 = this.f28882d;
        int iHashCode4 = (iHashCode3 + (obj2 == null ? 0 : obj2.hashCode())) * 31;
        Throwable th = this.f28883e;
        return iHashCode4 + (th != null ? th.hashCode() : 0);
    }

    public String toString() {
        return "CompletedContinuation(result=" + this.f28879a + ", cancelHandler=" + this.f28880b + ", onCancellation=" + this.f28881c + ", idempotentResume=" + this.f28882d + ", cancelCause=" + this.f28883e + ')';
    }

    public /* synthetic */ z(Object obj, k kVar, s9.l lVar, Object obj2, Throwable th, int i10, t9.g gVar) {
        this(obj, (i10 & 2) != 0 ? null : kVar, (i10 & 4) != 0 ? null : lVar, (i10 & 8) != 0 ? null : obj2, (i10 & 16) != 0 ? null : th);
    }
}
