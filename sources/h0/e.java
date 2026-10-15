package h0;

import h9.t;
import java.util.List;
import s9.p;

/* JADX INFO: compiled from: DataMigrationInitializer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f30108a = new a(null);

    /* JADX INFO: compiled from: DataMigrationInitializer.kt */
    public static final class a {

        /* JADX INFO: renamed from: h0.e$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DataMigrationInitializer.kt */
        @m9.f(c = "androidx.datastore.core.DataMigrationInitializer$Companion$getInitializer$1", f = "DataMigrationInitializer.kt", l = {33}, m = "invokeSuspend")
        static final class C0167a extends m9.k implements p<i<T>, k9.d<? super t>, Object> {

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            int f30109s;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            /* synthetic */ Object f30110t;

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            final /* synthetic */ List<d<T>> f30111u;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            C0167a(List<? extends d<T>> list, k9.d<? super C0167a> dVar) {
                super(2, dVar);
                this.f30111u = list;
            }

            @Override // m9.a
            public final k9.d<t> d(Object obj, k9.d<?> dVar) {
                C0167a c0167a = new C0167a(this.f30111u, dVar);
                c0167a.f30110t = obj;
                return c0167a;
            }

            @Override // m9.a
            public final Object i(Object obj) throws Throwable {
                Object objC = l9.d.c();
                int i10 = this.f30109s;
                if (i10 == 0) {
                    h9.o.b(obj);
                    i iVar = (i) this.f30110t;
                    a aVar = e.f30108a;
                    List<d<T>> list = this.f30111u;
                    this.f30109s = 1;
                    if (aVar.c(list, iVar, this) == objC) {
                        return objC;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    h9.o.b(obj);
                }
                return t.f30301a;
            }

            @Override // s9.p
            /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
            public final Object invoke(i<T> iVar, k9.d<? super t> dVar) {
                return ((C0167a) d(iVar, dVar)).i(t.f30301a);
            }
        }

        /* JADX INFO: compiled from: DataMigrationInitializer.kt */
        @m9.f(c = "androidx.datastore.core.DataMigrationInitializer$Companion", f = "DataMigrationInitializer.kt", l = {42, 57}, m = "runMigrations")
        static final class b<T> extends m9.d {

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            Object f30112r;

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            Object f30113s;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            /* synthetic */ Object f30114t;

            /* JADX INFO: renamed from: v, reason: collision with root package name */
            int f30116v;

            b(k9.d<? super b> dVar) {
                super(dVar);
            }

            @Override // m9.a
            public final Object i(Object obj) {
                this.f30114t = obj;
                this.f30116v |= Integer.MIN_VALUE;
                return a.this.c(null, null, this);
            }
        }

        /* JADX INFO: compiled from: DataMigrationInitializer.kt */
        @m9.f(c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2", f = "DataMigrationInitializer.kt", l = {44, 46}, m = "invokeSuspend")
        static final class c extends m9.k implements p<T, k9.d<? super T>, Object> {

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            Object f30117s;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            Object f30118t;

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            Object f30119u;

            /* JADX INFO: renamed from: v, reason: collision with root package name */
            int f30120v;

            /* JADX INFO: renamed from: w, reason: collision with root package name */
            /* synthetic */ Object f30121w;

            /* JADX INFO: renamed from: x, reason: collision with root package name */
            final /* synthetic */ List<d<T>> f30122x;

            /* JADX INFO: renamed from: y, reason: collision with root package name */
            final /* synthetic */ List<s9.l<k9.d<? super t>, Object>> f30123y;

            /* JADX INFO: renamed from: h0.e$a$c$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: DataMigrationInitializer.kt */
            @m9.f(c = "androidx.datastore.core.DataMigrationInitializer$Companion$runMigrations$2$1$1", f = "DataMigrationInitializer.kt", l = {45}, m = "invokeSuspend")
            static final class C0168a extends m9.k implements s9.l<k9.d<? super t>, Object> {

                /* JADX INFO: renamed from: s, reason: collision with root package name */
                int f30124s;

                /* JADX INFO: renamed from: t, reason: collision with root package name */
                final /* synthetic */ d<T> f30125t;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                C0168a(d<T> dVar, k9.d<? super C0168a> dVar2) {
                    super(1, dVar2);
                    this.f30125t = dVar;
                }

                @Override // m9.a
                public final Object i(Object obj) throws Throwable {
                    Object objC = l9.d.c();
                    int i10 = this.f30124s;
                    if (i10 == 0) {
                        h9.o.b(obj);
                        d<T> dVar = this.f30125t;
                        this.f30124s = 1;
                        if (dVar.b(this) == objC) {
                            return objC;
                        }
                    } else {
                        if (i10 != 1) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        h9.o.b(obj);
                    }
                    return t.f30301a;
                }

                public final k9.d<t> l(k9.d<?> dVar) {
                    return new C0168a(this.f30125t, dVar);
                }

                @Override // s9.l
                /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
                public final Object invoke(k9.d<? super t> dVar) {
                    return ((C0168a) l(dVar)).i(t.f30301a);
                }
            }

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            c(List<? extends d<T>> list, List<s9.l<k9.d<? super t>, Object>> list2, k9.d<? super c> dVar) {
                super(2, dVar);
                this.f30122x = list;
                this.f30123y = list2;
            }

            @Override // m9.a
            public final k9.d<t> d(Object obj, k9.d<?> dVar) {
                c cVar = new c(this.f30122x, this.f30123y, dVar);
                cVar.f30121w = obj;
                return cVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:13:0x004e  */
            /* JADX WARN: Removed duplicated region for block: B:19:0x0072  */
            /* JADX WARN: Removed duplicated region for block: B:23:0x008e  */
            /* JADX WARN: Removed duplicated region for block: B:25:0x0091 A[RETURN] */
            @Override // m9.a
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object i(java.lang.Object r11) throws java.lang.Throwable {
                /*
                    r10 = this;
                    java.lang.Object r0 = l9.b.c()
                    int r1 = r10.f30120v
                    r2 = 2
                    r3 = 1
                    if (r1 == 0) goto L3a
                    if (r1 == r3) goto L24
                    if (r1 != r2) goto L1c
                    java.lang.Object r1 = r10.f30117s
                    java.util.Iterator r1 = (java.util.Iterator) r1
                    java.lang.Object r4 = r10.f30121w
                    java.util.List r4 = (java.util.List) r4
                    h9.o.b(r11)
                    r7 = r10
                    goto L8c
                L1c:
                    java.lang.IllegalStateException r11 = new java.lang.IllegalStateException
                    java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
                    r11.<init>(r0)
                    throw r11
                L24:
                    java.lang.Object r1 = r10.f30119u
                    java.lang.Object r4 = r10.f30118t
                    h0.d r4 = (h0.d) r4
                    java.lang.Object r5 = r10.f30117s
                    java.util.Iterator r5 = (java.util.Iterator) r5
                    java.lang.Object r6 = r10.f30121w
                    java.util.List r6 = (java.util.List) r6
                    h9.o.b(r11)
                    r7 = r10
                    r9 = r6
                    r6 = r4
                    r4 = r9
                    goto L6a
                L3a:
                    h9.o.b(r11)
                    java.lang.Object r11 = r10.f30121w
                    java.util.List<h0.d<T>> r1 = r10.f30122x
                    java.util.List<s9.l<k9.d<? super h9.t>, java.lang.Object>> r4 = r10.f30123y
                    java.util.Iterator r1 = r1.iterator()
                    r5 = r10
                L48:
                    boolean r6 = r1.hasNext()
                    if (r6 == 0) goto L91
                    java.lang.Object r6 = r1.next()
                    h0.d r6 = (h0.d) r6
                    r5.f30121w = r4
                    r5.f30117s = r1
                    r5.f30118t = r6
                    r5.f30119u = r11
                    r5.f30120v = r3
                    java.lang.Object r7 = r6.c(r11, r5)
                    if (r7 != r0) goto L65
                    return r0
                L65:
                    r9 = r1
                    r1 = r11
                    r11 = r7
                    r7 = r5
                    r5 = r9
                L6a:
                    java.lang.Boolean r11 = (java.lang.Boolean) r11
                    boolean r11 = r11.booleanValue()
                    if (r11 == 0) goto L8e
                    h0.e$a$c$a r11 = new h0.e$a$c$a
                    r8 = 0
                    r11.<init>(r6, r8)
                    r4.add(r11)
                    r7.f30121w = r4
                    r7.f30117s = r5
                    r7.f30118t = r8
                    r7.f30119u = r8
                    r7.f30120v = r2
                    java.lang.Object r11 = r6.a(r1, r7)
                    if (r11 != r0) goto L8f
                    return r0
                L8c:
                    r5 = r7
                    goto L48
                L8e:
                    r11 = r1
                L8f:
                    r1 = r5
                    goto L8c
                L91:
                    return r11
                */
                throw new UnsupportedOperationException("Method not decompiled: h0.e.a.c.i(java.lang.Object):java.lang.Object");
            }

            @Override // s9.p
            /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
            public final Object invoke(T t10, k9.d<? super T> dVar) {
                return ((c) d(t10, dVar)).i(t.f30301a);
            }
        }

        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX WARN: Removed duplicated region for block: B:27:0x006f  */
        /* JADX WARN: Removed duplicated region for block: B:37:0x009a  */
        /* JADX WARN: Removed duplicated region for block: B:40:0x009e  */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
        /* JADX WARN: Type inference failed for: r9v3, types: [T, java.lang.Throwable] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:33:0x0086 -> B:25:0x0069). Please report as a decompilation issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:34:0x0089 -> B:25:0x0069). Please report as a decompilation issue!!! */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final <T> java.lang.Object c(java.util.List<? extends h0.d<T>> r7, h0.i<T> r8, k9.d<? super h9.t> r9) throws java.lang.Throwable {
            /*
                r6 = this;
                boolean r0 = r9 instanceof h0.e.a.b
                if (r0 == 0) goto L13
                r0 = r9
                h0.e$a$b r0 = (h0.e.a.b) r0
                int r1 = r0.f30116v
                r2 = -2147483648(0xffffffff80000000, float:-0.0)
                r3 = r1 & r2
                if (r3 == 0) goto L13
                int r1 = r1 - r2
                r0.f30116v = r1
                goto L18
            L13:
                h0.e$a$b r0 = new h0.e$a$b
                r0.<init>(r9)
            L18:
                java.lang.Object r9 = r0.f30114t
                java.lang.Object r1 = l9.b.c()
                int r2 = r0.f30116v
                r3 = 2
                r4 = 1
                if (r2 == 0) goto L46
                if (r2 == r4) goto L3e
                if (r2 != r3) goto L36
                java.lang.Object r7 = r0.f30113s
                java.util.Iterator r7 = (java.util.Iterator) r7
                java.lang.Object r8 = r0.f30112r
                t9.y r8 = (t9.y) r8
                h9.o.b(r9)     // Catch: java.lang.Throwable -> L34
                goto L69
            L34:
                r9 = move-exception
                goto L82
            L36:
                java.lang.IllegalStateException r7 = new java.lang.IllegalStateException
                java.lang.String r8 = "call to 'resume' before 'invoke' with coroutine"
                r7.<init>(r8)
                throw r7
            L3e:
                java.lang.Object r7 = r0.f30112r
                java.util.List r7 = (java.util.List) r7
                h9.o.b(r9)
                goto L60
            L46:
                h9.o.b(r9)
                java.util.ArrayList r9 = new java.util.ArrayList
                r9.<init>()
                h0.e$a$c r2 = new h0.e$a$c
                r5 = 0
                r2.<init>(r7, r9, r5)
                r0.f30112r = r9
                r0.f30116v = r4
                java.lang.Object r7 = r8.a(r2, r0)
                if (r7 != r1) goto L5f
                return r1
            L5f:
                r7 = r9
            L60:
                t9.y r8 = new t9.y
                r8.<init>()
                java.util.Iterator r7 = r7.iterator()
            L69:
                boolean r9 = r7.hasNext()
                if (r9 == 0) goto L94
                java.lang.Object r9 = r7.next()
                s9.l r9 = (s9.l) r9
                r0.f30112r = r8     // Catch: java.lang.Throwable -> L34
                r0.f30113s = r7     // Catch: java.lang.Throwable -> L34
                r0.f30116v = r3     // Catch: java.lang.Throwable -> L34
                java.lang.Object r9 = r9.invoke(r0)     // Catch: java.lang.Throwable -> L34
                if (r9 != r1) goto L69
                return r1
            L82:
                T r2 = r8.f35552o
                if (r2 != 0) goto L89
                r8.f35552o = r9
                goto L69
            L89:
                t9.m.b(r2)
                T r2 = r8.f35552o
                java.lang.Throwable r2 = (java.lang.Throwable) r2
                h9.a.a(r2, r9)
                goto L69
            L94:
                T r7 = r8.f35552o
                java.lang.Throwable r7 = (java.lang.Throwable) r7
                if (r7 != 0) goto L9d
                h9.t r7 = h9.t.f30301a
                return r7
            L9d:
                goto L9f
            L9e:
                throw r7
            L9f:
                goto L9e
            */
            throw new UnsupportedOperationException("Method not decompiled: h0.e.a.c(java.util.List, h0.i, k9.d):java.lang.Object");
        }

        public final <T> p<i<T>, k9.d<? super t>, Object> b(List<? extends d<T>> list) {
            t9.m.e(list, "migrations");
            return new C0167a(list, null);
        }
    }
}
