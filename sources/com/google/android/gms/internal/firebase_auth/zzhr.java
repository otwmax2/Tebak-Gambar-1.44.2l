package com.google.android.gms.internal.firebase_auth;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzhr extends zzgr<Double> implements zzka, RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzhr f22680r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private double[] f22681p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f22682q;

    static {
        zzhr zzhrVar = new zzhr(new double[0], 0);
        f22680r = zzhrVar;
        zzhrVar.zzb();
    }

    zzhr() {
        this(new double[10], 0);
    }

    private final void i(int i10) {
        if (i10 < 0 || i10 >= this.f22682q) {
            throw new IndexOutOfBoundsException(j(i10));
        }
    }

    private final String j(int i10) {
        int i11 = this.f22682q;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i10);
        sb.append(", Size:");
        sb.append(i11);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        int i11;
        double dDoubleValue = ((Double) obj).doubleValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f22682q)) {
            throw new IndexOutOfBoundsException(j(i10));
        }
        double[] dArr = this.f22681p;
        if (i11 < dArr.length) {
            System.arraycopy(dArr, i10, dArr, i10 + 1, i11 - i10);
        } else {
            double[] dArr2 = new double[((i11 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            System.arraycopy(this.f22681p, i10, dArr2, i10 + 1, this.f22682q - i10);
            this.f22681p = dArr2;
        }
        this.f22681p[i10] = dDoubleValue;
        this.f22682q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        c();
        zzii.d(collection);
        if (!(collection instanceof zzhr)) {
            return super.addAll(collection);
        }
        zzhr zzhrVar = (zzhr) collection;
        int i10 = zzhrVar.f22682q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f22682q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        double[] dArr = this.f22681p;
        if (i12 > dArr.length) {
            this.f22681p = Arrays.copyOf(dArr, i12);
        }
        System.arraycopy(zzhrVar.f22681p, 0, this.f22681p, this.f22682q, zzhrVar.f22682q);
        this.f22682q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzhr)) {
            return super.equals(obj);
        }
        zzhr zzhrVar = (zzhr) obj;
        if (this.f22682q != zzhrVar.f22682q) {
            return false;
        }
        double[] dArr = zzhrVar.f22681p;
        for (int i10 = 0; i10 < this.f22682q; i10++) {
            if (Double.doubleToLongBits(this.f22681p[i10]) != Double.doubleToLongBits(dArr[i10])) {
                return false;
            }
        }
        return true;
    }

    public final void g(double d10) {
        c();
        int i10 = this.f22682q;
        double[] dArr = this.f22681p;
        if (i10 == dArr.length) {
            double[] dArr2 = new double[((i10 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            this.f22681p = dArr2;
        }
        double[] dArr3 = this.f22681p;
        int i11 = this.f22682q;
        this.f22682q = i11 + 1;
        dArr3[i11] = d10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        i(i10);
        return Double.valueOf(this.f22681p[i10]);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzio
    public final /* synthetic */ zzio h(int i10) {
        if (i10 >= this.f22682q) {
            return new zzhr(Arrays.copyOf(this.f22681p, i10), this.f22682q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iB = 1;
        for (int i10 = 0; i10 < this.f22682q; i10++) {
            iB = (iB * 31) + zzii.b(Double.doubleToLongBits(this.f22681p[i10]));
        }
        return iB;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f22681p[i10] == dDoubleValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f22682q; i10++) {
            if (obj.equals(Double.valueOf(this.f22681p[i10]))) {
                double[] dArr = this.f22681p;
                System.arraycopy(dArr, i10 + 1, dArr, i10, (this.f22682q - i10) - 1);
                this.f22682q--;
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
        double[] dArr = this.f22681p;
        System.arraycopy(dArr, i11, dArr, i10, this.f22682q - i11);
        this.f22682q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i10, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        c();
        i(i10);
        double[] dArr = this.f22681p;
        double d10 = dArr[i10];
        dArr[i10] = dDoubleValue;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22682q;
    }

    private zzhr(double[] dArr, int i10) {
        this.f22681p = dArr;
        this.f22682q = i10;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i10) {
        c();
        i(i10);
        double[] dArr = this.f22681p;
        double d10 = dArr[i10];
        if (i10 < this.f22682q - 1) {
            System.arraycopy(dArr, i10 + 1, dArr, i10, (r3 - i10) - 1);
        }
        this.f22682q--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        g(((Double) obj).doubleValue());
        return true;
    }
}
