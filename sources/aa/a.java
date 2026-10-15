package aa;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicReference;
import t9.m;

/* JADX INFO: compiled from: SequencesJVM.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class a<T> implements b<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicReference<b<T>> f90a;

    public a(b<? extends T> bVar) {
        m.e(bVar, "sequence");
        this.f90a = new AtomicReference<>(bVar);
    }

    @Override // aa.b
    public Iterator<T> iterator() {
        b<T> andSet = this.f90a.getAndSet(null);
        if (andSet != null) {
            return andSet.iterator();
        }
        throw new IllegalStateException("This sequence can be consumed only once.");
    }
}
