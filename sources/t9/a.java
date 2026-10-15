package t9;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: ArrayIterator.kt */
/* JADX INFO: loaded from: classes2.dex */
final class a<T> implements Iterator<T>, u9.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final T[] f35526o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f35527p;

    public a(T[] tArr) {
        m.e(tArr, "array");
        this.f35526o = tArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f35527p < this.f35526o.length;
    }

    @Override // java.util.Iterator
    public T next() {
        try {
            T[] tArr = this.f35526o;
            int i10 = this.f35527p;
            this.f35527p = i10 + 1;
            return tArr[i10];
        } catch (ArrayIndexOutOfBoundsException e10) {
            this.f35527p--;
            throw new NoSuchElementException(e10.getMessage());
        }
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
