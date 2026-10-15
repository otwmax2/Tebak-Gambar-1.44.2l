package com.google.android.gms.internal.firebase_auth;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgt extends zzgr<Boolean> implements zzka, RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzgt f22641r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean[] f22642p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f22643q;

    static {
        zzgt zzgtVar = new zzgt(new boolean[0], 0);
        f22641r = zzgtVar;
        zzgtVar.zzb();
    }

    zzgt() {
        this(new boolean[10], 0);
    }

    private final void i(int i10) {
        if (i10 < 0 || i10 >= this.f22643q) {
            throw new IndexOutOfBoundsException(j(i10));
        }
    }

    private final String j(int i10) {
        int i11 = this.f22643q;
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
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f22643q)) {
            throw new IndexOutOfBoundsException(j(i10));
        }
        boolean[] zArr = this.f22642p;
        if (i11 < zArr.length) {
            System.arraycopy(zArr, i10, zArr, i10 + 1, i11 - i10);
        } else {
            boolean[] zArr2 = new boolean[((i11 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            System.arraycopy(this.f22642p, i10, zArr2, i10 + 1, this.f22643q - i10);
            this.f22642p = zArr2;
        }
        this.f22642p[i10] = zBooleanValue;
        this.f22643q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        c();
        zzii.d(collection);
        if (!(collection instanceof zzgt)) {
            return super.addAll(collection);
        }
        zzgt zzgtVar = (zzgt) collection;
        int i10 = zzgtVar.f22643q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f22643q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        boolean[] zArr = this.f22642p;
        if (i12 > zArr.length) {
            this.f22642p = Arrays.copyOf(zArr, i12);
        }
        System.arraycopy(zzgtVar.f22642p, 0, this.f22642p, this.f22643q, zzgtVar.f22643q);
        this.f22643q = i12;
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
        if (!(obj instanceof zzgt)) {
            return super.equals(obj);
        }
        zzgt zzgtVar = (zzgt) obj;
        if (this.f22643q != zzgtVar.f22643q) {
            return false;
        }
        boolean[] zArr = zzgtVar.f22642p;
        for (int i10 = 0; i10 < this.f22643q; i10++) {
            if (this.f22642p[i10] != zArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public final void g(boolean z10) {
        c();
        int i10 = this.f22643q;
        boolean[] zArr = this.f22642p;
        if (i10 == zArr.length) {
            boolean[] zArr2 = new boolean[((i10 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            this.f22642p = zArr2;
        }
        boolean[] zArr3 = this.f22642p;
        int i11 = this.f22643q;
        this.f22643q = i11 + 1;
        zArr3[i11] = z10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        i(i10);
        return Boolean.valueOf(this.f22642p[i10]);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzio
    public final /* synthetic */ zzio h(int i10) {
        if (i10 >= this.f22643q) {
            return new zzgt(Arrays.copyOf(this.f22642p, i10), this.f22643q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iC = 1;
        for (int i10 = 0; i10 < this.f22643q; i10++) {
            iC = (iC * 31) + zzii.c(this.f22642p[i10]);
        }
        return iC;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f22642p[i10] == zBooleanValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f22643q; i10++) {
            if (obj.equals(Boolean.valueOf(this.f22642p[i10]))) {
                boolean[] zArr = this.f22642p;
                System.arraycopy(zArr, i10 + 1, zArr, i10, (this.f22643q - i10) - 1);
                this.f22643q--;
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
        boolean[] zArr = this.f22642p;
        System.arraycopy(zArr, i11, zArr, i10, this.f22643q - i11);
        this.f22643q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i10, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        c();
        i(i10);
        boolean[] zArr = this.f22642p;
        boolean z10 = zArr[i10];
        zArr[i10] = zBooleanValue;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22643q;
    }

    private zzgt(boolean[] zArr, int i10) {
        this.f22642p = zArr;
        this.f22643q = i10;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i10) {
        c();
        i(i10);
        boolean[] zArr = this.f22642p;
        boolean z10 = zArr[i10];
        if (i10 < this.f22643q - 1) {
            System.arraycopy(zArr, i10 + 1, zArr, i10, (r2 - i10) - 1);
        }
        this.f22643q--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        g(((Boolean) obj).booleanValue());
        return true;
    }
}
