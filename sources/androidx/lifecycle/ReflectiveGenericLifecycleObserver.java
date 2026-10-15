package androidx.lifecycle;

import androidx.lifecycle.b;
import androidx.lifecycle.j;

/* JADX INFO: loaded from: classes.dex */
@Deprecated
class ReflectiveGenericLifecycleObserver implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f3483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b.a f3484b;

    ReflectiveGenericLifecycleObserver(Object obj) {
        this.f3483a = obj;
        this.f3484b = b.f3495c.c(obj.getClass());
    }

    @Override // androidx.lifecycle.l
    public void c(n nVar, j.b bVar) {
        this.f3484b.a(nVar, bVar, this.f3483a);
    }
}
