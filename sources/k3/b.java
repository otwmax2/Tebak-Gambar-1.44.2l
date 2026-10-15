package k3;

import com.facebook.appevents.UserDataStore;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import java.io.IOException;

/* JADX INFO: compiled from: AutoBatchedLogRequestEncoder.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements e6.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final e6.a f31370a = new b();

    /* JADX INFO: compiled from: AutoBatchedLogRequestEncoder.java */
    private static final class a implements d6.d<k3.a> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final a f31371a = new a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f31372b = d6.c.d("sdkVersion");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f31373c = d6.c.d(DeviceRequestsHelper.DEVICE_INFO_MODEL);

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f31374d = d6.c.d("hardware");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f31375e = d6.c.d(DeviceRequestsHelper.DEVICE_INFO_DEVICE);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f31376f = d6.c.d("product");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final d6.c f31377g = d6.c.d("osBuild");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final d6.c f31378h = d6.c.d("manufacturer");

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static final d6.c f31379i = d6.c.d("fingerprint");

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static final d6.c f31380j = d6.c.d("locale");

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static final d6.c f31381k = d6.c.d(UserDataStore.COUNTRY);

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static final d6.c f31382l = d6.c.d("mccMnc");

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private static final d6.c f31383m = d6.c.d("applicationBuild");

        private a() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(k3.a aVar, d6.e eVar) throws IOException {
            eVar.e(f31372b, aVar.m());
            eVar.e(f31373c, aVar.j());
            eVar.e(f31374d, aVar.f());
            eVar.e(f31375e, aVar.d());
            eVar.e(f31376f, aVar.l());
            eVar.e(f31377g, aVar.k());
            eVar.e(f31378h, aVar.h());
            eVar.e(f31379i, aVar.e());
            eVar.e(f31380j, aVar.g());
            eVar.e(f31381k, aVar.c());
            eVar.e(f31382l, aVar.i());
            eVar.e(f31383m, aVar.b());
        }
    }

    /* JADX INFO: renamed from: k3.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AutoBatchedLogRequestEncoder.java */
    private static final class C0187b implements d6.d<j> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final C0187b f31384a = new C0187b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f31385b = d6.c.d("logRequest");

        private C0187b() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(j jVar, d6.e eVar) throws IOException {
            eVar.e(f31385b, jVar.c());
        }
    }

    /* JADX INFO: compiled from: AutoBatchedLogRequestEncoder.java */
    private static final class c implements d6.d<k> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final c f31386a = new c();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f31387b = d6.c.d("clientType");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f31388c = d6.c.d("androidClientInfo");

        private c() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(k kVar, d6.e eVar) throws IOException {
            eVar.e(f31387b, kVar.c());
            eVar.e(f31388c, kVar.b());
        }
    }

    /* JADX INFO: compiled from: AutoBatchedLogRequestEncoder.java */
    private static final class d implements d6.d<l> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final d f31389a = new d();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f31390b = d6.c.d("eventTimeMs");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f31391c = d6.c.d("eventCode");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f31392d = d6.c.d("eventUptimeMs");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f31393e = d6.c.d("sourceExtension");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f31394f = d6.c.d("sourceExtensionJsonProto3");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final d6.c f31395g = d6.c.d("timezoneOffsetSeconds");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final d6.c f31396h = d6.c.d("networkConnectionInfo");

        private d() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(l lVar, d6.e eVar) throws IOException {
            eVar.c(f31390b, lVar.c());
            eVar.e(f31391c, lVar.b());
            eVar.c(f31392d, lVar.d());
            eVar.e(f31393e, lVar.f());
            eVar.e(f31394f, lVar.g());
            eVar.c(f31395g, lVar.h());
            eVar.e(f31396h, lVar.e());
        }
    }

    /* JADX INFO: compiled from: AutoBatchedLogRequestEncoder.java */
    private static final class e implements d6.d<m> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final e f31397a = new e();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f31398b = d6.c.d("requestTimeMs");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f31399c = d6.c.d("requestUptimeMs");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final d6.c f31400d = d6.c.d("clientInfo");

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static final d6.c f31401e = d6.c.d("logSource");

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final d6.c f31402f = d6.c.d("logSourceName");

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static final d6.c f31403g = d6.c.d("logEvent");

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static final d6.c f31404h = d6.c.d("qosTier");

        private e() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(m mVar, d6.e eVar) throws IOException {
            eVar.c(f31398b, mVar.g());
            eVar.c(f31399c, mVar.h());
            eVar.e(f31400d, mVar.b());
            eVar.e(f31401e, mVar.d());
            eVar.e(f31402f, mVar.e());
            eVar.e(f31403g, mVar.c());
            eVar.e(f31404h, mVar.f());
        }
    }

    /* JADX INFO: compiled from: AutoBatchedLogRequestEncoder.java */
    private static final class f implements d6.d<o> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final f f31405a = new f();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static final d6.c f31406b = d6.c.d("networkType");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static final d6.c f31407c = d6.c.d("mobileSubtype");

        private f() {
        }

        @Override // d6.d
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(o oVar, d6.e eVar) throws IOException {
            eVar.e(f31406b, oVar.c());
            eVar.e(f31407c, oVar.b());
        }
    }

    private b() {
    }

    @Override // e6.a
    public void a(e6.b<?> bVar) {
        C0187b c0187b = C0187b.f31384a;
        bVar.a(j.class, c0187b);
        bVar.a(k3.d.class, c0187b);
        e eVar = e.f31397a;
        bVar.a(m.class, eVar);
        bVar.a(g.class, eVar);
        c cVar = c.f31386a;
        bVar.a(k.class, cVar);
        bVar.a(k3.e.class, cVar);
        a aVar = a.f31371a;
        bVar.a(k3.a.class, aVar);
        bVar.a(k3.c.class, aVar);
        d dVar = d.f31389a;
        bVar.a(l.class, dVar);
        bVar.a(k3.f.class, dVar);
        f fVar = f.f31405a;
        bVar.a(o.class, fVar);
        bVar.a(i.class, fVar);
    }
}
