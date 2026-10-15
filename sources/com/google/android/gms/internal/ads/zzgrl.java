package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgrl extends zzgoo implements RandomAccess, zzgqu, zzgsd {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzgrl f19533r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long[] f19534p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f19535q;

    static {
        zzgrl zzgrlVar = new zzgrl(new long[0], 0);
        f19533r = zzgrlVar;
        zzgrlVar.zzb();
    }

    zzgrl() {
        this(new long[10], 0);
    }

    public static zzgrl i() {
        return f19533r;
    }

    private final String k(int i10) {
        return "Index:" + i10 + ", Size:" + this.f19535q;
    }

    private final void l(int i10) {
        if (i10 < 0 || i10 >= this.f19535q) {
            throw new IndexOutOfBoundsException(k(i10));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        int i11;
        long jLongValue = ((Long) obj).longValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f19535q)) {
            throw new IndexOutOfBoundsException(k(i10));
        }
        long[] jArr = this.f19534p;
        if (i11 < jArr.length) {
            System.arraycopy(jArr, i10, jArr, i10 + 1, i11 - i10);
        } else {
            long[] jArr2 = new long[((i11 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            System.arraycopy(this.f19534p, i10, jArr2, i10 + 1, this.f19535q - i10);
            this.f19534p = jArr2;
        }
        this.f19534p[i10] = jLongValue;
        this.f19535q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        c();
        zzgqw.e(collection);
        if (!(collection instanceof zzgrl)) {
            return super.addAll(collection);
        }
        zzgrl zzgrlVar = (zzgrl) collection;
        int i10 = zzgrlVar.f19535q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f19535q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        long[] jArr = this.f19534p;
        if (i12 > jArr.length) {
            this.f19534p = Arrays.copyOf(jArr, i12);
        }
        System.arraycopy(zzgrlVar.f19534p, 0, this.f19534p, this.f19535q, zzgrlVar.f19535q);
        this.f19535q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzgrl)) {
            return super.equals(obj);
        }
        zzgrl zzgrlVar = (zzgrl) obj;
        if (this.f19535q != zzgrlVar.f19535q) {
            return false;
        }
        long[] jArr = zzgrlVar.f19534p;
        for (int i10 = 0; i10 < this.f19535q; i10++) {
            if (this.f19534p[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public final long g(int i10) {
        l(i10);
        return this.f19534p[i10];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        l(i10);
        return Long.valueOf(this.f19534p[i10]);
    }

    @Override // com.google.android.gms.internal.ads.zzgqv
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public final zzgqu K(int i10) {
        if (i10 >= this.f19535q) {
            return new zzgrl(Arrays.copyOf(this.f19534p, i10), this.f19535q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iC = 1;
        for (int i10 = 0; i10 < this.f19535q; i10++) {
            iC = (iC * 31) + zzgqw.c(this.f19534p[i10]);
        }
        return iC;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int i10 = this.f19535q;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f19534p[i11] == jLongValue) {
                return i11;
            }
        }
        return -1;
    }

    public final void j(long j10) {
        c();
        int i10 = this.f19535q;
        long[] jArr = this.f19534p;
        if (i10 == jArr.length) {
            long[] jArr2 = new long[((i10 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            this.f19534p = jArr2;
        }
        long[] jArr3 = this.f19534p;
        int i11 = this.f19535q;
        this.f19535q = i11 + 1;
        jArr3[i11] = j10;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        l(i10);
        long[] jArr = this.f19534p;
        long j10 = jArr[i10];
        if (i10 < this.f19535q - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (r3 - i10) - 1);
        }
        this.f19535q--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f19534p;
        System.arraycopy(jArr, i11, jArr, i10, this.f19535q - i11);
        this.f19535q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        c();
        l(i10);
        long[] jArr = this.f19534p;
        long j10 = jArr[i10];
        jArr[i10] = jLongValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19535q;
    }

    private zzgrl(long[] jArr, int i10) {
        this.f19534p = jArr;
        this.f19535q = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        j(((Long) obj).longValue());
        return true;
    }
}
