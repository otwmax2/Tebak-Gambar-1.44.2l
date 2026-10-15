package x6;

import android.util.Log;
import da.o0;
import da.p0;

/* JADX INFO: compiled from: SessionFirelogPublisher.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class d0 implements c0 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final a f36368g = new a(null);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final double f36369h = Math.random();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final b5.g f36370b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final l6.e f36371c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z6.f f36372d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final i f36373e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final k9.g f36374f;

    /* JADX INFO: compiled from: SessionFirelogPublisher.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: SessionFirelogPublisher.kt */
    @m9.f(c = "com.google.firebase.sessions.SessionFirelogPublisherImpl", f = "SessionFirelogPublisher.kt", l = {113}, m = "getFirebaseInstallationId")
    static final class b extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        /* synthetic */ Object f36375r;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f36377t;

        b(k9.d<? super b> dVar) {
            super(dVar);
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f36375r = obj;
            this.f36377t |= Integer.MIN_VALUE;
            return d0.this.h(this);
        }
    }

    /* JADX INFO: compiled from: SessionFirelogPublisher.kt */
    @m9.f(c = "com.google.firebase.sessions.SessionFirelogPublisherImpl$logSession$1", f = "SessionFirelogPublisher.kt", l = {64, 72, 73}, m = "invokeSuspend")
    static final class c extends m9.k implements s9.p<o0, k9.d<? super h9.t>, Object> {
        int A;
        final /* synthetic */ z C;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f36378s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        Object f36379t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        Object f36380u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        Object f36381v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        Object f36382w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        Object f36383x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        Object f36384y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        Object f36385z;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(z zVar, k9.d<? super c> dVar) {
            super(2, dVar);
            this.C = zVar;
        }

        @Override // m9.a
        public final k9.d<h9.t> d(Object obj, k9.d<?> dVar) {
            return d0.this.new c(this.C, dVar);
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x00f8 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:24:0x00f9  */
        @Override // m9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object i(java.lang.Object r15) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 277
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: x6.d0.c.i(java.lang.Object):java.lang.Object");
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(o0 o0Var, k9.d<? super h9.t> dVar) {
            return ((c) d(o0Var, dVar)).i(h9.t.f30301a);
        }
    }

    /* JADX INFO: compiled from: SessionFirelogPublisher.kt */
    @m9.f(c = "com.google.firebase.sessions.SessionFirelogPublisherImpl", f = "SessionFirelogPublisher.kt", l = {95}, m = "shouldLogSession")
    static final class d extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f36386r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        /* synthetic */ Object f36387s;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        int f36389u;

        d(k9.d<? super d> dVar) {
            super(dVar);
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f36387s = obj;
            this.f36389u |= Integer.MIN_VALUE;
            return d0.this.j(this);
        }
    }

    public d0(b5.g gVar, l6.e eVar, z6.f fVar, i iVar, k9.g gVar2) {
        t9.m.e(gVar, "firebaseApp");
        t9.m.e(eVar, "firebaseInstallations");
        t9.m.e(fVar, "sessionSettings");
        t9.m.e(iVar, "eventGDTLogger");
        t9.m.e(gVar2, "backgroundDispatcher");
        this.f36370b = gVar;
        this.f36371c = eVar;
        this.f36372d = fVar;
        this.f36373e = iVar;
        this.f36374f = gVar2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void g(a0 a0Var) {
        try {
            this.f36373e.a(a0Var);
            Log.d("SessionFirelogPublisher", "Successfully logged Session Start event: " + a0Var.c().e());
        } catch (RuntimeException e10) {
            Log.e("SessionFirelogPublisher", "Error logging Session Start event to DataTransport: ", e10);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object h(k9.d<? super java.lang.String> r5) throws java.lang.Throwable {
        /*
            r4 = this;
            boolean r0 = r5 instanceof x6.d0.b
            if (r0 == 0) goto L13
            r0 = r5
            x6.d0$b r0 = (x6.d0.b) r0
            int r1 = r0.f36377t
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f36377t = r1
            goto L18
        L13:
            x6.d0$b r0 = new x6.d0$b
            r0.<init>(r5)
        L18:
            java.lang.Object r5 = r0.f36375r
            java.lang.Object r1 = l9.b.c()
            int r2 = r0.f36377t
            r3 = 1
            if (r2 == 0) goto L33
            if (r2 != r3) goto L2b
            h9.o.b(r5)     // Catch: java.lang.Exception -> L29
            goto L4a
        L29:
            r5 = move-exception
            goto L4d
        L2b:
            java.lang.IllegalStateException r5 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r5.<init>(r0)
            throw r5
        L33:
            h9.o.b(r5)
            l6.e r5 = r4.f36371c     // Catch: java.lang.Exception -> L29
            com.google.android.gms.tasks.Task r5 = r5.a()     // Catch: java.lang.Exception -> L29
            java.lang.String r2 = "firebaseInstallations.id"
            t9.m.d(r5, r2)     // Catch: java.lang.Exception -> L29
            r0.f36377t = r3     // Catch: java.lang.Exception -> L29
            java.lang.Object r5 = ia.b.a(r5, r0)     // Catch: java.lang.Exception -> L29
            if (r5 != r1) goto L4a
            return r1
        L4a:
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Exception -> L29
            goto L56
        L4d:
            java.lang.String r0 = "SessionFirelogPublisher"
            java.lang.String r1 = "Error getting Firebase Installation ID. Using an empty ID"
            android.util.Log.e(r0, r1, r5)
            java.lang.String r5 = ""
        L56:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: x6.d0.h(k9.d):java.lang.Object");
    }

    private final boolean i() {
        return f36369h <= this.f36372d.b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object j(k9.d<? super java.lang.Boolean> r6) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r6 instanceof x6.d0.d
            if (r0 == 0) goto L13
            r0 = r6
            x6.d0$d r0 = (x6.d0.d) r0
            int r1 = r0.f36389u
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f36389u = r1
            goto L18
        L13:
            x6.d0$d r0 = new x6.d0$d
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f36387s
            java.lang.Object r1 = l9.b.c()
            int r2 = r0.f36389u
            java.lang.String r3 = "SessionFirelogPublisher"
            r4 = 1
            if (r2 == 0) goto L37
            if (r2 != r4) goto L2f
            java.lang.Object r0 = r0.f36386r
            x6.d0 r0 = (x6.d0) r0
            h9.o.b(r6)
            goto L4d
        L2f:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L37:
            h9.o.b(r6)
            java.lang.String r6 = "Data Collection is enabled for at least one Subscriber"
            android.util.Log.d(r3, r6)
            z6.f r6 = r5.f36372d
            r0.f36386r = r5
            r0.f36389u = r4
            java.lang.Object r6 = r6.g(r0)
            if (r6 != r1) goto L4c
            return r1
        L4c:
            r0 = r5
        L4d:
            z6.f r6 = r0.f36372d
            boolean r6 = r6.d()
            r1 = 0
            if (r6 != 0) goto L60
            java.lang.String r6 = "Sessions SDK disabled. Events will not be sent."
            android.util.Log.d(r3, r6)
            java.lang.Boolean r6 = m9.b.a(r1)
            return r6
        L60:
            boolean r6 = r0.i()
            if (r6 != 0) goto L70
            java.lang.String r6 = "Sessions SDK has dropped this session due to sampling."
            android.util.Log.d(r3, r6)
            java.lang.Boolean r6 = m9.b.a(r1)
            return r6
        L70:
            java.lang.Boolean r6 = m9.b.a(r4)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: x6.d0.j(k9.d):java.lang.Object");
    }

    @Override // x6.c0
    public void a(z zVar) {
        t9.m.e(zVar, "sessionDetails");
        da.j.b(p0.a(this.f36374f), null, null, new c(zVar, null), 3, null);
    }
}
