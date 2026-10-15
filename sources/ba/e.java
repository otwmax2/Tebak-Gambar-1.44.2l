package ba;

import java.util.Iterator;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: Strings.kt */
/* JADX INFO: loaded from: classes2.dex */
final class e implements aa.b<y9.f> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CharSequence f4719a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f4720b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f4721c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final s9.p<CharSequence, Integer, h9.m<Integer, Integer>> f4722d;

    /* JADX INFO: compiled from: Strings.kt */
    public static final class a implements Iterator<y9.f>, u9.a {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f4723o = -1;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f4724p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f4725q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private y9.f f4726r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private int f4727s;

        a() {
            int iE = y9.l.e(e.this.f4720b, 0, e.this.f4719a.length());
            this.f4724p = iE;
            this.f4725q = iE;
        }

        /* JADX WARN: Removed duplicated region for block: B:9:0x0023  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        private final void a() {
            /*
                r6 = this;
                int r0 = r6.f4725q
                r1 = 0
                if (r0 >= 0) goto Lc
                r6.f4723o = r1
                r0 = 0
                r6.f4726r = r0
                goto L9e
            Lc:
                ba.e r0 = ba.e.this
                int r0 = ba.e.c(r0)
                r2 = -1
                r3 = 1
                if (r0 <= 0) goto L23
                int r0 = r6.f4727s
                int r0 = r0 + r3
                r6.f4727s = r0
                ba.e r4 = ba.e.this
                int r4 = ba.e.c(r4)
                if (r0 >= r4) goto L31
            L23:
                int r0 = r6.f4725q
                ba.e r4 = ba.e.this
                java.lang.CharSequence r4 = ba.e.b(r4)
                int r4 = r4.length()
                if (r0 <= r4) goto L47
            L31:
                y9.f r0 = new y9.f
                int r1 = r6.f4724p
                ba.e r4 = ba.e.this
                java.lang.CharSequence r4 = ba.e.b(r4)
                int r4 = ba.q.A(r4)
                r0.<init>(r1, r4)
                r6.f4726r = r0
                r6.f4725q = r2
                goto L9c
            L47:
                ba.e r0 = ba.e.this
                s9.p r0 = ba.e.a(r0)
                ba.e r4 = ba.e.this
                java.lang.CharSequence r4 = ba.e.b(r4)
                int r5 = r6.f4725q
                java.lang.Integer r5 = java.lang.Integer.valueOf(r5)
                java.lang.Object r0 = r0.invoke(r4, r5)
                h9.m r0 = (h9.m) r0
                if (r0 != 0) goto L77
                y9.f r0 = new y9.f
                int r1 = r6.f4724p
                ba.e r4 = ba.e.this
                java.lang.CharSequence r4 = ba.e.b(r4)
                int r4 = ba.q.A(r4)
                r0.<init>(r1, r4)
                r6.f4726r = r0
                r6.f4725q = r2
                goto L9c
            L77:
                java.lang.Object r2 = r0.a()
                java.lang.Number r2 = (java.lang.Number) r2
                int r2 = r2.intValue()
                java.lang.Object r0 = r0.b()
                java.lang.Number r0 = (java.lang.Number) r0
                int r0 = r0.intValue()
                int r4 = r6.f4724p
                y9.f r4 = y9.j.i(r4, r2)
                r6.f4726r = r4
                int r2 = r2 + r0
                r6.f4724p = r2
                if (r0 != 0) goto L99
                r1 = 1
            L99:
                int r2 = r2 + r1
                r6.f4725q = r2
            L9c:
                r6.f4723o = r3
            L9e:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: ba.e.a.a():void");
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public y9.f next() {
            if (this.f4723o == -1) {
                a();
            }
            if (this.f4723o == 0) {
                throw new NoSuchElementException();
            }
            y9.f fVar = this.f4726r;
            t9.m.c(fVar, "null cannot be cast to non-null type kotlin.ranges.IntRange");
            this.f4726r = null;
            this.f4723o = -1;
            return fVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.f4723o == -1) {
                a();
            }
            return this.f4723o == 1;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public e(CharSequence charSequence, int i10, int i11, s9.p<? super CharSequence, ? super Integer, h9.m<Integer, Integer>> pVar) {
        t9.m.e(charSequence, "input");
        t9.m.e(pVar, "getNextMatch");
        this.f4719a = charSequence;
        this.f4720b = i10;
        this.f4721c = i11;
        this.f4722d = pVar;
    }

    @Override // aa.b
    public Iterator<y9.f> iterator() {
        return new a();
    }
}
