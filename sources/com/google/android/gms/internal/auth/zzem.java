package com.google.android.gms.internal.auth;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-auth-base@@17.1.4 */
/* JADX INFO: loaded from: classes2.dex */
final class zzem extends zzdn<Float> implements RandomAccess, zzfx {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzem f21483r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float[] f21484p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f21485q;

    static {
        zzem zzemVar = new zzem(new float[0], 0);
        f21483r = zzemVar;
        zzemVar.zzb();
    }

    zzem() {
        this(new float[10], 0);
    }

    private final String i(int i10) {
        int i11 = this.f21485q;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i10);
        sb.append(", Size:");
        sb.append(i11);
        return sb.toString();
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f21485q) {
            throw new IndexOutOfBoundsException(i(i10));
        }
    }

    @Override // com.google.android.gms.internal.auth.zzeu
    public final /* bridge */ /* synthetic */ zzeu K(int i10) {
        if (i10 >= this.f21485q) {
            return new zzem(Arrays.copyOf(this.f21484p, i10), this.f21485q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ void add(int i10, Object obj) {
        int i11;
        float fFloatValue = ((Float) obj).floatValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f21485q)) {
            throw new IndexOutOfBoundsException(i(i10));
        }
        float[] fArr = this.f21484p;
        if (i11 < fArr.length) {
            System.arraycopy(fArr, i10, fArr, i10 + 1, i11 - i10);
        } else {
            float[] fArr2 = new float[((i11 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            System.arraycopy(this.f21484p, i10, fArr2, i10 + 1, this.f21485q - i10);
            this.f21484p = fArr2;
        }
        this.f21484p[i10] = fFloatValue;
        this.f21485q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        c();
        zzev.e(collection);
        if (!(collection instanceof zzem)) {
            return super.addAll(collection);
        }
        zzem zzemVar = (zzem) collection;
        int i10 = zzemVar.f21485q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f21485q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        float[] fArr = this.f21484p;
        if (i12 > fArr.length) {
            this.f21484p = Arrays.copyOf(fArr, i12);
        }
        System.arraycopy(zzemVar.f21484p, 0, this.f21484p, this.f21485q, zzemVar.f21485q);
        this.f21485q = i12;
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
        if (!(obj instanceof zzem)) {
            return super.equals(obj);
        }
        zzem zzemVar = (zzem) obj;
        if (this.f21485q != zzemVar.f21485q) {
            return false;
        }
        float[] fArr = zzemVar.f21484p;
        for (int i10 = 0; i10 < this.f21485q; i10++) {
            if (Float.floatToIntBits(this.f21484p[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    public final void g(float f10) {
        c();
        int i10 = this.f21485q;
        float[] fArr = this.f21484p;
        if (i10 == fArr.length) {
            float[] fArr2 = new float[((i10 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            this.f21484p = fArr2;
        }
        float[] fArr3 = this.f21484p;
        int i11 = this.f21485q;
        this.f21485q = i11 + 1;
        fArr3[i11] = f10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i10) {
        j(i10);
        return Float.valueOf(this.f21484p[i10]);
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i10 = 0; i10 < this.f21485q; i10++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.f21484p[i10]);
        }
        return iFloatToIntBits;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float fFloatValue = ((Float) obj).floatValue();
        int i10 = this.f21485q;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f21484p[i11] == fFloatValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        j(i10);
        float[] fArr = this.f21484p;
        float f10 = fArr[i10];
        if (i10 < this.f21485q - 1) {
            System.arraycopy(fArr, i10 + 1, fArr, i10, (r2 - i10) - 1);
        }
        this.f21485q--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.f21484p;
        System.arraycopy(fArr, i11, fArr, i10, this.f21485q - i11);
        this.f21485q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        c();
        j(i10);
        float[] fArr = this.f21484p;
        float f10 = fArr[i10];
        fArr[i10] = fFloatValue;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f21485q;
    }

    private zzem(float[] fArr, int i10) {
        this.f21484p = fArr;
        this.f21485q = i10;
    }

    @Override // com.google.android.gms.internal.auth.zzdn, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        g(((Float) obj).floatValue());
        return true;
    }
}
