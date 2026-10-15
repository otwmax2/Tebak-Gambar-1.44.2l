package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.GraphResponse;
import com.facebook.appevents.AppEventsConstants;
import com.facebook.internal.ServerProtocol;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.Predicate;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzfkr;
import com.vungle.mediation.BuildConfig;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.Callable;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
@ParametersAreNonnullByDefault
@SuppressLint({"ViewConstructor"})
final class zzcfb extends WebView implements DownloadListener, ViewTreeObserver.OnGlobalLayoutListener, zzcei {

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final /* synthetic */ int f12071m0 = 0;
    private zzcep A;

    @GuardedBy("this")
    private com.google.android.gms.ads.internal.overlay.zzl B;

    @GuardedBy("this")
    private IObjectWrapper C;

    @GuardedBy("this")
    private zzcfx D;

    @GuardedBy("this")
    private final String E;

    @GuardedBy("this")
    private boolean F;

    @GuardedBy("this")
    private boolean G;

    @GuardedBy("this")
    private boolean H;

    @GuardedBy("this")
    private boolean I;

    @GuardedBy("this")
    private Boolean J;

    @GuardedBy("this")
    private boolean K;

    @GuardedBy("this")
    private final String L;

    @GuardedBy("this")
    private zzcfe M;

    @GuardedBy("this")
    private boolean N;

    @GuardedBy("this")
    private boolean O;

    @GuardedBy("this")
    private zzbdk P;

    @GuardedBy("this")
    private zzbdi Q;

    @GuardedBy("this")
    private zzaus R;

    @GuardedBy("this")
    private int S;

    @GuardedBy("this")
    private int T;
    private zzbbg U;
    private final zzbbg V;
    private zzbbg W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private final zzbbh f12072a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private int f12073b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    @GuardedBy("this")
    private com.google.android.gms.ads.internal.overlay.zzl f12074c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f12075d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzci f12076e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private int f12077f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private int f12078g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private int f12079h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private int f12080i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private Map f12081j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private final WindowManager f12082k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private final zzawe f12083l0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcfw f12084o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzapw f12085p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzbbt f12086q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzbzg f12087r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private com.google.android.gms.ads.internal.zzl f12088s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.zza f12089t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final DisplayMetrics f12090u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final float f12091v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private zzeyc f12092w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private zzeyf f12093x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f12094y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f12095z;

