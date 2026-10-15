package kotlinx.coroutines.flow;

import da.s0;
import da.x1;
import h9.t;
import kotlinx.coroutines.internal.d0;
import t9.y;

/* JADX INFO: compiled from: Errors.kt */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class h {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: SafeCollector.common.kt */
    public static final class a<T> implements kotlinx.coroutines.flow.b<T> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.b f31663o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ s9.q f31664p;

        /* JADX INFO: renamed from: kotlinx.coroutines.flow.h$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SafeCollector.common.kt */
        @m9.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catch$$inlined$unsafeFlow$1", f = "Errors.kt", l = {113, 114}, m = "collect")
        public static final class C0193a extends m9.d {

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            /* synthetic */ Object f31665r;

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            int f31666s;

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            Object f31668u;

            /* JADX INFO: renamed from: v, reason: collision with root package name */
            Object f31669v;

            public C0193a(k9.d dVar) {
                super(dVar);
            }

            @Override // m9.a
            public final Object i(Object obj) {
                this.f31665r = obj;
                this.f31666s |= Integer.MIN_VALUE;
                return a.this.a(null, this);
            }
        }

        public a(kotlinx.coroutines.flow.b bVar, s9.q qVar) {
            this.f31663o = bVar;
            this.f31664p = qVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.b
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public java.lang.Object a(kotlinx.coroutines.flow.c<? super T> r6, k9.d<? super h9.t> r7) throws java.lang.Throwable {
            /*
                r5 = this;
                boolean r0 = r7 instanceof kotlinx.coroutines.flow.h.a.C0193a
                if (r0 == 0) goto L13
                r0 = r7
                kotlinx.coroutines.flow.h$a$a r0 = (kotlinx.coroutines.flow.h.a.C0193a) r0
                int r1 = r0.f31666s
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f31666s = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.h$a$a r0 = new kotlinx.coroutines.flow.h$a$a
                r0.<init>(r7)
            L18:
                java.lang.Object r7 = r0.f31665r
                java.lang.Object r1 = l9.b.c()
                int r2 = r0.f31666s
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L40
                if (r2 == r4) goto L34
                if (r2 != r3) goto L2c
                h9.o.b(r7)
                goto L6f
            L2c:
                java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
                java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
                r6.<init>(r7)
                throw r6
            L34:
                java.lang.Object r6 = r0.f31669v
                kotlinx.coroutines.flow.c r6 = (kotlinx.coroutines.flow.c) r6
                java.lang.Object r2 = r0.f31668u
                kotlinx.coroutines.flow.h$a r2 = (kotlinx.coroutines.flow.h.a) r2
                h9.o.b(r7)
                goto L53
            L40:
                h9.o.b(r7)
                kotlinx.coroutines.flow.b r7 = r5.f31663o
                r0.f31668u = r5
                r0.f31669v = r6
                r0.f31666s = r4
                java.lang.Object r7 = kotlinx.coroutines.flow.d.b(r7, r6, r0)
                if (r7 != r1) goto L52
                return r1
            L52:
                r2 = r5
            L53:
                java.lang.Throwable r7 = (java.lang.Throwable) r7
                if (r7 == 0) goto L6f
                s9.q r2 = r2.f31664p
                r4 = 0
                r0.f31668u = r4
                r0.f31669v = r4
                r0.f31666s = r3
                r3 = 6
                t9.k.a(r3)
                java.lang.Object r6 = r2.b(r6, r7, r0)
                r7 = 7
                t9.k.a(r7)
                if (r6 != r1) goto L6f
                return r1
            L6f:
                h9.t r6 = h9.t.f30301a
                return r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.h.a.a(kotlinx.coroutines.flow.c, k9.d):java.lang.Object");
        }
    }

    /* JADX INFO: compiled from: Errors.kt */
    @m9.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt", f = "Errors.kt", l = {156}, m = "catchImpl")
    static final class b<T> extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f31670r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        /* synthetic */ Object f31671s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f31672t;

        b(k9.d<? super b> dVar) {
            super(dVar);
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f31671s = obj;
            this.f31672t |= Integer.MIN_VALUE;
            return d.b(null, null, this);
        }
    }

    /* JADX INFO: compiled from: Errors.kt */
    static final class c<T> implements kotlinx.coroutines.flow.c {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.c<T> f31673o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ y<Throwable> f31674p;

        /* JADX INFO: compiled from: Errors.kt */
        @m9.f(c = "kotlinx.coroutines.flow.FlowKt__ErrorsKt$catchImpl$2", f = "Errors.kt", l = {158}, m = "emit")
        static final class a extends m9.d {

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            Object f31675r;

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            /* synthetic */ Object f31676s;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            final /* synthetic */ c<T> f31677t;

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            int f31678u;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(c<? super T> cVar, k9.d<? super a> dVar) {
                super(dVar);
                this.f31677t = cVar;
            }

            @Override // m9.a
            public final Object i(Object obj) {
                this.f31676s = obj;
                this.f31678u |= Integer.MIN_VALUE;
                return this.f31677t.c(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        c(kotlinx.coroutines.flow.c<? super T> cVar, y<Throwable> yVar) {
            this.f31673o = cVar;
            this.f31674p = yVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        @Override // kotlinx.coroutines.flow.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object c(T r5, k9.d<? super h9.t> r6) throws java.lang.Throwable {
            /*
                r4 = this;
                boolean r0 = r6 instanceof kotlinx.coroutines.flow.h.c.a
                if (r0 == 0) goto L13
                r0 = r6
                kotlinx.coroutines.flow.h$c$a r0 = (kotlinx.coroutines.flow.h.c.a) r0
                int r1 = r0.f31678u
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f31678u = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.h$c$a r0 = new kotlinx.coroutines.flow.h$c$a
                r0.<init>(r4, r6)
            L18:
                java.lang.Object r6 = r0.f31676s
                java.lang.Object r1 = l9.b.c()
                int r2 = r0.f31678u
                r3 = 1
                if (r2 == 0) goto L37
                if (r2 != r3) goto L2f
                java.lang.Object r5 = r0.f31675r
                kotlinx.coroutines.flow.h$c r5 = (kotlinx.coroutines.flow.h.c) r5
                h9.o.b(r6)     // Catch: java.lang.Throwable -> L2d
                goto L47
            L2d:
                r6 = move-exception
                goto L4c
            L2f:
                java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                r5.<init>(r6)
                throw r5
            L37:
                h9.o.b(r6)
                kotlinx.coroutines.flow.c<T> r6 = r4.f31673o     // Catch: java.lang.Throwable -> L4a
                r0.f31675r = r4     // Catch: java.lang.Throwable -> L4a
                r0.f31678u = r3     // Catch: java.lang.Throwable -> L4a
                java.lang.Object r5 = r6.c(r5, r0)     // Catch: java.lang.Throwable -> L4a
                if (r5 != r1) goto L47
                return r1
            L47:
                h9.t r5 = h9.t.f30301a
                return r5
            L4a:
                r6 = move-exception
                r5 = r4
            L4c:
                t9.y<java.lang.Throwable> r5 = r5.f31674p
                r5.f35552o = r6
                throw r6
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.h.c.c(java.lang.Object, k9.d):java.lang.Object");
        }
    }

    public static final <T> kotlinx.coroutines.flow.b<T> a(kotlinx.coroutines.flow.b<? extends T> bVar, s9.q<? super kotlinx.coroutines.flow.c<? super T>, ? super Throwable, ? super k9.d<? super t>, ? extends Object> qVar) {
        return new a(bVar, qVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static final <T> java.lang.Object b(kotlinx.coroutines.flow.b<? extends T> r4, kotlinx.coroutines.flow.c<? super T> r5, k9.d<? super java.lang.Throwable> r6) throws java.lang.Throwable {
        /*
            boolean r0 = r6 instanceof kotlinx.coroutines.flow.h.b
            if (r0 == 0) goto L13
            r0 = r6
            kotlinx.coroutines.flow.h$b r0 = (kotlinx.coroutines.flow.h.b) r0
            int r1 = r0.f31672t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f31672t = r1
            goto L18
        L13:
            kotlinx.coroutines.flow.h$b r0 = new kotlinx.coroutines.flow.h$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f31671s
            java.lang.Object r1 = l9.b.c()
            int r2 = r0.f31672t
            r3 = 1
            if (r2 == 0) goto L37
            if (r2 != r3) goto L2f
            java.lang.Object r4 = r0.f31670r
            t9.y r4 = (t9.y) r4
            h9.o.b(r6)     // Catch: java.lang.Throwable -> L2d
            goto L4f
        L2d:
            r5 = move-exception
            goto L53
        L2f:
            java.lang.IllegalStateException r4 = new java.lang.IllegalStateException
            java.lang.String r5 = "call to 'resume' before 'invoke' with coroutine"
            r4.<init>(r5)
            throw r4
        L37:
            h9.o.b(r6)
            t9.y r6 = new t9.y
            r6.<init>()
            kotlinx.coroutines.flow.h$c r2 = new kotlinx.coroutines.flow.h$c     // Catch: java.lang.Throwable -> L51
            r2.<init>(r5, r6)     // Catch: java.lang.Throwable -> L51
            r0.f31670r = r6     // Catch: java.lang.Throwable -> L51
            r0.f31672t = r3     // Catch: java.lang.Throwable -> L51
            java.lang.Object r4 = r4.a(r2, r0)     // Catch: java.lang.Throwable -> L51
            if (r4 != r1) goto L4f
            return r1
        L4f:
            r4 = 0
            return r4
        L51:
            r5 = move-exception
            r4 = r6
        L53:
            T r4 = r4.f35552o
            java.lang.Throwable r4 = (java.lang.Throwable) r4
            boolean r6 = d(r5, r4)
            if (r6 != 0) goto L76
            k9.g r6 = r0.getContext()
            boolean r6 = c(r5, r6)
            if (r6 != 0) goto L76
            if (r4 != 0) goto L6a
            return r5
        L6a:
            boolean r6 = r5 instanceof java.util.concurrent.CancellationException
            if (r6 == 0) goto L72
            h9.a.a(r4, r5)
            throw r4
        L72:
            h9.a.a(r5, r4)
            throw r5
        L76:
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.h.b(kotlinx.coroutines.flow.b, kotlinx.coroutines.flow.c, k9.d):java.lang.Object");
    }

    private static final boolean c(Throwable th, k9.g gVar) {
        x1 x1Var = (x1) gVar.b(x1.f28875m);
        if (x1Var == null || !x1Var.isCancelled()) {
            return false;
        }
        return d(th, x1Var.j());
    }

    private static final boolean d(Throwable th, Throwable th2) {
        if (th2 != null) {
            if (s0.d()) {
                th2 = d0.l(th2);
            }
            if (s0.d()) {
                th = d0.l(th);
            }
            if (t9.m.a(th2, th)) {
                return true;
            }
        }
        return false;
    }
}
