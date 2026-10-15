package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzer extends zzdn<Integer> implements RandomAccess, zzfx {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzer f21490r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int[] f21491p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f21492q;

    static {
        zzer zzerVar = new zzer(new int[0], 0);
        f21490r = zzerVar;
        zzerVar.zzb();
    }

    zzer() {
        this(new int[10], 0);
    }

    private final String i(int i10) {
        int i11 = this.f21492q;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i10);
        sb.append(", Size:");
        sb.append(i11);
        return sb.toString();
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f21492q) {
            throw new IndexOutOfBoundsException(i(i10));
        }
    }

    @Override // com.google.android.gms.internal.auth.zzeu
    public final /* bridge */ /* synthetic */ zzeu K(int i10) {
        if (i10 >= this.f21492q) {
            return new zzer(Arrays.copyOf(this.f21491p, i10), this.f21492q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i10, Object obj) {
        int i11;
        int iIntValue = ((Integer) obj).intValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f21492q)) {
            throw new IndexOutOfBoundsException(i(i10));
        }
        int[] iArr = this.f21491p;
        if (i11 < iArr.length) {
            System.arraycopy(iArr, i10, iArr, i10 + 1, i11 - i10);
        } else {
            int[] iArr2 = new int[((i11 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            System.arraycopy(this.f21491p, i10, iArr2, i10 + 1, this.f21492q - i10);
            this.f21491p = iArr2;
        }
        this.f21491p[i10] = iIntValue;
        this.f21492q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        c();
        zzev.e(collection);
        if (!(collection instanceof zzer)) {
            return super.addAll(collection);
        }
        zzer zzerVar = (zzer) collection;
        int i10 = zzerVar.f21492q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f21492q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        int[] iArr = this.f21491p;
        if (i12 > iArr.length) {
            this.f21491p = Arrays.copyOf(iArr, i12);
        }
        System.arraycopy(zzerVar.f21491p, 0, this.f21491p, this.f21492q, zzerVar.f21492q);
        this.f21492q = i12;
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
        if (!(obj instanceof zzer)) {
            return super.equals(obj);
        }
        zzer zzerVar = (zzer) obj;
        if (this.f21492q != zzerVar.f21492q) {
            return false;
        }
        int[] iArr = zzerVar.f21491p;
        for (int i10 = 0; i10 < this.f21492q; i10++) {
            if (this.f21491p[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public final void g(int i10) {
        c();
        int i11 = this.f21492q;
        int[] iArr = this.f21491p;
        if (i11 == iArr.length) {
            int[] iArr2 = new int[((i11 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.f21491p = iArr2;
        }
        int[] iArr3 = this.f21491p;
        int i12 = this.f21492q;
        this.f21492q = i12 + 1;
        iArr3[i12] = i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        j(i10);
        return Integer.valueOf(this.f21491p[i10]);
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f21492q; i11++) {
            i10 = (i10 * 31) + this.f21491p[i11];
        }
        return i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i10 = this.f21492q;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f21491p[i11] == iIntValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        j(i10);
        int[] iArr = this.f21491p;
        int i11 = iArr[i10];
        if (i10 < this.f21492q - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (r2 - i10) - 1);
        }
        this.f21492q--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f21491p;
        System.arraycopy(iArr, i11, iArr, i10, this.f21492q - i11);
        this.f21492q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        c();
        j(i10);
        int[] iArr = this.f21491p;
        int i11 = iArr[i10];
        iArr[i10] = iIntValue;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f21492q;
    }

    private zzer(int[] iArr, int i10) {
        this.f21491p = iArr;
        this.f21492q = i10;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        g(((Integer) obj).intValue());
        return true;
    }
}
