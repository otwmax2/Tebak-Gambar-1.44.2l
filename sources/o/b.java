package o;

import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: ArraySet.java */
/* JADX INFO: loaded from: classes.dex */
public final class b<E> implements Collection<E>, Set<E> {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final int[] f32807s = new int[0];

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private static final Object[] f32808t = new Object[0];

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static Object[] f32809u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static int f32810v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static Object[] f32811w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static int f32812x;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int[] f32813o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    Object[] f32814p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f32815q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private f<E, E> f32816r;

    /* JADX INFO: compiled from: ArraySet.java */
    class a extends f<E, E> {
        a() {
        }

        @Override // o.f
        protected void a() {
            b.this.clear();
        }

        @Override // o.f
        protected Object b(int i10, int i11) {
            return b.this.f32814p[i10];
        }

        @Override // o.f
        protected Map<E, E> c() {
            throw new UnsupportedOperationException("not a map");
        }

        @Override // o.f
        protected int d() {
            return b.this.f32815q;
        }

        @Override // o.f
        protected int e(Object obj) {
            return b.this.indexOf(obj);
        }

        @Override // o.f
        protected int f(Object obj) {
            return b.this.indexOf(obj);
        }

        @Override // o.f
        protected void g(E e10, E e11) {
            b.this.add(e10);
        }

        @Override // o.f
        protected void h(int i10) {
            b.this.m(i10);
        }

        @Override // o.f
        protected E i(int i10, E e10) {
            throw new UnsupportedOperationException("not a map");
        }
    }

    public b() {
        this(0);
    }

    private void c(int i10) {
        if (i10 == 8) {
            synchronized (b.class) {
                Object[] objArr = f32811w;
                if (objArr != null) {
                    this.f32814p = objArr;
                    f32811w = (Object[]) objArr[0];
                    this.f32813o = (int[]) objArr[1];
                    objArr[1] = null;
                    objArr[0] = null;
                    f32812x--;
                    return;
                }
            }
        } else if (i10 == 4) {
            synchronized (b.class) {
                Object[] objArr2 = f32809u;
                if (objArr2 != null) {
                    this.f32814p = objArr2;
                    f32809u = (Object[]) objArr2[0];
                    this.f32813o = (int[]) objArr2[1];
                    objArr2[1] = null;
                    objArr2[0] = null;
                    f32810v--;
                    return;
                }
            }
        }
        this.f32813o = new int[i10];
        this.f32814p = new Object[i10];
    }

    private static void i(int[] iArr, Object[] objArr, int i10) {
        if (iArr.length == 8) {
            synchronized (b.class) {
                if (f32812x < 10) {
                    objArr[0] = f32811w;
                    objArr[1] = iArr;
                    for (int i11 = i10 - 1; i11 >= 2; i11--) {
                        objArr[i11] = null;
                    }
                    f32811w = objArr;
                    f32812x++;
                }
            }
            return;
        }
        if (iArr.length == 4) {
            synchronized (b.class) {
                if (f32810v < 10) {
                    objArr[0] = f32809u;
                    objArr[1] = iArr;
                    for (int i12 = i10 - 1; i12 >= 2; i12--) {
                        objArr[i12] = null;
                    }
                    f32809u = objArr;
                    f32810v++;
                }
            }
        }
    }

    private f<E, E> j() {
        if (this.f32816r == null) {
            this.f32816r = new a();
        }
        return this.f32816r;
    }

    private int k(Object obj, int i10) {
        int i11 = this.f32815q;
        if (i11 == 0) {
            return -1;
        }
        int iA = c.a(this.f32813o, i11, i10);
        if (iA < 0 || obj.equals(this.f32814p[iA])) {
            return iA;
        }
        int i12 = iA + 1;
        while (i12 < i11 && this.f32813o[i12] == i10) {
            if (obj.equals(this.f32814p[i12])) {
                return i12;
            }
            i12++;
        }
        for (int i13 = iA - 1; i13 >= 0 && this.f32813o[i13] == i10; i13--) {
            if (obj.equals(this.f32814p[i13])) {
                return i13;
            }
        }
        return i12 ^ (-1);
    }

