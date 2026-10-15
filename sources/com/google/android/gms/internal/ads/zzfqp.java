package com.google.android.gms.internal.ads;

import java.util.Arrays;
import java.util.Collection;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class zzfqp extends zzfqf implements Set {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @CheckForNull
    private transient zzfqk f18615p;

    zzfqp() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static zzfqp A(int i10, Object... objArr) {
        if (i10 == 0) {
            return zzfrz.f18652w;
        }
        if (i10 == 1) {
            Object obj = objArr[0];
            obj.getClass();
            return new zzfsg(obj);
        }
        int iN = n(i10);
        Object[] objArr2 = new Object[iN];
        int i11 = iN - 1;
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            Object obj2 = objArr[i14];
            zzfrr.a(obj2, i14);
            int iHashCode = obj2.hashCode();
            int iA = zzfqc.a(iHashCode);
            while (true) {
                int i15 = iA & i11;
                Object obj3 = objArr2[i15];
                if (obj3 == null) {
                    objArr[i13] = obj2;
                    objArr2[i15] = obj2;
                    i12 += iHashCode;
                    i13++;
                    break;
                }
                if (!obj3.equals(obj2)) {
                    iA++;
                }
            }
        }
        Arrays.fill(objArr, i13, i10, (Object) null);
        if (i13 == 1) {
            Object obj4 = objArr[0];
            obj4.getClass();
            return new zzfsg(obj4);
        }
        if (n(i13) < iN / 2) {
            return A(i13, objArr);
        }
        if (B(i13, objArr.length)) {
            objArr = Arrays.copyOf(objArr, i13);
        }
        return new zzfrz(objArr, i12, objArr2, i11, i13);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean B(int i10, int i11) {
        return i10 < (i11 >> 1) + (i11 >> 2);
    }

    static int n(int i10) {
        double d10;
        int iMax = Math.max(i10, 2);
        if (iMax >= 751619276) {
            zzfnu.f(iMax < 1073741824, "collection too large");
            return 1073741824;
        }
        int iHighestOneBit = Integer.highestOneBit(iMax - 1);
        do {
            iHighestOneBit += iHighestOneBit;
            d10 = iHighestOneBit;
            Double.isNaN(d10);
        } while (d10 * 0.7d < iMax);
        return iHighestOneBit;
    }

    public static zzfqo p(int i10) {
        return new zzfqo(i10);
    }

    public static zzfqp r(Collection collection) {
        Object[] array = collection.toArray();
        return A(array.length, array);
    }

    public static zzfqp s() {
        return zzfrz.f18652w;
    }

    public static zzfqp t(Object obj) {
        return new zzfsg(obj);
    }

    public static zzfqp u(Object obj, Object obj2, Object obj3, Object obj4, Object obj5) {
        return A(5, obj, obj2, obj3, obj4, obj5);
    }

    @SafeVarargs
    public static zzfqp v(Object obj, Object obj2, Object obj3, Object obj4, Object obj5, Object obj6, Object... objArr) {
        Object[] objArr2 = new Object[12];
        objArr2[0] = obj;
        objArr2[1] = obj2;
        objArr2[2] = obj3;
        objArr2[3] = obj4;
        objArr2[4] = obj5;
        objArr2[5] = obj6;
        System.arraycopy(objArr, 0, objArr2, 6, 6);
        return A(12, objArr2);
    }

    @Override // java.util.Collection, java.util.Set
    public final boolean equals(@CheckForNull Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof zzfqp) && y() && ((zzfqp) obj).y() && hashCode() != obj.hashCode()) {
            return false;
        }
        return zzfsf.c(this, obj);
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        return zzfsf.a(this);
    }

    @Override // com.google.android.gms.internal.ads.zzfqf
    public zzfqk j() {
        zzfqk zzfqkVar = this.f18615p;
        if (zzfqkVar != null) {
            return zzfqkVar;
        }
        zzfqk zzfqkVarO = o();
        this.f18615p = zzfqkVarO;
        return zzfqkVarO;
    }

    @Override // com.google.android.gms.internal.ads.zzfqf, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    /* JADX INFO: renamed from: k */
    public abstract zzfsj iterator();

    zzfqk o() {
        return zzfqk.p(toArray());
    }

    boolean y() {
        return false;
    }
}
