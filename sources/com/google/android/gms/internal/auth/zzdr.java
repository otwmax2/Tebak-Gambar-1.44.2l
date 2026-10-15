package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzdr extends zzdn<Boolean> implements RandomAccess, zzfx {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzdr f21454r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean[] f21455p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f21456q;

    static {
        zzdr zzdrVar = new zzdr(new boolean[0], 0);
        f21454r = zzdrVar;
        zzdrVar.zzb();
    }

    zzdr() {
        this(new boolean[10], 0);
    }

    private final String i(int i10) {
        int i11 = this.f21456q;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i10);
        sb.append(", Size:");
        sb.append(i11);
        return sb.toString();
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f21456q) {
            throw new IndexOutOfBoundsException(i(i10));
        }
    }

    @Override // com.google.android.gms.internal.auth.zzeu
    public final /* bridge */ /* synthetic */ zzeu K(int i10) {
        if (i10 >= this.f21456q) {
            return new zzdr(Arrays.copyOf(this.f21455p, i10), this.f21456q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i10, Object obj) {
        int i11;
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f21456q)) {
            throw new IndexOutOfBoundsException(i(i10));
        }
        boolean[] zArr = this.f21455p;
        if (i11 < zArr.length) {
            System.arraycopy(zArr, i10, zArr, i10 + 1, i11 - i10);
        } else {
            boolean[] zArr2 = new boolean[((i11 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            System.arraycopy(this.f21455p, i10, zArr2, i10 + 1, this.f21456q - i10);
            this.f21455p = zArr2;
        }
        this.f21455p[i10] = zBooleanValue;
        this.f21456q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        c();
        zzev.e(collection);
        if (!(collection instanceof zzdr)) {
            return super.addAll(collection);
        }
        zzdr zzdrVar = (zzdr) collection;
        int i10 = zzdrVar.f21456q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f21456q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        boolean[] zArr = this.f21455p;
        if (i12 > zArr.length) {
            this.f21455p = Arrays.copyOf(zArr, i12);
        }
        System.arraycopy(zzdrVar.f21455p, 0, this.f21455p, this.f21456q, zzdrVar.f21456q);
        this.f21456q = i12;
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
        if (!(obj instanceof zzdr)) {
            return super.equals(obj);
        }
        zzdr zzdrVar = (zzdr) obj;
        if (this.f21456q != zzdrVar.f21456q) {
            return false;
        }
        boolean[] zArr = zzdrVar.f21455p;
        for (int i10 = 0; i10 < this.f21456q; i10++) {
            if (this.f21455p[i10] != zArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public final void g(boolean z10) {
        c();
        int i10 = this.f21456q;
        boolean[] zArr = this.f21455p;
        if (i10 == zArr.length) {
            boolean[] zArr2 = new boolean[((i10 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            this.f21455p = zArr2;
        }
        boolean[] zArr3 = this.f21455p;
        int i11 = this.f21456q;
        this.f21456q = i11 + 1;
        zArr3[i11] = z10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        j(i10);
        return Boolean.valueOf(this.f21455p[i10]);
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iA = 1;
        for (int i10 = 0; i10 < this.f21456q; i10++) {
            iA = (iA * 31) + zzev.a(this.f21455p[i10]);
        }
        return iA;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Boolean)) {
            return -1;
        }
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        int i10 = this.f21456q;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f21455p[i11] == zBooleanValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        j(i10);
        boolean[] zArr = this.f21455p;
        boolean z10 = zArr[i10];
        if (i10 < this.f21456q - 1) {
            System.arraycopy(zArr, i10 + 1, zArr, i10, (r2 - i10) - 1);
        }
        this.f21456q--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        boolean[] zArr = this.f21455p;
        System.arraycopy(zArr, i11, zArr, i10, this.f21456q - i11);
        this.f21456q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        c();
        j(i10);
        boolean[] zArr = this.f21455p;
        boolean z10 = zArr[i10];
        zArr[i10] = zBooleanValue;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f21456q;
    }

    private zzdr(boolean[] zArr, int i10) {
        this.f21455p = zArr;
        this.f21456q = i10;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        g(((Boolean) obj).booleanValue());
        return true;
    }
}
