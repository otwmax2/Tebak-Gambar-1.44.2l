package kotlinx.coroutines.flow;

import h9.t;
import t9.w;

/* JADX INFO: compiled from: Limit.kt */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class i {

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: SafeCollector.common.kt */
    public static final class a<T> implements kotlinx.coroutines.flow.b<T> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.b f31679o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ s9.p f31680p;

        public a(kotlinx.coroutines.flow.b bVar, s9.p pVar) {
            this.f31679o = bVar;
            this.f31680p = pVar;
        }

        @Override // kotlinx.coroutines.flow.b
        public Object a(c<? super T> cVar, k9.d<? super t> dVar) {
            Object objA = this.f31679o.a(new b(new w(), cVar, this.f31680p), dVar);
            return objA == l9.d.c() ? objA : t.f30301a;
        }
    }

    /* JADX INFO: compiled from: Limit.kt */
    static final class b<T> implements c {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ w f31681o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ c<T> f31682p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ s9.p<T, k9.d<? super Boolean>, Object> f31683q;

        /* JADX INFO: compiled from: Limit.kt */
        @m9.f(c = "kotlinx.coroutines.flow.FlowKt__LimitKt$dropWhile$1$1", f = "Limit.kt", l = {37, 38, 40}, m = "emit")
        static final class a extends m9.d {

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            Object f31684r;

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            Object f31685s;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            /* synthetic */ Object f31686t;

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            final /* synthetic */ b<T> f31687u;

            /* JADX INFO: renamed from: v, reason: collision with root package name */
            int f31688v;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            a(b<? super T> bVar, k9.d<? super a> dVar) {
                super(dVar);
                this.f31687u = bVar;
            }

            @Override // m9.a
            public final Object i(Object obj) {
                this.f31686t = obj;
                this.f31688v |= Integer.MIN_VALUE;
                return this.f31687u.c(null, this);
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        b(w wVar, c<? super T> cVar, s9.p<? super T, ? super k9.d<? super Boolean>, ? extends Object> pVar) {
            this.f31681o = wVar;
            this.f31682p = cVar;
            this.f31683q = pVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:31:0x0074  */
        /* JADX WARN: Removed duplicated region for block: B:36:0x008b  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /* JADX WARN: Type inference fix 'apply assigned field type' failed
        java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
        	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
        	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
        	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
        	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
         */
        @Override // kotlinx.coroutines.flow.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object c(T r7, k9.d<? super h9.t> r8) throws java.lang.Throwable {
            /*
                r6 = this;
                boolean r0 = r8 instanceof kotlinx.coroutines.flow.i.b.a
                if (r0 == 0) goto L13
                r0 = r8
                kotlinx.coroutines.flow.i$b$a r0 = (kotlinx.coroutines.flow.i.b.a) r0
                int r1 = r0.f31688v
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f31688v = r1
                goto L18
            L13:
                kotlinx.coroutines.flow.i$b$a r0 = new kotlinx.coroutines.flow.i$b$a
                r0.<init>(r6, r8)
            L18:
                java.lang.Object r8 = r0.f31686t
                java.lang.Object r1 = l9.b.c()
                int r2 = r0.f31688v
                r3 = 3
                r4 = 2
                r5 = 1
                if (r2 == 0) goto L45
                if (r2 == r5) goto L41
                if (r2 == r4) goto L37
                if (r2 != r3) goto L2f
                h9.o.b(r8)
                goto L88
            L2f:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L37:
                java.lang.Object r7 = r0.f31685s
                java.lang.Object r2 = r0.f31684r
                kotlinx.coroutines.flow.i$b r2 = (kotlinx.coroutines.flow.i.b) r2
                h9.o.b(r8)
                goto L6c
            L41:
                h9.o.b(r8)
                goto L59
            L45:
                h9.o.b(r8)
                t9.w r8 = r6.f31681o
                boolean r8 = r8.f35550o
                if (r8 == 0) goto L5c
                kotlinx.coroutines.flow.c<T> r8 = r6.f31682p
                r0.f31688v = r5
                java.lang.Object r7 = r8.c(r7, r0)
                if (r7 != r1) goto L59
                return r1
            L59:
                h9.t r7 = h9.t.f30301a
                return r7
            L5c:
                s9.p<T, k9.d<? super java.lang.Boolean>, java.lang.Object> r8 = r6.f31683q
                r0.f31684r = r6
                r0.f31685s = r7
                r0.f31688v = r4
                java.lang.Object r8 = r8.invoke(r7, r0)
                if (r8 != r1) goto L6b
                return r1
            L6b:
                r2 = r6
            L6c:
                java.lang.Boolean r8 = (java.lang.Boolean) r8
                boolean r8 = r8.booleanValue()
                if (r8 != 0) goto L8b
                t9.w r8 = r2.f31681o
                r8.f35550o = r5
                kotlinx.coroutines.flow.c<T> r8 = r2.f31682p
                r2 = 0
                r0.f31684r = r2
                r0.f31685s = r2
                r0.f31688v = r3
                java.lang.Object r7 = r8.c(r7, r0)
                if (r7 != r1) goto L88
                return r1
            L88:
                h9.t r7 = h9.t.f30301a
                return r7
            L8b:
                h9.t r7 = h9.t.f30301a
                return r7
            */
            throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.flow.i.b.c(java.lang.Object, k9.d):java.lang.Object");
        }
    }

    public static final <T> kotlinx.coroutines.flow.b<T> a(kotlinx.coroutines.flow.b<? extends T> bVar, s9.p<? super T, ? super k9.d<? super Boolean>, ? extends Object> pVar) {
        return new a(bVar, pVar);
    }
}
