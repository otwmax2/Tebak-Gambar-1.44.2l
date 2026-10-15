package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgsf extends zzgoo implements RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzgsf f19573r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Object[] f19574p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f19575q;

    static {
        zzgsf zzgsfVar = new zzgsf(new Object[0], 0);
        f19573r = zzgsfVar;
        zzgsfVar.zzb();
    }

    zzgsf() {
        this(new Object[10], 0);
    }

    public static zzgsf g() {
        return f19573r;
    }

    private final String i(int i10) {
        return "Index:" + i10 + ", Size:" + this.f19575q;
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f19575q) {
            throw new IndexOutOfBoundsException(i(i10));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgqv
    public final /* bridge */ /* synthetic */ zzgqv K(int i10) {
        if (i10 >= this.f19575q) {
            return new zzgsf(Arrays.copyOf(this.f19574p, i10), this.f19575q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        c();
        if (i10 < 0 || i10 > (i11 = this.f19575q)) {
            throw new IndexOutOfBoundsException(i(i10));
        }
        Object[] objArr = this.f19574p;
        if (i11 < objArr.length) {
            System.arraycopy(objArr, i10, objArr, i10 + 1, i11 - i10);
        } else {
            Object[] objArr2 = new Object[((i11 * 3) / 2) + 1];
            System.arraycopy(objArr, 0, objArr2, 0, i10);
            System.arraycopy(this.f19574p, i10, objArr2, i10 + 1, this.f19575q - i10);
            this.f19574p = objArr2;
        }
        this.f19574p[i10] = obj;
        this.f19575q++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        j(i10);
        return this.f19574p[i10];
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        c();
        j(i10);
        Object[] objArr = this.f19574p;
        Object obj = objArr[i10];
        if (i10 < this.f19575q - 1) {
            System.arraycopy(objArr, i10 + 1, objArr, i10, (r2 - i10) - 1);
        }
        this.f19575q--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        c();
        j(i10);
        Object[] objArr = this.f19574p;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19575q;
    }

    private zzgsf(Object[] objArr, int i10) {
        this.f19574p = objArr;
        this.f19575q = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        c();
        int i10 = this.f19575q;
        Object[] objArr = this.f19574p;
        if (i10 == objArr.length) {
            this.f19574p = Arrays.copyOf(objArr, ((i10 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f19574p;
        int i11 = this.f19575q;
        this.f19575q = i11 + 1;
        objArr2[i11] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
