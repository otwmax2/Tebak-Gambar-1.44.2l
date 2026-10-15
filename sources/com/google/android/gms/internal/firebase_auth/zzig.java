package com.google.android.gms.internal.firebase_auth;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzig extends zzgr<Integer> implements zzim, zzka, RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzig f22761r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int[] f22762p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f22763q;

    static {
        zzig zzigVar = new zzig(new int[0], 0);
        f22761r = zzigVar;
        zzigVar.zzb();
    }

    zzig() {
        this(new int[10], 0);
    }

    public static zzig j() {
        return f22761r;
    }

    private final void l(int i10) {
        if (i10 < 0 || i10 >= this.f22763q) {
            throw new IndexOutOfBoundsException(m(i10));
        }
    }

    private final String m(int i10) {
        int i11 = this.f22763q;
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
        int iIntValue = ((Integer) obj).intValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f22763q)) {
            throw new IndexOutOfBoundsException(m(i10));
        }
        int[] iArr = this.f22762p;
        if (i11 < iArr.length) {
            System.arraycopy(iArr, i10, iArr, i10 + 1, i11 - i10);
        } else {
            int[] iArr2 = new int[((i11 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            System.arraycopy(this.f22762p, i10, iArr2, i10 + 1, this.f22763q - i10);
            this.f22762p = iArr2;
        }
        this.f22762p[i10] = iIntValue;
        this.f22763q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Integer> collection) {
        c();
        zzii.d(collection);
        if (!(collection instanceof zzig)) {
            return super.addAll(collection);
        }
        zzig zzigVar = (zzig) collection;
        int i10 = zzigVar.f22763q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f22763q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        int[] iArr = this.f22762p;
        if (i12 > iArr.length) {
            this.f22762p = Arrays.copyOf(iArr, i12);
        }
        System.arraycopy(zzigVar.f22762p, 0, this.f22762p, this.f22763q, zzigVar.f22763q);
        this.f22763q = i12;
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
        if (!(obj instanceof zzig)) {
            return super.equals(obj);
        }
        zzig zzigVar = (zzig) obj;
        if (this.f22763q != zzigVar.f22763q) {
            return false;
        }
        int[] iArr = zzigVar.f22762p;
        for (int i10 = 0; i10 < this.f22763q; i10++) {
            if (this.f22762p[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzio
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public final zzim h(int i10) {
        if (i10 >= this.f22763q) {
            return new zzig(Arrays.copyOf(this.f22762p, i10), this.f22763q);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        return Integer.valueOf(i(i10));
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f22763q; i11++) {
            i10 = (i10 * 31) + this.f22762p[i11];
        }
        return i10;
    }

    public final int i(int i10) {
        l(i10);
        return this.f22762p[i10];
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f22762p[i10] == iIntValue) {
                return i10;
            }
        }
        return -1;
    }

    public final void k(int i10) {
        c();
        int i11 = this.f22763q;
        int[] iArr = this.f22762p;
        if (i11 == iArr.length) {
            int[] iArr2 = new int[((i11 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.f22762p = iArr2;
        }
        int[] iArr3 = this.f22762p;
        int i12 = this.f22763q;
        this.f22763q = i12 + 1;
        iArr3[i12] = i10;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f22763q; i10++) {
            if (obj.equals(Integer.valueOf(this.f22762p[i10]))) {
                int[] iArr = this.f22762p;
                System.arraycopy(iArr, i10 + 1, iArr, i10, (this.f22763q - i10) - 1);
                this.f22763q--;
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
        int[] iArr = this.f22762p;
        System.arraycopy(iArr, i11, iArr, i10, this.f22763q - i11);
        this.f22763q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i10, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        c();
        l(i10);
        int[] iArr = this.f22762p;
        int i11 = iArr[i10];
        iArr[i10] = iIntValue;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22763q;
    }

    private zzig(int[] iArr, int i10) {
        this.f22762p = iArr;
        this.f22763q = i10;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i10) {
        c();
        l(i10);
        int[] iArr = this.f22762p;
        int i11 = iArr[i10];
        if (i10 < this.f22763q - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (r2 - i10) - 1);
        }
        this.f22763q--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i11);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        k(((Integer) obj).intValue());
        return true;
    }
}
