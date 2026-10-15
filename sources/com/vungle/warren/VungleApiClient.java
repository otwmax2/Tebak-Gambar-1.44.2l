package com.vungle.warren;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import android.security.NetworkSecurityPolicy;
import android.telephony.TelephonyManager;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Log;
import android.view.WindowManager;
import android.webkit.URLUtil;
import android.webkit.WebSettings;
import androidx.annotation.Keep;
import com.facebook.devicerequests.internal.DeviceRequestsHelper;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.gson.i;
import com.google.gson.l;
import com.google.gson.o;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.model.AdvertisementDBAdapter;
import com.vungle.warren.model.CacheBust;
import com.vungle.warren.model.CacheBustDBAdapter;
import com.vungle.warren.model.Cookie;
import com.vungle.warren.model.JsonUtil;
import com.vungle.warren.model.VisionDataDBAdapter;
import com.vungle.warren.network.APIFactory;
import com.vungle.warren.network.Call;
import com.vungle.warren.network.Response;
import com.vungle.warren.network.VungleApi;
import com.vungle.warren.omsdk.OMInjector;
import com.vungle.warren.persistence.CacheManager;
import com.vungle.warren.persistence.DatabaseHelper;
import com.vungle.warren.persistence.Repository;
import com.vungle.warren.utility.TimeoutProvider;
import ja.a0;
import ja.b0;
import ja.c0;
import ja.d0;
import ja.t;
import ja.u;
import ja.v;
import ja.x;
import ja.y;
import java.io.IOException;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import okio.c;
import okio.d;
import okio.k;
import okio.n;

/* JADX INFO: loaded from: classes2.dex */
public class VungleApiClient {
    private static final String A = "com.vungle.warren.VungleApiClient";
    private static String B;
    private static String C;
    protected static WrapperFramework D;
    private static Set<u> E;
    private static Set<u> F;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f27933a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private VungleApi f27934b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f27935c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f27936d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private String f27937e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f27938f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private String f27939g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private String f27940h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private String f27941i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private String f27942j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private o f27943k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private o f27944l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private boolean f27945m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private int f27946n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private x f27947o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private VungleApi f27948p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private VungleApi f27949q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f27950r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private CacheManager f27951s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Boolean f27952t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private TimeoutProvider f27953u;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f27955w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Repository f27956x;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final OMInjector f27958z;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Map<String, Long> f27954v = new ConcurrentHashMap();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private String f27957y = System.getProperty("http.agent");

    public static class ClearTextTrafficException extends IOException {
        ClearTextTrafficException(String str) {
            super(str);
        }
    }

    /* JADX INFO: loaded from: classes.dex */
    @Retention(RetentionPolicy.SOURCE)
    public @interface ConnectionTypeDetail {
        public static final String CDMA_1XRTT = "cdma_1xrtt";
        public static final String CDMA_EVDO_0 = "cdma_evdo_0";
        public static final String CDMA_EVDO_A = "cdma_evdo_a";
        public static final String CDMA_EVDO_B = "cdma_evdo_b";
        public static final String EDGE = "edge";
        public static final String GPRS = "gprs";
        public static final String HRPD = "hrpd";
        public static final String HSDPA = "hsdpa";
        public static final String HSUPA = "hsupa";
        public static final String LTE = "LTE";
        public static final String UNKNOWN = "unknown";
        public static final String WCDMA = "wcdma";
    }

    static class GzipRequestInterceptor implements u {
        GzipRequestInterceptor() {
        }

        private b0 a(final b0 b0Var) throws IOException {
            final c cVar = new c();
            d dVarB = n.b(new k(cVar));
            b0Var.writeTo(dVarB);
            dVarB.close();
            return new b0() { // from class: com.vungle.warren.VungleApiClient.GzipRequestInterceptor.1
                @Override // ja.b0
                public long contentLength() {
                    return cVar.s();
                }

                @Override // ja.b0
                public v contentType() {
                    return b0Var.contentType();
                }

                @Override // ja.b0
                public void writeTo(d dVar) throws IOException {
                    dVar.c3(cVar.t());
                }
            };
        }

