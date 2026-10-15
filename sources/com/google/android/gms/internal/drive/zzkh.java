package com.google.android.gms.internal.drive;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: loaded from: classes2.dex */
final class zzkh extends zziw<Float> implements zzmc, RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzkh f22166r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float[] f22167p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f22168q;

    static {
        zzkh zzkhVar = new zzkh(new float[0], 0);
        f22166r = zzkhVar;
        zzkhVar.C2();
    }

    zzkh() {
        this(new float[10], 0);
    }

    private final void g(int i10, float f10) {
        int i11;
        c();
        if (i10 < 0 || i10 > (i11 = this.f22168q)) {
            throw new IndexOutOfBoundsException(j(i10));
        }
        float[] fArr = this.f22167p;
        if (i11 < fArr.length) {
            System.arraycopy(fArr, i10, fArr, i10 + 1, i11 - i10);
        } else {
            float[] fArr2 = new float[((i11 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            System.arraycopy(this.f22167p, i10, fArr2, i10 + 1, this.f22168q - i10);
            this.f22167p = fArr2;
        }
        this.f22167p[i10] = f10;
        this.f22168q++;
        ((AbstractList) this).modCount++;
    }

    private final void i(int i10) {
        if (i10 < 0 || i10 >= this.f22168q) {
            throw new IndexOutOfBoundsException(j(i10));
        }
    }

    private final String j(int i10) {
        int i11 = this.f22168q;
        StringBuilder sb = new StringBuilder(35);
        sb.append("Index:");
        sb.append(i10);
        sb.append(", Size:");
        sb.append(i11);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ void add(int i10, Object obj) {
        g(i10, ((Float) obj).floatValue());
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        c();
        zzkm.a(collection);
        if (!(collection instanceof zzkh)) {
            return super.addAll(collection);
        }
        zzkh zzkhVar = (zzkh) collection;
        int i10 = zzkhVar.f22168q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f22168q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        float[] fArr = this.f22167p;
        if (i12 > fArr.length) {
            this.f22167p = Arrays.copyOf(fArr, i12);
        }
        System.arraycopy(zzkhVar.f22167p, 0, this.f22167p, this.f22168q, zzkhVar.f22168q);
        this.f22168q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.Collection, java.util.List
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzkh)) {
            return super.equals(obj);
        }
        zzkh zzkhVar = (zzkh) obj;
        if (this.f22168q != zzkhVar.f22168q) {
            return false;
        }
        float[] fArr = zzkhVar.f22167p;
        for (int i10 = 0; i10 < this.f22168q; i10++) {
            if (Float.floatToIntBits(this.f22167p[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        i(i10);
        return Float.valueOf(this.f22167p[i10]);
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i10 = 0; i10 < this.f22168q; i10++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.f22167p[i10]);
        }
        return iFloatToIntBits;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f22168q; i10++) {
            if (obj.equals(Float.valueOf(this.f22167p[i10]))) {
                float[] fArr = this.f22167p;
                System.arraycopy(fArr, i10 + 1, fArr, i10, (this.f22168q - i10) - 1);
                this.f22168q--;
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
        float[] fArr = this.f22167p;
        System.arraycopy(fArr, i11, fArr, i10, this.f22168q - i11);
        this.f22168q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i10, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        c();
        i(i10);
        float[] fArr = this.f22167p;
        float f10 = fArr[i10];
        fArr[i10] = fFloatValue;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22168q;
    }

    @Override // com.google.android.gms.internal.drive.zzkp
    public final /* synthetic */ zzkp x2(int i10) {
        if (i10 >= this.f22168q) {
            return new zzkh(Arrays.copyOf(this.f22167p, i10), this.f22168q);
        }
        throw new IllegalArgumentException();
    }

    private zzkh(float[] fArr, int i10) {
        this.f22167p = fArr;
        this.f22168q = i10;
    }

    @Override // com.google.android.gms.internal.drive.zziw, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i10) {
        c();
        i(i10);
        float[] fArr = this.f22167p;
        float f10 = fArr[i10];
        if (i10 < this.f22168q - 1) {
            System.arraycopy(fArr, i10 + 1, fArr, i10, (r2 - i10) - 1);
        }
        this.f22168q--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f10);
    }
}
