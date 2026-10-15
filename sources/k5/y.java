package k5;

import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* JADX INFO: compiled from: LazySet.java */
/* JADX INFO: loaded from: classes2.dex */
class y<T> implements k6.b<Set<T>> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile Set<T> f31591b = null;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile Set<k6.b<T>> f31590a = Collections.newSetFromMap(new ConcurrentHashMap());

    y(Collection<k6.b<T>> collection) {
        this.f31590a.addAll(collection);
    }

    static y<?> b(Collection<k6.b<?>> collection) {
        return new y<>((Set) collection);
    }

    private synchronized void d() {
        Iterator<k6.b<T>> it = this.f31590a.iterator();
        while (it.hasNext()) {
            this.f31591b.add(it.next().get());
        }
        this.f31590a = null;
    }

    synchronized void a(k6.b<T> bVar) {
        if (this.f31591b == null) {
            this.f31590a.add(bVar);
        } else {
            this.f31591b.add(bVar.get());
        }
    }

    @Override // k6.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public Set<T> get() {
        if (this.f31591b == null) {
            synchronized (this) {
                if (this.f31591b == null) {
                    this.f31591b = Collections.newSetFromMap(new ConcurrentHashMap());
                    d();
                }
            }
        }
        return Collections.unmodifiableSet(this.f31591b);
    }
}
