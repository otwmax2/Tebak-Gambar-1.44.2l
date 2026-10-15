package com.google.android.gms.measurement.internal;

import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.wrappers.Wrappers;
import com.google.android.gms.internal.measurement.zzhy;
import com.google.android.gms.internal.measurement.zzoc;
import java.net.URL;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.checkerframework.dataflow.qual.Pure;
import org.checkerframework.dataflow.qual.SideEffectFree;

/* JADX INFO: compiled from: com.google.android.gms:play-services-measurement-impl@@20.1.2 */
/* JADX INFO: loaded from: classes.dex */
public final class zzgi implements a1 {
    private static volatile zzgi H;
    private volatile Boolean A;

    @VisibleForTesting
    protected Boolean B;

    @VisibleForTesting
    protected Boolean C;
    private volatile boolean D;
    private int E;

    @VisibleForTesting
    final long G;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f24706a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f24707b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f24708c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f24709d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f24710e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzaa f24711f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzaf f24712g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final x f24713h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzey f24714i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzgf f24715j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzkr f24716k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzlp f24717l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzet f24718m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final Clock f24719n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzjb f24720o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzin f24721p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzd f24722q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzir f24723r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final String f24724s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private zzer f24725t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private zzkb f24726u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private zzap f24727v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private zzep f24728w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private Boolean f24730y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f24731z;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f24729x = false;
    private final AtomicInteger F = new AtomicInteger(0);

