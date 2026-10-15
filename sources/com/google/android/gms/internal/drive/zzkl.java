package com.google.android.gms.internal.drive;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class zzkl extends zziw<Integer> implements zzmc, RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzkl f22190r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int[] f22191p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f22192q;

    static {
        zzkl zzklVar = new zzkl(new int[0], 0);
        f22190r = zzklVar;
        zzklVar.C2();
    }

    zzkl() {
        this(new int[10], 0);
    }

    private final void i(int i10, int i11) {
        int i12;
        c();
        if (i10 < 0 || i10 > (i12 = this.f22192q)) {
            throw new IndexOutOfBoundsException(k(i10));
        }
        int[] iArr = this.f22191p;
        if (i12 < iArr.length) {
            System.arraycopy(iArr, i10, iArr, i10 + 1, i12 - i10);
        } else {
            int[] iArr2 = new int[((i12 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            System.arraycopy(this.f22191p, i10, iArr2, i10 + 1, this.f22192q - i10);
            this.f22191p = iArr2;
        }
        this.f22191p[i10] = i11;
        this.f22192q++;
        ((AbstractList) this).modCount++;
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f22192q) {
            throw new IndexOutOfBoundsException(k(i10));
        }
    }

    private final String k(int i10) {
        int i11 = this.f22192q;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i10);
        sb.append(", Size:");
        sb.append(i11);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        i(i10, ((Integer) obj).intValue());
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        c();
        zzkm.a(collection);
        if (!(collection instanceof zzkl)) {
            return super.addAll(collection);
        }
        zzkl zzklVar = (zzkl) collection;
        int i10 = zzklVar.f22192q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f22192q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        int[] iArr = this.f22191p;
        if (i12 > iArr.length) {
            this.f22191p = Arrays.copyOf(iArr, i12);
        }
        System.arraycopy(zzklVar.f22191p, 0, this.f22191p, this.f22192q, zzklVar.f22192q);
        this.f22192q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkl)) {
            return super.equals(obj);
        }
        zzkl zzklVar = (zzkl) obj;
        if (this.f22192q != zzklVar.f22192q) {
            return false;
        }
        int[] iArr = zzklVar.f22191p;
        for (int i10 = 0; i10 < this.f22192q; i10++) {
            if (this.f22191p[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public final int g(int i10) {
        j(i10);
        return this.f22191p[i10];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        return Integer.valueOf(g(i10));
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f22192q; i11++) {
            i10 = (i10 * 31) + this.f22191p[i11];
        }
        return i10;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f22192q; i10++) {
            if (obj.equals(Integer.valueOf(this.f22191p[i10]))) {
                int[] iArr = this.f22191p;
                System.arraycopy(iArr, i10 + 1, iArr, i10, (this.f22192q - i10) - 1);
                this.f22192q--;
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
        int[] iArr = this.f22191p;
        System.arraycopy(iArr, i11, iArr, i10, this.f22192q - i11);
        this.f22192q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i10, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        c();
        j(i10);
        int[] iArr = this.f22191p;
        int i11 = iArr[i10];
        iArr[i10] = iIntValue;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22192q;
    }

    @Override // com.google.android.gms.internal.drive.zzkp
    public final /* synthetic */ zzkp x2(int i10) {
        if (i10 >= this.f22192q) {
            return new zzkl(Arrays.copyOf(this.f22191p, i10), this.f22192q);
        }
        throw new IllegalArgumentException();
    }

    private zzkl(int[] iArr, int i10) {
        this.f22191p = iArr;
        this.f22192q = i10;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i10) {
        c();
        j(i10);
        int[] iArr = this.f22191p;
        int i11 = iArr[i10];
        if (i10 < this.f22192q - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (r2 - i10) - 1);
        }
        this.f22192q--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i11);
    }
}
