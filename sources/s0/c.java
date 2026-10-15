package s0;

import androidx.lifecycle.g0;
import androidx.lifecycle.h0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import s9.l;
import t9.m;

/* JADX INFO: compiled from: InitializerViewModelFactory.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<f<?>> f34460a = new ArrayList();

    public final <T extends g0> void a(z9.b<T> bVar, l<? super a, ? extends T> lVar) {
        m.e(bVar, "clazz");
        m.e(lVar, "initializer");
        this.f34460a.add(new f<>(r9.a.a(bVar), lVar));
    }

    public final h0.b b() {
        Object[] array = this.f34460a.toArray(new f[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        f[] fVarArr = (f[]) array;
        return new b((f[]) Arrays.copyOf(fVarArr, fVarArr.length));
    }
}
