package kotlinx.coroutines.flow;

import h9.t;
import t9.y;

/* JADX INFO: compiled from: Reduce.kt */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class j {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: Limit.kt */
    public static final class a<T> implements c<T> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ y f31689o;

        public a(y yVar) {
            this.f31689o = yVar;
        }

        @Override // kotlinx.coroutines.flow.c
        public Object c(T t10, k9.d<? super t> dVar) {
            this.f31689o.f35552o = t10;
            throw new ga.a(this);
        }
    }

    /* JADX INFO: compiled from: Reduce.kt */
    @m9.f(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt", f = "Reduce.kt", l = {183}, m = "first")
    static final class b<T> extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f31690r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f31691s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        /* synthetic */ Object f31692t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        int f31693u;

        b(k9.d<? super b> dVar) {
            super(dVar);
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f31692t = obj;
            this.f31693u |= Integer.MIN_VALUE;
            return d.f(null, this);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object a(kotlinx.coroutines.flow.b<? extends T> r4, k9.d<? super T> r5) throws java.lang.Throwable {
        /*
            boolean r0 = r5 instanceof kotlinx.coroutines.flow.j.b
            if (r0 == 0) goto L13
            r0 = r5
            kotlinx.coroutines.flow.j$b r0 = (kotlinx.coroutines.flow.j.b) r0
            int r1 = r0.f31693u
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f31693u = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.j$b r0 = new kotlinx.coroutines.flow.j$b
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f31692t
            java.lang.Object r1 = l9.b.c()
            int r2 = r0.f31693u
            r3 = 1
            if (r2 == 0) goto L3b
            if (r2 != r3) goto L33
            java.lang.Object r4 = r0.f31691s
            kotlinx.coroutines.flow.j$a r4 = (kotlinx.coroutines.flow.j.a) r4
            java.lang.Object r0 = r0.f31690r
            t9.y r0 = (t9.y) r0
            h9.o.b(r5)     // Catch: ga.a -> L31
            goto L62
        L31:
            r5 = move-exception
            goto L5f
        L33:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L3b:
            h9.o.b(r5)
            t9.y r5 = new t9.y
            r5.<init>()
            kotlinx.coroutines.internal.e0 r2 = ga.h.f30046a
            r5.f35552o = r2
            kotlinx.coroutines.flow.j$a r2 = new kotlinx.coroutines.flow.j$a
            r2.<init>(r5)
            r0.f31690r = r5     // Catch: ga.a -> L5b
            r0.f31691s = r2     // Catch: ga.a -> L5b
            r0.f31693u = r3     // Catch: ga.a -> L5b
            java.lang.Object r4 = r4.a(r2, r0)     // Catch: ga.a -> L5b
            if (r4 != r1) goto L59
            return r1
        L59:
            r0 = r5
            goto L62
        L5b:
            r4 = move-exception
            r0 = r5
            r5 = r4
            r4 = r2
        L5f:
            ga.f.a(r5, r4)
        L62:
            T r4 = r0.f35552o
            kotlinx.coroutines.internal.e0 r5 = ga.h.f30046a
            if (r4 == r5) goto L69
            return r4
        L69:
            java.util.NoSuchElementException r4 = new java.util.NoSuchElementException
            java.lang.String r5 = "Expected at least one element"
            r4.<init>(r5)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.j.a(kotlinx.coroutines.flow.b, k9.d):java.lang.Object");
    }
}
