package s5;

import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import com.facebook.internal.ServerProtocol;
import com.facebook.share.internal.ShareInternalUtility;
import java.io.IOException;
import s5.f0;

/* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements e6.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e6.a f34564a = new a();

    /* JADX INFO: renamed from: s5.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class C0228a implements d6.d<f0.a.AbstractC0230a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0228a f34565a = new C0228a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34566b = d6.c.d("arch");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34567c = d6.c.d("libraryName");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34568d = d6.c.d("buildId");

        private C0228a() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.a.AbstractC0230a abstractC0230a, d6.e eVar) throws IOException {
            eVar.e(f34566b, abstractC0230a.b());
            eVar.e(f34567c, abstractC0230a.d());
            eVar.e(f34568d, abstractC0230a.c());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class b implements d6.d<f0.a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final b f34569a = new b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34570b = d6.c.d("pid");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34571c = d6.c.d("processName");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34572d = d6.c.d("reasonCode");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34573e = d6.c.d("importance");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f34574f = d6.c.d("pss");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final d6.c f34575g = d6.c.d("rss");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final d6.c f34576h = d6.c.d("timestamp");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final d6.c f34577i = d6.c.d("traceFile");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final d6.c f34578j = d6.c.d("buildIdMappingForArch");

        private b() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.a aVar, d6.e eVar) throws IOException {
            eVar.d(f34570b, aVar.d());
            eVar.e(f34571c, aVar.e());
            eVar.d(f34572d, aVar.g());
            eVar.d(f34573e, aVar.c());
            eVar.c(f34574f, aVar.f());
            eVar.c(f34575g, aVar.h());
            eVar.c(f34576h, aVar.i());
            eVar.e(f34577i, aVar.j());
            eVar.e(f34578j, aVar.b());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class c implements d6.d<f0.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f34579a = new c();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34580b = d6.c.d(SDKConstants.PARAM_KEY);

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34581c = d6.c.d(SDKConstants.PARAM_VALUE);

        private c() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.c cVar, d6.e eVar) throws IOException {
            eVar.e(f34580b, cVar.b());
            eVar.e(f34581c, cVar.c());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class d implements d6.d<f0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final d f34582a = new d();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34583b = d6.c.d("sdkVersion");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34584c = d6.c.d("gmpAppId");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34585d = d6.c.d("platform");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34586e = d6.c.d("installationUuid");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f34587f = d6.c.d("firebaseInstallationId");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final d6.c f34588g = d6.c.d("appQualitySessionId");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final d6.c f34589h = d6.c.d("buildVersion");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final d6.c f34590i = d6.c.d("displayVersion");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final d6.c f34591j = d6.c.d("session");

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final d6.c f34592k = d6.c.d("ndkPayload");

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final d6.c f34593l = d6.c.d("appExitInfo");

        private d() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0 f0Var, d6.e eVar) throws IOException {
            eVar.e(f34583b, f0Var.l());
            eVar.e(f34584c, f0Var.h());
            eVar.d(f34585d, f0Var.k());
            eVar.e(f34586e, f0Var.i());
            eVar.e(f34587f, f0Var.g());
            eVar.e(f34588g, f0Var.d());
            eVar.e(f34589h, f0Var.e());
            eVar.e(f34590i, f0Var.f());
            eVar.e(f34591j, f0Var.m());
            eVar.e(f34592k, f0Var.j());
            eVar.e(f34593l, f0Var.c());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class e implements d6.d<f0.d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final e f34594a = new e();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34595b = d6.c.d("files");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34596c = d6.c.d("orgId");

        private e() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.d dVar, d6.e eVar) throws IOException {
            eVar.e(f34595b, dVar.b());
            eVar.e(f34596c, dVar.c());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class f implements d6.d<f0.d.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final f f34597a = new f();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34598b = d6.c.d("filename");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34599c = d6.c.d("contents");

        private f() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.d.b bVar, d6.e eVar) throws IOException {
            eVar.e(f34598b, bVar.c());
            eVar.e(f34599c, bVar.b());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class g implements d6.d<f0.e.a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final g f34600a = new g();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34601b = d6.c.d("identifier");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34602c = d6.c.d(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34603d = d6.c.d("displayVersion");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34604e = d6.c.d("organization");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f34605f = d6.c.d("installationUuid");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final d6.c f34606g = d6.c.d("developmentPlatform");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final d6.c f34607h = d6.c.d("developmentPlatformVersion");

        private g() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.a aVar, d6.e eVar) throws IOException {
            eVar.e(f34601b, aVar.e());
            eVar.e(f34602c, aVar.h());
            eVar.e(f34603d, aVar.d());
            eVar.e(f34604e, aVar.g());
            eVar.e(f34605f, aVar.f());
            eVar.e(f34606g, aVar.b());
            eVar.e(f34607h, aVar.c());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class h implements d6.d<f0.e.a.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final h f34608a = new h();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34609b = d6.c.d("clsId");

        private h() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.a.b bVar, d6.e eVar) throws IOException {
            eVar.e(f34609b, bVar.a());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class i implements d6.d<f0.e.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final i f34610a = new i();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34611b = d6.c.d("arch");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34612c = d6.c.d(DeviceRequestsHelper.DEVICE_INFO_MODEL);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34613d = d6.c.d("cores");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34614e = d6.c.d("ram");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f34615f = d6.c.d("diskSpace");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final d6.c f34616g = d6.c.d("simulator");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final d6.c f34617h = d6.c.d("state");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final d6.c f34618i = d6.c.d("manufacturer");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final d6.c f34619j = d6.c.d("modelClass");

        private i() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.c cVar, d6.e eVar) throws IOException {
            eVar.d(f34611b, cVar.b());
            eVar.e(f34612c, cVar.f());
            eVar.d(f34613d, cVar.c());
            eVar.c(f34614e, cVar.h());
            eVar.c(f34615f, cVar.d());
            eVar.a(f34616g, cVar.j());
            eVar.d(f34617h, cVar.i());
            eVar.e(f34618i, cVar.e());
            eVar.e(f34619j, cVar.g());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class j implements d6.d<f0.e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final j f34620a = new j();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34621b = d6.c.d("generator");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34622c = d6.c.d("identifier");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34623d = d6.c.d("appQualitySessionId");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34624e = d6.c.d("startedAt");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f34625f = d6.c.d("endedAt");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final d6.c f34626g = d6.c.d("crashed");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final d6.c f34627h = d6.c.d("app");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final d6.c f34628i = d6.c.d("user");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final d6.c f34629j = d6.c.d("os");

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final d6.c f34630k = d6.c.d(DeviceRequestsHelper.DEVICE_INFO_DEVICE);

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final d6.c f34631l = d6.c.d("events");

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final d6.c f34632m = d6.c.d("generatorType");

        private j() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e eVar, d6.e eVar2) throws IOException {
            eVar2.e(f34621b, eVar.g());
            eVar2.e(f34622c, eVar.j());
            eVar2.e(f34623d, eVar.c());
            eVar2.c(f34624e, eVar.l());
            eVar2.e(f34625f, eVar.e());
            eVar2.a(f34626g, eVar.n());
            eVar2.e(f34627h, eVar.b());
            eVar2.e(f34628i, eVar.m());
            eVar2.e(f34629j, eVar.k());
            eVar2.e(f34630k, eVar.d());
            eVar2.e(f34631l, eVar.f());
            eVar2.d(f34632m, eVar.h());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class k implements d6.d<f0.e.d.a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final k f34633a = new k();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34634b = d6.c.d("execution");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34635c = d6.c.d("customAttributes");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34636d = d6.c.d("internalKeys");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34637e = d6.c.d("background");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f34638f = d6.c.d("currentProcessDetails");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final d6.c f34639g = d6.c.d("appProcessDetails");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final d6.c f34640h = d6.c.d("uiOrientation");

        private k() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a aVar, d6.e eVar) throws IOException {
            eVar.e(f34634b, aVar.f());
            eVar.e(f34635c, aVar.e());
            eVar.e(f34636d, aVar.g());
            eVar.e(f34637e, aVar.c());
            eVar.e(f34638f, aVar.d());
            eVar.e(f34639g, aVar.b());
            eVar.d(f34640h, aVar.h());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class l implements d6.d<f0.e.d.a.b.AbstractC0234a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final l f34641a = new l();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34642b = d6.c.d("baseAddress");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34643c = d6.c.d("size");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34644d = d6.c.d("name");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34645e = d6.c.d("uuid");

        private l() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a.b.AbstractC0234a abstractC0234a, d6.e eVar) throws IOException {
            eVar.c(f34642b, abstractC0234a.b());
            eVar.c(f34643c, abstractC0234a.d());
            eVar.e(f34644d, abstractC0234a.c());
            eVar.e(f34645e, abstractC0234a.f());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class m implements d6.d<f0.e.d.a.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final m f34646a = new m();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34647b = d6.c.d("threads");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34648c = d6.c.d("exception");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34649d = d6.c.d("appExitInfo");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34650e = d6.c.d("signal");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f34651f = d6.c.d("binaries");

        private m() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a.b bVar, d6.e eVar) throws IOException {
            eVar.e(f34647b, bVar.f());
            eVar.e(f34648c, bVar.d());
            eVar.e(f34649d, bVar.b());
            eVar.e(f34650e, bVar.e());
            eVar.e(f34651f, bVar.c());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class n implements d6.d<f0.e.d.a.b.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final n f34652a = new n();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34653b = d6.c.d("type");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34654c = d6.c.d("reason");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34655d = d6.c.d("frames");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34656e = d6.c.d("causedBy");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f34657f = d6.c.d("overflowCount");

        private n() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a.b.c cVar, d6.e eVar) throws IOException {
            eVar.e(f34653b, cVar.f());
            eVar.e(f34654c, cVar.e());
            eVar.e(f34655d, cVar.c());
            eVar.e(f34656e, cVar.b());
            eVar.d(f34657f, cVar.d());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class o implements d6.d<f0.e.d.a.b.AbstractC0238d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final o f34658a = new o();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34659b = d6.c.d("name");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34660c = d6.c.d("code");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34661d = d6.c.d(IntegrityManager.INTEGRITY_TYPE_ADDRESS);

        private o() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a.b.AbstractC0238d abstractC0238d, d6.e eVar) throws IOException {
            eVar.e(f34659b, abstractC0238d.d());
            eVar.e(f34660c, abstractC0238d.c());
            eVar.c(f34661d, abstractC0238d.b());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class p implements d6.d<f0.e.d.a.b.AbstractC0240e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final p f34662a = new p();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34663b = d6.c.d("name");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34664c = d6.c.d("importance");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34665d = d6.c.d("frames");

        private p() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a.b.AbstractC0240e abstractC0240e, d6.e eVar) throws IOException {
            eVar.e(f34663b, abstractC0240e.d());
            eVar.d(f34664c, abstractC0240e.c());
            eVar.e(f34665d, abstractC0240e.b());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class q implements d6.d<f0.e.d.a.b.AbstractC0240e.AbstractC0242b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final q f34666a = new q();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34667b = d6.c.d("pc");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34668c = d6.c.d("symbol");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34669d = d6.c.d(ShareInternalUtility.STAGING_PARAM);

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34670e = d6.c.d("offset");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f34671f = d6.c.d("importance");

        private q() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a.b.AbstractC0240e.AbstractC0242b abstractC0242b, d6.e eVar) throws IOException {
            eVar.c(f34667b, abstractC0242b.e());
            eVar.e(f34668c, abstractC0242b.f());
            eVar.e(f34669d, abstractC0242b.b());
            eVar.c(f34670e, abstractC0242b.d());
            eVar.d(f34671f, abstractC0242b.c());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class r implements d6.d<f0.e.d.a.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final r f34672a = new r();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34673b = d6.c.d("processName");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34674c = d6.c.d("pid");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34675d = d6.c.d("importance");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34676e = d6.c.d("defaultProcess");

        private r() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.a.c cVar, d6.e eVar) throws IOException {
            eVar.e(f34673b, cVar.d());
            eVar.d(f34674c, cVar.c());
            eVar.d(f34675d, cVar.b());
            eVar.a(f34676e, cVar.e());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class s implements d6.d<f0.e.d.c> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final s f34677a = new s();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34678b = d6.c.d("batteryLevel");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34679c = d6.c.d("batteryVelocity");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34680d = d6.c.d("proximityOn");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34681e = d6.c.d("orientation");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f34682f = d6.c.d("ramUsed");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final d6.c f34683g = d6.c.d("diskUsed");

        private s() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.c cVar, d6.e eVar) throws IOException {
            eVar.e(f34678b, cVar.b());
            eVar.d(f34679c, cVar.c());
            eVar.a(f34680d, cVar.g());
            eVar.d(f34681e, cVar.e());
            eVar.c(f34682f, cVar.f());
            eVar.c(f34683g, cVar.d());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class t implements d6.d<f0.e.d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final t f34684a = new t();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34685b = d6.c.d("timestamp");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34686c = d6.c.d("type");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34687d = d6.c.d("app");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34688e = d6.c.d(DeviceRequestsHelper.DEVICE_INFO_DEVICE);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f34689f = d6.c.d("log");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final d6.c f34690g = d6.c.d("rollouts");

        private t() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d dVar, d6.e eVar) throws IOException {
            eVar.c(f34685b, dVar.f());
            eVar.e(f34686c, dVar.g());
            eVar.e(f34687d, dVar.b());
            eVar.e(f34688e, dVar.c());
            eVar.e(f34689f, dVar.d());
            eVar.e(f34690g, dVar.e());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class u implements d6.d<f0.e.d.AbstractC0245d> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final u f34691a = new u();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34692b = d6.c.d("content");

        private u() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.AbstractC0245d abstractC0245d, d6.e eVar) throws IOException {
            eVar.e(f34692b, abstractC0245d.b());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class v implements d6.d<f0.e.d.AbstractC0246e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final v f34693a = new v();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34694b = d6.c.d("rolloutVariant");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34695c = d6.c.d("parameterKey");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34696d = d6.c.d("parameterValue");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34697e = d6.c.d("templateVersion");

        private v() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.AbstractC0246e abstractC0246e, d6.e eVar) throws IOException {
            eVar.e(f34694b, abstractC0246e.d());
            eVar.e(f34695c, abstractC0246e.b());
            eVar.e(f34696d, abstractC0246e.c());
            eVar.c(f34697e, abstractC0246e.e());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class w implements d6.d<f0.e.d.AbstractC0246e.b> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final w f34698a = new w();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34699b = d6.c.d("rolloutId");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34700c = d6.c.d("variantId");

        private w() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.AbstractC0246e.b bVar, d6.e eVar) throws IOException {
            eVar.e(f34699b, bVar.b());
            eVar.e(f34700c, bVar.c());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class x implements d6.d<f0.e.d.f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final x f34701a = new x();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34702b = d6.c.d("assignments");

        private x() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.d.f fVar, d6.e eVar) throws IOException {
            eVar.e(f34702b, fVar.b());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class y implements d6.d<f0.e.AbstractC0247e> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final y f34703a = new y();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34704b = d6.c.d("platform");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f34705c = d6.c.d(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f34706d = d6.c.d("buildVersion");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f34707e = d6.c.d("jailbroken");

        private y() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.AbstractC0247e abstractC0247e, d6.e eVar) throws IOException {
            eVar.d(f34704b, abstractC0247e.c());
            eVar.e(f34705c, abstractC0247e.d());
            eVar.e(f34706d, abstractC0247e.b());
            eVar.a(f34707e, abstractC0247e.e());
        }
    }

    /* JADX INFO: compiled from: AutoCrashlyticsReportEncoder.java */
    private static final class z implements d6.d<f0.e.f> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final z f34708a = new z();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f34709b = d6.c.d("identifier");

        private z() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(f0.e.f fVar, d6.e eVar) throws IOException {
            eVar.e(f34709b, fVar.b());
        }
    }

    private a() {
    }

    @Override // e6.a
    public void a(e6.b<?> bVar) {
        d dVar = d.f34582a;
        bVar.a(f0.class, dVar);
        bVar.a(s5.b.class, dVar);
        j jVar = j.f34620a;
        bVar.a(f0.e.class, jVar);
        bVar.a(s5.h.class, jVar);
        g gVar = g.f34600a;
        bVar.a(f0.e.a.class, gVar);
        bVar.a(s5.i.class, gVar);
        h hVar = h.f34608a;
        bVar.a(f0.e.a.b.class, hVar);
        bVar.a(s5.j.class, hVar);
        z zVar = z.f34708a;
        bVar.a(f0.e.f.class, zVar);
        bVar.a(a0.class, zVar);
        y yVar = y.f34703a;
        bVar.a(f0.e.AbstractC0247e.class, yVar);
        bVar.a(s5.z.class, yVar);
        i iVar = i.f34610a;
        bVar.a(f0.e.c.class, iVar);
        bVar.a(s5.k.class, iVar);
        t tVar = t.f34684a;
        bVar.a(f0.e.d.class, tVar);
        bVar.a(s5.l.class, tVar);
        k kVar = k.f34633a;
        bVar.a(f0.e.d.a.class, kVar);
        bVar.a(s5.m.class, kVar);
        m mVar = m.f34646a;
        bVar.a(f0.e.d.a.b.class, mVar);
        bVar.a(s5.n.class, mVar);
        p pVar = p.f34662a;
        bVar.a(f0.e.d.a.b.AbstractC0240e.class, pVar);
        bVar.a(s5.r.class, pVar);
        q qVar = q.f34666a;
        bVar.a(f0.e.d.a.b.AbstractC0240e.AbstractC0242b.class, qVar);
        bVar.a(s5.s.class, qVar);
        n nVar = n.f34652a;
        bVar.a(f0.e.d.a.b.c.class, nVar);
        bVar.a(s5.p.class, nVar);
        b bVar2 = b.f34569a;
        bVar.a(f0.a.class, bVar2);
        bVar.a(s5.c.class, bVar2);
        C0228a c0228a = C0228a.f34565a;
        bVar.a(f0.a.AbstractC0230a.class, c0228a);
        bVar.a(s5.d.class, c0228a);
        o oVar = o.f34658a;
        bVar.a(f0.e.d.a.b.AbstractC0238d.class, oVar);
        bVar.a(s5.q.class, oVar);
        l lVar = l.f34641a;
        bVar.a(f0.e.d.a.b.AbstractC0234a.class, lVar);
        bVar.a(s5.o.class, lVar);
        c cVar = c.f34579a;
        bVar.a(f0.c.class, cVar);
        bVar.a(s5.e.class, cVar);
        r rVar = r.f34672a;
        bVar.a(f0.e.d.a.c.class, rVar);
        bVar.a(s5.t.class, rVar);
        s sVar = s.f34677a;
        bVar.a(f0.e.d.c.class, sVar);
        bVar.a(s5.u.class, sVar);
        u uVar = u.f34691a;
        bVar.a(f0.e.d.AbstractC0245d.class, uVar);
        bVar.a(s5.v.class, uVar);
        x xVar = x.f34701a;
        bVar.a(f0.e.d.f.class, xVar);
        bVar.a(s5.y.class, xVar);
        v vVar = v.f34693a;
        bVar.a(f0.e.d.AbstractC0246e.class, vVar);
        bVar.a(s5.w.class, vVar);
        w wVar = w.f34698a;
        bVar.a(f0.e.d.AbstractC0246e.b.class, wVar);
        bVar.a(s5.x.class, wVar);
        e eVar = e.f34594a;
        bVar.a(f0.d.class, eVar);
        bVar.a(s5.f.class, eVar);
        f fVar = f.f34597a;
        bVar.a(f0.d.b.class, fVar);
        bVar.a(s5.g.class, fVar);
    }
}
