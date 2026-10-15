package s0;

import androidx.lifecycle.g0;
import androidx.lifecycle.h0;
import androidx.lifecycle.i0;
import t9.m;

/* JADX INFO: compiled from: InitializerViewModelFactory.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements h0.b {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f<?>[] f34459b;

    public b(f<?>... fVarArr) {
        m.e(fVarArr, "initializers");
        this.f34459b = fVarArr;
    }

    @Override // androidx.lifecycle.h0.b
    public /* synthetic */ g0 a(Class cls) {
        return i0.a(this, cls);
    }

    @Override // androidx.lifecycle.h0.b
    public <T extends g0> T b(Class<T> cls, a aVar) {
        m.e(cls, "modelClass");
        m.e(aVar, "extras");
        T t10 = null;
        for (f<?> fVar : this.f34459b) {
            if (m.a(fVar.a(), cls)) {
                T tInvoke = fVar.b().invoke(aVar);
                t10 = tInvoke instanceof g0 ? tInvoke : null;
            }
        }
        if (t10 != null) {
            return t10;
        }
        throw new IllegalArgumentException("No initializer set for given class " + cls.getName());
    }
}
