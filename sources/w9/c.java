package w9;

import java.io.Serializable;
import t9.g;

/* JADX INFO: compiled from: Random.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f36036o = new a(null);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final c f36037p = n9.b.f32512a.b();

    /* JADX INFO: compiled from: Random.kt */
    public static final class a extends c implements Serializable {

        /* JADX INFO: renamed from: w9.c$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Random.kt */
        private static final class C0287a implements Serializable {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            public static final C0287a f36038o = new C0287a();
            private static final long serialVersionUID = 0;

            private C0287a() {
            }

            private final Object readResolve() {
                return c.f36036o;
            }
        }

        private a() {
        }

        public /* synthetic */ a(g gVar) {
            this();
        }

        private final Object writeReplace() {
            return C0287a.f36038o;
        }

        @Override // w9.c
        public int b(int i10) {
            return c.f36037p.b(i10);
        }

        @Override // w9.c
        public int c() {
            return c.f36037p.c();
        }

        @Override // w9.c
        public int d(int i10) {
            return c.f36037p.d(i10);
        }

        @Override // w9.c
        public int e(int i10, int i11) {
            return c.f36037p.e(i10, i11);
        }
    }

    public abstract int b(int i10);

    public abstract int c();

    public abstract int d(int i10);

    public int e(int i10, int i11) {
        int iC;
        int i12;
        int iB;
        int iC2;
        boolean z10;
        d.b(i10, i11);
        int i13 = i11 - i10;
        if (i13 > 0 || i13 == Integer.MIN_VALUE) {
            if (((-i13) & i13) == i13) {
                iB = b(d.c(i13));
            } else {
                do {
                    iC = c() >>> 1;
                    i12 = iC % i13;
                } while ((iC - i12) + (i13 - 1) < 0);
                iB = i12;
            }
            return i10 + iB;
        }
        do {
            iC2 = c();
            z10 = false;
            if (i10 <= iC2 && iC2 < i11) {
                z10 = true;
            }
        } while (!z10);
        return iC2;
    }
}
