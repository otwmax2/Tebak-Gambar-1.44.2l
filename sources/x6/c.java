package x6;

import java.io.IOException;

/* JADX INFO: compiled from: AutoSessionEventEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
public final class c implements e6.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e6.a f36323a = new c();

    /* JADX INFO: compiled from: AutoSessionEventEncoder.java */
    private static final class a implements d6.d<x6.a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final a f36324a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f36325b = d6.c.d("packageName");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f36326c = d6.c.d("versionName");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f36327d = d6.c.d("appBuildVersion");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f36328e = d6.c.d("deviceManufacturer");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f36329f = d6.c.d("currentProcessDetails");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final d6.c f36330g = d6.c.d("appProcessDetails");

        private a() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(x6.a aVar, d6.e eVar) throws IOException {
            eVar.e(f36325b, aVar.e());
            eVar.e(f36326c, aVar.f());
            eVar.e(f36327d, aVar.a());
            eVar.e(f36328e, aVar.d());
            eVar.e(f36329f, aVar.c());
            eVar.e(f36330g, aVar.b());
        }
    }

    /* JADX INFO: compiled from: AutoSessionEventEncoder.java */
    private static final class b implements d6.d<x6.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f36331a = new b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f36332b = d6.c.d("appId");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f36333c = d6.c.d("deviceModel");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f36334d = d6.c.d("sessionSdkVersion");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f36335e = d6.c.d("osVersion");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f36336f = d6.c.d("logEnvironment");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final d6.c f36337g = d6.c.d("androidAppInfo");

        private b() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(x6.b bVar, d6.e eVar) throws IOException {
            eVar.e(f36332b, bVar.b());
            eVar.e(f36333c, bVar.c());
            eVar.e(f36334d, bVar.f());
            eVar.e(f36335e, bVar.e());
            eVar.e(f36336f, bVar.d());
            eVar.e(f36337g, bVar.a());
        }
    }

    /* JADX INFO: renamed from: x6.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AutoSessionEventEncoder.java */
    private static final class C0296c implements d6.d<x6.f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0296c f36338a = new C0296c();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f36339b = d6.c.d("performance");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f36340c = d6.c.d("crashlytics");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f36341d = d6.c.d("sessionSamplingRate");

        private C0296c() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(x6.f fVar, d6.e eVar) throws IOException {
            eVar.e(f36339b, fVar.b());
            eVar.e(f36340c, fVar.a());
            eVar.b(f36341d, fVar.c());
        }
    }

    /* JADX INFO: compiled from: AutoSessionEventEncoder.java */
    private static final class d implements d6.d<u> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final d f36342a = new d();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f36343b = d6.c.d("processName");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f36344c = d6.c.d("pid");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f36345d = d6.c.d("importance");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f36346e = d6.c.d("defaultProcess");

        private d() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(u uVar, d6.e eVar) throws IOException {
            eVar.e(f36343b, uVar.c());
            eVar.d(f36344c, uVar.b());
            eVar.d(f36345d, uVar.a());
            eVar.a(f36346e, uVar.d());
        }
    }

    /* JADX INFO: compiled from: AutoSessionEventEncoder.java */
    private static final class e implements d6.d<a0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final e f36347a = new e();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f36348b = d6.c.d("eventType");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f36349c = d6.c.d("sessionData");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f36350d = d6.c.d("applicationInfo");

        private e() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(a0 a0Var, d6.e eVar) throws IOException {
            eVar.e(f36348b, a0Var.b());
            eVar.e(f36349c, a0Var.c());
            eVar.e(f36350d, a0Var.a());
        }
    }

    /* JADX INFO: compiled from: AutoSessionEventEncoder.java */
    private static final class f implements d6.d<f0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final f f36351a = new f();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f36352b = d6.c.d("sessionId");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f36353c = d6.c.d("firstSessionId");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f36354d = d6.c.d("sessionIndex");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f36355e = d6.c.d("eventTimestampUs");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f36356f = d6.c.d("dataCollectionStatus");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final d6.c f36357g = d6.c.d("firebaseInstallationId");

        private f() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0 f0Var, d6.e eVar) throws IOException {
            eVar.e(f36352b, f0Var.e());
            eVar.e(f36353c, f0Var.d());
            eVar.d(f36354d, f0Var.f());
            eVar.c(f36355e, f0Var.b());
            eVar.e(f36356f, f0Var.a());
            eVar.e(f36357g, f0Var.c());
        }
    }

    private c() {
    }

    @Override // e6.a
    public void a(e6.b<?> bVar) {
        bVar.a(a0.class, e.f36347a);
        bVar.a(f0.class, f.f36351a);
        bVar.a(x6.f.class, C0296c.f36338a);
        bVar.a(x6.b.class, b.f36331a);
        bVar.a(x6.a.class, a.f36324a);
        bVar.a(u.class, d.f36342a);
    }
}
