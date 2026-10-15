package androidx.databinding;

import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: WeakListener.java */
/* JADX INFO: loaded from: classes.dex */
class t<T> extends WeakReference<ViewDataBinding> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final q<T> f2644a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected final int f2645b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private T f2646c;

    public t(ViewDataBinding viewDataBinding, int i10, q<T> qVar, ReferenceQueue<ViewDataBinding> referenceQueue) {
        super(viewDataBinding, referenceQueue);
        this.f2645b = i10;
        this.f2644a = qVar;
    }

    protected ViewDataBinding a() {
        ViewDataBinding viewDataBinding = (ViewDataBinding) get();
        if (viewDataBinding == null) {
            e();
        }
        return viewDataBinding;
    }

    public T b() {
        return this.f2646c;
    }

    public void c(androidx.lifecycle.n nVar) {
        this.f2644a.a(nVar);
    }

    public void d(T t10) {
        e();
        this.f2646c = t10;
        if (t10 != null) {
            this.f2644a.c(t10);
        }
    }

    public boolean e() {
        boolean z10;
        T t10 = this.f2646c;
        if (t10 != null) {
            this.f2644a.b(t10);
            z10 = true;
        } else {
            z10 = false;
        }
        this.f2646c = null;
        return z10;
    }
}