    private int l() {
        int i10 = this.f32815q;
        if (i10 == 0) {
            return -1;
        }
        int iA = c.a(this.f32813o, i10, 0);
        if (iA < 0 || this.f32814p[iA] == null) {
            return iA;
        }
        int i11 = iA + 1;
        while (i11 < i10 && this.f32813o[i11] == 0) {
            if (this.f32814p[i11] == null) {
                return i11;
            }
            i11++;
        }
        for (int i12 = iA - 1; i12 >= 0 && this.f32813o[i12] == 0; i12--) {
            if (this.f32814p[i12] == null) {
                return i12;
            }
        }
        return i11 ^ (-1);
    }

    @Override // java.util.Collection, java.util.Set
    public boolean add(E e10) {
        int i10;
        int iK;
        if (e10 == null) {
            iK = l();
            i10 = 0;
        } else {
            int iHashCode = e10.hashCode();
            i10 = iHashCode;
            iK = k(e10, iHashCode);
        }
        if (iK >= 0) {
            return false;
        }
        int i11 = iK ^ (-1);
        int i12 = this.f32815q;
        int[] iArr = this.f32813o;
        if (i12 >= iArr.length) {
            int i13 = 4;
            if (i12 >= 8) {
                i13 = (i12 >> 1) + i12;
            } else if (i12 >= 4) {
                i13 = 8;
            }
            Object[] objArr = this.f32814p;
            c(i13);
            int[] iArr2 = this.f32813o;
            if (iArr2.length > 0) {
                System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
                System.arraycopy(objArr, 0, this.f32814p, 0, objArr.length);
            }
            i(iArr, objArr, this.f32815q);
        }
        int i14 = this.f32815q;
        if (i11 < i14) {
            int[] iArr3 = this.f32813o;
            int i15 = i11 + 1;
            System.arraycopy(iArr3, i11, iArr3, i15, i14 - i11);
            Object[] objArr2 = this.f32814p;
            System.arraycopy(objArr2, i11, objArr2, i15, this.f32815q - i11);
        }
        this.f32813o[i11] = i10;
        this.f32814p[i11] = e10;
        this.f32815q++;
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean addAll(Collection<? extends E> collection) {
        g(this.f32815q + collection.size());
        Iterator<? extends E> it = collection.iterator();
        boolean zAdd = false;
        while (it.hasNext()) {
            zAdd |= add(it.next());
        }
        return zAdd;
    }

    @Override // java.util.Collection, java.util.Set
    public void clear() {
        int i10 = this.f32815q;
        if (i10 != 0) {
            i(this.f32813o, this.f32814p, i10);
            this.f32813o = f32807s;
            this.f32814p = f32808t;
            this.f32815q = 0;
        }
    }

    @Override // java.util.Collection, java.util.Set
    public boolean contains(Object obj) {
        return indexOf(obj) >= 0;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean containsAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof Set) {
            Set set = (Set) obj;
            if (size() != set.size()) {
                return false;
            }
            for (int i10 = 0; i10 < this.f32815q; i10++) {
                try {
                    if (!set.contains(n(i10))) {
                        return false;
                    }
                } catch (ClassCastException | NullPointerException unused) {
                }
            }
            return true;
        }
        return false;
    }

    public void g(int i10) {
        int[] iArr = this.f32813o;
        if (iArr.length < i10) {
            Object[] objArr = this.f32814p;
            c(i10);
            int i11 = this.f32815q;
            if (i11 > 0) {
                System.arraycopy(iArr, 0, this.f32813o, 0, i11);
                System.arraycopy(objArr, 0, this.f32814p, 0, this.f32815q);
            }
            i(iArr, objArr, this.f32815q);
        }
    }

