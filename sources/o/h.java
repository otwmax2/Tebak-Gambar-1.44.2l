package o;

/* JADX INFO: compiled from: SparseArrayCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class h<E> implements Cloneable {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Object f32856s = new Object();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f32857o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int[] f32858p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Object[] f32859q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f32860r;

    public h() {
        this(10);
    }

    private void f() {
        int i10 = this.f32860r;
        int[] iArr = this.f32858p;
        Object[] objArr = this.f32859q;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (obj != f32856s) {
                if (i12 != i11) {
                    iArr[i11] = iArr[i12];
                    objArr[i11] = obj;
                    objArr[i12] = null;
                }
                i11++;
            }
        }
        this.f32857o = false;
        this.f32860r = i11;
    }

    public void a(int i10, E e10) {
        int i11 = this.f32860r;
        if (i11 != 0 && i10 <= this.f32858p[i11 - 1]) {
            k(i10, e10);
            return;
        }
        if (this.f32857o && i11 >= this.f32858p.length) {
            f();
        }
        int i12 = this.f32860r;
        if (i12 >= this.f32858p.length) {
            int iE = c.e(i12 + 1);
            int[] iArr = new int[iE];
            Object[] objArr = new Object[iE];
            int[] iArr2 = this.f32858p;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr2 = this.f32859q;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f32858p = iArr;
            this.f32859q = objArr;
        }
        this.f32858p[i12] = i10;
        this.f32859q[i12] = e10;
        this.f32860r = i12 + 1;
    }

    public void b() {
        int i10 = this.f32860r;
        Object[] objArr = this.f32859q;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.f32860r = 0;
        this.f32857o = false;
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public h<E> clone() {
        try {
            h<E> hVar = (h) super.clone();
            hVar.f32858p = (int[]) this.f32858p.clone();
            hVar.f32859q = (Object[]) this.f32859q.clone();
            return hVar;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public E g(int i10) {
        return h(i10, null);
    }

    public E h(int i10, E e10) {
        int iA = c.a(this.f32858p, this.f32860r, i10);
        if (iA >= 0) {
            Object[] objArr = this.f32859q;
            if (objArr[iA] != f32856s) {
                return (E) objArr[iA];
            }
        }
        return e10;
    }

    public int i(E e10) {
        if (this.f32857o) {
            f();
        }
        for (int i10 = 0; i10 < this.f32860r; i10++) {
            if (this.f32859q[i10] == e10) {
                return i10;
            }
        }
        return -1;
    }

    public int j(int i10) {
        if (this.f32857o) {
            f();
        }
        return this.f32858p[i10];
    }

    public void k(int i10, E e10) {
        int iA = c.a(this.f32858p, this.f32860r, i10);
        if (iA >= 0) {
            this.f32859q[iA] = e10;
            return;
        }
        int iA2 = iA ^ (-1);
        int i11 = this.f32860r;
        if (iA2 < i11) {
            Object[] objArr = this.f32859q;
            if (objArr[iA2] == f32856s) {
                this.f32858p[iA2] = i10;
                objArr[iA2] = e10;
                return;
            }
        }
        if (this.f32857o && i11 >= this.f32858p.length) {
            f();
            iA2 = c.a(this.f32858p, this.f32860r, i10) ^ (-1);
        }
        int i12 = this.f32860r;
        if (i12 >= this.f32858p.length) {
            int iE = c.e(i12 + 1);
            int[] iArr = new int[iE];
            Object[] objArr2 = new Object[iE];
            int[] iArr2 = this.f32858p;
            System.arraycopy(iArr2, 0, iArr, 0, iArr2.length);
            Object[] objArr3 = this.f32859q;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f32858p = iArr;
            this.f32859q = objArr2;
        }
        int i13 = this.f32860r;
        if (i13 - iA2 != 0) {
            int[] iArr3 = this.f32858p;
            int i14 = iA2 + 1;
            System.arraycopy(iArr3, iA2, iArr3, i14, i13 - iA2);
            Object[] objArr4 = this.f32859q;
            System.arraycopy(objArr4, iA2, objArr4, i14, this.f32860r - iA2);
        }
        this.f32858p[iA2] = i10;
        this.f32859q[iA2] = e10;
        this.f32860r++;
    }

    public int l() {
        if (this.f32857o) {
            f();
        }
        return this.f32860r;
    }

    public E m(int i10) {
        if (this.f32857o) {
            f();
        }
        return (E) this.f32859q[i10];
    }

    public String toString() {
        if (l() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f32860r * 28);
        sb.append('{');
        for (int i10 = 0; i10 < this.f32860r; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            sb.append(j(i10));
            sb.append('=');
            E eM = m(i10);
            if (eM != this) {
                sb.append(eM);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public h(int i10) {
        this.f32857o = false;
        if (i10 == 0) {
            this.f32858p = c.f32818a;
            this.f32859q = c.f32820c;
        } else {
            int iE = c.e(i10);
            this.f32858p = new int[iE];
            this.f32859q = new Object[iE];
        }
    }
}
