package i9;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: AbstractIterator.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a<T> implements Iterator<T>, u9.a {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private k0 f30536o = k0.NotReady;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private T f30537p;

    /* JADX INFO: renamed from: i9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbstractIterator.kt */
    public /* synthetic */ class C0177a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f30538a;

        static {
            int[] iArr = new int[k0.values().length];
            iArr[k0.Done.ordinal()] = 1;
            iArr[k0.Ready.ordinal()] = 2;
            f30538a = iArr;
        }
    }

    private final boolean e() {
        this.f30536o = k0.Failed;
        a();
        return this.f30536o == k0.Ready;
    }

    protected abstract void a();

    protected final void b() {
        this.f30536o = k0.Done;
    }

    protected final void d(T t10) {
        this.f30537p = t10;
        this.f30536o = k0.Ready;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        k0 k0Var = this.f30536o;
        if (!(k0Var != k0.Failed)) {
            throw new IllegalArgumentException("Failed requirement.".toString());
        }
        int i10 = C0177a.f30538a[k0Var.ordinal()];
        if (i10 == 1) {
            return false;
        }
        if (i10 != 2) {
            return e();
        }
        return true;
    }

    @Override // java.util.Iterator
    public T next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        this.f30536o = k0.NotReady;
        return this.f30537p;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
