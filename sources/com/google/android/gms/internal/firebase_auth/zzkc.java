package com.google.android.gms.internal.firebase_auth;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzkc<E> extends zzgr<E> implements RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzkc<Object> f22840r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private E[] f22841p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f22842q;

    static {
        zzkc<Object> zzkcVar = new zzkc<>(new Object[0], 0);
        f22840r = zzkcVar;
        zzkcVar.zzb();
    }

    zzkc() {
        this(new Object[10], 0);
    }

    private final void g(int i10) {
        if (i10 < 0 || i10 >= this.f22842q) {
            throw new IndexOutOfBoundsException(i(i10));
        }
    }

    private final String i(int i10) {
        int i11 = this.f22842q;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i10);
        sb.append(", Size:");
        sb.append(i11);
        return sb.toString();
    }

    public static <E> zzkc<E> j() {
        return (zzkc<E>) f22840r;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(E e10) {
        c();
        int i10 = this.f22842q;
        E[] eArr = this.f22841p;
        if (i10 == eArr.length) {
            this.f22841p = (E[]) Arrays.copyOf(eArr, ((i10 * 3) / 2) + 1);
        }
        E[] eArr2 = this.f22841p;
        int i11 = this.f22842q;
        this.f22842q = i11 + 1;
        eArr2[i11] = e10;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final E get(int i10) {
        g(i10);
        return this.f22841p[i10];
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzio
    public final /* synthetic */ zzio h(int i10) {
        if (i10 >= this.f22842q) {
            return new zzkc(Arrays.copyOf(this.f22841p, i10), this.f22842q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final E remove(int i10) {
        c();
        g(i10);
        E[] eArr = this.f22841p;
        E e10 = eArr[i10];
        if (i10 < this.f22842q - 1) {
            System.arraycopy(eArr, i10 + 1, eArr, i10, (r2 - i10) - 1);
        }
        this.f22842q--;
        ((AbstractList) this).modCount++;
        return e10;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final E set(int i10, E e10) {
        c();
        g(i10);
        E[] eArr = this.f22841p;
        E e11 = eArr[i10];
        eArr[i10] = e10;
        ((AbstractList) this).modCount++;
        return e11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22842q;
    }

    private zzkc(E[] eArr, int i10) {
        this.f22841p = eArr;
        this.f22842q = i10;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final void add(int i10, E e10) {
        int i11;
        c();
        if (i10 >= 0 && i10 <= (i11 = this.f22842q)) {
            E[] eArr = this.f22841p;
            if (i11 < eArr.length) {
                System.arraycopy(eArr, i10, eArr, i10 + 1, i11 - i10);
            } else {
                E[] eArr2 = (E[]) new Object[((i11 * 3) / 2) + 1];
                System.arraycopy(eArr, 0, eArr2, 0, i10);
                System.arraycopy(this.f22841p, i10, eArr2, i10 + 1, this.f22842q - i10);
                this.f22841p = eArr2;
            }
            this.f22841p[i10] = e10;
            this.f22842q++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(i(i10));
    }
}
