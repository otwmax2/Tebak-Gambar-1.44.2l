package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzef extends zzdn<Double> implements RandomAccess, zzfx {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzef f21471r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private double[] f21472p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f21473q;

    static {
        zzef zzefVar = new zzef(new double[0], 0);
        f21471r = zzefVar;
        zzefVar.zzb();
    }

    zzef() {
        this(new double[10], 0);
    }

    private final String i(int i10) {
        int i11 = this.f21473q;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i10);
        sb.append(", Size:");
        sb.append(i11);
        return sb.toString();
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f21473q) {
            throw new IndexOutOfBoundsException(i(i10));
        }
    }

    @Override // com.google.android.gms.internal.auth.zzeu
    public final /* bridge */ /* synthetic */ zzeu K(int i10) {
        if (i10 >= this.f21473q) {
            return new zzef(Arrays.copyOf(this.f21472p, i10), this.f21473q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i10, Object obj) {
        int i11;
        double dDoubleValue = ((Double) obj).doubleValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f21473q)) {
            throw new IndexOutOfBoundsException(i(i10));
        }
        double[] dArr = this.f21472p;
        if (i11 < dArr.length) {
            System.arraycopy(dArr, i10, dArr, i10 + 1, i11 - i10);
        } else {
            double[] dArr2 = new double[((i11 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            System.arraycopy(this.f21472p, i10, dArr2, i10 + 1, this.f21473q - i10);
            this.f21472p = dArr2;
        }
        this.f21472p[i10] = dDoubleValue;
        this.f21473q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Double> collection) {
        c();
        zzev.e(collection);
        if (!(collection instanceof zzef)) {
            return super.addAll(collection);
        }
        zzef zzefVar = (zzef) collection;
        int i10 = zzefVar.f21473q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f21473q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        double[] dArr = this.f21472p;
        if (i12 > dArr.length) {
            this.f21472p = Arrays.copyOf(dArr, i12);
        }
        System.arraycopy(zzefVar.f21472p, 0, this.f21472p, this.f21473q, zzefVar.f21473q);
        this.f21473q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzef)) {
            return super.equals(obj);
        }
        zzef zzefVar = (zzef) obj;
        if (this.f21473q != zzefVar.f21473q) {
            return false;
        }
        double[] dArr = zzefVar.f21472p;
        for (int i10 = 0; i10 < this.f21473q; i10++) {
            if (Double.doubleToLongBits(this.f21472p[i10]) != Double.doubleToLongBits(dArr[i10])) {
                return false;
            }
        }
        return true;
    }

    public final void g(double d10) {
        c();
        int i10 = this.f21473q;
        double[] dArr = this.f21472p;
        if (i10 == dArr.length) {
            double[] dArr2 = new double[((i10 * 3) / 2) + 1];
            System.arraycopy(dArr, 0, dArr2, 0, i10);
            this.f21472p = dArr2;
        }
        double[] dArr3 = this.f21472p;
        int i11 = this.f21473q;
        this.f21473q = i11 + 1;
        dArr3[i11] = d10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        j(i10);
        return Double.valueOf(this.f21472p[i10]);
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iC = 1;
        for (int i10 = 0; i10 < this.f21473q; i10++) {
            iC = (iC * 31) + zzev.c(Double.doubleToLongBits(this.f21472p[i10]));
        }
        return iC;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Double)) {
            return -1;
        }
        double dDoubleValue = ((Double) obj).doubleValue();
        int i10 = this.f21473q;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f21472p[i11] == dDoubleValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        j(i10);
        double[] dArr = this.f21472p;
        double d10 = dArr[i10];
        if (i10 < this.f21473q - 1) {
            System.arraycopy(dArr, i10 + 1, dArr, i10, (r3 - i10) - 1);
        }
        this.f21473q--;
        ((AbstractList) this).modCount++;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        double[] dArr = this.f21472p;
        System.arraycopy(dArr, i11, dArr, i10, this.f21473q - i11);
        this.f21473q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        double dDoubleValue = ((Double) obj).doubleValue();
        c();
        j(i10);
        double[] dArr = this.f21472p;
        double d10 = dArr[i10];
        dArr[i10] = dDoubleValue;
        return Double.valueOf(d10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f21473q;
    }

    private zzef(double[] dArr, int i10) {
        this.f21472p = dArr;
        this.f21473q = i10;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        g(((Double) obj).doubleValue());
        return true;
    }
}
