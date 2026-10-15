package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Objects;
import java.util.RandomAccess;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzfqk extends zzfqf implements List, RandomAccess {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final zzfsk f18603p = new zzfqi(zzfrt.f18635s, 0);

    zzfqk() {
    }

    public static zzfqk A(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        Object[] objArr = {obj, obj2, obj3, obj4, obj5};
        zzfrr.b(objArr, 5);
        return q(objArr, 5);
    }

    public static zzfqk B(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6) {
        Object[] objArr = {"3010", "3008", "1005", "1009", "2011", "2007"};
        zzfrr.b(objArr, 6);
        return q(objArr, 6);
    }

    public static zzfqh o() {
        return new zzfqh(4);
    }

    static zzfqk p(Object[] objArr) {
        return q(objArr, objArr.length);
    }

    static zzfqk q(Object[] objArr, int i10) {
        return i10 == 0 ? zzfrt.f18635s : new zzfrt(objArr, i10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static zzfqk r(Iterable iterable) {
        Objects.requireNonNull(iterable);
        return s(iterable);
    }

    public static zzfqk s(Collection collection) {
        if (!(collection instanceof zzfqf)) {
            Object[] array = collection.toArray();
            int length = array.length;
            zzfrr.b(array, length);
            return q(array, length);
        }
        zzfqk zzfqkVarJ = ((zzfqf) collection).j();
        if (!zzfqkVarJ.l()) {
            return zzfqkVarJ;
        }
        Object[] array2 = zzfqkVarJ.toArray();
        return q(array2, array2.length);
    }

    public static zzfqk t(Object[] objArr) {
        if (objArr.length == 0) {
            return zzfrt.f18635s;
        }
        Object[] objArr2 = (Object[]) objArr.clone();
        int length = objArr2.length;
        zzfrr.b(objArr2, length);
        return q(objArr2, length);
    }

    public static zzfqk u() {
        return zzfrt.f18635s;
    }

    public static zzfqk v(Object obj) {
        Object[] objArr = {obj};
        zzfrr.b(objArr, 1);
        return q(objArr, 1);
    }

    public static zzfqk x(Object obj, Object obj2) {
        Object[] objArr = {obj, obj2};
        zzfrr.b(objArr, 2);
        return q(objArr, 2);
    }

    public static zzfqk y(Object obj, Object obj2, Object obj3) {
        Object[] objArr = {obj, obj2, obj3};
        zzfrr.b(objArr, 3);
        return q(objArr, 3);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: C, reason: merged with bridge method [inline-methods] */
    public final zzfsk listIterator(int i10) {
        zzfnu.b(i10, size(), "index");
        return isEmpty() ? f18603p : new zzfqi(this, i10);
    }

    @Override // java.util.List
    @Deprecated
    public final void add(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final boolean addAll(int i10, Collection collection) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    int c(Object[] objArr, int i10) {
        int size = size();
        for (int i11 = 0; i11 < size; i11++) {
            objArr[i10 + i11] = get(i11);
        }
        return i10 + size;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(@CheckForNull Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.List
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof List) {
            List list = (List) obj;
            int size = size();
            if (size == list.size()) {
                if (list instanceof RandomAccess) {
                    for (int i10 = 0; i10 < size; i10++) {
                        if (zzfnp.a(get(i10), list.get(i10))) {
                        }
                    }
                    return true;
                }
                Iterator it = iterator();
                Iterator it2 = list.iterator();
                while (true) {
                    if (it.hasNext()) {
                        if (!it2.hasNext() || !zzfnp.a(it.next(), it2.next())) {
                            break;
                        }
                    } else if (!it2.hasNext()) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // java.util.Collection, java.util.List
    public final int hashCode() {
        int size = size();
        int iHashCode = 1;
        for (int i10 = 0; i10 < size; i10++) {
            iHashCode = (iHashCode * 31) + get(i10).hashCode();
        }
        return iHashCode;
    }

    @Override // java.util.List
    public final int indexOf(@CheckForNull Object obj) {
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

    @Override // com.google.android.gms.internal.ads.zzfqf, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final /* synthetic */ Iterator iterator() {
        return listIterator(0);
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    @Deprecated
    public final zzfqk j() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    /* JADX INFO: renamed from: k */
    public final zzfsj iterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    public final int lastIndexOf(@CheckForNull Object obj) {
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
    public final /* synthetic */ ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.List
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public zzfqk subList(int i10, int i11) {
        zzfnu.g(i10, i11, size());
        int i12 = i11 - i10;
        return i12 == size() ? this : i12 == 0 ? zzfrt.f18635s : new zzfqj(this, i10, i12);
    }

    @Override // java.util.List
    @Deprecated
    public final Object remove(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.List
    @Deprecated
    public final Object set(int i10, Object obj) {
        throw new UnsupportedOperationException();
    }
}
