package z6;

import android.content.Context;
import b5.o;
import ca.a;
import t9.m;
import t9.u;
import t9.z;
import x6.b0;
import x6.w;

/* JADX INFO: compiled from: SessionsSettings.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class f {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final a f37260c = new a(null);

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final v9.a<Context, h0.f<k0.d>> f37261d = j0.a.b(w.f36459a.b(), null, null, null, 14, null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final h f37262a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f37263b;

    /* JADX INFO: compiled from: SessionsSettings.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ z9.h<Object>[] f37264a = {z.f(new u(a.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0))};

        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final h0.f<k0.d> b(Context context) {
            return (h0.f) f.f37261d.a(context, f37264a[0]);
        }

        public final f c() {
            Object objJ = o.a(b5.c.f4652a).j(f.class);
            m.d(objJ, "Firebase.app[SessionsSettings::class.java]");
            return (f) objJ;
        }
    }

    /* JADX INFO: compiled from: SessionsSettings.kt */
    @m9.f(c = "com.google.firebase.sessions.settings.SessionsSettings", f = "SessionsSettings.kt", l = {134, 135}, m = "updateSettings")
    static final class b extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f37265r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        /* synthetic */ Object f37266s;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        int f37268u;

        b(k9.d<? super b> dVar) {
            super(dVar);
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f37266s = obj;
            this.f37268u |= Integer.MIN_VALUE;
            return f.this.g(this);
        }
    }

    public f(h hVar, h hVar2) {
        m.e(hVar, "localOverrideSettings");
        m.e(hVar2, "remoteSettings");
        this.f37262a = hVar;
        this.f37263b = hVar2;
    }

    private final boolean e(double d10) {
        return 0.0d <= d10 && d10 <= 1.0d;
    }

    private final boolean f(long j10) {
        return ca.a.Q(j10) && ca.a.L(j10);
    }

    public final double b() {
        Double d10 = this.f37262a.d();
        if (d10 != null) {
            double dDoubleValue = d10.doubleValue();
            if (e(dDoubleValue)) {
                return dDoubleValue;
            }
        }
        Double d11 = this.f37263b.d();
        if (d11 == null) {
            return 1.0d;
        }
        double dDoubleValue2 = d11.doubleValue();
        if (e(dDoubleValue2)) {
            return dDoubleValue2;
        }
        return 1.0d;
    }

    public final long c() {
        ca.a aVarC = this.f37262a.c();
        if (aVarC != null) {
            long jU = aVarC.U();
            if (f(jU)) {
                return jU;
            }
        }
        ca.a aVarC2 = this.f37263b.c();
        if (aVarC2 != null) {
            long jU2 = aVarC2.U();
            if (f(jU2)) {
                return jU2;
            }
        }
        a.C0099a c0099a = ca.a.f5002p;
        return ca.c.h(30, ca.d.MINUTES);
    }

    public final boolean d() {
        Boolean boolA = this.f37262a.a();
        if (boolA != null) {
            return boolA.booleanValue();
        }
        Boolean boolA2 = this.f37263b.a();
        if (boolA2 != null) {
            return boolA2.booleanValue();
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final java.lang.Object g(k9.d<? super h9.t> r6) throws java.lang.Throwable {
        /*
            r5 = this;
            boolean r0 = r6 instanceof z6.f.b
            if (r0 == 0) goto L13
            r0 = r6
            z6.f$b r0 = (z6.f.b) r0
            int r1 = r0.f37268u
            r2 = -2147483648(0xffffffff80000000, float:-0.0)
            r3 = r1 & r2
            if (r3 == 0) goto L13
            int r1 = r1 - r2
            r0.f37268u = r1
            goto L18
        L13:
            z6.f$b r0 = new z6.f$b
            r0.<init>(r6)
        L18:
            java.lang.Object r6 = r0.f37266s
            java.lang.Object r1 = l9.b.c()
            int r2 = r0.f37268u
            r3 = 2
            r4 = 1
            if (r2 == 0) goto L3c
            if (r2 == r4) goto L34
            if (r2 != r3) goto L2c
            h9.o.b(r6)
            goto L5b
        L2c:
            java.lang.IllegalStateException r6 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r6.<init>(r0)
            throw r6
        L34:
            java.lang.Object r2 = r0.f37265r
            z6.f r2 = (z6.f) r2
            h9.o.b(r6)
            goto L4d
        L3c:
            h9.o.b(r6)
            z6.h r6 = r5.f37262a
            r0.f37265r = r5
            r0.f37268u = r4
            java.lang.Object r6 = r6.b(r0)
            if (r6 != r1) goto L4c
            return r1
        L4c:
            r2 = r5
        L4d:
            z6.h r6 = r2.f37263b
            r2 = 0
            r0.f37265r = r2
            r0.f37268u = r3
            java.lang.Object r6 = r6.b(r0)
            if (r6 != r1) goto L5b
            return r1
        L5b:
            h9.t r6 = h9.t.f30301a
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: z6.f.g(k9.d):java.lang.Object");
    }

    private f(Context context, k9.g gVar, k9.g gVar2, l6.e eVar, x6.b bVar) {
        this(new z6.b(context), new c(gVar2, eVar, bVar, new d(bVar, gVar, null, 4, null), f37260c.b(context)));
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public f(b5.g gVar, k9.g gVar2, k9.g gVar3, l6.e eVar) {
        m.e(gVar, "firebaseApp");
        m.e(gVar2, "blockingDispatcher");
        m.e(gVar3, "backgroundDispatcher");
        m.e(eVar, "firebaseInstallationsApi");
        Context contextL = gVar.l();
        m.d(contextL, "firebaseApp.applicationContext");
        this(contextL, gVar2, gVar3, eVar, b0.f36321a.b(gVar));
    }
}
