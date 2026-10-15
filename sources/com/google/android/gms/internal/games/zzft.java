package com.google.android.gms.internal.games;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzft<E> extends zzfs<E> implements List<E>, RandomAccess {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final zzgf<Object> f23201p = new zzfw(zzgc.f23217s, 0);

    zzft() {
    }

    static <E> zzft<E> m(Object[] objArr) {
        return n(objArr, objArr.length);
    }

    static <E> zzft<E> n(Object[] objArr, int i10) {
        return i10 == 0 ? (zzft<E>) zzgc.f23217s : new zzgc(objArr, i10);
    }

    public static <E> zzft<E> p() {
        return (zzft<E>) zzgc.f23217s;
    }

    public static <E> zzft<E> q(E e10) {
        Object[] objArr = {e10};
        for (int i10 = 0; i10 <= 0; i10++) {
            zzfz.a(objArr[0], 0);
        }
        return n(objArr, 1);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i10, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i10, Collection<? extends E> collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.games.zzfs
    int c(Object[] objArr, int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i10 + i11] = get(i11);
        }
        return i10 + size;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(@NullableDecl Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public boolean equals(@NullableDecl Object obj) {
        if (obj == zzfo.b(this)) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i10 = 0; i10 < size; i10++) {
                        if (zzfl.a(get(i10), list.get(i10))) {
                        }
                    }
                    return true;
                }
                int size2 = size();
                Iterator<E> it = list.iterator();
                int i11 = 0;
                while (true) {
                    if (i11 < size2) {
                        if (!it.hasNext()) {
                            break;
                        }
                        E e10 = get(i11);
                        i11++;
                        if (!zzfl.a(e10, it.next())) {
                            break;
                        }
                    } else if (!it.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.games.zzfs
    /* JADX INFO: renamed from: g */
    public final zzgg<E> iterator() {
        return (zzgf) listIterator();
    }

    @Override // java.util.Collection, java.util.List
    public int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i10 = 0; i10 < size; i10++) {
            iHashCode = (((iHashCode * 31) + get(i10).hashCode()) ^ (-1)) ^ (-1);
        }
        return iHashCode;
    }

    @Override // java.util.List
    public int indexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        int size = size();
        for (int i10 = 0; i10 < size; i10++) {
            if (obj.equals(get(i10))) {
                return i10;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.games.zzfs, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.games.zzfs
    public final zzft<E> l() {
        return this;
    }

    @Override // java.util.List
    public int lastIndexOf(@NullableDecl Object obj) {
        if (obj == null) {
            return -1;
        }
        for (int size = size() - 1; size >= 0; size--) {
            if (obj.equals(get(size))) {
                return size;
            }
        }
        return -1;
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator(int i10) {
        zzfo.e(i10, size());
        return isEmpty() ? f23201p : new zzfw(this, i10);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public zzft<E> subList(int i10, int i11) {
        zzfo.d(i10, i11, size());
        int i12 = i11 - i10;
        return i12 == size() ? this : i12 == 0 ? (zzft<E>) zzgc.f23217s : new zzfv(this, i10, i12);
    }

    @Override // java.util.List
    @Deprecated
    public final E remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final E set(int i10, E e10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    public /* synthetic */ ListIterator listIterator() {
        return (zzgf) listIterator(0);
    }
}
