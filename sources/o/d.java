package o;

/* JADX INFO: compiled from: LongSparseArray.java */
/* JADX INFO: loaded from: classes.dex */
public class d<E> implements Cloneable {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final Object f32821s = new Object();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f32822o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private long[] f32823p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Object[] f32824q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f32825r;

    public d() {
        this(10);
    }

    private void f() {
        int i10 = this.f32825r;
        long[] jArr = this.f32823p;
        Object[] objArr = this.f32824q;
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            Object obj = objArr[i12];
            if (obj != f32821s) {
                if (i12 != i11) {
                    jArr[i11] = jArr[i12];
                    objArr[i11] = obj;
                    objArr[i12] = null;
                }
                i11++;
            }
        }
        this.f32822o = false;
        this.f32825r = i11;
    }

    public void a(long j10, E e10) {
        int i10 = this.f32825r;
        if (i10 != 0 && j10 <= this.f32823p[i10 - 1]) {
            k(j10, e10);
            return;
        }
        if (this.f32822o && i10 >= this.f32823p.length) {
            f();
        }
        int i11 = this.f32825r;
        if (i11 >= this.f32823p.length) {
            int iF = c.f(i11 + 1);
            long[] jArr = new long[iF];
            Object[] objArr = new Object[iF];
            long[] jArr2 = this.f32823p;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr2 = this.f32824q;
            System.arraycopy(objArr2, 0, objArr, 0, objArr2.length);
            this.f32823p = jArr;
            this.f32824q = objArr;
        }
        this.f32823p[i11] = j10;
        this.f32824q[i11] = e10;
        this.f32825r = i11 + 1;
    }

    public void b() {
        int i10 = this.f32825r;
        Object[] objArr = this.f32824q;
        for (int i11 = 0; i11 < i10; i11++) {
            objArr[i11] = null;
        }
        this.f32825r = 0;
        this.f32822o = false;
    }

    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public d<E> clone() {
        try {
            d<E> dVar = (d) super.clone();
            dVar.f32823p = (long[]) this.f32823p.clone();
            dVar.f32824q = (Object[]) this.f32824q.clone();
            return dVar;
        } catch (CloneNotSupportedException e10) {
            throw new AssertionError(e10);
        }
    }

    public E g(long j10) {
        return h(j10, null);
    }

    public E h(long j10, E e10) {
        int iB = c.b(this.f32823p, this.f32825r, j10);
        if (iB >= 0) {
            Object[] objArr = this.f32824q;
            if (objArr[iB] != f32821s) {
                return (E) objArr[iB];
            }
        }
        return e10;
    }

    public int i(long j10) {
        if (this.f32822o) {
            f();
        }
        return c.b(this.f32823p, this.f32825r, j10);
    }

    public long j(int i10) {
        if (this.f32822o) {
            f();
        }
        return this.f32823p[i10];
    }

    public void k(long j10, E e10) {
        int iB = c.b(this.f32823p, this.f32825r, j10);
        if (iB >= 0) {
            this.f32824q[iB] = e10;
            return;
        }
        int iB2 = iB ^ (-1);
        int i10 = this.f32825r;
        if (iB2 < i10) {
            Object[] objArr = this.f32824q;
            if (objArr[iB2] == f32821s) {
                this.f32823p[iB2] = j10;
                objArr[iB2] = e10;
                return;
            }
        }
        if (this.f32822o && i10 >= this.f32823p.length) {
            f();
            iB2 = c.b(this.f32823p, this.f32825r, j10) ^ (-1);
        }
        int i11 = this.f32825r;
        if (i11 >= this.f32823p.length) {
            int iF = c.f(i11 + 1);
            long[] jArr = new long[iF];
            Object[] objArr2 = new Object[iF];
            long[] jArr2 = this.f32823p;
            System.arraycopy(jArr2, 0, jArr, 0, jArr2.length);
            Object[] objArr3 = this.f32824q;
            System.arraycopy(objArr3, 0, objArr2, 0, objArr3.length);
            this.f32823p = jArr;
            this.f32824q = objArr2;
        }
        int i12 = this.f32825r;
        if (i12 - iB2 != 0) {
            long[] jArr3 = this.f32823p;
            int i13 = iB2 + 1;
            System.arraycopy(jArr3, iB2, jArr3, i13, i12 - iB2);
            Object[] objArr4 = this.f32824q;
            System.arraycopy(objArr4, iB2, objArr4, i13, this.f32825r - iB2);
        }
        this.f32823p[iB2] = j10;
        this.f32824q[iB2] = e10;
        this.f32825r++;
    }

    public void l(long j10) {
        int iB = c.b(this.f32823p, this.f32825r, j10);
        if (iB >= 0) {
            Object[] objArr = this.f32824q;
            Object obj = objArr[iB];
            Object obj2 = f32821s;
            if (obj != obj2) {
                objArr[iB] = obj2;
                this.f32822o = true;
            }
        }
    }

    public void m(int i10) {
        Object[] objArr = this.f32824q;
        Object obj = objArr[i10];
        Object obj2 = f32821s;
        if (obj != obj2) {
            objArr[i10] = obj2;
            this.f32822o = true;
        }
    }

    public int n() {
        if (this.f32822o) {
            f();
        }
        return this.f32825r;
    }

    public E o(int i10) {
        if (this.f32822o) {
            f();
        }
        return (E) this.f32824q[i10];
    }

    public String toString() {
        if (n() <= 0) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.f32825r * 28);
        sb.append('{');
        for (int i10 = 0; i10 < this.f32825r; i10++) {
            if (i10 > 0) {
                sb.append(", ");
            }
            sb.append(j(i10));
            sb.append('=');
            E eO = o(i10);
            if (eO != this) {
                sb.append(eO);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public d(int i10) {
        this.f32822o = false;
        if (i10 == 0) {
            this.f32823p = c.f32819b;
            this.f32824q = c.f32820c;
        } else {
            int iF = c.f(i10);
            this.f32823p = new long[iF];
            this.f32824q = new Object[iF];
        }
    }
}
