package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjl extends zzim implements RandomAccess, zzlq {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzjl f23605r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private double[] f23606p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f23607q;

    static {
        zzjl zzjlVar = new zzjl(new double[0], 0);
        f23605r = zzjlVar;
        zzjlVar.zzb();
    }

    zzjl() {
        this(new double[10], 0);
    }

    private final String i(int i10) {
        return "Index:" + i10 + ", Size:" + this.f23607q;
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f23607q) {
            throw new IndexOutOfBoundsException(i(i10));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzkj
    public final /* bridge */ /* synthetic */ zzkj K(int i10) {
        if (i10 >= this.f23607q) {
            return new zzjl(Arrays.copyOf(this.f23606p, i10), this.f23607q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        int i11;
        double dDoubleValue = ((Double) obj).doubleValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f23607q)) {
            throw new IndexOutOfBoundsException(i(i10));
        }
        double[] dArr = this.f23606p;
        if (i11 < dArr.length) {
            System.arraycopy(dArr, i10, dArr, i10 + 1, i11 - i10);
        } else {
            double[] dArr2 = new double[((i11 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            System.arraycopy(this.f23606p, i10, dArr2, i10 + 1, this.f23607q - i10);
            this.f23606p = dArr2;
        }
        this.f23606p[i10] = dDoubleValue;
        this.f23607q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        c();
        zzkk.e(collection);
        if (!(collection instanceof zzjl)) {
            return super.addAll(collection);
        }
        zzjl zzjlVar = (zzjl) collection;
        int i10 = zzjlVar.f23607q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f23607q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        double[] dArr = this.f23606p;
        if (i12 > dArr.length) {
            this.f23606p = Arrays.copyOf(dArr, i12);
        }
        System.arraycopy(zzjlVar.f23606p, 0, this.f23606p, this.f23607q, zzjlVar.f23607q);
        this.f23607q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzjl)) {
            return super.equals(obj);
        }
        zzjl zzjlVar = (zzjl) obj;
        if (this.f23607q != zzjlVar.f23607q) {
            return false;
        }
        double[] dArr = zzjlVar.f23606p;
        for (int i10 = 0; i10 < this.f23607q; i10++) {
            if (Double.doubleToLongBits(this.f23606p[i10]) != Double.doubleToLongBits(dArr[i10])) {
                return false;
            }
        }
        return true;
    }

    public final void g(double d10) {
        c();
        int i10 = this.f23607q;
        double[] dArr = this.f23606p;
        if (i10 == dArr.length) {
            double[] dArr2 = new double[((i10 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            this.f23606p = dArr2;
        }
        double[] dArr3 = this.f23606p;
        int i11 = this.f23607q;
        this.f23607q = i11 + 1;
        dArr3[i11] = d10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        j(i10);
        return Double.valueOf(this.f23606p[i10]);
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iC = 1;
        for (int i10 = 0; i10 < this.f23607q; i10++) {
            iC = (iC * 31) + zzkk.c(Double.doubleToLongBits(this.f23606p[i10]));
        }
        return iC;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        int i10 = this.f23607q;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f23606p[i11] == dDoubleValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        j(i10);
        double[] dArr = this.f23606p;
        double d10 = dArr[i10];
        if (i10 < this.f23607q - 1) {
            System.arraycopy(dArr, i10 + 1, dArr, i10, (r3 - i10) - 1);
        }
        this.f23607q--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f23606p;
        System.arraycopy(dArr, i11, dArr, i10, this.f23607q - i11);
        this.f23607q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        c();
        j(i10);
        double[] dArr = this.f23606p;
        double d10 = dArr[i10];
        dArr[i10] = dDoubleValue;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23607q;
    }

    private zzjl(double[] dArr, int i10) {
        this.f23606p = dArr;
        this.f23607q = i10;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        g(((Double) obj).doubleValue());
        return true;
    }
}
