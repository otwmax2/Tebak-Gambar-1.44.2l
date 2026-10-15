package com.google.android.gms.internal.drive;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class zzja extends zziw<Boolean> implements zzmc, RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzja f22075r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean[] f22076p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f22077q;

    static {
        zzja zzjaVar = new zzja(new boolean[0], 0);
        f22075r = zzjaVar;
        zzjaVar.C2();
    }

    zzja() {
        this(new boolean[10], 0);
    }

    private final void g(int i10, boolean z10) {
        int i11;
        c();
        if (i10 < 0 || i10 > (i11 = this.f22077q)) {
            throw new IndexOutOfBoundsException(j(i10));
        }
        boolean[] zArr = this.f22076p;
        if (i11 < zArr.length) {
            System.arraycopy(zArr, i10, zArr, i10 + 1, i11 - i10);
        } else {
            boolean[] zArr2 = new boolean[((i11 * 3) / 2) + 1];
            System.arraycopy(zArr, 0, zArr2, 0, i10);
            System.arraycopy(this.f22076p, i10, zArr2, i10 + 1, this.f22077q - i10);
            this.f22076p = zArr2;
        }
        this.f22076p[i10] = z10;
        this.f22077q++;
        ((AbstractList) this).modCount++;
    }

    private final void i(int i10) {
        if (i10 < 0 || i10 >= this.f22077q) {
            throw new IndexOutOfBoundsException(j(i10));
        }
    }

    private final String j(int i10) {
        int i11 = this.f22077q;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i10);
        sb.append(", Size:");
        sb.append(i11);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        g(i10, ((Boolean) obj).booleanValue());
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Boolean> collection) {
        c();
        zzkm.a(collection);
        if (!(collection instanceof zzja)) {
            return super.addAll(collection);
        }
        zzja zzjaVar = (zzja) collection;
        int i10 = zzjaVar.f22077q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f22077q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        boolean[] zArr = this.f22076p;
        if (i12 > zArr.length) {
            this.f22076p = Arrays.copyOf(zArr, i12);
        }
        System.arraycopy(zzjaVar.f22076p, 0, this.f22076p, this.f22077q, zzjaVar.f22077q);
        this.f22077q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzja)) {
            return super.equals(obj);
        }
        zzja zzjaVar = (zzja) obj;
        if (this.f22077q != zzjaVar.f22077q) {
            return false;
        }
        boolean[] zArr = zzjaVar.f22076p;
        for (int i10 = 0; i10 < this.f22077q; i10++) {
            if (this.f22076p[i10] != zArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        i(i10);
        return Boolean.valueOf(this.f22076p[i10]);
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iG = 1;
        for (int i10 = 0; i10 < this.f22077q; i10++) {
            iG = (iG * 31) + zzkm.g(this.f22076p[i10]);
        }
        return iG;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f22077q; i10++) {
            if (obj.equals(Boolean.valueOf(this.f22076p[i10]))) {
                boolean[] zArr = this.f22076p;
                System.arraycopy(zArr, i10 + 1, zArr, i10, (this.f22077q - i10) - 1);
                this.f22077q--;
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
        boolean[] zArr = this.f22076p;
        System.arraycopy(zArr, i11, zArr, i10, this.f22077q - i11);
        this.f22077q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i10, Object obj) {
        boolean zBooleanValue = ((Boolean) obj).booleanValue();
        c();
        i(i10);
        boolean[] zArr = this.f22076p;
        boolean z10 = zArr[i10];
        zArr[i10] = zBooleanValue;
        return Boolean.valueOf(z10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22077q;
    }

    @Override // com.google.android.gms.internal.drive.zzkp
    public final /* synthetic */ zzkp x2(int i10) {
        if (i10 >= this.f22077q) {
            return new zzja(Arrays.copyOf(this.f22076p, i10), this.f22077q);
        }
        throw new IllegalArgumentException();
    }

    private zzja(boolean[] zArr, int i10) {
        this.f22076p = zArr;
        this.f22077q = i10;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i10) {
        c();
        i(i10);
        boolean[] zArr = this.f22076p;
        boolean z10 = zArr[i10];
        if (i10 < this.f22077q - 1) {
            System.arraycopy(zArr, i10 + 1, zArr, i10, (r2 - i10) - 1);
        }
        this.f22077q--;
        ((AbstractList) this).modCount++;
        return Boolean.valueOf(z10);
    }
}