    @VisibleForTesting
    protected zzcfb(zzcfw zzcfwVar, zzcfx zzcfxVar, String str, boolean z10, boolean z11, zzapw zzapwVar, zzbbt zzbbtVar, zzbzg zzbzgVar, zzbbj zzbbjVar, com.google.android.gms.ads.internal.zzl zzlVar, com.google.android.gms.ads.internal.zza zzaVar, zzawe zzaweVar, zzeyc zzeycVar, zzeyf zzeyfVar) {
        zzeyf zzeyfVar2;
        super(zzcfwVar);
        this.f12094y = false;
        this.f12095z = false;
        this.K = true;
        this.L = BuildConfig.FLAVOR;
        this.f12077f0 = -1;
        this.f12078g0 = -1;
        this.f12079h0 = -1;
        this.f12080i0 = -1;
        this.f12084o = zzcfwVar;
        this.D = zzcfxVar;
        this.E = str;
        this.H = z10;
        this.f12085p = zzapwVar;
        this.f12086q = zzbbtVar;
        this.f12087r = zzbzgVar;
        this.f12088s = zzlVar;
        this.f12089t = zzaVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.f12082k0 = windowManager;
        com.google.android.gms.ads.internal.zzt.r();
        DisplayMetrics displayMetricsP = com.google.android.gms.ads.internal.util.zzs.P(windowManager);
        this.f12090u = displayMetricsP;
        this.f12091v = displayMetricsP.density;
        this.f12083l0 = zzaweVar;
        this.f12092w = zzeycVar;
        this.f12093x = zzeyfVar;
        this.f12076e0 = new com.google.android.gms.ads.internal.util.zzci(zzcfwVar.a(), this, this, null);
        setBackgroundColor(0);
        final WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e10) {
            zzbza.e("Unable to enable Javascript.", e10);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        if (Build.VERSION.SDK_INT >= 21) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.K9)).booleanValue()) {
                settings.setMixedContentMode(1);
            } else {
                settings.setMixedContentMode(2);
            }
        }
        settings.setUserAgentString(com.google.android.gms.ads.internal.zzt.r().B(zzcfwVar, zzbzgVar.f11605o));
        com.google.android.gms.ads.internal.zzt.r();
        final Context context = getContext();
        com.google.android.gms.ads.internal.util.zzcb.a(context, new Callable() { // from class: com.google.android.gms.ads.internal.util.zzm
            @Override // java.util.concurrent.Callable
            public final Object call() {
                WebSettings webSettings = settings;
                Context context2 = context;
                zzfkr zzfkrVar = zzs.f6190i;
                webSettings.setDatabasePath(context2.getDatabasePath("com.google.android.gms.ads.db").getAbsolutePath());
                webSettings.setDatabaseEnabled(true);
                webSettings.setDomStorageEnabled(true);
                webSettings.setDisplayZoomControls(false);
                webSettings.setBuiltInZoomControls(true);
                webSettings.setSupportZoom(true);
                if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.E0)).booleanValue()) {
                    webSettings.setTextZoom(100);
                }
                webSettings.setAllowContentAccess(false);
                return Boolean.TRUE;
            }
        });
        settings.setAllowFileAccessFromFileURLs(false);
        settings.setAllowUniversalAccessFromFileURLs(false);
        settings.setMediaPlaybackRequiresUserGesture(false);
        setDownloadListener(this);
        o1();
        addJavascriptInterface(new zzcfi(this, new zzcfh(this), null), "googleAdsJsInterface");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        w1();
        zzbbh zzbbhVar = new zzbbh(new zzbbj(true, "make_wv", this.E));
        this.f12072a0 = zzbbhVar;
        zzbbhVar.a().c(null);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.G1)).booleanValue() && (zzeyfVar2 = this.f12093x) != null && zzeyfVar2.f17679b != null) {
            zzbbhVar.a().d("gqi", this.f12093x.f17679b);
        }
        zzbbhVar.a();
        zzbbg zzbbgVarF = zzbbj.f();
        this.V = zzbbgVarF;
        zzbbhVar.b("native:view_create", zzbbgVarF);
        this.W = null;
        this.U = null;
        com.google.android.gms.ads.internal.util.zzce.a().b(zzcfwVar);
        com.google.android.gms.ads.internal.zzt.q().r();
    }

    private final synchronized void o1() {
        zzeyc zzeycVar = this.f12092w;
        if (zzeycVar != null && zzeycVar.f17659n0) {
            zzbza.b("Disabling hardware acceleration on an overlay.");
            q1();
            return;
        }
        if (!this.H && !this.D.i()) {
            zzbza.b("Enabling hardware acceleration on an AdView.");
            s1();
            return;
        }
        zzbza.b("Enabling hardware acceleration on an overlay.");
        s1();
    }

    private final synchronized void p1() {
        if (this.f12075d0) {
            return;
        }
        this.f12075d0 = true;
        com.google.android.gms.ads.internal.zzt.q().q();
    }

    private final synchronized void q1() {
        if (!this.I) {
            setLayerType(1, null);
        }
        this.I = true;
    }

    private final void r1(boolean z10) {
        HashMap map = new HashMap();
        map.put("isVisible", true != z10 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        v0("onAdVisibilityChanged", map);
    }

    private final synchronized void s1() {
        if (this.I) {
            setLayerType(0, null);
        }
        this.I = false;
    }

    private final synchronized void t1(String str) {
        try {
            super.loadUrl("about:blank");
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.q().u(th, "AdWebViewImpl.loadUrlUnsafe");
            zzbza.h("Could not call loadUrl in destroy(). ", th);
        }
    }

    private final void u1() {
        zzbbb.a(this.f12072a0.a(), this.V, "aeh2");
    }

    private final synchronized void v1() {
        Map map = this.f12081j0;
        if (map != null) {
            Iterator it = map.values().iterator();
            while (it.hasNext()) {
                ((zzccu) it.next()).c();
            }
        }
        this.f12081j0 = null;
    }

    private final void w1() {
        zzbbh zzbbhVar = this.f12072a0;
        if (zzbbhVar == null) {
            return;
        }
        zzbbj zzbbjVarA = zzbbhVar.a();
        zzbaz zzbazVarF = com.google.android.gms.ads.internal.zzt.q().f();
        if (zzbazVarF != null) {
            zzbazVarF.f(zzbbjVarA);
        }
    }

    private final synchronized void x1() {
        Boolean boolK = com.google.android.gms.ads.internal.zzt.q().k();
        this.J = boolK;
        if (boolK == null) {
            try {
                evaluateJavascript("(function(){})()", null);
                l1(Boolean.TRUE);
            } catch (IllegalStateException unused) {
                l1(Boolean.FALSE);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void A() {
        this.f12076e0.b();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized boolean B() {
        return this.H;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized String B0() {
        return this.E;
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final synchronized void C() {
        zzbdi zzbdiVar = this.Q;
        if (zzbdiVar != null) {
            final zzdkg zzdkgVar = (zzdkg) zzbdiVar;
            com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdke
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        zzdkgVar.d();
                    } catch (RemoteException e10) {
                        zzbza.i("#007 Could not call remote method.", e10);
                    }
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized void C0(zzcfx zzcfxVar) {
        this.D = zzcfxVar;
        requestLayout();
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void D(boolean z10, int i10, String str, boolean z11) {
        this.A.E0(z10, i10, str, z11);
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void D0(boolean z10, int i10, String str, String str2, boolean z11) {
        this.A.H0(z10, i10, str, str2, z11);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized IObjectWrapper E() {
        return this.C;
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void E0(com.google.android.gms.ads.internal.overlay.zzc zzcVar, boolean z10) {
        this.A.t0(zzcVar, z10);
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcbj
    public final synchronized void F(zzcfe zzcfeVar) {
        if (this.M != null) {
            zzbza.d("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.M = zzcfeVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void F0() {
        if (this.U == null) {
            zzbbb.a(this.f12072a0.a(), this.V, "aes2");
            this.f12072a0.a();
            zzbbg zzbbgVarF = zzbbj.f();
            this.U = zzbbgVarF;
            this.f12072a0.b("native:view_show", zzbbgVarF);
        }
        HashMap map = new HashMap(1);
        map.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, this.f12087r.f11605o);
        v0("onshow", map);
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final void G(int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized void G0(boolean z10) {
        this.K = z10;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final Context H() {
        return this.f12084o.b();
    }

    @Override // com.google.android.gms.internal.ads.zzatf
    public final void H0(zzate zzateVar) {
        boolean z10;
        synchronized (this) {
            z10 = zzateVar.f9886j;
            this.N = z10;
        }
        r1(z10);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void I0(String str, Predicate predicate) {
        zzcep zzcepVar = this.A;
        if (zzcepVar != null) {
            zzcepVar.c(str, predicate);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final /* synthetic */ zzcfv J() {
        return this.A;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final boolean J0() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized void K(zzbdk zzbdkVar) {
        this.P = zzbdkVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void K0() {
        setBackgroundColor(0);
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcfs
    public final View L() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final synchronized String L0() {
        return this.L;
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcfp
    public final synchronized zzcfx M() {
        return this.D;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized void N(boolean z10) {
        com.google.android.gms.ads.internal.overlay.zzl zzlVar = this.B;
        if (zzlVar != null) {
            zzlVar.Za(this.A.s(), z10);
        } else {
            this.F = z10;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized void N0(com.google.android.gms.ads.internal.overlay.zzl zzlVar) {
        this.f12074c0 = zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final synchronized void O(int i10) {
        this.f12073b0 = i10;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void P() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final void P0(int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void Q() {
        if (this.W == null) {
            this.f12072a0.a();
            zzbbg zzbbgVarF = zzbbj.f();
            this.W = zzbbgVarF;
            this.f12072a0.b("native:view_load", zzbbgVarF);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized void Q0(String str, String str2, String str3) {
        String str4;
        if (U()) {
            zzbza.g("#004 The webview is destroyed. Ignoring action.");
            return;
        }
        String[] strArr = new String[1];
        String str5 = (String) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.N);
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, str5);
            jSONObject.put(ServerProtocol.DIALOG_PARAM_SDK_VERSION, "Google Mobile Ads");
            jSONObject.put("sdkVersion", "12.4.51-000");
            str4 = "<script>Object.defineProperty(window,'MRAID_ENV',{get:function(){return " + jSONObject.toString() + "}});</script>";
        } catch (JSONException e10) {
            zzbza.h("Unable to build MRAID_ENV", e10);
            str4 = null;
        }
        strArr[0] = str4;
        super.loadDataWithBaseURL(str, zzcfo.a(str2, strArr), "text/html", "UTF-8", null);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0010 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x000b A[Catch: all -> 0x0012, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0004, B:6:0x0007, B:8:0x000b), top: B:16:0x0004 }] */
    @Override // com.google.android.gms.internal.ads.zzcei
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized void R(boolean r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            if (r2 == 0) goto L7
            r0 = 0
            r1.setBackgroundColor(r0)     // Catch: java.lang.Throwable -> L12
        L7:
            com.google.android.gms.ads.internal.overlay.zzl r0 = r1.B     // Catch: java.lang.Throwable -> L12
            if (r0 == 0) goto L10
            r0.bb(r2)     // Catch: java.lang.Throwable -> L12
            monitor-exit(r1)
            return
        L10:
            monitor-exit(r1)
            return
        L12:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfb.R(boolean):void");
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized void S(IObjectWrapper iObjectWrapper) {
        this.C = iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized void S0(boolean z10) {
        boolean z11 = this.H;
        this.H = z10;
        o1();
        if (z10 != z11) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.O)).booleanValue() || !this.D.i()) {
                new zzbqf(this, BuildConfig.FLAVOR).g(true != z10 ? "default" : "expanded");
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcfq
    public final zzapw T() {
        return this.f12085p;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized boolean U() {
        return this.G;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final WebView V() {
        return this;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized void W(zzaus zzausVar) {
        this.R = zzausVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void W0(boolean z10, int i10, boolean z11) {
        this.A.v0(z10, i10, z11);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final boolean X(final boolean z10, final int i10) {
        destroy();
        this.f12083l0.b(new zzawd() { // from class: com.google.android.gms.internal.ads.zzcey
            @Override // com.google.android.gms.internal.ads.zzawd
            public final void a(zzaxt zzaxtVar) {
                boolean z11 = z10;
                int i11 = i10;
                int i12 = zzcfb.f12071m0;
                zzazy zzazyVarI = zzazz.I();
                if (zzazyVarI.q() != z11) {
                    zzazyVarI.o(z11);
                }
                zzazyVarI.p(i11);
                zzaxtVar.y((zzazz) zzazyVarI.k());
            }
        });
        this.f12083l0.c(10003);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final void X0(int i10) {
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized com.google.android.gms.ads.internal.overlay.zzl Y() {
        return this.f12074c0;
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final void Y0(boolean z10, long j10) {
        HashMap map = new HashMap(2);
        map.put(GraphResponse.SUCCESS_KEY, true != z10 ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
        map.put("duration", Long.toString(j10));
        v0("onCacheAccessComplete", map);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized void Z(com.google.android.gms.ads.internal.overlay.zzl zzlVar) {
        this.B = zzlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbkv
    public final void Z0(String str, JSONObject jSONObject) {
        n(str, jSONObject.toString());
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized boolean a0() {
        return this.K;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final zzfut a1() {
        zzbbt zzbbtVar = this.f12086q;
        return zzbbtVar == null ? zzfuj.h(null) : zzbbtVar.a();
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final synchronized String b() {
        zzeyf zzeyfVar = this.f12093x;
        if (zzeyfVar == null) {
            return null;
        }
        return zzeyfVar.f17679b;
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final synchronized zzccu b0(String str) {
        Map map = this.f12081j0;
        if (map == null) {
            return null;
        }
        return (zzccu) map.get(str);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void b1(int i10) {
        if (i10 == 0) {
            zzbbb.a(this.f12072a0.a(), this.V, "aebb2");
        }
        u1();
        this.f12072a0.a();
        this.f12072a0.a().d("close_type", String.valueOf(i10));
        HashMap map = new HashMap(2);
        map.put("closetype", String.valueOf(i10));
        map.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, this.f12087r.f11605o);
        v0("onhide", map);
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final synchronized int c() {
        return this.f12073b0;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void c0(String str, zzbhp zzbhpVar) {
        zzcep zzcepVar = this.A;
        if (zzcepVar != null) {
            zzcepVar.L0(str, zzbhpVar);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcei
    public final synchronized void destroy() {
        w1();
        this.f12076e0.a();
        com.google.android.gms.ads.internal.overlay.zzl zzlVar = this.B;
        if (zzlVar != null) {
            zzlVar.zzb();
            this.B.j();
            this.B = null;
        }
        this.C = null;
        this.A.k0();
        this.R = null;
        this.f12088s = null;
        setOnClickListener(null);
        setOnTouchListener(null);
        if (this.G) {
            return;
        }
        com.google.android.gms.ads.internal.zzt.A().j(this);
        v1();
        this.G = true;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10234g9)).booleanValue()) {
            com.google.android.gms.ads.internal.util.zze.k("Destroying the WebView immediately...");
            f0();
        } else {
            com.google.android.gms.ads.internal.util.zze.k("Initiating WebView self destruct sequence in 3...");
            com.google.android.gms.ads.internal.util.zze.k("Loading blank page in WebView, 2...");
            t1("about:blank");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final int e() {
        return getMeasuredHeight();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void e0(String str, zzbhp zzbhpVar) {
        zzcep zzcepVar = this.A;
        if (zzcepVar != null) {
            zzcepVar.b(str, zzbhpVar);
        }
    }

    public final zzcep e1() {
        return this.A;
    }

    @Override // android.webkit.WebView
    public final synchronized void evaluateJavascript(String str, ValueCallback valueCallback) {
        if (!U()) {
            super.evaluateJavascript(str, valueCallback);
            return;
        }
        zzbza.i("#004 The webview is destroyed. Ignoring action.", null);
        if (valueCallback != null) {
            valueCallback.onReceiveValue(null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final int f() {
        return getMeasuredWidth();
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized void f0() {
        com.google.android.gms.ads.internal.util.zze.k("Destroying WebView!");
        p1();
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new zzcfa(this));
    }

    @VisibleForTesting
    final synchronized Boolean f1() {
        return this.J;
    }

    protected final void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.G) {
                    this.A.k0();
                    com.google.android.gms.ads.internal.zzt.A().j(this);
                    v1();
                    p1();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcfj, com.google.android.gms.internal.ads.zzcbj
    public final Activity g() {
        return this.f12084o.a();
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcff
    public final zzeyf g0() {
        return this.f12093x;
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcbj
    public final com.google.android.gms.ads.internal.zza h() {
        return this.f12089t;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final WebViewClient h0() {
        return this.A;
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final zzbbg i() {
        return this.V;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void i0(boolean z10) {
        this.A.l0(z10);
    }

    protected final synchronized void i1(String str, ValueCallback valueCallback) {
        if (U()) {
            zzbza.g("#004 The webview is destroyed. Ignoring action.");
        } else {
            evaluateJavascript(str, null);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void j0(zzeyc zzeycVar, zzeyf zzeyfVar) {
        this.f12092w = zzeycVar;
        this.f12093x = zzeyfVar;
    }

    protected final void j1(String str) {
        if (!PlatformVersion.e()) {
            k1("javascript:".concat(str));
            return;
        }
        if (f1() == null) {
            x1();
        }
        if (f1().booleanValue()) {
            i1(str, null);
        } else {
            k1("javascript:".concat(str));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcfr, com.google.android.gms.internal.ads.zzcbj
    public final zzbzg k() {
        return this.f12087r;
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final synchronized void k0() {
        com.google.android.gms.ads.internal.zzl zzlVar = this.f12088s;
        if (zzlVar != null) {
            zzlVar.k0();
        }
    }

    protected final synchronized void k1(String str) {
        if (U()) {
            zzbza.g("#004 The webview is destroyed. Ignoring action.");
        } else {
            loadUrl(str);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcbj
    public final zzbbh l() {
        return this.f12072a0;
    }

    @Override // com.google.android.gms.internal.ads.zzcfn
    public final void l0(com.google.android.gms.ads.internal.util.zzbr zzbrVar, zzeaf zzeafVar, zzdpi zzdpiVar, zzfdk zzfdkVar, String str, String str2, int i10) {
        this.A.u0(zzbrVar, zzeafVar, zzdpiVar, zzfdkVar, str, str2, 14);
    }

    @VisibleForTesting
    final void l1(Boolean bool) {
        synchronized (this) {
            this.J = bool;
        }
        com.google.android.gms.ads.internal.zzt.q().v(bool);
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcei
    public final synchronized void loadData(String str, String str2, String str3) {
        if (U()) {
            zzbza.g("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadData(str, str2, str3);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcei
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (U()) {
            zzbza.g("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcei
    public final synchronized void loadUrl(String str) {
        if (U()) {
            zzbza.g("#004 The webview is destroyed. Ignoring action.");
            return;
        }
        try {
            super.loadUrl(str);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.q().u(th, "AdWebViewImpl.loadUrl");
            zzbza.h("Could not call loadUrl. ", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final zzcay m() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void m0() {
        u1();
        HashMap map = new HashMap(1);
        map.put(ServerProtocol.FALLBACK_DIALOG_PARAM_VERSION, this.f12087r.f11605o);
        v0("onhide", map);
    }

    public final boolean m1() {
        int i10;
        int iB;
        if (!this.A.s() && !this.A.f()) {
            return false;
        }
        com.google.android.gms.ads.internal.client.zzay.b();
        DisplayMetrics displayMetrics = this.f12090u;
        int iB2 = zzbyt.B(displayMetrics, displayMetrics.widthPixels);
        com.google.android.gms.ads.internal.client.zzay.b();
        DisplayMetrics displayMetrics2 = this.f12090u;
        int iB3 = zzbyt.B(displayMetrics2, displayMetrics2.heightPixels);
        Activity activityA = this.f12084o.a();
        if (activityA == null || activityA.getWindow() == null) {
            i10 = iB2;
            iB = iB3;
        } else {
            com.google.android.gms.ads.internal.zzt.r();
            int[] iArrN = com.google.android.gms.ads.internal.util.zzs.n(activityA);
            com.google.android.gms.ads.internal.client.zzay.b();
            int iB4 = zzbyt.B(this.f12090u, iArrN[0]);
            com.google.android.gms.ads.internal.client.zzay.b();
            iB = zzbyt.B(this.f12090u, iArrN[1]);
            i10 = iB4;
        }
        int i11 = this.f12078g0;
        if (i11 == iB2 && this.f12077f0 == iB3 && this.f12079h0 == i10 && this.f12080i0 == iB) {
            return false;
        }
        boolean z10 = (i11 == iB2 && this.f12077f0 == iB3) ? false : true;
        this.f12078g0 = iB2;
        this.f12077f0 = iB3;
        this.f12079h0 = i10;
        this.f12080i0 = iB;
        new zzbqf(this, BuildConfig.FLAVOR).e(iB2, iB3, i10, iB, this.f12090u.density, this.f12082k0.getDefaultDisplay().getRotation());
        return z10;
    }

    @Override // com.google.android.gms.internal.ads.zzbkv
    public final void n(String str, String str2) {
        j1(str + "(" + str2 + ");");
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void n1() {
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzbkv
    public final void o(String str) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.zzl
    public final synchronized void o0() {
        com.google.android.gms.ads.internal.zzl zzlVar = this.f12088s;
        if (zzlVar != null) {
            zzlVar.o0();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    protected final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!U()) {
            this.f12076e0.c();
        }
        boolean z10 = this.N;
        zzcep zzcepVar = this.A;
        if (zzcepVar != null && zzcepVar.f()) {
            if (!this.O) {
                this.A.D();
                this.A.G();
                this.O = true;
            }
            m1();
            z10 = true;
        }
        r1(z10);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected final void onDetachedFromWindow() {
        zzcep zzcepVar;
        synchronized (this) {
            if (!U()) {
                this.f12076e0.d();
            }
            super.onDetachedFromWindow();
            if (this.O && (zzcepVar = this.A) != null && zzcepVar.f() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                this.A.D();
                this.A.G();
                this.O = false;
            }
        }
        r1(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j10) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            com.google.android.gms.ads.internal.zzt.r();
            com.google.android.gms.ads.internal.util.zzs.q(getContext(), intent);
        } catch (ActivityNotFoundException unused) {
            zzbza.b("Couldn't find an Activity to view url/mimetype: " + str + " / " + str4);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    @TargetApi(21)
    protected final void onDraw(Canvas canvas) {
        if (U()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean zM1 = m1();
        com.google.android.gms.ads.internal.overlay.zzl zzlVarQ0 = q0();
        if (zzlVarQ0 == null || !zM1) {
            return;
        }
        zzlVarQ0.l();
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x0080  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0089  */
    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    @android.annotation.SuppressLint({"DrawAllocation"})
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected final synchronized void onMeasure(int r9, int r10) {
        /*
            Method dump skipped, instruction units count: 488
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzcfb.onMeasure(int, int):void");
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcei
    public final void onPause() {
        if (U()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e10) {
            zzbza.e("Could not pause webview.", e10);
        }
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcei
    public final void onResume() {
        if (U()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e10) {
            zzbza.e("Could not resume webview.", e10);
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (!this.A.f() || this.A.e()) {
            zzapw zzapwVar = this.f12085p;
            if (zzapwVar != null) {
                zzapwVar.d(motionEvent);
            }
            zzbbt zzbbtVar = this.f12086q;
            if (zzbbtVar != null) {
                zzbbtVar.b(motionEvent);
            }
        } else {
            synchronized (this) {
                zzbdk zzbdkVar = this.P;
                if (zzbdkVar != null) {
                    zzbdkVar.b(motionEvent);
                }
            }
        }
        if (U()) {
            return false;
        }
        return super.onTouchEvent(motionEvent);
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void p() {
        zzcep zzcepVar = this.A;
        if (zzcepVar != null) {
            zzcepVar.p();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized void p0(boolean z10) {
        com.google.android.gms.ads.internal.overlay.zzl zzlVar;
        int i10 = this.S + (true != z10 ? -1 : 1);
        this.S = i10;
        if (i10 > 0 || (zzlVar = this.B) == null) {
            return;
        }
        zzlVar.f0();
    }

    @Override // com.google.android.gms.internal.ads.zzdcc
    public final void q() {
        zzcep zzcepVar = this.A;
        if (zzcepVar != null) {
            zzcepVar.q();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized com.google.android.gms.ads.internal.overlay.zzl q0() {
        return this.B;
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcbj
    public final synchronized zzcfe r() {
        return this.M;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized zzbdk s() {
        return this.P;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final void s0(Context context) {
        this.f12084o.setBaseContext(context);
        this.f12076e0.e(this.f12084o.a());
    }

    @Override // android.webkit.WebView, com.google.android.gms.internal.ads.zzcei
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof zzcep) {
            this.A = (zzcep) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (U()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e10) {
            zzbza.e("Could not stop loading webview.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized boolean t() {
        return this.S > 0;
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcdz
    public final zzeyc u() {
        return this.f12092w;
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final void u0(boolean z10) {
        this.A.a(false);
    }

    @Override // com.google.android.gms.internal.ads.zzcbj
    public final void v() {
        com.google.android.gms.ads.internal.overlay.zzl zzlVarQ0 = q0();
        if (zzlVarQ0 != null) {
            zzlVarQ0.d();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final void v0(String str, Map map) {
        try {
            w(str, com.google.android.gms.ads.internal.client.zzay.b().o(map));
        } catch (JSONException unused) {
            zzbza.g("Could not convert parameters to JSON.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbki
    public final void w(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String string = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("',");
        sb.append(string);
        sb.append(");");
        zzbza.b("Dispatching AFMA event: ".concat(sb.toString()));
        j1(sb.toString());
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final void w0() {
        zzcep zzcepVar = this.A;
        if (zzcepVar != null) {
            zzcepVar.w0();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized boolean x() {
        return this.F;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized void x0(int i10) {
        com.google.android.gms.ads.internal.overlay.zzl zzlVar = this.B;
        if (zzlVar != null) {
            zzlVar.ab(i10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcei, com.google.android.gms.internal.ads.zzcbj
    public final synchronized void y(String str, zzccu zzccuVar) {
        if (this.f12081j0 == null) {
            this.f12081j0 = new HashMap();
        }
        this.f12081j0.put(str, zzccuVar);
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized void y0(zzbdi zzbdiVar) {
        this.Q = zzbdiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcei
    public final synchronized zzaus z() {
        return this.R;
    }
}