    zzgi(zzhl zzhlVar) {
        Bundle bundle;
        Preconditions.k(zzhlVar);
        Context context = zzhlVar.f24748a;
        zzaa zzaaVar = new zzaa(context);
        this.f24711f = zzaaVar;
        n.f24224a = zzaaVar;
        this.f24706a = context;
        this.f24707b = zzhlVar.f24749b;
        this.f24708c = zzhlVar.f24750c;
        this.f24709d = zzhlVar.f24751d;
        this.f24710e = zzhlVar.f24755h;
        this.A = zzhlVar.f24752e;
        this.f24724s = zzhlVar.f24757j;
        this.D = true;
        com.google.android.gms.internal.measurement.zzcl zzclVar = zzhlVar.f24754g;
        if (zzclVar != null && (bundle = zzclVar.f23363u) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.B = (Boolean) obj;
            }
            Object obj2 = zzclVar.f23363u.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.C = (Boolean) obj2;
            }
        }
        zzhy.e(context);
        Clock clockD = DefaultClock.d();
        this.f24719n = clockD;
        Long l10 = zzhlVar.f24756i;
        this.G = l10 != null ? l10.longValue() : clockD.a();
        this.f24712g = new zzaf(this);
        x xVar = new x(this);
        xVar.g();
        this.f24713h = xVar;
        zzey zzeyVar = new zzey(this);
        zzeyVar.g();
        this.f24714i = zzeyVar;
        zzlp zzlpVar = new zzlp(this);
        zzlpVar.g();
        this.f24717l = zzlpVar;
        this.f24718m = new zzet(new b1(zzhlVar, this));
        this.f24722q = new zzd(this);
        zzjb zzjbVar = new zzjb(this);
        zzjbVar.e();
        this.f24720o = zzjbVar;
        zzin zzinVar = new zzin(this);
        zzinVar.e();
        this.f24721p = zzinVar;
        zzkr zzkrVar = new zzkr(this);
        zzkrVar.e();
        this.f24716k = zzkrVar;
        zzir zzirVar = new zzir(this);
        zzirVar.g();
        this.f24723r = zzirVar;
        zzgf zzgfVar = new zzgf(this);
        zzgfVar.g();
        this.f24715j = zzgfVar;
        com.google.android.gms.internal.measurement.zzcl zzclVar2 = zzhlVar.f24754g;
        boolean z10 = zzclVar2 == null || zzclVar2.f23358p == 0;
        if (context.getApplicationContext() instanceof Application) {
            zzin zzinVarG = G();
            if (zzinVarG.f24394a.f24706a.getApplicationContext() instanceof Application) {
                Application application = (Application) zzinVarG.f24394a.f24706a.getApplicationContext();
                if (zzinVarG.f24766c == null) {
                    zzinVarG.f24766c = new x1(zzinVarG, null);
                }
                if (z10) {
                    application.unregisterActivityLifecycleCallbacks(zzinVarG.f24766c);
                    application.registerActivityLifecycleCallbacks(zzinVarG.f24766c);
                    zzinVarG.f24394a.U().q().a("Registered activity lifecycle callback");
                }
            }
        } else {
            U().r().a("Application context is not an Application");
        }
        zzgfVar.v(new g0(this, zzhlVar));
    }

    public static zzgi F(Context context, com.google.android.gms.internal.measurement.zzcl zzclVar, Long l10) {
        Bundle bundle;
        if (zzclVar != null && (zzclVar.f23361s == null || zzclVar.f23362t == null)) {
            zzclVar = new com.google.android.gms.internal.measurement.zzcl(zzclVar.f23357o, zzclVar.f23358p, zzclVar.f23359q, zzclVar.f23360r, null, null, zzclVar.f23363u, null);
        }
        Preconditions.k(context);
        Preconditions.k(context.getApplicationContext());
        if (H == null) {
            synchronized (zzgi.class) {
                if (H == null) {
                    H = new zzgi(new zzhl(context, zzclVar, l10));
                }
            }
        } else if (zzclVar != null && (bundle = zzclVar.f23363u) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            Preconditions.k(H);
            H.A = Boolean.valueOf(zzclVar.f23363u.getBoolean("dataCollectionDefaultEnabled"));
        }
        Preconditions.k(H);
        return H;
    }

    static /* bridge */ /* synthetic */ void a(zzgi zzgiVar, zzhl zzhlVar) {
        zzgiVar.B().c();
        zzgiVar.f24712g.r();
        zzap zzapVar = new zzap(zzgiVar);
        zzapVar.g();
        zzgiVar.f24727v = zzapVar;
        zzep zzepVar = new zzep(zzgiVar, zzhlVar.f24753f);
        zzepVar.e();
        zzgiVar.f24728w = zzepVar;
        zzer zzerVar = new zzer(zzgiVar);
        zzerVar.e();
        zzgiVar.f24725t = zzerVar;
        zzkb zzkbVar = new zzkb(zzgiVar);
        zzkbVar.e();
        zzgiVar.f24726u = zzkbVar;
        zzgiVar.f24717l.h();
        zzgiVar.f24713h.h();
        zzgiVar.f24728w.f();
        zzew zzewVarP = zzgiVar.U().p();
        zzgiVar.f24712g.l();
        zzewVarP.b("App measurement initialized, version", 61000L);
        zzgiVar.U().p().a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String strN = zzepVar.n();
        if (TextUtils.isEmpty(zzgiVar.f24707b)) {
            if (zzgiVar.L().R(strN)) {
                zzgiVar.U().p().a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
            } else {
                zzgiVar.U().p().a("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(strN)));
            }
        }
        zzgiVar.U().l().a("Debug-level message logging enabled");
        if (zzgiVar.E != zzgiVar.F.get()) {
            zzgiVar.U().m().c("Not all components initialized", Integer.valueOf(zzgiVar.E), Integer.valueOf(zzgiVar.F.get()));
        }
        zzgiVar.f24729x = true;
    }

    static final void o() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    private static final void p(y0 y0Var) {
        if (y0Var == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    private static final void q(r rVar) {
        if (rVar == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!rVar.h()) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(rVar.getClass())));
        }
    }

    private static final void r(z0 z0Var) {
        if (z0Var == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!z0Var.i()) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(z0Var.getClass())));
        }
    }

    @Pure
    public final zzet A() {
        return this.f24718m;
    }

    @Override // com.google.android.gms.measurement.internal.a1
    @Pure
    public final zzgf B() {
        r(this.f24715j);
        return this.f24715j;
    }

    public final zzey C() {
        zzey zzeyVar = this.f24714i;
        if (zzeyVar == null || !zzeyVar.i()) {
            return null;
        }
        return zzeyVar;
    }

    @Pure
    public final x D() {
        p(this.f24713h);
        return this.f24713h;
    }

    @SideEffectFree
    final zzgf E() {
        return this.f24715j;
    }

    @Pure
    public final zzin G() {
        q(this.f24721p);
        return this.f24721p;
    }

    @Pure
    public final zzir H() {
        r(this.f24723r);
        return this.f24723r;
    }

    @Pure
    public final zzjb I() {
        q(this.f24720o);
        return this.f24720o;
    }

    @Pure
    public final zzkb J() {
        q(this.f24726u);
        return this.f24726u;
    }

    @Pure
    public final zzkr K() {
        q(this.f24716k);
        return this.f24716k;
    }

    @Pure
    public final zzlp L() {
        p(this.f24717l);
        return this.f24717l;
    }

    @Pure
    public final String M() {
        return this.f24707b;
    }

    @Pure
    public final String N() {
        return this.f24708c;
    }

    @Override // com.google.android.gms.measurement.internal.a1
    @Pure
    public final Context N0() {
        return this.f24706a;
    }

    @Pure
    public final String O() {
        return this.f24709d;
    }

    @Pure
    public final String P() {
        return this.f24724s;
    }

    @Override // com.google.android.gms.measurement.internal.a1
    @Pure
    public final zzey U() {
        r(this.f24714i);
        return this.f24714i;
    }

    final void b() {
        this.F.incrementAndGet();
    }

    /* JADX WARN: Removed duplicated region for block: B:9:0x0018  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    final /* synthetic */ void c(java.lang.String r7, int r8, java.lang.Throwable r9, byte[] r10, java.util.Map r11) {
        /*
            Method dump skipped, instruction units count: 289
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzgi.c(java.lang.String, int, java.lang.Throwable, byte[], java.util.Map):void");
    }

    final void d() {
        this.E++;
    }

    public final void e() {
        B().c();
        r(H());
        String strN = y().n();
        Pair pairK = D().k(strN);
        if (!this.f24712g.w() || ((Boolean) pairK.second).booleanValue() || TextUtils.isEmpty((CharSequence) pairK.first)) {
            U().l().a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return;
        }
        zzir zzirVarH = H();
        zzirVarH.f();
        ConnectivityManager connectivityManager = (ConnectivityManager) zzirVarH.f24394a.f24706a.getSystemService("connectivity");
        NetworkInfo activeNetworkInfo = null;
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
        }
        if (activeNetworkInfo == null || !activeNetworkInfo.isConnected()) {
            U().r().a("Network is not available for Deferred Deep Link request. Skipping");
            return;
        }
        zzlp zzlpVarL = L();
        y().f24394a.f24712g.l();
        URL urlN = zzlpVarL.n(61000L, strN, (String) pairK.first, D().f24374s.a() - 1);
        if (urlN != null) {
            zzir zzirVarH2 = H();
            zzgg zzggVar = new zzgg(this);
            zzirVarH2.c();
            zzirVarH2.f();
            Preconditions.k(urlN);
            Preconditions.k(zzggVar);
            zzirVarH2.f24394a.B().u(new y1(zzirVarH2, strN, urlN, null, null, zzggVar, null));
        }
    }

    final void f(boolean z10) {
        this.A = Boolean.valueOf(z10);
    }

    public final void g(boolean z10) {
        B().c();
        this.D = z10;
    }

    protected final void h(com.google.android.gms.internal.measurement.zzcl zzclVar) {
        zzah zzahVar;
        B().c();
        zzah zzahVarL = D().l();
        x xVarD = D();
        zzgi zzgiVar = xVarD.f24394a;
        xVarD.c();
        int i10 = 100;
        int i11 = xVarD.j().getInt("consent_source", 100);
        zzaf zzafVar = this.f24712g;
        zzgi zzgiVar2 = zzafVar.f24394a;
        Boolean boolO = zzafVar.o("google_analytics_default_allow_ad_storage");
        zzaf zzafVar2 = this.f24712g;
        zzgi zzgiVar3 = zzafVar2.f24394a;
        Boolean boolO2 = zzafVar2.o("google_analytics_default_allow_analytics_storage");
        if (!(boolO == null && boolO2 == null) && D().r(-10)) {
            zzahVar = new zzah(boolO, boolO2);
            i10 = -10;
        } else {
            if (!TextUtils.isEmpty(y().o()) && (i11 == 0 || i11 == 30 || i11 == 10 || i11 == 30 || i11 == 30 || i11 == 40)) {
                G().F(zzah.f24435b, -10, this.G);
            } else if (TextUtils.isEmpty(y().o()) && zzclVar != null && zzclVar.f23363u != null && D().r(30)) {
                zzahVar = zzah.a(zzclVar.f23363u);
                if (!zzahVar.equals(zzah.f24435b)) {
                    i10 = 30;
                }
            }
            zzahVar = null;
        }
        if (zzahVar != null) {
            G().F(zzahVar, i10, this.G);
            zzahVarL = zzahVar;
        }
        G().J(zzahVarL);
        if (D().f24360e.a() == 0) {
            U().q().b("Persisting first open", Long.valueOf(this.G));
            D().f24360e.b(this.G);
        }
        G().f24777n.c();
        if (m()) {
            if (!TextUtils.isEmpty(y().o()) || !TextUtils.isEmpty(y().m())) {
                zzlp zzlpVarL = L();
                String strO = y().o();
                x xVarD2 = D();
                xVarD2.c();
                String string = xVarD2.j().getString("gmp_app_id", null);
                String strM = y().m();
                x xVarD3 = D();
                xVarD3.c();
                if (zzlpVarL.b0(strO, string, strM, xVarD3.j().getString("admob_app_id", null))) {
                    U().p().a("Rechecking which service to use due to a GMP App Id change");
                    x xVarD4 = D();
                    xVarD4.c();
                    Boolean boolM = xVarD4.m();
                    SharedPreferences.Editor editorEdit = xVarD4.j().edit();
                    editorEdit.clear();
                    editorEdit.apply();
                    if (boolM != null) {
                        xVarD4.n(boolM);
                    }
                    z().l();
                    this.f24726u.O();
                    this.f24726u.N();
                    D().f24360e.b(this.G);
                    D().f24362g.b(null);
                }
                x xVarD5 = D();
                String strO2 = y().o();
                xVarD5.c();
                SharedPreferences.Editor editorEdit2 = xVarD5.j().edit();
                editorEdit2.putString("gmp_app_id", strO2);
                editorEdit2.apply();
                x xVarD6 = D();
                String strM2 = y().m();
                xVarD6.c();
                SharedPreferences.Editor editorEdit3 = xVarD6.j().edit();
                editorEdit3.putString("admob_app_id", strM2);
                editorEdit3.apply();
            }
            if (!D().l().i(zzag.ANALYTICS_STORAGE)) {
                D().f24362g.b(null);
            }
            G().A(D().f24362g.a());
            zzoc.b();
            if (this.f24712g.y(null, zzel.f24568f0)) {
                try {
                    L().f24394a.f24706a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                } catch (ClassNotFoundException unused) {
                    if (!TextUtils.isEmpty(D().f24375t.a())) {
                        U().r().a("Remote config removed with active feature rollouts");
                        D().f24375t.b(null);
                    }
                }
            }
            if (!TextUtils.isEmpty(y().o()) || !TextUtils.isEmpty(y().m())) {
                boolean zJ = j();
                if (!D().p() && !this.f24712g.C()) {
                    D().o(!zJ);
                }
                if (zJ) {
                    G().h0();
                }
                K().f24832d.a();
                J().Q(new AtomicReference());
                J().q(D().f24378w.a());
            }
        } else if (j()) {
            if (!L().Q("android.permission.INTERNET")) {
                U().m().a("App is missing INTERNET permission");
            }
            if (!L().Q("android.permission.ACCESS_NETWORK_STATE")) {
                U().m().a("App is missing ACCESS_NETWORK_STATE permission");
            }
            if (!Wrappers.a(this.f24706a).g() && !this.f24712g.E()) {
                if (!zzlp.X(this.f24706a)) {
                    U().m().a("AppMeasurementReceiver not registered/enabled");
                }
                if (!zzlp.Y(this.f24706a, false)) {
                    U().m().a("AppMeasurementService not registered/enabled");
                }
            }
            U().m().a("Uploading is not possible. App measurement disabled");
        }
        D().f24369n.a(true);
    }

    public final boolean i() {
        return this.A != null && this.A.booleanValue();
    }

    public final boolean j() {
        return s() == 0;
    }

    public final boolean k() {
        B().c();
        return this.D;
    }

    @Pure
    public final boolean l() {
        return TextUtils.isEmpty(this.f24707b);
    }

    protected final boolean m() {
        if (!this.f24729x) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
        B().c();
        Boolean bool = this.f24730y;
        if (bool == null || this.f24731z == 0 || (!bool.booleanValue() && Math.abs(this.f24719n.b() - this.f24731z) > 1000)) {
            this.f24731z = this.f24719n.b();
            boolean z10 = true;
            Boolean boolValueOf = Boolean.valueOf(L().Q("android.permission.INTERNET") && L().Q("android.permission.ACCESS_NETWORK_STATE") && (Wrappers.a(this.f24706a).g() || this.f24712g.E() || (zzlp.X(this.f24706a) && zzlp.Y(this.f24706a, false))));
            this.f24730y = boolValueOf;
            if (boolValueOf.booleanValue()) {
                if (!L().J(y().o(), y().m()) && TextUtils.isEmpty(y().m())) {
                    z10 = false;
                }
                this.f24730y = Boolean.valueOf(z10);
            }
        }
        return this.f24730y.booleanValue();
    }

    @Pure
    public final boolean n() {
        return this.f24710e;
    }

    public final int s() {
        B().c();
        if (this.f24712g.C()) {
            return 1;
        }
        Boolean bool = this.C;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        B().c();
        if (!this.D) {
            return 8;
        }
        Boolean boolM = D().m();
        if (boolM != null) {
            return boolM.booleanValue() ? 0 : 3;
        }
        zzaf zzafVar = this.f24712g;
        zzaa zzaaVar = zzafVar.f24394a.f24711f;
        Boolean boolO = zzafVar.o("firebase_analytics_collection_enabled");
        if (boolO != null) {
            return boolO.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.B;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (this.A == null || this.A.booleanValue()) ? 0 : 7;
    }

    @Override // com.google.android.gms.measurement.internal.a1
    @Pure
    public final zzaa t() {
        return this.f24711f;
    }

    @Pure
    public final zzd u() {
        zzd zzdVar = this.f24722q;
        if (zzdVar != null) {
            return zzdVar;
        }
        throw new IllegalStateException("Component not created");
    }

    @Pure
    public final zzaf v() {
        return this.f24712g;
    }

    @Pure
    public final zzap w() {
        r(this.f24727v);
        return this.f24727v;
    }

    @Override // com.google.android.gms.measurement.internal.a1
    @Pure
    public final Clock x() {
        return this.f24719n;
    }

    @Pure
    public final zzep y() {
        q(this.f24728w);
        return this.f24728w;
    }

    @Pure
    public final zzer z() {
        q(this.f24725t);
        return this.f24725t;
    }
}
