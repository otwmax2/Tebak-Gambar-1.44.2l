package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgqn extends zzgoo implements RandomAccess, zzgqr, zzgsd {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzgqn f19484r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int[] f19485p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f19486q;

    static {
        zzgqn zzgqnVar = new zzgqn(new int[0], 0);
        f19484r = zzgqnVar;
        zzgqnVar.zzb();
    }

    zzgqn() {
        this(new int[10], 0);
    }

    public static zzgqn i() {
        return f19484r;
    }

    private final String j(int i10) {
        return "Index:" + i10 + ", Size:" + this.f19486q;
    }

    private final void k(int i10) {
        if (i10 < 0 || i10 >= this.f19486q) {
            throw new IndexOutOfBoundsException(j(i10));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        int i11;
        int iIntValue = ((Integer) obj).intValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f19486q)) {
            throw new IndexOutOfBoundsException(j(i10));
        }
        int[] iArr = this.f19485p;
        if (i11 < iArr.length) {
            System.arraycopy(iArr, i10, iArr, i10 + 1, i11 - i10);
        } else {
            int[] iArr2 = new int[((i11 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i10);
            System.arraycopy(this.f19485p, i10, iArr2, i10 + 1, this.f19486q - i10);
            this.f19485p = iArr2;
        }
        this.f19485p[i10] = iIntValue;
        this.f19486q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        c();
        zzgqw.e(collection);
        if (!(collection instanceof zzgqn)) {
            return super.addAll(collection);
        }
        zzgqn zzgqnVar = (zzgqn) collection;
        int i10 = zzgqnVar.f19486q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f19486q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        int[] iArr = this.f19485p;
        if (i12 > iArr.length) {
            this.f19485p = Arrays.copyOf(iArr, i12);
        }
        System.arraycopy(zzgqnVar.f19485p, 0, this.f19485p, this.f19486q, zzgqnVar.f19486q);
        this.f19486q = i12;
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
        if (!(obj instanceof zzgqn)) {
            return super.equals(obj);
        }
        zzgqn zzgqnVar = (zzgqn) obj;
        if (this.f19486q != zzgqnVar.f19486q) {
            return false;
        }
        int[] iArr = zzgqnVar.f19485p;
        for (int i10 = 0; i10 < this.f19486q; i10++) {
            if (this.f19485p[i10] != iArr[i10]) {
                return false;
            }
        }
        return true;
    }

    public final int g(int i10) {
        k(i10);
        return this.f19485p[i10];
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        k(i10);
        return Integer.valueOf(this.f19485p[i10]);
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int i10 = 1;
        for (int i11 = 0; i11 < this.f19486q; i11++) {
            i10 = (i10 * 31) + this.f19485p[i11];
        }
        return i10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int iIntValue = ((Integer) obj).intValue();
        int i10 = this.f19486q;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f19485p[i11] == iIntValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzgqr
    public final void j0(int i10) {
        c();
        int i11 = this.f19486q;
        int[] iArr = this.f19485p;
        if (i11 == iArr.length) {
            int[] iArr2 = new int[((i11 * 3) / 2) + 1];
            System.arraycopy(iArr, 0, iArr2, 0, i11);
            this.f19485p = iArr2;
        }
        int[] iArr3 = this.f19485p;
        int i12 = this.f19486q;
        this.f19486q = i12 + 1;
        iArr3[i12] = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        k(i10);
        int[] iArr = this.f19485p;
        int i11 = iArr[i10];
        if (i10 < this.f19486q - 1) {
            System.arraycopy(iArr, i10 + 1, iArr, i10, (r2 - i10) - 1);
        }
        this.f19486q--;
        ((AbstractList) this).modCount++;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        int[] iArr = this.f19485p;
        System.arraycopy(iArr, i11, iArr, i10, this.f19486q - i11);
        this.f19486q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        int iIntValue = ((Integer) obj).intValue();
        c();
        k(i10);
        int[] iArr = this.f19485p;
        int i11 = iArr[i10];
        iArr[i10] = iIntValue;
        return Integer.valueOf(i11);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19486q;
    }

    @Override // com.google.android.gms.internal.ads.zzgqv
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public final zzgqr K(int i10) {
        if (i10 >= this.f19486q) {
            return new zzgqn(Arrays.copyOf(this.f19485p, i10), this.f19486q);
        }
        throw new IllegalArgumentException();
    }

    private zzgqn(int[] iArr, int i10) {
        this.f19485p = iArr;
        this.f19486q = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        j0(((Integer) obj).intValue());
        return true;
    }
}
