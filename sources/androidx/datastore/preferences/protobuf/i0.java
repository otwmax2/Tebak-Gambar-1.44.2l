package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.a0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: LongArrayList.java */
/* JADX INFO: loaded from: classes.dex */
final class i0 extends c<Long> implements a0.h, RandomAccess, a1 {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final i0 f2742r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long[] f2743p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f2744q;

    static {
        i0 i0Var = new i0(new long[0], 0);
        f2742r = i0Var;
        i0Var.p0();
    }

    i0() {
        this(new long[10], 0);
    }

    private void j(int i10, long j10) {
        int i11;
        c();
        if (i10 < 0 || i10 > (i11 = this.f2744q)) {
            throw new IndexOutOfBoundsException(o(i10));
        }
        long[] jArr = this.f2743p;
        if (i11 < jArr.length) {
            System.arraycopy(jArr, i10, jArr, i10 + 1, i11 - i10);
        } else {
            long[] jArr2 = new long[((i11 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            System.arraycopy(this.f2743p, i10, jArr2, i10 + 1, this.f2744q - i10);
            this.f2743p = jArr2;
        }
        this.f2743p[i10] = j10;
        this.f2744q++;
        ((AbstractList) this).modCount++;
    }

    private void l(int i10) {
        if (i10 < 0 || i10 >= this.f2744q) {
            throw new IndexOutOfBoundsException(o(i10));
        }
    }

    private String o(int i10) {
        return "Index:" + i10 + ", Size:" + this.f2744q;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Long> collection) {
        c();
        a0.a(collection);
        if (!(collection instanceof i0)) {
            return super.addAll(collection);
        }
        i0 i0Var = (i0) collection;
        int i10 = i0Var.f2744q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f2744q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        long[] jArr = this.f2743p;
        if (i12 > jArr.length) {
            this.f2743p = Arrays.copyOf(jArr, i12);
        }
        System.arraycopy(i0Var.f2743p, 0, this.f2743p, this.f2744q, i0Var.f2744q);
        this.f2744q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof i0)) {
            return super.equals(obj);
        }
        i0 i0Var = (i0) obj;
        if (this.f2744q != i0Var.f2744q) {
            return false;
        }
        long[] jArr = i0Var.f2743p;
        for (int i10 = 0; i10 < this.f2744q; i10++) {
            if (this.f2743p[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void add(int i10, Long l10) {
        j(i10, l10.longValue());
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iF = 1;
        for (int i10 = 0; i10 < this.f2744q; i10++) {
            iF = (iF * 31) + a0.f(this.f2743p[i10]);
        }
        return iF;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public boolean add(Long l10) {
        k(l10.longValue());
        return true;
    }

    public void k(long j10) {
        c();
        int i10 = this.f2744q;
        long[] jArr = this.f2743p;
        if (i10 == jArr.length) {
            long[] jArr2 = new long[((i10 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            this.f2743p = jArr2;
        }
        long[] jArr3 = this.f2743p;
        int i11 = this.f2744q;
        this.f2744q = i11 + 1;
        jArr3[i11] = j10;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public Long get(int i10) {
        return Long.valueOf(n(i10));
    }

    public long n(int i10) {
        l(i10);
        return this.f2743p[i10];
    }

    @Override // androidx.datastore.preferences.protobuf.a0.i
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public a0.h B0(int i10) {
        if (i10 >= this.f2744q) {
            return new i0(Arrays.copyOf(this.f2743p, i10), this.f2744q);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public Long remove(int i10) {
        c();
        l(i10);
        long[] jArr = this.f2743p;
        long j10 = jArr[i10];
        if (i10 < this.f2744q - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (r3 - i10) - 1);
        }
        this.f2744q--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public Long set(int i10, Long l10) {
        return Long.valueOf(s(i10, l10.longValue()));
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f2743p;
        System.arraycopy(jArr, i11, jArr, i10, this.f2744q - i11);
        this.f2744q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    public long s(int i10, long j10) {
        c();
        l(i10);
        long[] jArr = this.f2743p;
        long j11 = jArr[i10];
        jArr[i10] = j10;
        return j11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f2744q;
    }

    private i0(long[] jArr, int i10) {
        this.f2743p = jArr;
        this.f2744q = i10;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f2744q; i10++) {
            if (obj.equals(Long.valueOf(this.f2743p[i10]))) {
                long[] jArr = this.f2743p;
                System.arraycopy(jArr, i10 + 1, jArr, i10, (this.f2744q - i10) - 1);
                this.f2744q--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }
}
