package androidx.datastore.preferences.protobuf;

import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: compiled from: ProtobufArrayList.java */
/* JADX INFO: loaded from: classes.dex */
final class d1<E> extends c<E> implements RandomAccess {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private static final d1<Object> f2678r;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private E[] f2679p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f2680q;

    static {
        d1<Object> d1Var = new d1<>(new Object[0], 0);
        f2678r = d1Var;
        d1Var.p0();
    }

    private d1(E[] eArr, int i10) {
        this.f2679p = eArr;
        this.f2680q = i10;
    }

    private static <E> E[] g(int i10) {
        return (E[]) new Object[i10];
    }

    public static <E> d1<E> i() {
        return (d1<E>) f2678r;
    }

    private void j(int i10) {
        if (i10 < 0 || i10 >= this.f2680q) {
            throw new IndexOutOfBoundsException(k(i10));
        }
    }

    private String k(int i10) {
        return "Index:" + i10 + ", Size:" + this.f2680q;
    }

    @Override // androidx.datastore.preferences.protobuf.c, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(E e10) {
        c();
        int i10 = this.f2680q;
        E[] eArr = this.f2679p;
        if (i10 == eArr.length) {
            this.f2679p = (E[]) Arrays.copyOf(eArr, ((i10 * 3) / 2) + 1);
        }
        E[] eArr2 = this.f2679p;
        int i11 = this.f2680q;
        this.f2680q = i11 + 1;
        eArr2[i11] = e10;
        ((AbstractList) this).modCount++;
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public E get(int i10) {
        j(i10);
        return this.f2679p[i10];
    }

    @Override // androidx.datastore.preferences.protobuf.a0.i
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public d1<E> B0(int i10) {
        if (i10 >= this.f2680q) {
            return new d1<>(Arrays.copyOf(this.f2679p, i10), this.f2680q);
        }
        throw new IllegalArgumentException();
    }

    @Override // java.util.AbstractList, java.util.List
    public E remove(int i10) {
        c();
        j(i10);
        E[] eArr = this.f2679p;
        E e10 = eArr[i10];
        if (i10 < this.f2680q - 1) {
            System.arraycopy(eArr, i10 + 1, eArr, i10, (r2 - i10) - 1);
        }
        this.f2680q--;
        ((AbstractList) this).modCount++;
        return e10;
    }

    @Override // java.util.AbstractList, java.util.List
    public E set(int i10, E e10) {
        c();
        j(i10);
        E[] eArr = this.f2679p;
        E e11 = eArr[i10];
        eArr[i10] = e10;
        ((AbstractList) this).modCount++;
        return e11;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.f2680q;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int i10, E e10) {
        int i11;
        c();
        if (i10 >= 0 && i10 <= (i11 = this.f2680q)) {
            E[] eArr = this.f2679p;
            if (i11 < eArr.length) {
                System.arraycopy(eArr, i10, eArr, i10 + 1, i11 - i10);
            } else {
                E[] eArr2 = (E[]) g(((i11 * 3) / 2) + 1);
                System.arraycopy(this.f2679p, 0, eArr2, 0, i10);
                System.arraycopy(this.f2679p, i10, eArr2, i10 + 1, this.f2680q - i10);
                this.f2679p = eArr2;
            }
            this.f2679p[i10] = e10;
            this.f2680q++;
            ((AbstractList) this).modCount++;
            return;
        }
        throw new IndexOutOfBoundsException(k(i10));
    }
}
