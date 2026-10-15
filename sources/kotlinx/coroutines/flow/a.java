package kotlinx.coroutines.flow;

import h9.t;

/* JADX INFO: compiled from: Flow.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class a<T> implements b<T> {

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Flow.kt */
    @m9.f(c = "kotlinx.coroutines.flow.AbstractFlow", f = "Flow.kt", l = {230}, m = "collect")
    static final class C0192a extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f31659r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        /* synthetic */ Object f31660s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        final /* synthetic */ a<T> f31661t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        int f31662u;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0192a(a<T> aVar, k9.d<? super C0192a> dVar) {
            super(dVar);
            this.f31661t = aVar;
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f31660s = obj;
            this.f31662u |= Integer.MIN_VALUE;
            return this.f31661t.a(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.b
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object a(kotlinx.coroutines.flow.c<? super T> r6, k9.d<? super h9.t> r7) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r7 instanceof kotlinx.coroutines.flow.a.C0192a
            if (r0 == 0) goto L13
            r0 = r7
            kotlinx.coroutines.flow.a$a r0 = (kotlinx.coroutines.flow.a.C0192a) r0
            int r1 = r0.f31662u
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f31662u = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.a$a r0 = new kotlinx.coroutines.flow.a$a
            r0.<init>(r5, r7)
        L18:
            java.lang.Object r7 = r0.f31660s
            java.lang.Object r1 = l9.b.c()
            int r2 = r0.f31662u
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r6 = r0.f31659r
            ga.i r6 = (ga.i) r6
            h9.o.b(r7)     // Catch: java.lang.Throwable -> L2d
            goto L4f
        L2d:
            r7 = move-exception
            goto L59
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L37:
            h9.o.b(r7)
            ga.i r7 = new ga.i
            k9.g r2 = r0.getContext()
            r7.<init>(r6, r2)
            r0.f31659r = r7     // Catch: java.lang.Throwable -> L55
            r0.f31662u = r3     // Catch: java.lang.Throwable -> L55
            java.lang.Object r6 = r5.b(r7, r0)     // Catch: java.lang.Throwable -> L55
            if (r6 != r1) goto L4e
            return r1
        L4e:
            r6 = r7
        L4f:
            r6.j()
            h9.t r6 = h9.t.f30301a
            return r6
        L55:
            r6 = move-exception
            r4 = r7
            r7 = r6
            r6 = r4
        L59:
            r6.j()
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.a.a(kotlinx.coroutines.flow.c, k9.d):java.lang.Object");
    }

    public abstract Object b(c<? super T> cVar, k9.d<? super t> dVar);
}
