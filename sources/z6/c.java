package z6;

import android.util.Log;
import ca.a;
import com.vungle.mediation.BuildConfig;
import h9.o;
import h9.t;
import m9.k;
import org.json.JSONObject;
import s9.p;
import t9.m;

/* JADX INFO: compiled from: RemoteSettings.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class c implements h {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final a f37227g = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final k9.g f37228a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l6.e f37229b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final x6.b f37230c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final z6.a f37231d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final g f37232e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlinx.coroutines.sync.b f37233f;

    /* JADX INFO: compiled from: RemoteSettings.kt */
    private static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: RemoteSettings.kt */
    @m9.f(c = "com.google.firebase.sessions.settings.RemoteSettings", f = "RemoteSettings.kt", l = {170, 76, 94}, m = "updateSettings")
    static final class b extends m9.d {

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Object f37234r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f37235s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        /* synthetic */ Object f37236t;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        int f37238v;

        b(k9.d<? super b> dVar) {
            super(dVar);
        }

        @Override // m9.a
        public final Object i(Object obj) {
            this.f37236t = obj;
            this.f37238v |= Integer.MIN_VALUE;
            return c.this.b(this);
        }
    }

    /* JADX INFO: renamed from: z6.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: RemoteSettings.kt */
    @m9.f(c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$1", f = "RemoteSettings.kt", l = {125, 128, 131, 133, 134, 136}, m = "invokeSuspend")
    static final class C0309c extends k implements p<JSONObject, k9.d<? super t>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Object f37239s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        Object f37240t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        int f37241u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        /* synthetic */ Object f37242v;

        C0309c(k9.d<? super C0309c> dVar) {
            super(2, dVar);
        }

        @Override // m9.a
        public final k9.d<t> d(Object obj, k9.d<?> dVar) {
            C0309c c0309c = c.this.new C0309c(dVar);
            c0309c.f37242v = obj;
            return c0309c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:45:0x00fc  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x011f  */
        /* JADX WARN: Removed duplicated region for block: B:55:0x0142  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x0162  */
        /* JADX WARN: Removed duplicated region for block: B:61:0x0165  */
        /* JADX WARN: Removed duplicated region for block: B:66:0x019f A[RETURN] */
        /* JADX WARN: Type inference failed for: r13v12, types: [T, java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r1v5, types: [T, java.lang.Integer] */
        /* JADX WARN: Type inference failed for: r2v4, types: [T, java.lang.Double] */
        @Override // m9.a
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public final java.lang.Object i(java.lang.Object r13) throws java.lang.Throwable {
            /*
                Method dump skipped, instruction units count: 438
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: z6.c.C0309c.i(java.lang.Object):java.lang.Object");
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(JSONObject jSONObject, k9.d<? super t> dVar) {
            return ((C0309c) d(jSONObject, dVar)).i(t.f30301a);
        }
    }

    /* JADX INFO: compiled from: RemoteSettings.kt */
    @m9.f(c = "com.google.firebase.sessions.settings.RemoteSettings$updateSettings$2$2", f = "RemoteSettings.kt", l = {}, m = "invokeSuspend")
    static final class d extends k implements p<String, k9.d<? super t>, Object> {

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f37244s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        /* synthetic */ Object f37245t;

        d(k9.d<? super d> dVar) {
            super(2, dVar);
        }

        @Override // m9.a
        public final k9.d<t> d(Object obj, k9.d<?> dVar) {
            d dVar2 = new d(dVar);
            dVar2.f37245t = obj;
            return dVar2;
        }

        @Override // m9.a
        public final Object i(Object obj) throws Throwable {
            l9.d.c();
            if (this.f37244s != 0) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            o.b(obj);
            Log.e("SessionConfigFetcher", "Error failing to fetch the remote configs: " + ((String) this.f37245t));
            return t.f30301a;
        }

        @Override // s9.p
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public final Object invoke(String str, k9.d<? super t> dVar) {
            return ((d) d(str, dVar)).i(t.f30301a);
        }
    }

    public c(k9.g gVar, l6.e eVar, x6.b bVar, z6.a aVar, h0.f<k0.d> fVar) {
        m.e(gVar, "backgroundDispatcher");
        m.e(eVar, "firebaseInstallationsApi");
        m.e(bVar, "appInfo");
        m.e(aVar, "configsFetcher");
        m.e(fVar, "dataStore");
        this.f37228a = gVar;
        this.f37229b = eVar;
        this.f37230c = bVar;
        this.f37231d = aVar;
        this.f37232e = new g(fVar);
        this.f37233f = kotlinx.coroutines.sync.d.b(false, 1, null);
    }

    private final String f(String str) {
        return new ba.f("/").b(str, BuildConfig.FLAVOR);
    }

    @Override // z6.h
    public Boolean a() {
        return this.f37232e.g();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00b8 A[Catch: all -> 0x0052, TRY_LEAVE, TryCatch #0 {all -> 0x0052, blocks: (B:21:0x004e, B:44:0x00b4, B:46:0x00b8, B:50:0x00c4, B:36:0x0089, B:38:0x0091, B:41:0x009c), top: B:59:0x002a }] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0017  */
    /* JADX WARN: Type inference failed for: r2v10, types: [kotlinx.coroutines.sync.b] */
    /* JADX WARN: Type inference failed for: r2v13 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4, types: [kotlinx.coroutines.sync.b] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    /* JADX WARN: Type inference failed for: r2v7, types: [kotlinx.coroutines.sync.b] */
    /* JADX WARN: Type inference failed for: r4v0, types: [int] */
    @Override // z6.h
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.Object b(k9.d<? super h9.t> r17) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 344
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: z6.c.b(k9.d):java.lang.Object");
    }

    @Override // z6.h
    public ca.a c() {
        Integer numE = this.f37232e.e();
        if (numE == null) {
            return null;
        }
        a.C0099a c0099a = ca.a.f5002p;
        return ca.a.e(ca.c.h(numE.intValue(), ca.d.SECONDS));
    }

    @Override // z6.h
    public Double d() {
        return this.f37232e.f();
    }
}
