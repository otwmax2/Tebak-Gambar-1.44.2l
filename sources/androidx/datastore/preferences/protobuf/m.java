package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.a0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: DoubleArrayList.java */
/* JADX INFO: loaded from: classes.dex */
final class m extends c<Double> implements a0.b, RandomAccess, a1 {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final m f2808r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private double[] f2809p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f2810q;

    static {
        m mVar = new m(new double[0], 0);
        f2808r = mVar;
        mVar.p0();
    }

    m() {
        this(new double[10], 0);
    }

    private void k(int i10, double d10) {
        int i11;
        c();
        if (i10 < 0 || i10 > (i11 = this.f2810q)) {
            throw new IndexOutOfBoundsException(o(i10));
        }
        double[] dArr = this.f2809p;
        if (i11 < dArr.length) {
            System.arraycopy(dArr, i10, dArr, i10 + 1, i11 - i10);
        } else {
            double[] dArr2 = new double[((i11 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            System.arraycopy(this.f2809p, i10, dArr2, i10 + 1, this.f2810q - i10);
            this.f2809p = dArr2;
        }
        this.f2809p[i10] = d10;
        this.f2810q++;
        ((AbstractList) this).modCount++;
    }

    private void l(int i10) {
        if (i10 < 0 || i10 >= this.f2810q) {
            throw new IndexOutOfBoundsException(o(i10));
        }
    }

    private String o(int i10) {
        return "Index:" + i10 + ", Size:" + this.f2810q;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Double> collection) {
        c();
        a0.a(collection);
        if (!(collection instanceof m)) {
            return super.addAll(collection);
        }
        m mVar = (m) collection;
        int i10 = mVar.f2810q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f2810q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        double[] dArr = this.f2809p;
        if (i12 > dArr.length) {
            this.f2809p = Arrays.copyOf(dArr, i12);
        }
        System.arraycopy(mVar.f2809p, 0, this.f2809p, this.f2810q, mVar.f2810q);
        this.f2810q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return super.equals(obj);
        }
        m mVar = (m) obj;
        if (this.f2810q != mVar.f2810q) {
            return false;
        }
        double[] dArr = mVar.f2809p;
        for (int i10 = 0; i10 < this.f2810q; i10++) {
            if (Double.doubleToLongBits(this.f2809p[i10]) != Double.doubleToLongBits(dArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void add(int i10, Double d10) {
        k(i10, d10.doubleValue());
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iF = 1;
        for (int i10 = 0; i10 < this.f2810q; i10++) {
            iF = (iF * 31) + a0.f(Double.doubleToLongBits(this.f2809p[i10]));
        }
        return iF;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public boolean add(Double d10) {
        j(d10.doubleValue());
        return true;
    }

    public void j(double d10) {
        c();
        int i10 = this.f2810q;
        double[] dArr = this.f2809p;
        if (i10 == dArr.length) {
            double[] dArr2 = new double[((i10 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            this.f2809p = dArr2;
        }
        double[] dArr3 = this.f2809p;
        int i11 = this.f2810q;
        this.f2810q = i11 + 1;
        dArr3[i11] = d10;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public Double get(int i10) {
        return Double.valueOf(n(i10));
    }

    public double n(int i10) {
        l(i10);
        return this.f2809p[i10];
    }

    @Override // androidx.datastore.preferences.protobuf.a0.i
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public a0.b B0(int i10) {
        if (i10 >= this.f2810q) {
            return new m(Arrays.copyOf(this.f2809p, i10), this.f2810q);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public Double remove(int i10) {
        c();
        l(i10);
        double[] dArr = this.f2809p;
        double d10 = dArr[i10];
        if (i10 < this.f2810q - 1) {
            System.arraycopy(dArr, i10 + 1, dArr, i10, (r3 - i10) - 1);
        }
        this.f2810q--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public Double set(int i10, Double d10) {
        return Double.valueOf(s(i10, d10.doubleValue()));
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f2809p;
        System.arraycopy(dArr, i11, dArr, i10, this.f2810q - i11);
        this.f2810q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    public double s(int i10, double d10) {
        c();
        l(i10);
        double[] dArr = this.f2809p;
        double d11 = dArr[i10];
        dArr[i10] = d10;
        return d11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f2810q;
    }

    private m(double[] dArr, int i10) {
        this.f2809p = dArr;
        this.f2810q = i10;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f2810q; i10++) {
            if (obj.equals(Double.valueOf(this.f2809p[i10]))) {
                double[] dArr = this.f2809p;
                System.arraycopy(dArr, i10 + 1, dArr, i10, (this.f2810q - i10) - 1);
                this.f2810q--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }
}
