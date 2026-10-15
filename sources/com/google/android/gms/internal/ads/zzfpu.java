package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.AbstractMap;
import java.util.Arrays;
import java.util.Collection;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import javax.annotation.CheckForNull;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class zzfpu extends AbstractMap implements Serializable {

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final Object f18577x = new Object();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    @CheckForNull
    private transient Object f18578o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    @CheckForNull
    transient int[] f18579p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @CheckForNull
    transient Object[] f18580q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @CheckForNull
    transient Object[] f18581r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private transient int f18582s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private transient int f18583t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @CheckForNull
    private transient Set f18584u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    @CheckForNull
    private transient Set f18585v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    @CheckForNull
    private transient Collection f18586w;

    zzfpu() {
        n(3);
    }

    static /* synthetic */ int b(zzfpu zzfpuVar) {
        int i10 = zzfpuVar.f18583t;
        zzfpuVar.f18583t = i10 - 1;
        return i10;
    }

    static /* synthetic */ Object k(zzfpu zzfpuVar) {
        Object obj = zzfpuVar.f18578o;
        obj.getClass();
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int q() {
        return (1 << (this.f18582s & 31)) - 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final int r(@CheckForNull Object obj) {
        if (p()) {
            return -1;
        }
        int iB = zzfqc.b(obj);
        int iQ = q();
        Object obj2 = this.f18578o;
        obj2.getClass();
        int iC = zzfpv.c(obj2, iB & iQ);
        if (iC != 0) {
            int i10 = iQ ^ (-1);
            int i11 = iB & i10;
            do {
                int i12 = iC - 1;
                int[] iArr = this.f18579p;
                iArr.getClass();
                int i13 = iArr[i12];
                if ((i13 & i10) == i11) {
                    Object[] objArr = this.f18580q;
                    objArr.getClass();
                    if (zzfnp.a(obj, objArr[i12])) {
                        return i12;
                    }
                }
                iC = i13 & iQ;
            } while (iC != 0);
        }
        return -1;
    }

    private final int s(int i10, int i11, int i12, int i13) {
        int i14 = i11 - 1;
        Object objD = zzfpv.d(i11);
        if (i13 != 0) {
            zzfpv.e(objD, i12 & i14, i13 + 1);
        }
        Object obj = this.f18578o;
        obj.getClass();
        int[] iArr = this.f18579p;
        iArr.getClass();
        for (int i15 = 0; i15 <= i10; i15++) {
            int iC = zzfpv.c(obj, i15);
            while (iC != 0) {
                int i16 = iC - 1;
                int i17 = iArr[i16];
                int i18 = ((i10 ^ (-1)) & i17) | i15;
                int i19 = i18 & i14;
                int iC2 = zzfpv.c(objD, i19);
                zzfpv.e(objD, i19, iC);
                iArr[i16] = ((i14 ^ (-1)) & i18) | (iC2 & i14);
                iC = i17 & i10;
            }
        }
        this.f18578o = objD;
        u(i14);
        return i14;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Object t(@CheckForNull Object obj) {
        if (p()) {
            return f18577x;
        }
        int iQ = q();
        Object obj2 = this.f18578o;
        obj2.getClass();
        int[] iArr = this.f18579p;
        iArr.getClass();
        Object[] objArr = this.f18580q;
        objArr.getClass();
        int iB = zzfpv.b(obj, null, iQ, obj2, iArr, objArr, null);
        if (iB == -1) {
            return f18577x;
        }
        Object[] objArr2 = this.f18581r;
        objArr2.getClass();
        Object obj3 = objArr2[iB];
        o(iB, iQ);
        this.f18583t--;
        m();
        return obj3;
    }

    private final void u(int i10) {
        this.f18582s = ((32 - Integer.numberOfLeadingZeros(i10)) & 31) | (this.f18582s & (-32));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        if (p()) {
            return;
        }
        m();
        Map mapL = l();
        if (mapL != null) {
            this.f18582s = zzfsr.b(size(), 3, 1073741823);
            mapL.clear();
            this.f18578o = null;
            this.f18583t = 0;
            return;
        }
        Object[] objArr = this.f18580q;
        objArr.getClass();
        Arrays.fill(objArr, 0, this.f18583t, (Object) null);
        Object[] objArr2 = this.f18581r;
        objArr2.getClass();
        Arrays.fill(objArr2, 0, this.f18583t, (Object) null);
        Object obj = this.f18578o;
        obj.getClass();
        if (obj instanceof byte[]) {
            Arrays.fill((byte[]) obj, (byte) 0);
        } else if (obj instanceof short[]) {
            Arrays.fill((short[]) obj, (short) 0);
        } else {
            Arrays.fill((int[]) obj, 0);
        }
        int[] iArr = this.f18579p;
        iArr.getClass();
        Arrays.fill(iArr, 0, this.f18583t, 0);
        this.f18583t = 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(@CheckForNull Object obj) {
        Map mapL = l();
        return mapL != null ? mapL.containsKey(obj) : r(obj) != -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsValue(@CheckForNull Object obj) {
        Map mapL = l();
        if (mapL != null) {
            return mapL.containsValue(obj);
        }
        for (int i10 = 0; i10 < this.f18583t; i10++) {
            Object[] objArr = this.f18581r;
            objArr.getClass();
            if (zzfnp.a(obj, objArr[i10])) {
                return true;
            }
        }
        return false;
    }

    final int e() {
        return isEmpty() ? -1 : 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        Set set = this.f18585v;
        if (set != null) {
            return set;
        }
        zzfpp zzfppVar = new zzfpp(this);
        this.f18585v = zzfppVar;
        return zzfppVar;
    }

    final int f(int i10) {
        int i11 = i10 + 1;
        if (i11 < this.f18583t) {
            return i11;
        }
        return -1;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public final Object get(@CheckForNull Object obj) {
        Map mapL = l();
        if (mapL != null) {
            return mapL.get(obj);
        }
        int iR = r(obj);
        if (iR == -1) {
            return null;
        }
        Object[] objArr = this.f18581r;
        objArr.getClass();
        return objArr[iR];
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean isEmpty() {
        return size() == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set keySet() {
        Set set = this.f18584u;
        if (set != null) {
            return set;
        }
        zzfpr zzfprVar = new zzfpr(this);
        this.f18584u = zzfprVar;
        return zzfprVar;
    }

    @CheckForNull
    final Map l() {
        Object obj = this.f18578o;
        if (obj instanceof Map) {
            return (Map) obj;
        }
        return null;
    }

    final void m() {
        this.f18582s += 32;
    }

    final void n(int i10) {
        this.f18582s = zzfsr.b(8, 1, 1073741823);
    }

    final void o(int i10, int i11) {
        Object obj = this.f18578o;
        obj.getClass();
        int[] iArr = this.f18579p;
        iArr.getClass();
        Object[] objArr = this.f18580q;
        objArr.getClass();
        Object[] objArr2 = this.f18581r;
        objArr2.getClass();
        int size = size() - 1;
        if (i10 >= size) {
            objArr[i10] = null;
            objArr2[i10] = null;
            iArr[i10] = 0;
            return;
        }
        Object obj2 = objArr[size];
        objArr[i10] = obj2;
        objArr2[i10] = objArr2[size];
        objArr[size] = null;
        objArr2[size] = null;
        iArr[i10] = iArr[size];
        iArr[size] = 0;
        int iB = zzfqc.b(obj2) & i11;
        int iC = zzfpv.c(obj, iB);
        int i12 = size + 1;
        if (iC == i12) {
            zzfpv.e(obj, iB, i10 + 1);
            return;
        }
        while (true) {
            int i13 = iC - 1;
            int i14 = iArr[i13];
            int i15 = i14 & i11;
            if (i15 == i12) {
                iArr[i13] = ((i10 + 1) & i11) | (i14 & (i11 ^ (-1)));
                return;
            }
            iC = i15;
        }
    }

    final boolean p() {
        return this.f18578o == null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public final Object put(Object obj, Object obj2) {
        int iMin;
        if (p()) {
            zzfnu.i(p(), "Arrays already allocated");
            int i10 = this.f18582s;
            int iMax = Math.max(i10 + 1, 2);
            int iHighestOneBit = Integer.highestOneBit(iMax);
            if (iMax > iHighestOneBit && (iHighestOneBit = iHighestOneBit + iHighestOneBit) <= 0) {
                iHighestOneBit = 1073741824;
            }
            int iMax2 = Math.max(4, iHighestOneBit);
            this.f18578o = zzfpv.d(iMax2);
            u(iMax2 - 1);
            this.f18579p = new int[i10];
            this.f18580q = new Object[i10];
            this.f18581r = new Object[i10];
        }
        Map mapL = l();
        if (mapL != null) {
            return mapL.put(obj, obj2);
        }
        int[] iArr = this.f18579p;
        iArr.getClass();
        Object[] objArr = this.f18580q;
        objArr.getClass();
        Object[] objArr2 = this.f18581r;
        objArr2.getClass();
        int i11 = this.f18583t;
        int i12 = i11 + 1;
        int iB = zzfqc.b(obj);
        int iQ = q();
        int i13 = iB & iQ;
        Object obj3 = this.f18578o;
        obj3.getClass();
        int iC = zzfpv.c(obj3, i13);
        if (iC != 0) {
            int i14 = iQ ^ (-1);
            int i15 = iB & i14;
            int i16 = 0;
            while (true) {
                int i17 = iC - 1;
                int i18 = iArr[i17];
                int i19 = i18 & i14;
                if (i19 == i15 && zzfnp.a(obj, objArr[i17])) {
                    Object obj4 = objArr2[i17];
                    objArr2[i17] = obj2;
                    return obj4;
                }
                int i20 = i18 & iQ;
                i16++;
                if (i20 != 0) {
                    iC = i20;
                } else {
                    if (i16 >= 9) {
                        LinkedHashMap linkedHashMap = new LinkedHashMap(q() + 1, 1.0f);
                        int iE = e();
                        while (iE >= 0) {
                            Object[] objArr3 = this.f18580q;
                            objArr3.getClass();
                            Object obj5 = objArr3[iE];
                            Object[] objArr4 = this.f18581r;
                            objArr4.getClass();
                            linkedHashMap.put(obj5, objArr4[iE]);
                            iE = f(iE);
                        }
                        this.f18578o = linkedHashMap;
                        this.f18579p = null;
                        this.f18580q = null;
                        this.f18581r = null;
                        m();
                        return linkedHashMap.put(obj, obj2);
                    }
                    if (i12 > iQ) {
                        iQ = s(iQ, zzfpv.a(iQ), iB, i11);
                    } else {
                        iArr[i17] = (i12 & iQ) | i19;
                    }
                }
            }
        } else if (i12 > iQ) {
            iQ = s(iQ, zzfpv.a(iQ), iB, i11);
        } else {
            Object obj6 = this.f18578o;
            obj6.getClass();
            zzfpv.e(obj6, i13, i12);
        }
        int[] iArr2 = this.f18579p;
        iArr2.getClass();
        int length = iArr2.length;
        if (i12 > length && (iMin = Math.min(1073741823, (Math.max(1, length >>> 1) + length) | 1)) != length) {
            int[] iArr3 = this.f18579p;
            iArr3.getClass();
            this.f18579p = Arrays.copyOf(iArr3, iMin);
            Object[] objArr5 = this.f18580q;
            objArr5.getClass();
            this.f18580q = Arrays.copyOf(objArr5, iMin);
            Object[] objArr6 = this.f18581r;
            objArr6.getClass();
            this.f18581r = Arrays.copyOf(objArr6, iMin);
        }
        int[] iArr4 = this.f18579p;
        iArr4.getClass();
        iArr4[i11] = (iQ ^ (-1)) & iB;
        Object[] objArr7 = this.f18580q;
        objArr7.getClass();
        objArr7[i11] = obj;
        Object[] objArr8 = this.f18581r;
        objArr8.getClass();
        objArr8[i11] = obj2;
        this.f18583t = i12;
        m();
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    @CheckForNull
    public final Object remove(@CheckForNull Object obj) {
        Map mapL = l();
        if (mapL != null) {
            return mapL.remove(obj);
        }
        Object objT = t(obj);
        if (objT == f18577x) {
            return null;
        }
        return objT;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        Map mapL = l();
        return mapL != null ? mapL.size() : this.f18583t;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Collection values() {
        Collection collection = this.f18586w;
        if (collection != null) {
            return collection;
        }
        zzfpt zzfptVar = new zzfpt(this);
        this.f18586w = zzfptVar;
        return zzfptVar;
    }

    zzfpu(int i10) {
        n(8);
    }
}
