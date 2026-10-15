package kotlinx.coroutines.internal;

import java.util.Objects;

/* JADX INFO: compiled from: ArrayQueue.kt */
/* JADX INFO: loaded from: classes2.dex */
public class a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Object[] f31715a = new Object[16];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f31716b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f31717c;

    private final void b() {
        Object[] objArr = this.f31715a;
        int length = objArr.length;
        Object[] objArr2 = new Object[length << 1];
        i9.f.c(objArr, objArr2, 0, this.f31716b, 0, 10, null);
        Object[] objArr3 = this.f31715a;
        int length2 = objArr3.length;
        int i10 = this.f31716b;
        i9.f.c(objArr3, objArr2, length2 - i10, 0, i10, 4, null);
        this.f31715a = objArr2;
        this.f31716b = 0;
        this.f31717c = length;
    }

    public final void a(T t10) {
        Object[] objArr = this.f31715a;
        int i10 = this.f31717c;
        objArr[i10] = t10;
        int length = (objArr.length - 1) & (i10 + 1);
        this.f31717c = length;
        if (length == this.f31716b) {
            b();
        }
    }

    public final boolean c() {
        return this.f31716b == this.f31717c;
    }

    public final T d() {
        int i10 = this.f31716b;
        if (i10 == this.f31717c) {
            return null;
        }
        Object[] objArr = this.f31715a;
        T t10 = (T) objArr[i10];
        objArr[i10] = null;
        this.f31716b = (i10 + 1) & (objArr.length - 1);
        Objects.requireNonNull(t10, "null cannot be cast to non-null type T of kotlinx.coroutines.internal.ArrayQueue");
        return t10;
    }
}
