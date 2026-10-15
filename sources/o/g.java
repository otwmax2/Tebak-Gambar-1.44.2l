package o;

import java.util.ConcurrentModificationException;
import java.util.Map;

/* JADX INFO: compiled from: SimpleArrayMap.java */
/* JADX INFO: loaded from: classes.dex */
public class g<K, V> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    static Object[] f32849r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    static int f32850s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    static Object[] f32851t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    static int f32852u;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int[] f32853o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    Object[] f32854p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f32855q;

    public g() {
        this.f32853o = c.f32818a;
        this.f32854p = c.f32820c;
        this.f32855q = 0;
    }

    private void a(int i10) {
        if (i10 == 8) {
            synchronized (g.class) {
                Object[] objArr = f32851t;
                if (objArr != null) {
                    this.f32854p = objArr;
                    f32851t = (Object[]) objArr[0];
                    this.f32853o = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f32852u--;
                    return;
                }
            }
        } else if (i10 == 4) {
            synchronized (g.class) {
                Object[] objArr2 = f32849r;
                if (objArr2 != null) {
                    this.f32854p = objArr2;
                    f32849r = (Object[]) objArr2[0];
                    this.f32853o = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f32850s--;
                    return;
                }
            }
        }
        this.f32853o = new int[i10];
        this.f32854p = new Object[i10 << 1];
    }

    private static int b(int[] iArr, int i10, int i11) {
        try {
            return c.a(iArr, i10, i11);
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new ConcurrentModificationException();
        }
    }

    private static void d(int[] iArr, Object[] objArr, int i10) {
        if (iArr.length == 8) {
            synchronized (g.class) {
                if (f32852u < 10) {
                    objArr[0] = f32851t;
                    objArr[1] = iArr;
                    for (int i11 = (i10 << 1) - 1; i11 >= 2; i11--) {
                        objArr[i11] = null;
                    }
                    f32851t = objArr;
                    f32852u++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (g.class) {
                if (f32850s < 10) {
                    objArr[0] = f32849r;
                    objArr[1] = iArr;
                    for (int i12 = (i10 << 1) - 1; i12 >= 2; i12--) {
                        objArr[i12] = null;
                    }
                    f32849r = objArr;
                    f32850s++;
                }
            }
        }
    }

    public void c(int i10) {
        int i11 = this.f32855q;
        int[] iArr = this.f32853o;
        if (iArr.length < i10) {
            Object[] objArr = this.f32854p;
            a(i10);
            if (this.f32855q > 0) {
                System.arraycopy(iArr, 0, this.f32853o, 0, i11);
                System.arraycopy(objArr, 0, this.f32854p, 0, i11 << 1);
            }
            d(iArr, objArr, i11);
        }
        if (this.f32855q != i11) {
            throw new ConcurrentModificationException();
        }
    }

    public void clear() {
        int i10 = this.f32855q;
        if (i10 > 0) {
            int[] iArr = this.f32853o;
            Object[] objArr = this.f32854p;
            this.f32853o = c.f32818a;
            this.f32854p = c.f32820c;
            this.f32855q = 0;
            d(iArr, objArr, i10);
        }
        if (this.f32855q > 0) {
            throw new ConcurrentModificationException();
        }
    }

    public boolean containsKey(Object obj) {
        return f(obj) >= 0;
    }

    public boolean containsValue(Object obj) {
        return j(obj) >= 0;
    }

    int e(Object obj, int i10) {
        int i11 = this.f32855q;
        if (i11 == 0) {
            return -1;
        }
        int iB = b(this.f32853o, i11, i10);
        if (iB < 0 || obj.equals(this.f32854p[iB << 1])) {
            return iB;
        }
        int i12 = iB + 1;
        while (i12 < i11 && this.f32853o[i12] == i10) {
            if (obj.equals(this.f32854p[i12 << 1])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iB - 1; i13 >= 0 && this.f32853o[i13] == i10; i13--) {
            if (obj.equals(this.f32854p[i13 << 1])) {
                return i13;
            }
        }
        return i12 ^ (-1);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (size() != gVar.size()) {
                return false;
            }
            for (int i10 = 0; i10 < this.f32855q; i10++) {
                try {
                    K k10 = k(i10);
                    V vO = o(i10);
                    Object obj2 = gVar.get(k10);
                    if (vO == null) {
                        if (obj2 != null || !gVar.containsKey(k10)) {
                            return false;
                        }
                    } else if (!vO.equals(obj2)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return true;
        }
        if (obj instanceof Map) {
            Map map = (Map) obj;
            if (size() != map.size()) {
                return false;
            }
            for (int i11 = 0; i11 < this.f32855q; i11++) {
                try {
                    K k11 = k(i11);
                    V vO2 = o(i11);
                    Object obj3 = map.get(k11);
                    if (vO2 == null) {
                        if (obj3 != null || !map.containsKey(k11)) {
                            return false;
                        }
                    } else if (!vO2.equals(obj3)) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused2) {
                }
            }
            return true;
        }
        return false;
    }

    public int f(Object obj) {
        return obj == null ? h() : e(obj, obj.hashCode());
    }

    public V get(Object obj) {
        return getOrDefault(obj, null);
    }

    public V getOrDefault(Object obj, V v10) {
        int iF = f(obj);
        return iF >= 0 ? (V) this.f32854p[(iF << 1) + 1] : v10;
    }

    int h() {
        int i10 = this.f32855q;
        if (i10 == 0) {
            return -1;
        }
        int iB = b(this.f32853o, i10, 0);
        if (iB < 0 || this.f32854p[iB << 1] == null) {
            return iB;
        }
        int i11 = iB + 1;
        while (i11 < i10 && this.f32853o[i11] == 0) {
            if (this.f32854p[i11 << 1] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iB - 1; i12 >= 0 && this.f32853o[i12] == 0; i12--) {
            if (this.f32854p[i12 << 1] == null) {
                return i12;
            }
        }
        return i11 ^ (-1);
    }

    public int hashCode() {
        int[] iArr = this.f32853o;
        Object[] objArr = this.f32854p;
        int i10 = this.f32855q;
        int i11 = 1;
        int i12 = 0;
        int iHashCode = 0;
        while (i12 < i10) {
            Object obj = objArr[i11];
            iHashCode += (obj == null ? 0 : obj.hashCode()) ^ iArr[i12];
            i12++;
            i11 += 2;
        }
        return iHashCode;
    }

    public boolean isEmpty() {
        return this.f32855q <= 0;
    }

    int j(Object obj) {
        int i10 = this.f32855q * 2;
        Object[] objArr = this.f32854p;
        if (obj == null) {
            for (int i11 = 1; i11 < i10; i11 += 2) {
                if (objArr[i11] == null) {
                    return i11 >> 1;
                }
            }
            return -1;
        }
        for (int i12 = 1; i12 < i10; i12 += 2) {
            if (obj.equals(objArr[i12])) {
                return i12 >> 1;
            }
        }
        return -1;
    }

    public K k(int i10) {
        return (K) this.f32854p[i10 << 1];
    }

    public void l(g<? extends K, ? extends V> gVar) {
        int i10 = gVar.f32855q;
        c(this.f32855q + i10);
        if (this.f32855q != 0) {
            for (int i11 = 0; i11 < i10; i11++) {
                put(gVar.k(i11), gVar.o(i11));
            }
        } else if (i10 > 0) {
            System.arraycopy(gVar.f32853o, 0, this.f32853o, 0, i10);
            System.arraycopy(gVar.f32854p, 0, this.f32854p, 0, i10 << 1);
            this.f32855q = i10;
        }
    }

    public V m(int i10) {
        Object[] objArr = this.f32854p;
        int i11 = i10 << 1;
        V v10 = (V) objArr[i11 + 1];
        int i12 = this.f32855q;
        int i13 = 0;
        if (i12 <= 1) {
            d(this.f32853o, objArr, i12);
            this.f32853o = c.f32818a;
            this.f32854p = c.f32820c;
        } else {
            int i14 = i12 - 1;
            int[] iArr = this.f32853o;
            if (iArr.length <= 8 || i12 >= iArr.length / 3) {
                if (i10 < i14) {
                    int i15 = i10 + 1;
                    int i16 = i14 - i10;
                    System.arraycopy(iArr, i15, iArr, i10, i16);
                    Object[] objArr2 = this.f32854p;
                    System.arraycopy(objArr2, i15 << 1, objArr2, i11, i16 << 1);
                }
                Object[] objArr3 = this.f32854p;
                int i17 = i14 << 1;
                objArr3[i17] = null;
                objArr3[i17 + 1] = null;
            } else {
                a(i12 > 8 ? i12 + (i12 >> 1) : 8);
                if (i12 != this.f32855q) {
                    throw new ConcurrentModificationException();
                }
                if (i10 > 0) {
                    System.arraycopy(iArr, 0, this.f32853o, 0, i10);
                    System.arraycopy(objArr, 0, this.f32854p, 0, i11);
                }
                if (i10 < i14) {
                    int i18 = i10 + 1;
                    int i19 = i14 - i10;
                    System.arraycopy(iArr, i18, this.f32853o, i10, i19);
                    System.arraycopy(objArr, i18 << 1, this.f32854p, i11, i19 << 1);
                }
            }
            i13 = i14;
        }
        if (i12 != this.f32855q) {
            throw new ConcurrentModificationException();
        }
        this.f32855q = i13;
        return v10;
    }

    public V n(int i10, V v10) {
        int i11 = (i10 << 1) + 1;
        Object[] objArr = this.f32854p;
        V v11 = (V) objArr[i11];
        objArr[i11] = v10;
        return v11;
    }

    public V o(int i10) {
        return (V) this.f32854p[(i10 << 1) + 1];
    }

    public V put(K k10, V v10) {
        int i10;
        int iE;
        int i11 = this.f32855q;
        if (k10 == null) {
            iE = h();
            i10 = 0;
        } else {
            int iHashCode = k10.hashCode();
            i10 = iHashCode;
            iE = e(k10, iHashCode);
        }
        if (iE >= 0) {
            int i12 = (iE << 1) + 1;
            Object[] objArr = this.f32854p;
            V v11 = (V) objArr[i12];
            objArr[i12] = v10;
            return v11;
        }
        int i13 = iE ^ (-1);
        int[] iArr = this.f32853o;
        if (i11 >= iArr.length) {
            int i14 = 4;
            if (i11 >= 8) {
                i14 = (i11 >> 1) + i11;
            } else if (i11 >= 4) {
                i14 = 8;
            }
            Object[] objArr2 = this.f32854p;
            a(i14);
            if (i11 != this.f32855q) {
                throw new ConcurrentModificationException();
            }
            int[] iArr2 = this.f32853o;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr2, 0, this.f32854p, 0, objArr2.length);
            }
            d(iArr, objArr2, i11);
        }
        if (i13 < i11) {
            int[] iArr3 = this.f32853o;
            int i15 = i13 + 1;
            System.arraycopy(iArr3, i13, iArr3, i15, i11 - i13);
            Object[] objArr3 = this.f32854p;
            System.arraycopy(objArr3, i13 << 1, objArr3, i15 << 1, (this.f32855q - i13) << 1);
        }
        int i16 = this.f32855q;
        if (i11 == i16) {
            int[] iArr4 = this.f32853o;
            if (i13 < iArr4.length) {
                iArr4[i13] = i10;
                Object[] objArr4 = this.f32854p;
                int i17 = i13 << 1;
                objArr4[i17] = k10;
                objArr4[i17 + 1] = v10;
                this.f32855q = i16 + 1;
                return null;
            }
        }
        throw new ConcurrentModificationException();
    }

    public V putIfAbsent(K k10, V v10) {
        V v11 = get(k10);
        return v11 == null ? put(k10, v10) : v11;
    }

    public V remove(Object obj) {
        int iF = f(obj);
        if (iF >= 0) {
            return m(iF);
        }
        return null;
    }

    public V replace(K k10, V v10) {
        int iF = f(k10);
        if (iF >= 0) {
            return n(iF, v10);
        }
        return null;
    }

    public int size() {
        return this.f32855q;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f32855q * 28);
        sb.append('{');
        for (int i10 = 0; i10 < this.f32855q; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            K k10 = k(i10);
            if (k10 != this) {
                sb.append(k10);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            V vO = o(i10);
            if (vO != this) {
                sb.append(vO);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public boolean remove(Object obj, Object obj2) {
        int iF = f(obj);
        if (iF < 0) {
            return false;
        }
        V vO = o(iF);
        if (obj2 != vO && (obj2 == null || !obj2.equals(vO))) {
            return false;
        }
        m(iF);
        return true;
    }

    public boolean replace(K k10, V v10, V v11) {
        int iF = f(k10);
        if (iF < 0) {
            return false;
        }
        V vO = o(iF);
        if (vO != v10 && (v10 == null || !v10.equals(vO))) {
            return false;
        }
        n(iF, v11);
        return true;
    }

    public g(int i10) {
        if (i10 == 0) {
            this.f32853o = c.f32818a;
            this.f32854p = c.f32820c;
        } else {
            a(i10);
        }
        this.f32855q = 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public g(g<K, V> gVar) {
        this();
        if (gVar != 0) {
            l(gVar);
        }
    }
}
