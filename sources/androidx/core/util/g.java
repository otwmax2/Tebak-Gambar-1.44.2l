package androidx.core.util;

/* JADX INFO: compiled from: Pools.java */
/* JADX INFO: loaded from: classes.dex */
public class g<T> extends f<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Object f2385c;

    public g(int i10) {
        super(i10);
        this.f2385c = new Object();
    }

    @Override // androidx.core.util.f, androidx.core.util.e
    public boolean a(T t10) {
        boolean zA;
        synchronized (this.f2385c) {
            zA = super.a(t10);
        }
        return zA;
    }

    @Override // androidx.core.util.f, androidx.core.util.e
    public T b() {
        T t10;
        synchronized (this.f2385c) {
            t10 = (T) super.b();
        }
        return t10;
    }
}
