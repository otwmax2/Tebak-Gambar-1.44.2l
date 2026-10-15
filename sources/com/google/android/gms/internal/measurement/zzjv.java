package com.google.android.gms.internal.measurement;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-base@@20.1.2 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjv extends zzim implements RandomAccess, zzlq {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzjv f23650r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float[] f23651p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f23652q;

    static {
        zzjv zzjvVar = new zzjv(new float[0], 0);
        f23650r = zzjvVar;
        zzjvVar.zzb();
    }

    zzjv() {
        this(new float[10], 0);
    }

    private final String i(int i10) {
        return "Index:" + i10 + ", Size:" + this.f23652q;
    }

    private final void j(int i10) {
        if (i10 < 0 || i10 >= this.f23652q) {
            throw new IndexOutOfBoundsException(i(i10));
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzkj
    public final /* bridge */ /* synthetic */ zzkj K(int i10) {
        if (i10 >= this.f23652q) {
            return new zzjv(Arrays.copyOf(this.f23651p, i10), this.f23652q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        int i11;
        float fFloatValue = ((Float) obj).floatValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f23652q)) {
            throw new IndexOutOfBoundsException(i(i10));
        }
        float[] fArr = this.f23651p;
        if (i11 < fArr.length) {
            System.arraycopy(fArr, i10, fArr, i10 + 1, i11 - i10);
        } else {
            float[] fArr2 = new float[((i11 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            System.arraycopy(this.f23651p, i10, fArr2, i10 + 1, this.f23652q - i10);
            this.f23651p = fArr2;
        }
        this.f23651p[i10] = fFloatValue;
        this.f23652q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        c();
        zzkk.e(collection);
        if (!(collection instanceof zzjv)) {
            return super.addAll(collection);
        }
        zzjv zzjvVar = (zzjv) collection;
        int i10 = zzjvVar.f23652q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f23652q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        float[] fArr = this.f23651p;
        if (i12 > fArr.length) {
            this.f23651p = Arrays.copyOf(fArr, i12);
        }
        System.arraycopy(zzjvVar.f23651p, 0, this.f23651p, this.f23652q, zzjvVar.f23652q);
        this.f23652q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean contains(Object obj) {
        return indexOf(obj) != -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzjv)) {
            return super.equals(obj);
        }
        zzjv zzjvVar = (zzjv) obj;
        if (this.f23652q != zzjvVar.f23652q) {
            return false;
        }
        float[] fArr = zzjvVar.f23651p;
        for (int i10 = 0; i10 < this.f23652q; i10++) {
            if (Float.floatToIntBits(this.f23651p[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    public final void g(float f10) {
        c();
        int i10 = this.f23652q;
        float[] fArr = this.f23651p;
        if (i10 == fArr.length) {
            float[] fArr2 = new float[((i10 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            this.f23651p = fArr2;
        }
        float[] fArr3 = this.f23651p;
        int i11 = this.f23652q;
        this.f23652q = i11 + 1;
        fArr3[i11] = f10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        j(i10);
        return Float.valueOf(this.f23651p[i10]);
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i10 = 0; i10 < this.f23652q; i10++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.f23651p[i10]);
        }
        return iFloatToIntBits;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float fFloatValue = ((Float) obj).floatValue();
        int i10 = this.f23652q;
        for (int i11 = 0; i11 < i10; i11++) {
            if (this.f23651p[i11] == fFloatValue) {
                return i11;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object remove(int i10) {
        c();
        j(i10);
        float[] fArr = this.f23651p;
        float f10 = fArr[i10];
        if (i10 < this.f23652q - 1) {
            System.arraycopy(fArr, i10 + 1, fArr, i10, (r2 - i10) - 1);
        }
        this.f23652q--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractList
    protected final void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.f23651p;
        System.arraycopy(fArr, i11, fArr, i10, this.f23652q - i11);
        this.f23652q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.List
    public final /* bridge */ /* synthetic */ Object set(int i10, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        c();
        j(i10);
        float[] fArr = this.f23651p;
        float f10 = fArr[i10];
        fArr[i10] = fFloatValue;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f23652q;
    }

    private zzjv(float[] fArr, int i10) {
        this.f23651p = fArr;
        this.f23652q = i10;
    }

    @Override // com.google.android.gms.internal.measurement.zzim, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* bridge */ /* synthetic */ boolean add(Object obj) {
        g(((Float) obj).floatValue());
        return true;
    }
}