        @Override // ja.u
        public c0 intercept(u.a aVar) throws IOException {
            a0 a0VarF = aVar.f();
            return (a0VarF.a() == null || a0VarF.c("Content-Encoding") != null) ? aVar.e(a0VarF) : aVar.e(a0VarF.g().d("Content-Encoding", "gzip").f(a0VarF.f(), a(a0VarF.a())).b());
        }
    }

    @Keep
    public enum WrapperFramework {
        admob,
        air,
        cocos2dx,
        corona,
        dfp,
        heyzap,
        marmalade,
        mopub,
        unity,
        fyber,
        ironsource,
        upsight,
        appodeal,
        aerserv,
        adtoapp,
        tapdaq,
        vunglehbs,
        max,
        none
    }

    static {
        StringBuilder sb = new StringBuilder();
        sb.append("Amazon".equals(Build.MANUFACTURER) ? "VungleAmazon/" : "VungleDroid/");
        sb.append(BuildConfig.VERSION_NAME);
        B = sb.toString();
        C = "https://ads.api.vungle.com/";
        E = new HashSet();
        F = new HashSet();
    }

    VungleApiClient(Context context, CacheManager cacheManager, Repository repository, OMInjector oMInjector) {
        this.f27951s = cacheManager;
        this.f27933a = context.getApplicationContext();
        this.f27956x = repository;
        this.f27958z = oMInjector;
        x.b bVarA = new x.b().a(new u() { // from class: com.vungle.warren.VungleApiClient.1
            @Override // ja.u
            public c0 intercept(u.a aVar) throws IOException {
                int iD;
                a0 a0VarF = aVar.f();
                String strH = a0VarF.h().h();
                Long l10 = (Long) VungleApiClient.this.f27954v.get(strH);
                if (l10 != null) {
                    long seconds = TimeUnit.MILLISECONDS.toSeconds(l10.longValue() - System.currentTimeMillis());
                    if (seconds > 0) {
                        return new c0.a().p(a0VarF).a("Retry-After", String.valueOf(seconds)).g(500).n(y.HTTP_1_1).k("Server is busy").b(d0.create(v.d("application/json; charset=utf-8"), "{\"Error\":\"Retry-After\"}")).c();
                    }
                    VungleApiClient.this.f27954v.remove(strH);
                }
                c0 c0VarE = aVar.e(a0VarF);
                if (c0VarE != null && ((iD = c0VarE.d()) == 429 || iD == 500 || iD == 502 || iD == 503)) {
                    String strC = c0VarE.h().c("Retry-After");
                    if (!TextUtils.isEmpty(strC)) {
                        try {
                            long j10 = Long.parseLong(strC);
                            if (j10 > 0) {
                                VungleApiClient.this.f27954v.put(strH, Long.valueOf((j10 * 1000) + System.currentTimeMillis()));
                            }
                        } catch (NumberFormatException unused) {
                            Log.d(VungleApiClient.A, "Retry-After value is not an valid value");
                        }
                    }
                }
                return c0VarE;
            }
        });
        this.f27947o = bVarA.d();
        x xVarD = bVarA.a(new GzipRequestInterceptor()).d();
        this.f27934b = new APIFactory(this.f27947o, C).createAPI();
        this.f27949q = new APIFactory(xVarD, C).createAPI();
        this.f27953u = (TimeoutProvider) ServiceLocator.f(context).h(TimeoutProvider.class);
    }

