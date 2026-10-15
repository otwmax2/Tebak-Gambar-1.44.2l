package kotlinx.coroutines.internal;

import da.s0;
import java.lang.Comparable;
import java.util.Arrays;
import kotlinx.coroutines.internal.k0;

/* JADX INFO: compiled from: ThreadSafeHeap.kt */
/* JADX INFO: loaded from: classes2.dex */
public class j0<T extends k0 & Comparable<? super T>> {
    private volatile /* synthetic */ int _size = 0;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private T[] f31752a;

    private final T[] f() {
        T[] tArr = this.f31752a;
        if (tArr == null) {
            T[] tArr2 = (T[]) new k0[4];
            this.f31752a = tArr2;
            return tArr2;
        }
        if (c() < tArr.length) {
            return tArr;
        }
        Object[] objArrCopyOf = Arrays.copyOf(tArr, c() * 2);
        t9.m.d(objArrCopyOf, "copyOf(this, newSize)");
        T[] tArr3 = (T[]) ((k0[]) objArrCopyOf);
        this.f31752a = tArr3;
        return tArr3;
    }

    private final void j(int i10) {
        this._size = i10;
    }

    private final void k(int i10) {
        while (true) {
            int i11 = (i10 * 2) + 1;
            if (i11 >= c()) {
                return;
            }
            T[] tArr = this.f31752a;
            t9.m.b(tArr);
            int i12 = i11 + 1;
            if (i12 < c()) {
                T t10 = tArr[i12];
                t9.m.b(t10);
                T t11 = tArr[i11];
                t9.m.b(t11);
                if (((Comparable) t10).compareTo(t11) < 0) {
                    i11 = i12;
                }
            }
            T t12 = tArr[i10];
            t9.m.b(t12);
            T t13 = tArr[i11];
            t9.m.b(t13);
            if (((Comparable) t12).compareTo(t13) <= 0) {
                return;
            }
            m(i10, i11);
            i10 = i11;
        }
    }

    private final void l(int i10) {
        while (i10 > 0) {
            T[] tArr = this.f31752a;
            t9.m.b(tArr);
            int i11 = (i10 - 1) / 2;
            T t10 = tArr[i11];
            t9.m.b(t10);
            T t11 = tArr[i10];
            t9.m.b(t11);
            if (((Comparable) t10).compareTo(t11) <= 0) {
                return;
            }
            m(i10, i11);
            i10 = i11;
        }
    }

    private final void m(int i10, int i11) {
        T[] tArr = this.f31752a;
        t9.m.b(tArr);
        T t10 = tArr[i11];
        t9.m.b(t10);
        T t11 = tArr[i10];
        t9.m.b(t11);
        tArr[i10] = t10;
        tArr[i11] = t11;
        t10.g(i10);
        t11.g(i11);
    }

    public final void a(T t10) {
        if (s0.a()) {
            if (!(t10.f() == null)) {
                throw new AssertionError();
            }
        }
        t10.c(this);
        k0[] k0VarArrF = f();
        int iC = c();
        j(iC + 1);
        k0VarArrF[iC] = t10;
        t10.g(iC);
        l(iC);
    }

    public final T b() {
        T[] tArr = this.f31752a;
        if (tArr != null) {
            return tArr[0];
        }
        return null;
    }

    public final int c() {
        return this._size;
    }

    public final boolean d() {
        return c() == 0;
    }

    public final T e() {
        T t10;
        synchronized (this) {
            t10 = (T) b();
        }
        return t10;
    }

    public final boolean g(T t10) {
        boolean z10;
        synchronized (this) {
            z10 = true;
            if (t10.f() == null) {
                z10 = false;
            } else {
                int iJ = t10.j();
                if (s0.a()) {
                    if (!(iJ >= 0)) {
                        throw new AssertionError();
                    }
                }
                h(iJ);
            }
        }
        return z10;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0054  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final T h(int r8) {
        /*
            r7 = this;
            boolean r0 = da.s0.a()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L1a
            int r0 = r7.c()
            if (r0 <= 0) goto L10
            r0 = 1
            goto L11
        L10:
            r0 = 0
        L11:
            if (r0 == 0) goto L14
            goto L1a
        L14:
            java.lang.AssertionError r8 = new java.lang.AssertionError
            r8.<init>()
            throw r8
        L1a:
            T extends kotlinx.coroutines.internal.k0 & java.lang.Comparable<? super T>[] r0 = r7.f31752a
            t9.m.b(r0)
            int r3 = r7.c()
            r4 = -1
            int r3 = r3 + r4
            r7.j(r3)
            int r3 = r7.c()
            if (r8 >= r3) goto L57
            int r3 = r7.c()
            r7.m(r8, r3)
            int r3 = r8 + (-1)
            int r3 = r3 / 2
            if (r8 <= 0) goto L54
            r5 = r0[r8]
            t9.m.b(r5)
            java.lang.Comparable r5 = (java.lang.Comparable) r5
            r6 = r0[r3]
            t9.m.b(r6)
            int r5 = r5.compareTo(r6)
            if (r5 >= 0) goto L54
            r7.m(r8, r3)
            r7.l(r3)
            goto L57
        L54:
            r7.k(r8)
        L57:
            int r8 = r7.c()
            r8 = r0[r8]
            t9.m.b(r8)
            boolean r3 = da.s0.a()
            if (r3 == 0) goto L76
            kotlinx.coroutines.internal.j0 r3 = r8.f()
            if (r3 != r7) goto L6d
            r1 = 1
        L6d:
            if (r1 == 0) goto L70
            goto L76
        L70:
            java.lang.AssertionError r8 = new java.lang.AssertionError
            r8.<init>()
            throw r8
        L76:
            r1 = 0
            r8.c(r1)
            r8.g(r4)
            int r2 = r7.c()
            r0[r2] = r1
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.internal.j0.h(int):kotlinx.coroutines.internal.k0");
    }

    public final T i() {
        T t10;
        synchronized (this) {
            t10 = c() > 0 ? (T) h(0) : null;
        }
        return t10;
    }
}
