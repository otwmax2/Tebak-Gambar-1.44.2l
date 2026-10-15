package z6;

import da.i;
import da.o0;
import h9.o;
import h9.t;
import k0.d;
import m9.k;
import s9.p;
import t9.m;

/* JADX INFO: compiled from: SettingsCache.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final b f37269c = new b(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Deprecated
    private static final d.a<Boolean> f37270d = k0.f.a("firebase_sessions_enabled");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    @Deprecated
    private static final d.a<Double> f37271e = k0.f.b("firebase_sessions_sampling_rate");

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Deprecated
    private static final d.a<Integer> f37272f = k0.f.d("firebase_sessions_restart_timeout");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Deprecated
    private static final d.a<Integer> f37273g = k0.f.d("firebase_sessions_cache_duration");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Deprecated
    private static final d.a<Long> f37274h = k0.f.e("firebase_sessions_cache_updated_time");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h0.f<k0.d> f37275a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private e f37276b;

    /* JADX INFO: compiled from: SettingsCache.kt */
    @m9.f(c = "com.google.firebase.sessions.settings.SettingsCache$1", f = "SettingsCache.kt", l = {46}, m = "invokeSuspend")
    static final class a extends k implements p<o0, k9.d<? super t>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f37277s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f37278t;

        a(k9.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // m9.a
        public final k9.d<t> d(Object obj, k9.d<?> dVar) {
            return g.this.new a(dVar);
        }

        @Override // m9.a
        public final Object i(Object obj) throws Throwable {
            g gVar;
            Object objC = l9.d.c();
            int i10 = this.f37278t;
            if (i10 == 0) {
                o.b(obj);
                g gVar2 = g.this;
                kotlinx.coroutines.flow.b bVarB = gVar2.f37275a.b();
                this.f37277s = gVar2;
                this.f37278t = 1;
                Object objF = kotlinx.coroutines.flow.d.f(bVarB, this);
                if (objF == objC) {
                    return objC;
                }
                gVar = gVar2;
                obj = objF;
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                gVar = (g) this.f37277s;
                o.b(obj);
            }
            gVar.l(((k0.d) obj).d());
            return t.f30301a;
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(o0 o0Var, k9.d<? super t> dVar) {
            return ((a) d(o0Var, dVar)).i(t.f30301a);
        }
    }

    /* JADX INFO: compiled from: SettingsCache.kt */
    private static final class b {
        private b() {
        }

        public /* synthetic */ b(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: SettingsCache.kt */
    @m9.f(c = "com.google.firebase.sessions.settings.SettingsCache", f = "SettingsCache.kt", l = {112}, m = "updateConfigValue")
    static final class c<T> extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        /* synthetic */ Object f37280r;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f37282t;

        c(k9.d<? super c> dVar) {
            super(dVar);
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f37280r = obj;
            this.f37282t |= Integer.MIN_VALUE;
            return g.this.h(null, null, this);
        }
    }

    /* JADX INFO: compiled from: SettingsCache.kt */
    @m9.f(c = "com.google.firebase.sessions.settings.SettingsCache$updateConfigValue$2", f = "SettingsCache.kt", l = {}, m = "invokeSuspend")
    static final class d extends k implements p<k0.a, k9.d<? super t>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f37283s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        /* synthetic */ Object f37284t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ T f37285u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        final /* synthetic */ d.a<T> f37286v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        final /* synthetic */ g f37287w;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        d(T t10, d.a<T> aVar, g gVar, k9.d<? super d> dVar) {
            super(2, dVar);
            this.f37285u = t10;
            this.f37286v = aVar;
            this.f37287w = gVar;
        }

        @Override // m9.a
        public final k9.d<t> d(Object obj, k9.d<?> dVar) {
            d dVar2 = new d(this.f37285u, this.f37286v, this.f37287w, dVar);
            dVar2.f37284t = obj;
            return dVar2;
        }

        @Override // m9.a
        public final Object i(Object obj) throws Throwable {
            l9.d.c();
            if (this.f37283s != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            o.b(obj);
            k0.a aVar = (k0.a) this.f37284t;
            T t10 = this.f37285u;
            if (t10 != 0) {
                aVar.i(this.f37286v, t10);
            } else {
                aVar.h(this.f37286v);
            }
            this.f37287w.l(aVar);
            return t.f30301a;
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(k0.a aVar, k9.d<? super t> dVar) {
            return ((d) d(aVar, dVar)).i(t.f30301a);
        }
    }

    public g(h0.f<k0.d> fVar) throws InterruptedException {
        m.e(fVar, "dataStore");
        this.f37275a = fVar;
        i.b(null, new a(null), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final <T> java.lang.Object h(k0.d.a<T> r6, T r7, k9.d<? super h9.t> r8) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r8 instanceof z6.g.c
            if (r0 == 0) goto L13
            r0 = r8
            z6.g$c r0 = (z6.g.c) r0
            int r1 = r0.f37282t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f37282t = r1
            goto L18
        L13:
            z6.g$c r0 = new z6.g$c
            r0.<init>(r8)
        L18:
            java.lang.Object r8 = r0.f37280r
            java.lang.Object r1 = l9.b.c()
            int r2 = r0.f37282t
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            h9.o.b(r8)     // Catch: java.io.IOException -> L29
            goto L5d
        L29:
            r6 = move-exception
            goto L47
        L2b:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r7 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r7)
            throw r6
        L33:
            h9.o.b(r8)
            h0.f<k0.d> r8 = r5.f37275a     // Catch: java.io.IOException -> L29
            z6.g$d r2 = new z6.g$d     // Catch: java.io.IOException -> L29
            r4 = 0
            r2.<init>(r7, r6, r5, r4)     // Catch: java.io.IOException -> L29
            r0.f37282t = r3     // Catch: java.io.IOException -> L29
            java.lang.Object r6 = k0.g.a(r8, r2, r0)     // Catch: java.io.IOException -> L29
            if (r6 != r1) goto L5d
            return r1
        L47:
            java.lang.StringBuilder r7 = new java.lang.StringBuilder
            r7.<init>()
            java.lang.String r8 = "Failed to update cache config value: "
            r7.append(r8)
            r7.append(r6)
            java.lang.String r6 = r7.toString()
            java.lang.String r7 = "SettingsCache"
            android.util.Log.w(r7, r6)
        L5d:
            h9.t r6 = h9.t.f30301a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: z6.g.h(k0.d$a, java.lang.Object, k9.d):java.lang.Object");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(k0.d dVar) {
        this.f37276b = new e((Boolean) dVar.b(f37270d), (Double) dVar.b(f37271e), (Integer) dVar.b(f37272f), (Integer) dVar.b(f37273g), (Long) dVar.b(f37274h));
    }

    public final boolean d() {
        e eVar = this.f37276b;
        e eVar2 = null;
        if (eVar == null) {
            m.p("sessionConfigs");
            eVar = null;
        }
        Long lB = eVar.b();
        e eVar3 = this.f37276b;
        if (eVar3 == null) {
            m.p("sessionConfigs");
        } else {
            eVar2 = eVar3;
        }
        Integer numA = eVar2.a();
        return lB == null || numA == null || (System.currentTimeMillis() - lB.longValue()) / ((long) 1000) >= ((long) numA.intValue());
    }

    public final Integer e() {
        e eVar = this.f37276b;
        if (eVar == null) {
            m.p("sessionConfigs");
            eVar = null;
        }
        return eVar.d();
    }

    public final Double f() {
        e eVar = this.f37276b;
        if (eVar == null) {
            m.p("sessionConfigs");
            eVar = null;
        }
        return eVar.e();
    }

    public final Boolean g() {
        e eVar = this.f37276b;
        if (eVar == null) {
            m.p("sessionConfigs");
            eVar = null;
        }
        return eVar.c();
    }

    public final Object i(Double d10, k9.d<? super t> dVar) throws Throwable {
        Object objH = h(f37271e, d10, dVar);
        return objH == l9.d.c() ? objH : t.f30301a;
    }

    public final Object j(Integer num, k9.d<? super t> dVar) throws Throwable {
        Object objH = h(f37273g, num, dVar);
        return objH == l9.d.c() ? objH : t.f30301a;
    }

    public final Object k(Long l10, k9.d<? super t> dVar) throws Throwable {
        Object objH = h(f37274h, l10, dVar);
        return objH == l9.d.c() ? objH : t.f30301a;
    }

    public final Object m(Integer num, k9.d<? super t> dVar) throws Throwable {
        Object objH = h(f37272f, num, dVar);
        return objH == l9.d.c() ? objH : t.f30301a;
    }

    public final Object n(Boolean bool, k9.d<? super t> dVar) throws Throwable {
        Object objH = h(f37270d, bool, dVar);
        return objH == l9.d.c() ? objH : t.f30301a;
    }
}
