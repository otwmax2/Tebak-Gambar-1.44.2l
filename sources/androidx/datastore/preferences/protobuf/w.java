package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.a0;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.Collection;
import java.util.RandomAccess;

/* JADX INFO: compiled from: FloatArrayList.java */
/* JADX INFO: loaded from: classes.dex */
final class w extends c<Float> implements a0.f, RandomAccess, a1 {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final w f2963r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float[] f2964p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f2965q;

    static {
        w wVar = new w(new float[0], 0);
        f2963r = wVar;
        wVar.p0();
    }

    w() {
        this(new float[10], 0);
    }

    private void k(int i10, float f10) {
        int i11;
        c();
        if (i10 < 0 || i10 > (i11 = this.f2965q)) {
            throw new IndexOutOfBoundsException(o(i10));
        }
        float[] fArr = this.f2964p;
        if (i11 < fArr.length) {
            System.arraycopy(fArr, i10, fArr, i10 + 1, i11 - i10);
        } else {
            float[] fArr2 = new float[((i11 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            System.arraycopy(this.f2964p, i10, fArr2, i10 + 1, this.f2965q - i10);
            this.f2964p = fArr2;
        }
        this.f2964p[i10] = f10;
        this.f2965q++;
        ((AbstractList) this).modCount++;
    }

    private void l(int i10) {
        if (i10 < 0 || i10 >= this.f2965q) {
            throw new IndexOutOfBoundsException(o(i10));
        }
    }

    private String o(int i10) {
        return "Index:" + i10 + ", Size:" + this.f2965q;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection<? extends Float> collection) {
        c();
        a0.a(collection);
        if (!(collection instanceof w)) {
            return super.addAll(collection);
        }
        w wVar = (w) collection;
        int i10 = wVar.f2965q;
        if (i10 == 0) {
            return false;
        }
        int i11 = this.f2965q;
        if (Integer.MAX_VALUE - i11 < i10) {
            throw new OutOfMemoryError();
        }
        int i12 = i11 + i10;
        float[] fArr = this.f2964p;
        if (i12 > fArr.length) {
            this.f2964p = Arrays.copyOf(fArr, i12);
        }
        System.arraycopy(wVar.f2964p, 0, this.f2964p, this.f2965q, wVar.f2965q);
        this.f2965q = i12;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof w)) {
            return super.equals(obj);
        }
        w wVar = (w) obj;
        if (this.f2965q != wVar.f2965q) {
            return false;
        }
        float[] fArr = wVar.f2964p;
        for (int i10 = 0; i10 < this.f2965q; i10++) {
            if (Float.floatToIntBits(this.f2964p[i10]) != Float.floatToIntBits(fArr[i10])) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void add(int i10, Float f10) {
        k(i10, f10.floatValue());
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.Collection, java.util.List
    public int hashCode() {
        int iFloatToIntBits = 1;
        for (int i10 = 0; i10 < this.f2965q; i10++) {
            iFloatToIntBits = (iFloatToIntBits * 31) + Float.floatToIntBits(this.f2964p[i10]);
        }
        return iFloatToIntBits;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public boolean add(Float f10) {
        j(f10.floatValue());
        return true;
    }

    public void j(float f10) {
        c();
        int i10 = this.f2965q;
        float[] fArr = this.f2964p;
        if (i10 == fArr.length) {
            float[] fArr2 = new float[((i10 * 3) / 2) + 1];
            System.arraycopy(fArr, 0, fArr2, 0, i10);
            this.f2964p = fArr2;
        }
        float[] fArr3 = this.f2964p;
        int i11 = this.f2965q;
        this.f2965q = i11 + 1;
        fArr3[i11] = f10;
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public Float get(int i10) {
        return Float.valueOf(n(i10));
    }

    public float n(int i10) {
        l(i10);
        return this.f2964p[i10];
    }

    @Override // androidx.datastore.preferences.protobuf.a0.i
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public a0.f B0(int i10) {
        if (i10 >= this.f2965q) {
            return new w(Arrays.copyOf(this.f2964p, i10), this.f2965q);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public Float remove(int i10) {
        c();
        l(i10);
        float[] fArr = this.f2964p;
        float f10 = fArr[i10];
        if (i10 < this.f2965q - 1) {
            System.arraycopy(fArr, i10 + 1, fArr, i10, (r2 - i10) - 1);
        }
        this.f2965q--;
        ((AbstractList) this).modCount++;
        return Float.valueOf(f10);
    }

    @Override // java.util.AbstractList, java.util.List
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public Float set(int i10, Float f10) {
        return Float.valueOf(s(i10, f10.floatValue()));
    }

    @Override // java.util.AbstractList
    protected void removeRange(int i10, int i11) {
        c();
        if (i11 < i10) {
            throw new IndexOutOfBoundsException("toIndex < fromIndex");
        }
        float[] fArr = this.f2964p;
        System.arraycopy(fArr, i11, fArr, i10, this.f2965q - i11);
        this.f2965q -= i11 - i10;
        ((AbstractList) this).modCount++;
    }

    public float s(int i10, float f10) {
        c();
        l(i10);
        float[] fArr = this.f2964p;
        float f11 = fArr[i10];
        fArr[i10] = f10;
        return f11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f2965q;
    }

    private w(float[] fArr, int i10) {
        this.f2964p = fArr;
        this.f2965q = i10;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object obj) {
        c();
        for (int i10 = 0; i10 < this.f2965q; i10++) {
            if (obj.equals(Float.valueOf(this.f2964p[i10]))) {
                float[] fArr = this.f2964p;
                System.arraycopy(fArr, i10 + 1, fArr, i10, (this.f2965q - i10) - 1);
                this.f2965q--;
                ((AbstractList) this).modCount++;
                return true;
            }
        }
        return false;
    }
}
