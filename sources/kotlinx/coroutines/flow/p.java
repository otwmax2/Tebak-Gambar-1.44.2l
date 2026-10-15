package kotlinx.coroutines.flow;

import h9.t;

/* JADX INFO: compiled from: Share.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class p<T> implements c<T> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final c<T> f31707o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final s9.p<c<? super T>, k9.d<? super t>, Object> f31708p;

    /* JADX INFO: compiled from: Share.kt */
    @m9.f(c = "kotlinx.coroutines.flow.SubscribedFlowCollector", f = "Share.kt", l = {419, 423}, m = "onSubscription")
    static final class a extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f31709r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f31710s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        /* synthetic */ Object f31711t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ p<T> f31712u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        int f31713v;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(p<T> pVar, k9.d<? super a> dVar) {
            super(dVar);
            this.f31712u = pVar;
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f31711t = obj;
            this.f31713v |= Integer.MIN_VALUE;
            return this.f31712u.a(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /* JADX WARN: Type inference failed for: r2v0, types: [int] */
    /* JADX WARN: Type inference failed for: r2v1, types: [ga.i] */
    /* JADX WARN: Type inference failed for: r2v4, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(k9.d<? super h9.t> r7) throws java.lang.Throwable {
        /*
            r6 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.p.a
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.p$a r0 = (kotlinx.coroutines.flow.p.a) r0
            int r1 = r0.f31713v
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f31713v = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.p$a r0 = new kotlinx.coroutines.flow.p$a
            r0.<init>(r6, r7)
        L18:
            java.lang.Object r7 = r0.f31711t
            java.lang.Object r1 = l9.b.c()
            int r2 = r0.f31713v
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L40
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            h9.o.b(r7)
            goto L77
        L2c:
            java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r7.<init>(r0)
            throw r7
        L34:
            java.lang.Object r2 = r0.f31710s
            ga.i r2 = (ga.i) r2
            java.lang.Object r4 = r0.f31709r
            kotlinx.coroutines.flow.p r4 = (kotlinx.coroutines.flow.p) r4
            h9.o.b(r7)     // Catch: java.lang.Throwable -> L7d
            goto L5e
        L40:
            h9.o.b(r7)
            ga.i r2 = new ga.i
            kotlinx.coroutines.flow.c<T> r7 = r6.f31707o
            k9.g r5 = r0.getContext()
            r2.<init>(r7, r5)
            s9.p<kotlinx.coroutines.flow.c<? super T>, k9.d<? super h9.t>, java.lang.Object> r7 = r6.f31708p     // Catch: java.lang.Throwable -> L7d
            r0.f31709r = r6     // Catch: java.lang.Throwable -> L7d
            r0.f31710s = r2     // Catch: java.lang.Throwable -> L7d
            r0.f31713v = r4     // Catch: java.lang.Throwable -> L7d
            java.lang.Object r7 = r7.invoke(r2, r0)     // Catch: java.lang.Throwable -> L7d
            if (r7 != r1) goto L5d
            return r1
        L5d:
            r4 = r6
        L5e:
            r2.j()
            kotlinx.coroutines.flow.c<T> r7 = r4.f31707o
            boolean r2 = r7 instanceof kotlinx.coroutines.flow.p
            if (r2 == 0) goto L7a
            kotlinx.coroutines.flow.p r7 = (kotlinx.coroutines.flow.p) r7
            r2 = 0
            r0.f31709r = r2
            r0.f31710s = r2
            r0.f31713v = r3
            java.lang.Object r7 = r7.a(r0)
            if (r7 != r1) goto L77
            return r1
        L77:
            h9.t r7 = h9.t.f30301a
            return r7
        L7a:
            h9.t r7 = h9.t.f30301a
            return r7
        L7d:
            r7 = move-exception
            r2.j()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.p.a(k9.d):java.lang.Object");
    }

    @Override // kotlinx.coroutines.flow.c
    public Object c(T t10, k9.d<? super t> dVar) {
        return this.f31707o.c(t10, dVar);
    }
}
