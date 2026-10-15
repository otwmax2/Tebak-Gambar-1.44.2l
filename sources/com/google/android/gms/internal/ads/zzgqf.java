package com.google.android.gms.internal.ads;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgqf extends zzgoo implements RandomAccess, zzgsd {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzgqf f19476r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float[] f19477p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f19478q;

    static {
        zzgqf zzgqfVar = new zzgqf(new float[0], 0);
        f19476r = zzgqfVar;
        zzgqfVar.zzb();
    }

    zzgqf() {
        this(new float[10], 0);
    }

    private final String i(int i10) {
        return "Index:" + i10 + ", Size:" + this.f19478q;
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f19478q) {
            throw new IndexOutOfBoundsException(i(i10));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgqv
    public final /* bridge */ /* synthetic */ zzgqv K(int i10) {
        if (i10 >= this.f19478q) {
            return new zzgqf(Arrays.copyOf(this.f19477p, i10), this.f19478q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        int i11;
        float fFloatValue = ((Float) obj).floatValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f19478q)) {
            throw new IndexOutOfBoundsException(i(i10));
        }
        float[] fArr = this.f19477p;
        if (i11 < fArr.length) {
            System.arraycopy(fArr, i10, fArr, i10 + 1, i11 - i10);
        } else {
            float[] fArr2 = new float[((i11 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            System.arraycopy(this.f19477p, i10, fArr2, i10 + 1, this.f19478q - i10);
            this.f19477p = fArr2;
        }
        this.f19477p[i10] = fFloatValue;
        this.f19478q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        c();
        zzgqw.e(collection);
        if (!(collection instanceof zzgqf)) {
            return super.addAll(collection);
        }
        zzgqf zzgqfVar = (zzgqf) collection;
        int i10 = zzgqfVar.f19478q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f19478q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        float[] fArr = this.f19477p;
        if (i12 > fArr.length) {
            this.f19477p = Arrays.copyOf(fArr, i12);
        }
        System.arraycopy(zzgqfVar.f19477p, 0, this.f19477p, this.f19478q, zzgqfVar.f19478q);
        this.f19478q = i12;
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
        if (!(obj instanceof zzgqf)) {
            return super.equals(obj);
        }
        zzgqf zzgqfVar = (zzgqf) obj;
        if (this.f19478q != zzgqfVar.f19478q) {
            return false;
        }
        float[] fArr = zzgqfVar.f19477p;
        for (int i10 = 0; i10 < this.f19478q; i10++) {
            if (Float.floatToIntBits(this.f19477p[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    public final void g(float f10) {
        c();
        int i10 = this.f19478q;
        float[] fArr = this.f19477p;
        if (i10 == fArr.length) {
            float[] fArr2 = new float[((i10 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            this.f19477p = fArr2;
        }
        float[] fArr3 = this.f19477p;
        int i11 = this.f19478q;
        this.f19478q = i11 + 1;
        fArr3[i11] = f10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        j(i10);
        return Float.valueOf(this.f19477p[i10]);
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i10 = 0; i10 < this.f19478q; i10++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.f19477p[i10]);
        }
        return iFloatToIntBits;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float fFloatValue = ((Float) obj).floatValue();
        int i10 = this.f19478q;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f19477p[i11] == fFloatValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        j(i10);
        float[] fArr = this.f19477p;
        float f10 = fArr[i10];
        if (i10 < this.f19478q - 1) {
            System.arraycopy(fArr, i10 + 1, fArr, i10, (r2 - i10) - 1);
        }
        this.f19478q--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.f19477p;
        System.arraycopy(fArr, i11, fArr, i10, this.f19478q - i11);
        this.f19478q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        c();
        j(i10);
        float[] fArr = this.f19477p;
        float f10 = fArr[i10];
        fArr[i10] = fFloatValue;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f19478q;
    }

    private zzgqf(float[] fArr, int i10) {
        this.f19477p = fArr;
        this.f19478q = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzgoo, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        g(((Float) obj).floatValue());
        return true;
    }
}
