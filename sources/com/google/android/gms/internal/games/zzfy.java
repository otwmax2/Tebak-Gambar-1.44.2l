package com.google.android.gms.internal.games;

import java.util.Arrays;
import java.util.Iterator;
import java.util.Set;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzfy<E> extends zzfs<E> implements Set<E> {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @NullableDecl
    private transient zzft<E> f23207p;

    zzfy() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <E> zzfy<E> m(int i10, Object... objArr) {
        while (i10 != 0) {
            if (i10 == 1) {
                return s(objArr[0]);
            }
            int iT = t(i10);
            Object[] objArr2 = new Object[iT];
            int i11 = iT - 1;
            int i12 = 0;
            int i13 = 0;
            for (int i14 = 0; i14 < i10; i14++) {
                Object objA = zzfz.a(objArr[i14], i14);
                int iHashCode = objA.hashCode();
                int iA = zzfp.a(iHashCode);
                while (true) {
                    int i15 = iA & i11;
                    Object obj = objArr2[i15];
                    if (obj == null) {
                        objArr[i13] = objA;
                        objArr2[i15] = objA;
                        i12 += iHashCode;
                        i13++;
                        break;
                    }
                    if (!obj.equals(objA)) {
                        iA++;
                    }
                }
            }
            Arrays.fill(objArr, i13, i10, (Object) null);
            if (i13 == 1) {
                return new zzgd(objArr[0], i12);
            }
            if (t(i13) >= iT / 2) {
                int length = objArr.length;
                if (i13 < (length >> 1) + (length >> 2)) {
                    objArr = Arrays.copyOf(objArr, i13);
                }
                return new zzgb(objArr, i12, objArr2, i11, i13);
            }
            i10 = i13;
        }
        return zzgb.f23211v;
    }

    public static <E> zzfy<E> n(E e10, E e11, E e12) {
        return m(3, e10, e11, e12);
    }

    @SafeVarargs
    public static <E> zzfy<E> o(E e10, E e11, E e12, E e13, E e14, E e15, E... eArr) {
        zzfo.a(eArr.length <= 2147483641, "the total number of elements must fit in an int");
        int length = eArr.length + 6;
        Object[] objArr = new Object[length];
        objArr[0] = e10;
        objArr[1] = e11;
        objArr[2] = e12;
        objArr[3] = e13;
        objArr[4] = e14;
        objArr[5] = e15;
        System.arraycopy(eArr, 0, objArr, 6, eArr.length);
        return m(length, objArr);
    }

    public static <E> zzfy<E> s(E e10) {
        return new zzgd(e10);
    }

    private static int t(int i10) {
        int iMax = Math.max(i10, 2);
        if (iMax >= 751619276) {
            zzfo.a(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1) << 1;
        while (true) {
            double d10 = iHighestOneBit;
            Double.isNaN(d10);
            if (d10 * 0.7d >= iMax) {
                return iHighestOneBit;
            }
            iHighestOneBit <<= 1;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(@NullableDecl Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzfy) && q() && ((zzfy) obj).q() && hashCode() != obj.hashCode()) {
            return false;
        }
        return zzge.a(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        Iterator<E> it = iterator();
        int iHashCode = 0;
        while (it.hasNext()) {
            E next = it.next();
            iHashCode = ((iHashCode + (next != null ? next.hashCode() : 0)) ^ (-1)) ^ (-1);
        }
        return iHashCode;
    }

    @Override // com.google.android.gms.internal.games.zzfs, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public /* synthetic */ Iterator iterator() {
        return iterator();
    }

    @Override // com.google.android.gms.internal.games.zzfs
    public final zzft<E> l() {
        zzft<E> zzftVar = this.f23207p;
        if (zzftVar != null) {
            return zzftVar;
        }
        zzft<E> zzftVarR = r();
        this.f23207p = zzftVarR;
        return zzftVarR;
    }

    boolean q() {
        return false;
    }

    zzft<E> r() {
        return zzft.m(toArray());
    }
}
