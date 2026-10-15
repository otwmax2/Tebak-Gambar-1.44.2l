package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzfz<E> extends zzdn<E> implements RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzfz<Object> f21540r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private E[] f21541p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f21542q;

    static {
        zzfz<Object> zzfzVar = new zzfz<>(new Object[0], 0);
        f21540r = zzfzVar;
        zzfzVar.zzb();
    }

    zzfz() {
        this(new Object[10], 0);
    }

    public static <E> zzfz<E> g() {
        return (zzfz<E>) f21540r;
    }

    private final String i(int i10) {
        int i11 = this.f21542q;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i10);
        sb.append(", Size:");
        sb.append(i11);
        return sb.toString();
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f21542q) {
            throw new IndexOutOfBoundsException(i(i10));
        }
    }

    @Override // com.google.android.gms.internal.auth.zzeu
    public final /* bridge */ /* synthetic */ zzeu K(int i10) {
        if (i10 >= this.f21542q) {
            return new zzfz(Arrays.copyOf(this.f21541p, i10), this.f21542q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final void add(int i10, E e10) {
        int i11;
        c();
        if (i10 < 0 || i10 > (i11 = this.f21542q)) {
            throw new IndexOutOfBoundsException(i(i10));
        }
        E[] eArr = this.f21541p;
        if (i11 < eArr.length) {
            System.arraycopy(eArr, i10, eArr, i10 + 1, i11 - i10);
        } else {
            E[] eArr2 = (E[]) new Object[((i11 * 3) / 2) + 1];
            System.arraycopy(eArr, 0, eArr2, 0, i10);
            System.arraycopy(this.f21541p, i10, eArr2, i10 + 1, this.f21542q - i10);
            this.f21541p = eArr2;
        }
        this.f21541p[i10] = e10;
        this.f21542q++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i10) {
        j(i10);
        return this.f21541p[i10];
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final E remove(int i10) {
        c();
        j(i10);
        E[] eArr = this.f21541p;
        E e10 = eArr[i10];
        if (i10 < this.f21542q - 1) {
            System.arraycopy(eArr, i10 + 1, eArr, i10, (r2 - i10) - 1);
        }
        this.f21542q--;
        ((AbstractList) this).modCount++;
        return e10;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final E set(int i10, E e10) {
        c();
        j(i10);
        E[] eArr = this.f21541p;
        E e11 = eArr[i10];
        eArr[i10] = e10;
        ((AbstractList) this).modCount++;
        return e11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f21542q;
    }

    private zzfz(E[] eArr, int i10) {
        this.f21541p = eArr;
        this.f21542q = i10;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        c();
        int i10 = this.f21542q;
        E[] eArr = this.f21541p;
        if (i10 == eArr.length) {
            this.f21541p = (E[]) Arrays.copyOf(eArr, ((i10 * 3) / 2) + 1);
        }
        E[] eArr2 = this.f21541p;
        int i11 = this.f21542q;
        this.f21542q = i11 + 1;
        eArr2[i11] = e10;
        ((AbstractList) this).modCount++;
        return true;
    }
}
