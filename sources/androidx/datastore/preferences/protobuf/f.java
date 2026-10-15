package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.a0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: BooleanArrayList.java */
/* JADX INFO: loaded from: classes.dex */
final class f extends c<Boolean> implements a0.a, RandomAccess, a1 {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final f f2698r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean[] f2699p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f2700q;

    static {
        f fVar = new f(new boolean[0], 0);
        f2698r = fVar;
        fVar.p0();
    }

    f() {
        this(new boolean[10], 0);
    }

    private void j(int i10, boolean z10) {
        int i11;
        c();
        if (i10 < 0 || i10 > (i11 = this.f2700q)) {
            throw new IndexOutOfBoundsException(o(i10));
        }
        boolean[] zArr = this.f2699p;
        if (i11 < zArr.length) {
            System.arraycopy(zArr, i10, zArr, i10 + 1, i11 - i10);
        } else {
            boolean[] zArr2 = new boolean[((i11 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            System.arraycopy(this.f2699p, i10, zArr2, i10 + 1, this.f2700q - i10);
            this.f2699p = zArr2;
        }
        this.f2699p[i10] = z10;
        this.f2700q++;
        ((AbstractList) this).modCount++;
    }

    private void l(int i10) {
        if (i10 < 0 || i10 >= this.f2700q) {
            throw new IndexOutOfBoundsException(o(i10));
        }
    }

    private String o(int i10) {
        return "Index:" + i10 + ", Size:" + this.f2700q;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Boolean> collection) {
        c();
        a0.a(collection);
        if (!(collection instanceof f)) {
            return super.addAll(collection);
        }
        f fVar = (f) collection;
        int i10 = fVar.f2700q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f2700q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        boolean[] zArr = this.f2699p;
        if (i12 > zArr.length) {
            this.f2699p = Arrays.copyOf(zArr, i12);
        }
        System.arraycopy(fVar.f2699p, 0, this.f2699p, this.f2700q, fVar.f2700q);
        this.f2700q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof f)) {
            return super.equals(obj);
        }
        f fVar = (f) obj;
        if (this.f2700q != fVar.f2700q) {
            return false;
        }
        boolean[] zArr = fVar.f2699p;
        for (int i10 = 0; i10 < this.f2700q; i10++) {
            if (this.f2699p[i10] != zArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void add(int i10, Boolean bool) {
        j(i10, bool.booleanValue());
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iC = 1;
        for (int i10 = 0; i10 < this.f2700q; i10++) {
            iC = (iC * 31) + a0.c(this.f2699p[i10]);
        }
        return iC;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public boolean add(Boolean bool) {
        k(bool.booleanValue());
        return true;
    }

    public void k(boolean z10) {
        c();
        int i10 = this.f2700q;
        boolean[] zArr = this.f2699p;
        if (i10 == zArr.length) {
            boolean[] zArr2 = new boolean[((i10 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            this.f2699p = zArr2;
        }
        boolean[] zArr3 = this.f2699p;
        int i11 = this.f2700q;
        this.f2700q = i11 + 1;
        zArr3[i11] = z10;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public Boolean get(int i10) {
        return Boolean.valueOf(n(i10));
    }

    public boolean n(int i10) {
        l(i10);
        return this.f2699p[i10];
    }

    @Override // androidx.datastore.preferences.protobuf.a0.i
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public a0.a B0(int i10) {
        if (i10 >= this.f2700q) {
            return new f(Arrays.copyOf(this.f2699p, i10), this.f2700q);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public Boolean remove(int i10) {
        c();
        l(i10);
        boolean[] zArr = this.f2699p;
        boolean z10 = zArr[i10];
        if (i10 < this.f2700q - 1) {
            System.arraycopy(zArr, i10 + 1, zArr, i10, (r2 - i10) - 1);
        }
        this.f2700q--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public Boolean set(int i10, Boolean bool) {
        return Boolean.valueOf(s(i10, bool.booleanValue()));
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.f2699p;
        System.arraycopy(zArr, i11, zArr, i10, this.f2700q - i11);
        this.f2700q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    public boolean s(int i10, boolean z10) {
        c();
        l(i10);
        boolean[] zArr = this.f2699p;
        boolean z11 = zArr[i10];
        zArr[i10] = z10;
        return z11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f2700q;
    }

    private f(boolean[] zArr, int i10) {
        this.f2699p = zArr;
        this.f2700q = i10;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f2700q; i10++) {
            if (obj.equals(Boolean.valueOf(this.f2699p[i10]))) {
                boolean[] zArr = this.f2699p;
                System.arraycopy(zArr, i10 + 1, zArr, i10, (this.f2700q - i10) - 1);
                this.f2700q--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }
}
