package p;

/* JADX INFO: compiled from: Pools.java */
/* JADX INFO: loaded from: classes.dex */
class g<T> implements f<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object[] f33464a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f33465b;

    g(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("The max pool size must be > 0");
        }
        this.f33464a = new Object[i10];
    }

    @Override // p.f
    public boolean a(T t10) {
        int i10 = this.f33465b;
        Object[] objArr = this.f33464a;
        if (i10 >= objArr.length) {
            return false;
        }
        objArr[i10] = t10;
        this.f33465b = i10 + 1;
        return true;
    }

    @Override // p.f
    public T b() {
        int i10 = this.f33465b;
        if (i10 <= 0) {
            return null;
        }
        int i11 = i10 - 1;
        Object[] objArr = this.f33464a;
        T t10 = (T) objArr[i11];
        objArr[i11] = null;
        this.f33465b = i10 - 1;
        return t10;
    }

    @Override // p.f
    public void c(T[] tArr, int i10) {
        if (i10 > tArr.length) {
            i10 = tArr.length;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            T t10 = tArr[i11];
            int i12 = this.f33465b;
            Object[] objArr = this.f33464a;
            if (i12 < objArr.length) {
                objArr[i12] = t10;
                this.f33465b = i12 + 1;
            }
        }
    }
}
