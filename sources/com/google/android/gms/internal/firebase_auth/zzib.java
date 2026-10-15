package com.google.android.gms.internal.firebase_auth;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzib extends zzgr<Float> implements zzka, RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final zzib f22731r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float[] f22732p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f22733q;

    static {
        zzib zzibVar = new zzib(new float[0], 0);
        f22731r = zzibVar;
        zzibVar.zzb();
    }

    zzib() {
        this(new float[10], 0);
    }

    private final void i(int i10) {
        if (i10 < 0 || i10 >= this.f22733q) {
            throw new IndexOutOfBoundsException(j(i10));
        }
    }

    private final String j(int i10) {
        int i11 = this.f22733q;
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
        float fFloatValue = ((Float) obj).floatValue();
        c();
        if (i10 < 0 || i10 > (i11 = this.f22733q)) {
            throw new IndexOutOfBoundsException(j(i10));
        }
        float[] fArr = this.f22732p;
        if (i11 < fArr.length) {
            System.arraycopy(fArr, i10, fArr, i10 + 1, i11 - i10);
        } else {
            float[] fArr2 = new float[((i11 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            System.arraycopy(this.f22732p, i10, fArr2, i10 + 1, this.f22733q - i10);
            this.f22732p = fArr2;
        }
        this.f22732p[i10] = fFloatValue;
        this.f22733q++;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection<? extends Float> collection) {
        c();
        zzii.d(collection);
        if (!(collection instanceof zzib)) {
            return super.addAll(collection);
        }
        zzib zzibVar = (zzib) collection;
        int i10 = zzibVar.f22733q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f22733q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        float[] fArr = this.f22732p;
        if (i12 > fArr.length) {
            this.f22732p = Arrays.copyOf(fArr, i12);
        }
        System.arraycopy(zzibVar.f22732p, 0, this.f22732p, this.f22733q, zzibVar.f22733q);
        this.f22733q = i12;
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
        if (!(obj instanceof zzib)) {
            return super.equals(obj);
        }
        zzib zzibVar = (zzib) obj;
        if (this.f22733q != zzibVar.f22733q) {
            return false;
        }
        float[] fArr = zzibVar.f22732p;
        for (int i10 = 0; i10 < this.f22733q; i10++) {
            if (Float.floatToIntBits(this.f22732p[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    public final void g(float f10) {
        c();
        int i10 = this.f22733q;
        float[] fArr = this.f22732p;
        if (i10 == fArr.length) {
            float[] fArr2 = new float[((i10 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            this.f22732p = fArr2;
        }
        float[] fArr3 = this.f22732p;
        int i11 = this.f22733q;
        this.f22733q = i11 + 1;
        fArr3[i11] = f10;
    }

    @Override // java.util.AbstractList, java.util.List
    public final /* synthetic */ Object get(int i10) {
        i(i10);
        return Float.valueOf(this.f22732p[i10]);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzio
    public final /* synthetic */ zzio h(int i10) {
        if (i10 >= this.f22733q) {
            return new zzib(Arrays.copyOf(this.f22732p, i10), this.f22733q);
        }
        throw new IllegalArgumentException();
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.Collection, java.util.List
    public final int hashCode() {
        int iFloatToIntBits = 1;
        for (int i10 = 0; i10 < this.f22733q; i10++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.f22732p[i10]);
        }
        return iFloatToIntBits;
    }

    @Override // java.util.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        if (!(obj instanceof Float)) {
            return -1;
        }
        float fFloatValue = ((Float) obj).floatValue();
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (this.f22732p[i10] == fFloatValue) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f22733q; i10++) {
            if (obj.equals(Float.valueOf(this.f22732p[i10]))) {
                float[] fArr = this.f22732p;
                System.arraycopy(fArr, i10 + 1, fArr, i10, (this.f22733q - i10) - 1);
                this.f22733q--;
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
        float[] fArr = this.f22732p;
        System.arraycopy(fArr, i11, fArr, i10, this.f22733q - i11);
        this.f22733q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object set(int i10, Object obj) {
        float fFloatValue = ((Float) obj).floatValue();
        c();
        i(i10);
        float[] fArr = this.f22732p;
        float f10 = fArr[i10];
        fArr[i10] = fFloatValue;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f22733q;
    }

    private zzib(float[] fArr, int i10) {
        this.f22732p = fArr;
        this.f22733q = i10;
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.List
    public final /* synthetic */ Object remove(int i10) {
        c();
        i(i10);
        float[] fArr = this.f22732p;
        float f10 = fArr[i10];
        if (i10 < this.f22733q - 1) {
            System.arraycopy(fArr, i10 + 1, fArr, i10, (r2 - i10) - 1);
        }
        this.f22733q--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f10);
    }

    @Override // com.google.android.gms.internal.firebase_auth.zzgr, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final /* synthetic */ boolean add(Object obj) {
        g(((Float) obj).floatValue());
        return true;
    }
}
