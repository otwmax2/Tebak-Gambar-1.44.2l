package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zziq extends zzim implements RandomAccess, zzlq {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zziq f23580r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean[] f23581p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f23582q;

    static {
        zziq zziqVar = new zziq(new boolean[0], 0);
        f23580r = zziqVar;
        zziqVar.zzb();
    }

    zziq() {
        this(new boolean[10], 0);
    }

    private final String i(int i10) {
        return "Index:" + i10 + ", Size:" + this.f23582q;
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f23582q) {
            throw new IndexOutOfBoundsException(i(i10));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzkj
    public final /* bridge */ /* synthetic */ zzkj K(int i10) {
        if (i10 >= this.f23582q) {
            return new zziq(Arrays.copyOf(this.f23581p, i10), this.f23582q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        int i11;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f23582q)) {
            throw new IndexOutOfBoundsException(i(i10));
        }
        boolean[] zArr = this.f23581p;
        if (i11 < zArr.length) {
            System.arraycopy(zArr, i10, zArr, i10 + 1, i11 - i10);
        } else {
            boolean[] zArr2 = new boolean[((i11 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            System.arraycopy(this.f23581p, i10, zArr2, i10 + 1, this.f23582q - i10);
            this.f23581p = zArr2;
        }
        this.f23581p[i10] = zBooleanValue;
        this.f23582q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        c();
        zzkk.e(collection);
        if (!(collection instanceof zziq)) {
            return super.addAll(collection);
        }
        zziq zziqVar = (zziq) collection;
        int i10 = zziqVar.f23582q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f23582q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        boolean[] zArr = this.f23581p;
        if (i12 > zArr.length) {
            this.f23581p = Arrays.copyOf(zArr, i12);
        }
        System.arraycopy(zziqVar.f23581p, 0, this.f23581p, this.f23582q, zziqVar.f23582q);
        this.f23582q = i12;
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
        if (!(obj instanceof zziq)) {
            return super.equals(obj);
        }
        zziq zziqVar = (zziq) obj;
        if (this.f23582q != zziqVar.f23582q) {
            return false;
        }
        boolean[] zArr = zziqVar.f23581p;
        for (int i10 = 0; i10 < this.f23582q; i10++) {
            if (this.f23581p[i10] != zArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public final void g(boolean z10) {
        c();
        int i10 = this.f23582q;
        boolean[] zArr = this.f23581p;
        if (i10 == zArr.length) {
            boolean[] zArr2 = new boolean[((i10 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            this.f23581p = zArr2;
        }
        boolean[] zArr3 = this.f23581p;
        int i11 = this.f23582q;
        this.f23582q = i11 + 1;
        zArr3[i11] = z10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        j(i10);
        return Boolean.valueOf(this.f23581p[i10]);
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iA = 1;
        for (int i10 = 0; i10 < this.f23582q; i10++) {
            iA = (iA * 31) + zzkk.a(this.f23581p[i10]);
        }
        return iA;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        int i10 = this.f23582q;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f23581p[i11] == zBooleanValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        j(i10);
        boolean[] zArr = this.f23581p;
        boolean z10 = zArr[i10];
        if (i10 < this.f23582q - 1) {
            System.arraycopy(zArr, i10 + 1, zArr, i10, (r2 - i10) - 1);
        }
        this.f23582q--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.f23581p;
        System.arraycopy(zArr, i11, zArr, i10, this.f23582q - i11);
        this.f23582q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        c();
        j(i10);
        boolean[] zArr = this.f23581p;
        boolean z10 = zArr[i10];
        zArr[i10] = zBooleanValue;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23582q;
    }

    private zziq(boolean[] zArr, int i10) {
        this.f23581p = zArr;
        this.f23582q = i10;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        g(((Boolean) obj).booleanValue());
        return true;
    }
}