    @Override // java.util.Collection, java.util.Set
    public int hashCode() {
        int[] iArr = this.f32813o;
        int i10 = this.f32815q;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            i11 += iArr[i12];
        }
        return i11;
    }

    public int indexOf(Object obj) {
        return obj == null ? l() : k(obj, obj.hashCode());
    }

    @Override // java.util.Collection, java.util.Set
    public boolean isEmpty() {
        return this.f32815q <= 0;
    }

    @Override // java.util.Collection, java.lang.Iterable, java.util.Set
    public Iterator<E> iterator() {
        return j().m().iterator();
    }

    public E m(int i10) {
        Object[] objArr = this.f32814p;
        E e10 = (E) objArr[i10];
        int i11 = this.f32815q;
        if (i11 <= 1) {
            i(this.f32813o, objArr, i11);
            this.f32813o = f32807s;
            this.f32814p = f32808t;
            this.f32815q = 0;
        } else {
            int[] iArr = this.f32813o;
            if (iArr.length <= 8 || i11 >= iArr.length / 3) {
                int i12 = i11 - 1;
                this.f32815q = i12;
                if (i10 < i12) {
                    int i13 = i10 + 1;
                    System.arraycopy(iArr, i13, iArr, i10, i12 - i10);
                    Object[] objArr2 = this.f32814p;
                    System.arraycopy(objArr2, i13, objArr2, i10, this.f32815q - i10);
                }
                this.f32814p[this.f32815q] = null;
            } else {
                c(i11 > 8 ? i11 + (i11 >> 1) : 8);
                this.f32815q--;
                if (i10 > 0) {
                    System.arraycopy(iArr, 0, this.f32813o, 0, i10);
                    System.arraycopy(objArr, 0, this.f32814p, 0, i10);
                }
                int i14 = this.f32815q;
                if (i10 < i14) {
                    int i15 = i10 + 1;
                    System.arraycopy(iArr, i15, this.f32813o, i10, i14 - i10);
                    System.arraycopy(objArr, i15, this.f32814p, i10, this.f32815q - i10);
                }
            }
        }
        return e10;
    }

    public E n(int i10) {
        return (E) this.f32814p[i10];
    }

    @Override // java.util.Collection, java.util.Set
    public boolean remove(Object obj) {
        int iIndexOf = indexOf(obj);
        if (iIndexOf < 0) {
            return false;
        }
        m(iIndexOf);
        return true;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean removeAll(Collection<?> collection) {
        Iterator<?> it = collection.iterator();
        boolean zRemove = false;
        while (it.hasNext()) {
            zRemove |= remove(it.next());
        }
        return zRemove;
    }

    @Override // java.util.Collection, java.util.Set
    public boolean retainAll(Collection<?> collection) {
        boolean z10 = false;
        for (int i10 = this.f32815q - 1; i10 >= 0; i10--) {
            if (!collection.contains(this.f32814p[i10])) {
                m(i10);
                z10 = true;
            }
        }
        return z10;
    }

    @Override // java.util.Collection, java.util.Set
    public int size() {
        return this.f32815q;
    }

    @Override // java.util.Collection, java.util.Set
    public Object[] toArray() {
        int i10 = this.f32815q;
        Object[] objArr = new Object[i10];
        System.arraycopy(this.f32814p, 0, objArr, 0, i10);
        return objArr;
    }

    public String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f32815q * 14);
        sb.append('{');
        for (int i10 = 0; i10 < this.f32815q; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            E eN = n(i10);
            if (eN != this) {
                sb.append(eN);
            } else {
                sb.append("(this Set)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public b(int i10) {
        if (i10 == 0) {
            this.f32813o = f32807s;
            this.f32814p = f32808t;
        } else {
            c(i10);
        }
        this.f32815q = 0;
    }

    @Override // java.util.Collection, java.util.Set
    public <T> T[] toArray(T[] tArr) {
        if (tArr.length < this.f32815q) {
            tArr = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), this.f32815q));
        }
        System.arraycopy(this.f32814p, 0, tArr, 0, this.f32815q);
        int length = tArr.length;
        int i10 = this.f32815q;
        if (length > i10) {
            tArr[i10] = null;
        }
        return tArr;
    }
}
