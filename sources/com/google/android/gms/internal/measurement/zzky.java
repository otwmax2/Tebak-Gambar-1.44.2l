package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzky extends zzim implements RandomAccess, zzki, zzlq {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzky f23690r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long[] f23691p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f23692q;

    static {
        zzky zzkyVar = new zzky(new long[0], 0);
        f23690r = zzkyVar;
        zzkyVar.zzb();
    }

    zzky() {
        this(new long[10], 0);
    }

    public static zzky g() {
        return f23690r;
    }

    private final String j(int i10) {
        return "Index:" + i10 + ", Size:" + this.f23692q;
    }

    private final void k(int i10) {
        if (i10 < 0 || i10 >= this.f23692q) {
            throw new IndexOutOfBoundsException(j(i10));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzkj
    /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
    public final zzki K(int i10) {
        if (i10 >= this.f23692q) {
            return new zzky(Arrays.copyOf(this.f23691p, i10), this.f23692q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        int i11;
        long jLongValue = ((Long) obj).longValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f23692q)) {
            throw new IndexOutOfBoundsException(j(i10));
        }
        long[] jArr = this.f23691p;
        if (i11 < jArr.length) {
            System.arraycopy(jArr, i10, jArr, i10 + 1, i11 - i10);
        } else {
            long[] jArr2 = new long[((i11 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            System.arraycopy(this.f23691p, i10, jArr2, i10 + 1, this.f23692q - i10);
            this.f23691p = jArr2;
        }
        this.f23691p[i10] = jLongValue;
        this.f23692q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        c();
        zzkk.e(collection);
        if (!(collection instanceof zzky)) {
            return super.addAll(collection);
        }
        zzky zzkyVar = (zzky) collection;
        int i10 = zzkyVar.f23692q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f23692q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        long[] jArr = this.f23691p;
        if (i12 > jArr.length) {
            this.f23691p = Arrays.copyOf(jArr, i12);
        }
        System.arraycopy(zzkyVar.f23691p, 0, this.f23691p, this.f23692q, zzkyVar.f23692q);
        this.f23692q = i12;
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
        if (!(obj instanceof zzky)) {
            return super.equals(obj);
        }
        zzky zzkyVar = (zzky) obj;
        if (this.f23692q != zzkyVar.f23692q) {
            return false;
        }
        long[] jArr = zzkyVar.f23691p;
        for (int i10 = 0; i10 < this.f23692q; i10++) {
            if (this.f23691p[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        k(i10);
        return Long.valueOf(this.f23691p[i10]);
    }

    @Override // com.google.android.gms.internal.measurement.zzki
    public final long h(int i10) {
        k(i10);
        return this.f23691p[i10];
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iC = 1;
        for (int i10 = 0; i10 < this.f23692q; i10++) {
            iC = (iC * 31) + zzkk.c(this.f23691p[i10]);
        }
        return iC;
    }

    public final void i(long j10) {
        c();
        int i10 = this.f23692q;
        long[] jArr = this.f23691p;
        if (i10 == jArr.length) {
            long[] jArr2 = new long[((i10 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            this.f23691p = jArr2;
        }
        long[] jArr3 = this.f23691p;
        int i11 = this.f23692q;
        this.f23692q = i11 + 1;
        jArr3[i11] = j10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int i10 = this.f23692q;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f23691p[i11] == jLongValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        k(i10);
        long[] jArr = this.f23691p;
        long j10 = jArr[i10];
        if (i10 < this.f23692q - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (r3 - i10) - 1);
        }
        this.f23692q--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f23691p;
        System.arraycopy(jArr, i11, jArr, i10, this.f23692q - i11);
        this.f23692q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        c();
        k(i10);
        long[] jArr = this.f23691p;
        long j10 = jArr[i10];
        jArr[i10] = jLongValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23692q;
    }

    private zzky(long[] jArr, int i10) {
        this.f23691p = jArr;
        this.f23692q = i10;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        i(((Long) obj).longValue());
        return true;
    }
}
