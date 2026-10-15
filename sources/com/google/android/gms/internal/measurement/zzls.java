package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzls extends zzim implements RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzls f23727r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Object[] f23728p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f23729q;

    static {
        zzls zzlsVar = new zzls(new Object[0], 0);
        f23727r = zzlsVar;
        zzlsVar.zzb();
    }

    zzls() {
        this(new Object[10], 0);
    }

    public static zzls g() {
        return f23727r;
    }

    private final String i(int i10) {
        return "Index:" + i10 + ", Size:" + this.f23729q;
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f23729q) {
            throw new IndexOutOfBoundsException(i(i10));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzkj
    public final /* bridge */ /* synthetic */ zzkj K(int i10) {
        if (i10 >= this.f23729q) {
            return new zzls(Arrays.copyOf(this.f23728p, i10), this.f23729q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final void add(int i10, Object obj) {
        int i11;
        c();
        if (i10 < 0 || i10 > (i11 = this.f23729q)) {
            throw new IndexOutOfBoundsException(i(i10));
        }
        Object[] objArr = this.f23728p;
        if (i11 < objArr.length) {
            System.arraycopy(objArr, i10, objArr, i10 + 1, i11 - i10);
        } else {
            Object[] objArr2 = new Object[((i11 * 3) / 2) + 1];
            System.arraycopy(objArr, 0, objArr2, 0, i10);
            System.arraycopy(this.f23728p, i10, objArr2, i10 + 1, this.f23729q - i10);
            this.f23728p = objArr2;
        }
        this.f23728p[i10] = obj;
        this.f23729q++;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i10) {
        j(i10);
        return this.f23728p[i10];
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final Object remove(int i10) {
        c();
        j(i10);
        Object[] objArr = this.f23728p;
        Object obj = objArr[i10];
        if (i10 < this.f23729q - 1) {
            System.arraycopy(objArr, i10 + 1, objArr, i10, (r2 - i10) - 1);
        }
        this.f23729q--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final Object set(int i10, Object obj) {
        c();
        j(i10);
        Object[] objArr = this.f23728p;
        Object obj2 = objArr[i10];
        objArr[i10] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23729q;
    }

    private zzls(Object[] objArr, int i10) {
        this.f23728p = objArr;
        this.f23729q = i10;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        c();
        int i10 = this.f23729q;
        Object[] objArr = this.f23728p;
        if (i10 == objArr.length) {
            this.f23728p = Arrays.copyOf(objArr, ((i10 * 3) / 2) + 1);
        }
        Object[] objArr2 = this.f23728p;
        int i11 = this.f23729q;
        this.f23729q = i11 + 1;
        objArr2[i11] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
