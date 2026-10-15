package androidx.work.impl.utils.futures;

/* JADX INFO: compiled from: SettableFuture.java */
/* JADX INFO: loaded from: classes.dex */
public final class c<V> extends a<V> {
    private c() {
    }

    public static <V> c<V> u() {
        return new c<>();
    }

    @Override // androidx.work.impl.utils.futures.a
    public boolean q(V v10) {
        return super.q(v10);
    }

    @Override // androidx.work.impl.utils.futures.a
    public boolean r(Throwable th) {
        return super.r(th);
    }

    @Override // androidx.work.impl.utils.futures.a
    public boolean s(a5.a<? extends V> aVar) {
        return super.s(aVar);
    }
}
