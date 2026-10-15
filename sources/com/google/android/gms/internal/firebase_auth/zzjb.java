package com.google.android.gms.internal.firebase_auth;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjb extends zzgr<Long> implements zzka, RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzjb f22794r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long[] f22795p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f22796q;

    static {
        zzjb zzjbVar = new zzjb(new long[0], 0);
        f22794r = zzjbVar;
        zzjbVar.zzb();
    }

    zzjb() {
        this(new long[10], 0);
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f22796q) {
            throw new IndexOutOfBoundsException(k(i10));
        }
    }

    private final String k(int i10) {
        int i11 = this.f22796q;
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
        long jLongValue = ((Long) obj).longValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f22796q)) {
            throw new IndexOutOfBoundsException(k(i10));
        }
        long[] jArr = this.f22795p;
        if (i11 < jArr.length) {
            System.arraycopy(jArr, i10, jArr, i10 + 1, i11 - i10);
        } else {
            long[] jArr2 = new long[((i11 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            System.arraycopy(this.f22795p, i10, jArr2, i10 + 1, this.f22796q - i10);
            this.f22795p = jArr2;
        }
        this.f22795p[i10] = jLongValue;
        this.f22796q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Long> collection) {
        c();
        zzii.d(collection);
        if (!(collection instanceof zzjb)) {
            return super.addAll(collection);
        }
        zzjb zzjbVar = (zzjb) collection;
        int i10 = zzjbVar.f22796q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f22796q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        long[] jArr = this.f22795p;
        if (i12 > jArr.length) {
            this.f22795p = Arrays.copyOf(jArr, i12);
        }
        System.arraycopy(zzjbVar.f22795p, 0, this.f22795p, this.f22796q, zzjbVar.f22796q);
        this.f22796q = i12;
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
        if (!(obj instanceof zzjb)) {
            return super.equals(obj);
        }
        zzjb zzjbVar = (zzjb) obj;
        if (this.f22796q != zzjbVar.f22796q) {
            return false;
        }
        long[] jArr = zzjbVar.f22795p;
        for (int i10 = 0; i10 < this.f22796q; i10++) {
            if (this.f22795p[i10] != jArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public final void g(long j10) {
        c();
        int i10 = this.f22796q;
        long[] jArr = this.f22795p;
        if (i10 == jArr.length) {
            long[] jArr2 = new long[((i10 * 3) / 2) + 1];
            System.arraycopy(jArr, 0, jArr2, 0, i10);
            this.f22795p = jArr2;
        }
        long[] jArr3 = this.f22795p;
        int i11 = this.f22796q;
        this.f22796q = i11 + 1;
        jArr3[i11] = j10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        return Long.valueOf(i(i10));
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzio
    public final /* synthetic */ zzio h(int i10) {
        if (i10 >= this.f22796q) {
            return new zzjb(Arrays.copyOf(this.f22795p, i10), this.f22796q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iB = 1;
        for (int i10 = 0; i10 < this.f22796q; i10++) {
            iB = (iB * 31) + zzii.b(this.f22795p[i10]);
        }
        return iB;
    }

    public final long i(int i10) {
        j(i10);
        return this.f22795p[i10];
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Long)) {
            return -1;
        }
        long jLongValue = ((Long) obj).longValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f22795p[i10] == jLongValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f22796q; i10++) {
            if (obj.equals(Long.valueOf(this.f22795p[i10]))) {
                long[] jArr = this.f22795p;
                System.arraycopy(jArr, i10 + 1, jArr, i10, (this.f22796q - i10) - 1);
                this.f22796q--;
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
        long[] jArr = this.f22795p;
        System.arraycopy(jArr, i11, jArr, i10, this.f22796q - i11);
        this.f22796q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i10, Object obj) {
        long jLongValue = ((Long) obj).longValue();
        c();
        j(i10);
        long[] jArr = this.f22795p;
        long j10 = jArr[i10];
        jArr[i10] = jLongValue;
        return Long.valueOf(j10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22796q;
    }

    private zzjb(long[] jArr, int i10) {
        this.f22795p = jArr;
        this.f22796q = i10;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i10) {
        c();
        j(i10);
        long[] jArr = this.f22795p;
        long j10 = jArr[i10];
        if (i10 < this.f22796q - 1) {
            System.arraycopy(jArr, i10 + 1, jArr, i10, (r3 - i10) - 1);
        }
        this.f22796q--;
        ((AbstractList) this).modCount++;
        return Long.valueOf(j10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        g(((Long) obj).longValue());
        return true;
    }
}
