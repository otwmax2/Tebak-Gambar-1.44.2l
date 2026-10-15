package com.google.android.gms.internal.drive;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class zzju extends zziw<Double> implements zzmc, RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzju f22108r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private double[] f22109p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f22110q;

    static {
        zzju zzjuVar = new zzju(new double[0], 0);
        f22108r = zzjuVar;
        zzjuVar.C2();
    }

    zzju() {
        this(new double[10], 0);
    }

    private final void g(int i10, double d10) {
        int i11;
        c();
        if (i10 < 0 || i10 > (i11 = this.f22110q)) {
            throw new IndexOutOfBoundsException(j(i10));
        }
        double[] dArr = this.f22109p;
        if (i11 < dArr.length) {
            System.arraycopy(dArr, i10, dArr, i10 + 1, i11 - i10);
        } else {
            double[] dArr2 = new double[((i11 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            System.arraycopy(this.f22109p, i10, dArr2, i10 + 1, this.f22110q - i10);
            this.f22109p = dArr2;
        }
        this.f22109p[i10] = d10;
        this.f22110q++;
        ((AbstractList) this).modCount++;
    }

    private final void i(int i10) {
        if (i10 < 0 || i10 >= this.f22110q) {
            throw new IndexOutOfBoundsException(j(i10));
        }
    }

    private final String j(int i10) {
        int i11 = this.f22110q;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i10);
        sb.append(", Size:");
        sb.append(i11);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        g(i10, ((Double) obj).doubleValue());
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        c();
        zzkm.a(collection);
        if (!(collection instanceof zzju)) {
            return super.addAll(collection);
        }
        zzju zzjuVar = (zzju) collection;
        int i10 = zzjuVar.f22110q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f22110q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        double[] dArr = this.f22109p;
        if (i12 > dArr.length) {
            this.f22109p = Arrays.copyOf(dArr, i12);
        }
        System.arraycopy(zzjuVar.f22109p, 0, this.f22109p, this.f22110q, zzjuVar.f22110q);
        this.f22110q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzju)) {
            return super.equals(obj);
        }
        zzju zzjuVar = (zzju) obj;
        if (this.f22110q != zzjuVar.f22110q) {
            return false;
        }
        double[] dArr = zzjuVar.f22109p;
        for (int i10 = 0; i10 < this.f22110q; i10++) {
            if (Double.doubleToLongBits(this.f22109p[i10]) != Double.doubleToLongBits(dArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        i(i10);
        return Double.valueOf(this.f22109p[i10]);
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iJ = 1;
        for (int i10 = 0; i10 < this.f22110q; i10++) {
            iJ = (iJ * 31) + zzkm.j(Double.doubleToLongBits(this.f22109p[i10]));
        }
        return iJ;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f22110q; i10++) {
            if (obj.equals(Double.valueOf(this.f22109p[i10]))) {
                double[] dArr = this.f22109p;
                System.arraycopy(dArr, i10 + 1, dArr, i10, (this.f22110q - i10) - 1);
                this.f22110q--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f22109p;
        System.arraycopy(dArr, i11, dArr, i10, this.f22110q - i11);
        this.f22110q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i10, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        c();
        i(i10);
        double[] dArr = this.f22109p;
        double d10 = dArr[i10];
        dArr[i10] = dDoubleValue;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22110q;
    }

    @Override // com.google.android.gms.internal.drive.zzkp
    public final /* synthetic */ zzkp x2(int i10) {
        if (i10 >= this.f22110q) {
            return new zzju(Arrays.copyOf(this.f22109p, i10), this.f22110q);
        }
        throw new IllegalArgumentException();
    }

    private zzju(double[] dArr, int i10) {
        this.f22109p = dArr;
        this.f22110q = i10;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i10) {
        c();
        i(i10);
        double[] dArr = this.f22109p;
        double d10 = dArr[i10];
        if (i10 < this.f22110q - 1) {
            System.arraycopy(dArr, i10 + 1, dArr, i10, (r3 - i10) - 1);
        }
        this.f22110q--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }
}
