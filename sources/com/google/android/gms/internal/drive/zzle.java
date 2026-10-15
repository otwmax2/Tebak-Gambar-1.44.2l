package com.google.android.gms.internal.drive;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class zzle extends zziw<Long> implements zzmc, RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzle f22223r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long[] f22224p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f22225q;

    static {
        zzle zzleVar = new zzle(new long[0], 0);
        f22223r = zzleVar;
        zzleVar.C2();
    }

    zzle() {
        this(new long[10], 0);
    }

    private final void i(int i10, long j10) {
        int i11;
        c();
        if (i10 < 0 || i10 > (i11 = this.f22225q)) {
            throw new IndexOutOfBoundsException(k(i10));
        }
        long[] jArr = this.f22224p;
        if (i11 < jArr.length) {
            System.arraycopy(jArr, i10, jArr, i10 + 1, i11 - i10);
        } else {
            long[] jArr2 = new long[((i11 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            System.arraycopy(this.f22224p, i10, jArr2, i10 + 1, this.f22225q - i10);
            this.f22224p = jArr2;
        }
        this.f22224p[i10] = j10;
        this.f22225q++;
        ((AbstractList) this).modCount++;
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f22225q) {
            throw new IndexOutOfBoundsException(k(i10));
        }
    }

    private final String k(int i10) {
        int i11 = this.f22225q;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i10);
        sb.append(", Size:");
        sb.append(i11);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        i(i10, ((Long) obj).longValue());
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        c();
        zzkm.a(collection);
        if (!(collection instanceof zzle)) {
            return super.addAll(collection);
        }
        zzle zzleVar = (zzle) collection;
        int i10 = zzleVar.f22225q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f22225q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        long[] jArr = this.f22224p;
        if (i12 > jArr.length) {
            this.f22224p = Arrays.copyOf(jArr, i12);
        }
        System.arraycopy(zzleVar.f22224p, 0, this.f22224p, this.f22225q, zzleVar.f22225q);
        this.f22225q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzle)) {
            return super.equals(obj);
        }
        zzle zzleVar = (zzle) obj;
        if (this.f22225q != zzleVar.f22225q) {
            return false;
        }
        long[] jArr = zzleVar.f22224p;
        for (int i10 = 0; i10 < this.f22225q; i10++) {
            if (this.f22224p[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public final long g(int i10) {
        j(i10);
        return this.f22224p[i10];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        return Long.valueOf(g(i10));
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iJ = 1;
        for (int i10 = 0; i10 < this.f22225q; i10++) {
            iJ = (iJ * 31) + zzkm.j(this.f22224p[i10]);
        }
        return iJ;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f22225q; i10++) {
            if (obj.equals(Long.valueOf(this.f22224p[i10]))) {
                long[] jArr = this.f22224p;
                System.arraycopy(jArr, i10 + 1, jArr, i10, (this.f22225q - i10) - 1);
                this.f22225q--;
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
        long[] jArr = this.f22224p;
        System.arraycopy(jArr, i11, jArr, i10, this.f22225q - i11);
        this.f22225q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i10, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        c();
        j(i10);
        long[] jArr = this.f22224p;
        long j10 = jArr[i10];
        jArr[i10] = jLongValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22225q;
    }

    @Override // com.google.android.gms.internal.drive.zzkp
    public final /* synthetic */ zzkp x2(int i10) {
        if (i10 >= this.f22225q) {
            return new zzle(Arrays.copyOf(this.f22224p, i10), this.f22225q);
        }
        throw new IllegalArgumentException();
    }

    private zzle(long[] jArr, int i10) {
        this.f22224p = jArr;
        this.f22225q = i10;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i10) {
        c();
        j(i10);
        long[] jArr = this.f22224p;
        long j10 = jArr[i10];
        if (i10 < this.f22225q - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (r3 - i10) - 1);
        }
        this.f22225q--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }
}
