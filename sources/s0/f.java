package s0;

import androidx.lifecycle.g0;
import s9.l;
import t9.m;

/* JADX INFO: compiled from: InitializerViewModelFactory.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f<T extends g0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<T> f34462a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l<a, T> f34463b;

    /* JADX WARN: Multi-variable type inference failed */
    public f(Class<T> cls, l<? super a, ? extends T> lVar) {
        m.e(cls, "clazz");
        m.e(lVar, "initializer");
        this.f34462a = cls;
        this.f34463b = lVar;
    }

    public final Class<T> a() {
        return this.f34462a;
    }

    public final l<a, T> b() {
        return this.f34463b;
    }
}
