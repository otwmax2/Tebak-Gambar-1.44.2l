package aa;

import java.util.Iterator;
import s9.l;
import t9.m;

/* JADX INFO: compiled from: Sequences.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class i<T, R> implements b<R> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b<T> f93a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l<T, R> f94b;

    /* JADX INFO: compiled from: Sequences.kt */
    public static final class a implements Iterator<R>, u9.a {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final Iterator<T> f95o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ i<T, R> f96p;

        a(i<T, R> iVar) {
            this.f96p = iVar;
            this.f95o = ((i) iVar).f93a.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f95o.hasNext();
        }

        @Override // java.util.Iterator
        public R next() {
            return (R) ((i) this.f96p).f94b.invoke(this.f95o.next());
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public i(b<? extends T> bVar, l<? super T, ? extends R> lVar) {
        m.e(bVar, "sequence");
        m.e(lVar, "transformer");
        this.f93a = bVar;
        this.f94b = lVar;
    }

    @Override // aa.b
    public Iterator<R> iterator() {
        return new a(this);
    }
}
