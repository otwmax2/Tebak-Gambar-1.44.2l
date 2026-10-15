package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.a0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: IntArrayList.java */
/* JADX INFO: loaded from: classes.dex */
final class z extends c<Integer> implements a0.g, RandomAccess, a1 {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final z f2988r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int[] f2989p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f2990q;

    static {
        z zVar = new z(new int[0], 0);
        f2988r = zVar;
        zVar.p0();
    }

    z() {
        this(new int[10], 0);
    }

    private void k(int i10, int i11) {
        int i12;
        c();
        if (i10 < 0 || i10 > (i12 = this.f2990q)) {
            throw new IndexOutOfBoundsException(o(i10));
        }
        int[] iArr = this.f2989p;
        if (i12 < iArr.length) {
            System.arraycopy(iArr, i10, iArr, i10 + 1, i12 - i10);
        } else {
            int[] iArr2 = new int[((i12 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            System.arraycopy(this.f2989p, i10, iArr2, i10 + 1, this.f2990q - i10);
            this.f2989p = iArr2;
        }
        this.f2989p[i10] = i11;
        this.f2990q++;
        ((AbstractList) this).modCount++;
    }

    private void l(int i10) {
        if (i10 < 0 || i10 >= this.f2990q) {
            throw new IndexOutOfBoundsException(o(i10));
        }
    }

    private String o(int i10) {
        return "Index:" + i10 + ", Size:" + this.f2990q;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Integer> collection) {
        c();
        a0.a(collection);
        if (!(collection instanceof z)) {
            return super.addAll(collection);
        }
        z zVar = (z) collection;
        int i10 = zVar.f2990q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f2990q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        int[] iArr = this.f2989p;
        if (i12 > iArr.length) {
            this.f2989p = Arrays.copyOf(iArr, i12);
        }
        System.arraycopy(zVar.f2989p, 0, this.f2989p, this.f2990q, zVar.f2990q);
        this.f2990q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof z)) {
            return super.equals(obj);
        }
        z zVar = (z) obj;
        if (this.f2990q != zVar.f2990q) {
            return false;
        }
        int[] iArr = zVar.f2989p;
        for (int i10 = 0; i10 < this.f2990q; i10++) {
            if (this.f2989p[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void add(int i10, Integer num) {
        k(i10, num.intValue());
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f2990q; i11++) {
            i10 = (i10 * 31) + this.f2989p[i11];
        }
        return i10;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public boolean add(Integer num) {
        j(num.intValue());
        return true;
    }

    public void j(int i10) {
        c();
        int i11 = this.f2990q;
        int[] iArr = this.f2989p;
        if (i11 == iArr.length) {
            int[] iArr2 = new int[((i11 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.f2989p = iArr2;
        }
        int[] iArr3 = this.f2989p;
        int i12 = this.f2990q;
        this.f2990q = i12 + 1;
        iArr3[i12] = i10;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public Integer get(int i10) {
        return Integer.valueOf(n(i10));
    }

    public int n(int i10) {
        l(i10);
        return this.f2989p[i10];
    }

    @Override // androidx.datastore.preferences.protobuf.a0.i
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public a0.g B0(int i10) {
        if (i10 >= this.f2990q) {
            return new z(Arrays.copyOf(this.f2989p, i10), this.f2990q);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public Integer remove(int i10) {
        c();
        l(i10);
        int[] iArr = this.f2989p;
        int i11 = iArr[i10];
        if (i10 < this.f2990q - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (r2 - i10) - 1);
        }
        this.f2990q--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public Integer set(int i10, Integer num) {
        return Integer.valueOf(s(i10, num.intValue()));
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f2989p;
        System.arraycopy(iArr, i11, iArr, i10, this.f2990q - i11);
        this.f2990q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    public int s(int i10, int i11) {
        c();
        l(i10);
        int[] iArr = this.f2989p;
        int i12 = iArr[i10];
        iArr[i10] = i11;
        return i12;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f2990q;
    }

    private z(int[] iArr, int i10) {
        this.f2989p = iArr;
        this.f2990q = i10;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f2990q; i10++) {
            if (obj.equals(Integer.valueOf(this.f2989p[i10]))) {
                int[] iArr = this.f2989p;
                System.arraycopy(iArr, i10 + 1, iArr, i10, (this.f2990q - i10) - 1);
                this.f2990q--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }
}
