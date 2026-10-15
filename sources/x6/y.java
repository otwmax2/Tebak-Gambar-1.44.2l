package x6;

import android.content.Context;
import android.util.Log;
import com.facebook.gamingservices.cloudgaming.internal.SDKAnalyticsEvents;
import da.o0;
import da.p0;
import java.util.concurrent.atomic.AtomicReference;
import k0.d;

/* JADX INFO: compiled from: SessionDatastore.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class y implements x {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final b f36465f = new b(null);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Deprecated
    private static final v9.a<Context, h0.f<k0.d>> f36466g = j0.a.b(w.f36459a.a(), null, null, null, 14, null);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Context f36467b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k9.g f36468c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final AtomicReference<m> f36469d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlinx.coroutines.flow.b<m> f36470e;

    /* JADX INFO: compiled from: SessionDatastore.kt */
    @m9.f(c = "com.google.firebase.sessions.SessionDatastoreImpl$1", f = "SessionDatastore.kt", l = {79}, m = "invokeSuspend")
    static final class a extends m9.k implements s9.p<o0, k9.d<? super h9.t>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f36471s;

        /* JADX INFO: renamed from: x6.y$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: SessionDatastore.kt */
        static final class C0298a<T> implements kotlinx.coroutines.flow.c {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ y f36473o;

            C0298a(y yVar) {
                this.f36473o = yVar;
            }

            @Override // kotlinx.coroutines.flow.c
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public final Object c(m mVar, k9.d<? super h9.t> dVar) {
                this.f36473o.f36469d.set(mVar);
                return h9.t.f30301a;
            }
        }

        a(k9.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // m9.a
        public final k9.d<h9.t> d(Object obj, k9.d<?> dVar) {
            return y.this.new a(dVar);
        }

        @Override // m9.a
        public final Object i(Object obj) throws Throwable {
            Object objC = l9.d.c();
            int i10 = this.f36471s;
            if (i10 == 0) {
                h9.o.b(obj);
                kotlinx.coroutines.flow.b bVar = y.this.f36470e;
                C0298a c0298a = new C0298a(y.this);
                this.f36471s = 1;
                if (bVar.a(c0298a, this) == objC) {
                    return objC;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                h9.o.b(obj);
            }
            return h9.t.f30301a;
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(o0 o0Var, k9.d<? super h9.t> dVar) {
            return ((a) d(o0Var, dVar)).i(h9.t.f30301a);
        }
    }

    /* JADX INFO: compiled from: SessionDatastore.kt */
    private static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ z9.h<Object>[] f36474a = {t9.z.f(new t9.u(b.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

        private b() {
        }

        public /* synthetic */ b(t9.g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final h0.f<k0.d> b(Context context) {
            return (h0.f) y.f36466g.a(context, f36474a[0]);
        }
    }

    /* JADX INFO: compiled from: SessionDatastore.kt */
    private static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final c f36475a = new c();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d.a<String> f36476b = k0.f.f(SDKAnalyticsEvents.PARAMETER_SESSION_ID);

        private c() {
        }

        public final d.a<String> a() {
            return f36476b;
        }
    }

    /* JADX INFO: compiled from: SessionDatastore.kt */
    @m9.f(c = "com.google.firebase.sessions.SessionDatastoreImpl$firebaseSessionDataFlow$1", f = "SessionDatastore.kt", l = {73}, m = "invokeSuspend")
    static final class d extends m9.k implements s9.q<kotlinx.coroutines.flow.c<? super k0.d>, Throwable, k9.d<? super h9.t>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f36477s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private /* synthetic */ Object f36478t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        /* synthetic */ Object f36479u;

        d(k9.d<? super d> dVar) {
            super(3, dVar);
        }

        @Override // m9.a
        public final Object i(Object obj) throws Throwable {
            Object objC = l9.d.c();
            int i10 = this.f36477s;
            if (i10 == 0) {
                h9.o.b(obj);
                kotlinx.coroutines.flow.c cVar = (kotlinx.coroutines.flow.c) this.f36478t;
                Log.e("FirebaseSessionsRepo", "Error reading stored session data.", (Throwable) this.f36479u);
                k0.d dVarA = k0.e.a();
                this.f36478t = null;
                this.f36477s = 1;
                if (cVar.c(dVarA, this) == objC) {
                    return objC;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                h9.o.b(obj);
            }
            return h9.t.f30301a;
        }

        @Override // s9.q
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object b(kotlinx.coroutines.flow.c<? super k0.d> cVar, Throwable th, k9.d<? super h9.t> dVar) {
            d dVar2 = new d(dVar);
            dVar2.f36478t = cVar;
            dVar2.f36479u = th;
            return dVar2.i(h9.t.f30301a);
        }
    }

    /* JADX INFO: compiled from: SafeCollector.common.kt */
    public static final class e implements kotlinx.coroutines.flow.b<m> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ kotlinx.coroutines.flow.b f36480o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ y f36481p;

        /* JADX INFO: compiled from: Emitters.kt */
        public static final class a<T> implements kotlinx.coroutines.flow.c {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ kotlinx.coroutines.flow.c f36482o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            final /* synthetic */ y f36483p;

            /* JADX INFO: renamed from: x6.y$e$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: Emitters.kt */
            @m9.f(c = "com.google.firebase.sessions.SessionDatastoreImpl$special$$inlined$map$1$2", f = "SessionDatastore.kt", l = {224}, m = "emit")
            public static final class C0299a extends m9.d {

                /* JADX INFO: renamed from: r, reason: collision with root package name */
                /* synthetic */ Object f36484r;

                /* JADX INFO: renamed from: s, reason: collision with root package name */
                int f36485s;

                public C0299a(k9.d dVar) {
                    super(dVar);
                }

                @Override // m9.a
                public final Object i(Object obj) {
                    this.f36484r = obj;
                    this.f36485s |= Integer.MIN_VALUE;
                    return a.this.c(null, this);
                }
            }

            public a(kotlinx.coroutines.flow.c cVar, y yVar) {
                this.f36482o = cVar;
                this.f36483p = yVar;
            }

            /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
            @Override // kotlinx.coroutines.flow.c
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            public final java.lang.Object c(java.lang.Object r5, k9.d r6) throws java.lang.Throwable {
                /*
                    r4 = this;
                    boolean r0 = r6 instanceof x6.y.e.a.C0299a
                    if (r0 == 0) goto L13
                    r0 = r6
                    x6.y$e$a$a r0 = (x6.y.e.a.C0299a) r0
                    int r1 = r0.f36485s
                    r2 = -2147483648(0xffffffff80000000, float:-0.0)
                    r3 = r1 & r2
                    if (r3 == 0) goto L13
                    int r1 = r1 - r2
                    r0.f36485s = r1
                    goto L18
                L13:
                    x6.y$e$a$a r0 = new x6.y$e$a$a
                    r0.<init>(r6)
                L18:
                    java.lang.Object r6 = r0.f36484r
                    java.lang.Object r1 = l9.b.c()
                    int r2 = r0.f36485s
                    r3 = 1
                    if (r2 == 0) goto L31
                    if (r2 != r3) goto L29
                    h9.o.b(r6)
                    goto L47
                L29:
                    java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
                    java.lang.String r6 = "call to 'resume' before 'invoke' with coroutine"
                    r5.<init>(r6)
                    throw r5
                L31:
                    h9.o.b(r6)
                    kotlinx.coroutines.flow.c r6 = r4.f36482o
                    k0.d r5 = (k0.d) r5
                    x6.y r2 = r4.f36483p
                    x6.m r5 = x6.y.h(r2, r5)
                    r0.f36485s = r3
                    java.lang.Object r5 = r6.c(r5, r0)
                    if (r5 != r1) goto L47
                    return r1
                L47:
                    h9.t r5 = h9.t.f30301a
                    return r5
                */
                throw new UnsupportedOperationException("Method not decompiled: x6.y.e.a.c(java.lang.Object, k9.d):java.lang.Object");
            }
        }

        public e(kotlinx.coroutines.flow.b bVar, y yVar) {
            this.f36480o = bVar;
            this.f36481p = yVar;
        }

        @Override // kotlinx.coroutines.flow.b
        public Object a(kotlinx.coroutines.flow.c<? super m> cVar, k9.d dVar) {
            Object objA = this.f36480o.a(new a(cVar, this.f36481p), dVar);
            return objA == l9.d.c() ? objA : h9.t.f30301a;
        }
    }

    /* JADX INFO: compiled from: SessionDatastore.kt */
    @m9.f(c = "com.google.firebase.sessions.SessionDatastoreImpl$updateSessionId$1", f = "SessionDatastore.kt", l = {85}, m = "invokeSuspend")
    static final class f extends m9.k implements s9.p<o0, k9.d<? super h9.t>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f36487s;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        final /* synthetic */ String f36489u;

        /* JADX INFO: compiled from: SessionDatastore.kt */
        @m9.f(c = "com.google.firebase.sessions.SessionDatastoreImpl$updateSessionId$1$1", f = "SessionDatastore.kt", l = {}, m = "invokeSuspend")
        static final class a extends m9.k implements s9.p<k0.a, k9.d<? super h9.t>, Object> {

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            int f36490s;

            /* JADX INFO: renamed from: t, reason: collision with root package name */
            /* synthetic */ Object f36491t;

            /* JADX INFO: renamed from: u, reason: collision with root package name */
            final /* synthetic */ String f36492u;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            a(String str, k9.d<? super a> dVar) {
                super(2, dVar);
                this.f36492u = str;
            }

            @Override // m9.a
            public final k9.d<h9.t> d(Object obj, k9.d<?> dVar) {
                a aVar = new a(this.f36492u, dVar);
                aVar.f36491t = obj;
                return aVar;
            }

            @Override // m9.a
            public final Object i(Object obj) throws Throwable {
                l9.d.c();
                if (this.f36490s != 0) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                h9.o.b(obj);
                ((k0.a) this.f36491t).i(c.f36475a.a(), this.f36492u);
                return h9.t.f30301a;
            }

            @Override // s9.p
            /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
            public final Object invoke(k0.a aVar, k9.d<? super h9.t> dVar) {
                return ((a) d(aVar, dVar)).i(h9.t.f30301a);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        f(String str, k9.d<? super f> dVar) {
            super(2, dVar);
            this.f36489u = str;
        }

        @Override // m9.a
        public final k9.d<h9.t> d(Object obj, k9.d<?> dVar) {
            return y.this.new f(this.f36489u, dVar);
        }

        @Override // m9.a
        public final Object i(Object obj) throws Throwable {
            Object objC = l9.d.c();
            int i10 = this.f36487s;
            if (i10 == 0) {
                h9.o.b(obj);
                h0.f fVarB = y.f36465f.b(y.this.f36467b);
                a aVar = new a(this.f36489u, null);
                this.f36487s = 1;
                if (k0.g.a(fVarB, aVar, this) == objC) {
                    return objC;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                h9.o.b(obj);
            }
            return h9.t.f30301a;
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(o0 o0Var, k9.d<? super h9.t> dVar) {
            return ((f) d(o0Var, dVar)).i(h9.t.f30301a);
        }
    }

    public y(Context context, k9.g gVar) {
        t9.m.e(context, "context");
        t9.m.e(gVar, "backgroundDispatcher");
        this.f36467b = context;
        this.f36468c = gVar;
        this.f36469d = new AtomicReference<>();
        this.f36470e = new e(kotlinx.coroutines.flow.d.a(f36465f.b(context).b(), new d(null)), this);
        da.j.b(p0.a(gVar), null, null, new a(null), 3, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final m i(k0.d dVar) {
        return new m((String) dVar.b(c.f36475a.a()));
    }

    @Override // x6.x
    public String a() {
        m mVar = this.f36469d.get();
        if (mVar != null) {
            return mVar.a();
        }
        return null;
    }

    @Override // x6.x
    public void b(String str) {
        t9.m.e(str, "sessionId");
        da.j.b(p0.a(this.f36468c), null, null, new f(str, null), 3, null);
    }
}
