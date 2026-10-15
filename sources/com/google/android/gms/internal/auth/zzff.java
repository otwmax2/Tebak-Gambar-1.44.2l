package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzff extends zzdn<Long> implements RandomAccess, zzfx {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzff f21506r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long[] f21507p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f21508q;

    static {
        zzff zzffVar = new zzff(new long[0], 0);
        f21506r = zzffVar;
        zzffVar.zzb();
    }

    zzff() {
        this(new long[10], 0);
    }

    private final String i(int i10) {
        int i11 = this.f21508q;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i10);
        sb.append(", Size:");
        sb.append(i11);
        return sb.toString();
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f21508q) {
            throw new IndexOutOfBoundsException(i(i10));
        }
    }

    @Override // com.google.android.gms.internal.auth.zzeu
    public final /* bridge */ /* synthetic */ zzeu K(int i10) {
        if (i10 >= this.f21508q) {
            return new zzff(Arrays.copyOf(this.f21507p, i10), this.f21508q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i10, Object obj) {
        int i11;
        long jLongValue = ((Long) obj).longValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f21508q)) {
            throw new IndexOutOfBoundsException(i(i10));
        }
        long[] jArr = this.f21507p;
        if (i11 < jArr.length) {
            System.arraycopy(jArr, i10, jArr, i10 + 1, i11 - i10);
        } else {
            long[] jArr2 = new long[((i11 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            System.arraycopy(this.f21507p, i10, jArr2, i10 + 1, this.f21508q - i10);
            this.f21507p = jArr2;
        }
        this.f21507p[i10] = jLongValue;
        this.f21508q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        c();
        zzev.e(collection);
        if (!(collection instanceof zzff)) {
            return super.addAll(collection);
        }
        zzff zzffVar = (zzff) collection;
        int i10 = zzffVar.f21508q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f21508q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        long[] jArr = this.f21507p;
        if (i12 > jArr.length) {
            this.f21507p = Arrays.copyOf(jArr, i12);
        }
        System.arraycopy(zzffVar.f21507p, 0, this.f21507p, this.f21508q, zzffVar.f21508q);
        this.f21508q = i12;
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
        if (!(obj instanceof zzff)) {
            return super.equals(obj);
        }
        zzff zzffVar = (zzff) obj;
        if (this.f21508q != zzffVar.f21508q) {
            return false;
        }
        long[] jArr = zzffVar.f21507p;
        for (int i10 = 0; i10 < this.f21508q; i10++) {
            if (this.f21507p[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public final void g(long j10) {
        c();
        int i10 = this.f21508q;
        long[] jArr = this.f21507p;
        if (i10 == jArr.length) {
            long[] jArr2 = new long[((i10 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            this.f21507p = jArr2;
        }
        long[] jArr3 = this.f21507p;
        int i11 = this.f21508q;
        this.f21508q = i11 + 1;
        jArr3[i11] = j10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        j(i10);
        return Long.valueOf(this.f21507p[i10]);
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iC = 1;
        for (int i10 = 0; i10 < this.f21508q; i10++) {
            iC = (iC * 31) + zzev.c(this.f21507p[i10]);
        }
        return iC;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int i10 = this.f21508q;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f21507p[i11] == jLongValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        j(i10);
        long[] jArr = this.f21507p;
        long j10 = jArr[i10];
        if (i10 < this.f21508q - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (r3 - i10) - 1);
        }
        this.f21508q--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        long[] jArr = this.f21507p;
        System.arraycopy(jArr, i11, jArr, i10, this.f21508q - i11);
        this.f21508q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        c();
        j(i10);
        long[] jArr = this.f21507p;
        long j10 = jArr[i10];
        jArr[i10] = jLongValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f21508q;
    }

    private zzff(long[] jArr, int i10) {
        this.f21507p = jArr;
        this.f21508q = i10;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        g(((Long) obj).longValue());
        return true;
    }
}