    public static String getHeaderUa() {
        return B;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(String str) throws DatabaseHelper.DBException {
        Cookie cookie = new Cookie(Cookie.USER_AGENT_ID_COOKIE);
        cookie.putValue(Cookie.USER_AGENT_ID_COOKIE, str);
        this.f27956x.save(cookie);
    }

    private String k(int i10) {
        switch (i10) {
            case 1:
                return ConnectionTypeDetail.GPRS;
            case 2:
                return ConnectionTypeDetail.EDGE;
            case 3:
            case 10:
            case 11:
            default:
                return "unknown";
            case 4:
                return ConnectionTypeDetail.WCDMA;
            case 5:
                return ConnectionTypeDetail.CDMA_EVDO_0;
            case 6:
                return ConnectionTypeDetail.CDMA_EVDO_A;
            case 7:
                return ConnectionTypeDetail.CDMA_1XRTT;
            case 8:
                return ConnectionTypeDetail.HSDPA;
            case 9:
                return ConnectionTypeDetail.HSUPA;
            case 12:
                return ConnectionTypeDetail.CDMA_EVDO_B;
            case 13:
                return ConnectionTypeDetail.LTE;
            case 14:
                return ConnectionTypeDetail.HRPD;
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(33:0|2|182|3|4|(31:176|6|(1:8)(1:9)|173|10|39|(3:41|(1:43)(1:44)|45)(4:46|(1:51)(1:48)|52|(1:56))|57|(1:59)|60|(4:62|(1:65)|66|(1:82)(1:(2:74|(1:(1:(1:78)(1:79))(1:80))(1:81))(1:73)))(0)|83|(1:88)(1:87)|89|(4:91|(1:109)(2:95|(1:(1:107)(2:100|(2:102|(1:104)(1:105))(1:106)))(1:108))|110|(2:112|(3:114|(1:(1:(1:119))(1:120))(1:121)|122)(1:123)))|124|(3:126|(1:128)(1:129)|130)|131|(1:135)|136|(1:138)(2:139|(1:143)(1:144))|150|(1:152)|153|185|(2:155|(1:157))(2:158|(1:160))|184|163|(1:165)(1:166)|167|168)(32:179|19|(5:21|187|22|171|23)(27:29|39|(0)(0)|57|(0)|60|(0)(0)|83|(2:85|88)(0)|89|(0)|124|(0)|131|(2:133|135)|136|(0)(0)|150|(0)|153|185|(0)(0)|184|163|(0)(0)|167|168)|32|33|34|39|(0)(0)|57|(0)|60|(0)(0)|83|(0)(0)|89|(0)|124|(0)|131|(0)|136|(0)(0)|150|(0)|153|185|(0)(0)|184|163|(0)(0)|167|168)|38|39|(0)(0)|57|(0)|60|(0)(0)|83|(0)(0)|89|(0)|124|(0)|131|(0)|136|(0)(0)|150|(0)|153|185|(0)(0)|184|163|(0)(0)|167|168) */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0337, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0338, code lost:
    
        android.util.Log.e(com.vungle.warren.VungleApiClient.A, "isInstallNonMarketAppsEnabled Settings not found", r0);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:126:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:133:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x0281  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0292  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x02f8  */
    /* JADX WARN: Removed duplicated region for block: B:155:0x030d A[Catch: SettingNotFoundException -> 0x0337, TRY_ENTER, TryCatch #9 {SettingNotFoundException -> 0x0337, blocks: (B:155:0x030d, B:157:0x0317, B:158:0x0327), top: B:185:0x030b }] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0327 A[Catch: SettingNotFoundException -> 0x0337, TRY_LEAVE, TryCatch #9 {SettingNotFoundException -> 0x0337, blocks: (B:155:0x030d, B:157:0x0317, B:158:0x0327), top: B:185:0x030b }] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x037d  */
    /* JADX WARN: Removed duplicated region for block: B:166:0x0380  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:59:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0108  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x0161  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0180  */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Type inference failed for: r8v32 */
    /* JADX WARN: Type inference failed for: r8v33 */
    /* JADX WARN: Type inference failed for: r8v5, types: [int] */
    @android.annotation.SuppressLint({"HardwareIds", "NewApi"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private com.google.gson.o l() throws java.lang.IllegalStateException {
        /*
            Method dump skipped, instruction units count: 904
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.vungle.warren.VungleApiClient.l():com.google.gson.o");
    }

    private String o() {
        Cookie cookie = (Cookie) this.f27956x.load(Cookie.USER_AGENT_ID_COOKIE, Cookie.class).get();
        if (cookie == null) {
            return System.getProperty("http.agent");
        }
        String string = cookie.getString(Cookie.USER_AGENT_ID_COOKIE);
        return TextUtils.isEmpty(string) ? System.getProperty("http.agent") : string;
    }

    private o p() {
        long jLongValue;
        String string;
        String string2;
        String string3;
        o oVar = new o();
        Cookie cookie = (Cookie) this.f27956x.load(Cookie.CONSENT_COOKIE, Cookie.class).get(this.f27953u.getTimeout(), TimeUnit.MILLISECONDS);
        String str = com.vungle.mediation.BuildConfig.FLAVOR;
        if (cookie != null) {
            string = cookie.getString("consent_status");
            string2 = cookie.getString("consent_source");
            jLongValue = cookie.getLong("timestamp").longValue();
            string3 = cookie.getString("consent_message_version");
        } else {
            jLongValue = 0;
            string = "unknown";
            string2 = "no_interaction";
            string3 = com.vungle.mediation.BuildConfig.FLAVOR;
        }
        o oVar2 = new o();
        oVar2.x("consent_status", string);
        oVar2.x("consent_source", string2);
        oVar2.v("consent_timestamp", Long.valueOf(jLongValue));
        if (!TextUtils.isEmpty(string3)) {
            str = string3;
        }
        oVar2.x("consent_message_version", str);
        oVar.t("gdpr", oVar2);
        Cookie cookie2 = (Cookie) this.f27956x.load(Cookie.CCPA_COOKIE, Cookie.class).get();
        String string4 = cookie2 != null ? cookie2.getString(Cookie.CCPA_CONSENT_STATUS) : Cookie.CONSENT_STATUS_OPTED_IN;
        o oVar3 = new o();
        oVar3.x("status", string4);
        oVar.t("ccpa", oVar3);
        return oVar;
    }

    @SuppressLint({"NewApi"})
    private void r() {
        new Thread(new Runnable() { // from class: com.vungle.warren.VungleApiClient.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    VungleApiClient vungleApiClient = VungleApiClient.this;
                    vungleApiClient.f27957y = WebSettings.getDefaultUserAgent(vungleApiClient.f27933a);
                    VungleApiClient.this.f27943k.x("ua", VungleApiClient.this.f27957y);
                    VungleApiClient vungleApiClient2 = VungleApiClient.this;
                    vungleApiClient2.i(vungleApiClient2.f27957y);
                } catch (Exception e10) {
                    Log.e(VungleApiClient.A, "Cannot Get UserAgent. Setting Default Device UserAgent." + e10.getLocalizedMessage());
                }
            }
        }, "vng_iual").start();
    }

    public static void setHeaderUa(String str) {
        B = str;
    }

    private void t(String str, o oVar) {
        oVar.x("id", str);
    }

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
    public Call<o> bustAnalytics(Collection<CacheBust> collection) {
        if (this.f27942j == null) {
            throw new IllegalStateException("API Client not configured yet! Must call /config first.");
        }
        o oVar = new o();
        oVar.t(DeviceRequestsHelper.DEVICE_INFO_DEVICE, l());
        oVar.t("app", this.f27944l);
        o oVar2 = new o();
        i iVar = new i(collection.size());
        for (CacheBust cacheBust : collection) {
            for (int i10 = 0; i10 < cacheBust.getEventIds().length; i10++) {
                o oVar3 = new o();
                oVar3.x("target", cacheBust.getIdType() == 1 ? "campaign" : VisionDataDBAdapter.VisionDataColumns.COLUMN_CREATIVE);
                oVar3.x("id", cacheBust.getId());
                oVar3.x("event_id", cacheBust.getEventIds()[i10]);
                iVar.t(oVar3);
            }
        }
        oVar2.t(CacheBustDBAdapter.CacheBustColumns.TABLE_NAME, iVar);
        oVar2.t("sessionReport", new o());
        oVar.t("request", oVar2);
        return this.f27949q.bustAnalytics(getHeaderUa(), this.f27942j, oVar);
    }

    public Call<o> cacheBust(long j10) {
        if (this.f27941i == null) {
            throw new IllegalStateException("API Client not configured yet! Must call /config first.");
        }
        o oVar = new o();
        oVar.t(DeviceRequestsHelper.DEVICE_INFO_DEVICE, l());
        oVar.t("app", this.f27944l);
        oVar.t("user", p());
        o oVar2 = new o();
        oVar2.v(Cookie.LAST_CACHE_BUST, Long.valueOf(j10));
        oVar.t("request", oVar2);
        return this.f27949q.cacheBust(getHeaderUa(), this.f27941i, oVar);
    }

    public Response config() throws IOException, VungleException {
        o oVar = new o();
        oVar.t(DeviceRequestsHelper.DEVICE_INFO_DEVICE, l());
        oVar.t("app", this.f27944l);
        oVar.t("user", p());
        Response<o> responseExecute = this.f27934b.config(getHeaderUa(), oVar).execute();
        if (!responseExecute.isSuccessful()) {
            return responseExecute;
        }
        o oVarBody = responseExecute.body();
        String str = A;
        Log.d(str, "Config Response: " + oVarBody);
        if (JsonUtil.hasNonNull(oVarBody, "sleep")) {
            Log.e(str, "Error Initializing Vungle. Please try again. " + (JsonUtil.hasNonNull(oVarBody, "info") ? oVarBody.A("info").o() : com.vungle.mediation.BuildConfig.FLAVOR));
            throw new VungleException(3);
        }
        if (!JsonUtil.hasNonNull(oVarBody, "endpoints")) {
            Log.e(str, "Error Initializing Vungle. Please try again. ");
            throw new VungleException(3);
        }
        o oVarC = oVarBody.C("endpoints");
        t tVarR = t.r(oVarC.A("new").o());
        t tVarR2 = t.r(oVarC.A("ads").o());
        t tVarR3 = t.r(oVarC.A("will_play_ad").o());
        t tVarR4 = t.r(oVarC.A("report_ad").o());
        t tVarR5 = t.r(oVarC.A("ri").o());
        t tVarR6 = t.r(oVarC.A("log").o());
        t tVarR7 = t.r(oVarC.A(CacheBustDBAdapter.CacheBustColumns.TABLE_NAME).o());
        t tVarR8 = t.r(oVarC.A("sdk_bi").o());
        if (tVarR == null || tVarR2 == null || tVarR3 == null || tVarR4 == null || tVarR5 == null || tVarR6 == null || tVarR7 == null) {
            Log.e(str, "Error Initializing Vungle. Please try again. ");
            throw new VungleException(3);
        }
        this.f27935c = tVarR.toString();
        this.f27936d = tVarR2.toString();
        this.f27938f = tVarR3.toString();
        this.f27937e = tVarR4.toString();
        this.f27939g = tVarR5.toString();
        this.f27940h = tVarR6.toString();
        this.f27941i = tVarR7.toString();
        this.f27942j = tVarR8.toString();
        o oVarC2 = oVarBody.C("will_play_ad");
        this.f27946n = oVarC2.A("request_timeout").j();
        this.f27945m = oVarC2.A("enabled").c();
        this.f27950r = JsonUtil.getAsBoolean(oVarBody.C("viewability"), "om", false);
        if (this.f27945m) {
            Log.v(str, "willPlayAd is enabled, generating a timeout client.");
            this.f27948p = new APIFactory(this.f27947o.t().j(this.f27946n, TimeUnit.MILLISECONDS).d(), "https://api.vungle.com/").createAPI();
        }
        if (getOmEnabled()) {
            this.f27958z.init();
        }
        return responseExecute;
    }

    public boolean getOmEnabled() {
        return this.f27950r;
    }

    public long getRetryAfterHeaderValue(Response response) {
        try {
            return Long.parseLong(response.headers().c("Retry-After")) * 1000;
        } catch (NumberFormatException unused) {
            return 0L;
        }
    }

    void h(boolean z10) throws DatabaseHelper.DBException {
        Cookie cookie = new Cookie(Cookie.IS_PLAY_SERVICE_AVAILABLE);
        cookie.putValue(Cookie.IS_PLAY_SERVICE_AVAILABLE, Boolean.valueOf(z10));
        this.f27956x.save(cookie);
    }

    public void init() {
        q(this.f27933a);
    }

    public Boolean isGooglePlayServicesAvailable() {
        if (this.f27952t == null) {
            this.f27952t = n();
        }
        if (this.f27952t == null) {
            this.f27952t = m();
        }
        return this.f27952t;
    }

    boolean j() {
        return this.f27945m && !TextUtils.isEmpty(this.f27938f);
    }

    Boolean m() {
        Boolean boolValueOf = null;
        try {
            GoogleApiAvailabilityLight googleApiAvailabilityLightH = GoogleApiAvailabilityLight.h();
            if (googleApiAvailabilityLightH == null) {
                return null;
            }
            boolValueOf = Boolean.valueOf(googleApiAvailabilityLightH.i(this.f27933a) == 0);
            h(boolValueOf.booleanValue());
            return boolValueOf;
        } catch (Exception unused) {
            Log.w(A, "Unexpected exception from Play services lib.");
            return boolValueOf;
        } catch (NoClassDefFoundError unused2) {
            Log.w(A, "Play services Not available");
            Boolean bool = Boolean.FALSE;
            try {
                h(false);
                return bool;
            } catch (DatabaseHelper.DBException unused3) {
                Log.w(A, "Failure to write GPS availability to DB");
                return bool;
            }
        }
    }

    Boolean n() {
        Cookie cookie = (Cookie) this.f27956x.load(Cookie.IS_PLAY_SERVICE_AVAILABLE, Cookie.class).get(this.f27953u.getTimeout(), TimeUnit.MILLISECONDS);
        if (cookie != null) {
            return cookie.getBoolean(Cookie.IS_PLAY_SERVICE_AVAILABLE);
        }
        return null;
    }

    public boolean pingTPAT(String str) throws MalformedURLException, ClearTextTrafficException {
        if (TextUtils.isEmpty(str) || t.r(str) == null) {
            throw new MalformedURLException("Invalid URL : " + str);
        }
        try {
            String host = new URL(str).getHost();
            int i10 = Build.VERSION.SDK_INT;
            if (!(i10 >= 24 ? NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted(host) : i10 >= 23 ? NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted() : true) && URLUtil.isHttpUrl(str)) {
                throw new ClearTextTrafficException("Clear Text Traffic is blocked");
            }
            try {
                this.f27934b.pingTPAT(this.f27957y, str).execute();
                return true;
            } catch (IOException unused) {
                Log.d(A, "Error on pinging TPAT");
                return false;
            }
        } catch (MalformedURLException unused2) {
            throw new MalformedURLException("Invalid URL : " + str);
        }
    }

    synchronized void q(Context context) {
        o oVar = new o();
        oVar.x("bundle", context.getPackageName());
        String str = null;
        try {
            str = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException unused) {
        }
        if (str == null) {
            str = "1.0";
        }
        oVar.x("ver", str);
        o oVar2 = new o();
        String str2 = Build.MANUFACTURER;
        oVar2.x("make", str2);
        oVar2.x(DeviceRequestsHelper.DEVICE_INFO_MODEL, Build.MODEL);
        oVar2.x("osv", Build.VERSION.RELEASE);
        oVar2.x("carrier", ((TelephonyManager) context.getSystemService("phone")).getNetworkOperatorName());
        oVar2.x("os", "Amazon".equals(str2) ? "amazon" : "android");
        DisplayMetrics displayMetrics = new DisplayMetrics();
        ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getMetrics(displayMetrics);
        oVar2.v("w", Integer.valueOf(displayMetrics.widthPixels));
        oVar2.v("h", Integer.valueOf(displayMetrics.heightPixels));
        o oVar3 = new o();
        oVar3.t("vungle", new o());
        oVar2.t("ext", oVar3);
        try {
            this.f27957y = o();
            r();
        } catch (Exception e10) {
            Log.e(A, "Cannot Get UserAgent. Setting Default Device UserAgent." + e10.getLocalizedMessage());
        }
        oVar2.x("ua", this.f27957y);
        this.f27943k = oVar2;
        this.f27944l = oVar;
        this.f27952t = m();
    }

    public Call<o> reportAd(o oVar) {
        if (this.f27937e == null) {
            throw new IllegalStateException("API Client not configured yet! Must call /config first.");
        }
        o oVar2 = new o();
        oVar2.t(DeviceRequestsHelper.DEVICE_INFO_DEVICE, l());
        oVar2.t("app", this.f27944l);
        oVar2.t("request", oVar);
        oVar2.t("user", p());
        return this.f27949q.reportAd(getHeaderUa(), this.f27937e, oVar2);
    }

    public Call<o> reportNew() throws IllegalStateException {
        if (this.f27935c == null) {
            throw new IllegalStateException("API Client not configured yet! Must call /config first.");
        }
        HashMap map = new HashMap(2);
        l lVarA = this.f27944l.A("id");
        l lVarA2 = this.f27943k.A("ifa");
        String strO = com.vungle.mediation.BuildConfig.FLAVOR;
        map.put("app_id", lVarA != null ? lVarA.o() : com.vungle.mediation.BuildConfig.FLAVOR);
        if (lVarA2 != null) {
            strO = lVarA2.o();
        }
        map.put("ifa", strO);
        return this.f27934b.reportNew(getHeaderUa(), this.f27935c, map);
    }

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
    public Call<o> requestAd(String str, String str2, boolean z10, o oVar) throws IllegalStateException {
        if (this.f27936d == null) {
            throw new IllegalStateException("API Client not configured yet! Must call /config first.");
        }
        o oVar2 = new o();
        oVar2.t(DeviceRequestsHelper.DEVICE_INFO_DEVICE, l());
        oVar2.t("app", this.f27944l);
        o oVarP = p();
        if (oVar != null) {
            oVarP.t("vision", oVar);
        }
        oVar2.t("user", oVarP);
        o oVar3 = new o();
        i iVar = new i();
        iVar.u(str);
        oVar3.t("placements", iVar);
        oVar3.u("header_bidding", Boolean.valueOf(z10));
        if (!TextUtils.isEmpty(str2)) {
            oVar3.x("ad_size", str2);
        }
        oVar2.t("request", oVar3);
        return this.f27949q.ads(getHeaderUa(), this.f27936d, oVar2);
    }

    public Call<o> ri(o oVar) {
        if (this.f27939g == null) {
            throw new IllegalStateException("API Client not configured yet! Must call /config first.");
        }
        o oVar2 = new o();
        oVar2.t(DeviceRequestsHelper.DEVICE_INFO_DEVICE, l());
        oVar2.t("app", this.f27944l);
        oVar2.t("request", oVar);
        return this.f27934b.ri(getHeaderUa(), this.f27939g, oVar2);
    }

    void s(String str) {
        t(str, this.f27944l);
    }

    public Call<o> sendLog(o oVar) {
        if (this.f27940h != null) {
            return this.f27949q.sendLog(getHeaderUa(), this.f27940h, oVar);
        }
        throw new IllegalStateException("API Client not configured yet! Must call /config first.");
    }

    public void setDefaultIdFallbackDisabled(boolean z10) {
        this.f27955w = z10;
    }

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
    Call<o> u(String str, boolean z10, String str2) {
        o oVar = new o();
        oVar.t(DeviceRequestsHelper.DEVICE_INFO_DEVICE, l());
        oVar.t("app", this.f27944l);
        oVar.t("user", p());
        o oVar2 = new o();
        o oVar3 = new o();
        oVar3.x("reference_id", str);
        oVar3.u("is_auto_cached", Boolean.valueOf(z10));
        oVar2.t("placement", oVar3);
        oVar2.x(AdvertisementDBAdapter.AdvertisementColumns.COLUMN_AD_TOKEN, str2);
        oVar.t("request", oVar2);
        return this.f27948p.willPlayAd(getHeaderUa(), this.f27938f, oVar);
    }
}
