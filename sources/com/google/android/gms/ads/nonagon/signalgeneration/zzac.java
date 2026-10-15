package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.CookieManager;
import android.webkit.WebView;
import com.facebook.appevents.AppEventsConstants;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.internal.util.zzbx;
import com.google.android.gms.ads.interstitial.InterstitialAd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzapw;
import com.google.android.gms.internal.ads.zzapx;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbcd;
import com.google.android.gms.internal.ads.zzbrr;
import com.google.android.gms.internal.ads.zzbsa;
import com.google.android.gms.internal.ads.zzbxo;
import com.google.android.gms.internal.ads.zzbxq;
import com.google.android.gms.internal.ads.zzbxv;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzbzg;
import com.google.android.gms.internal.ads.zzbzn;
import com.google.android.gms.internal.ads.zzcgd;
import com.google.android.gms.internal.ads.zzdlf;
import com.google.android.gms.internal.ads.zzdpd;
import com.google.android.gms.internal.ads.zzdpn;
import com.google.android.gms.internal.ads.zzezt;
import com.google.android.gms.internal.ads.zzfeb;
import com.google.android.gms.internal.ads.zzfec;
import com.google.android.gms.internal.ads.zzfen;
import com.google.android.gms.internal.ads.zzfep;
import com.google.android.gms.internal.ads.zzfff;
import com.google.android.gms.internal.ads.zzfnj;
import com.google.android.gms.internal.ads.zzfoj;
import com.google.android.gms.internal.ads.zzftp;
import com.google.android.gms.internal.ads.zzftq;
import com.google.android.gms.internal.ads.zzfua;
import com.google.android.gms.internal.ads.zzfuj;
import com.google.android.gms.internal.ads.zzfut;
import com.google.android.gms.internal.ads.zzfuu;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzac extends zzbxq {
    protected static final List R = new ArrayList(Arrays.asList("/aclk", "/pcs/click", "/dbm/clk"));
    protected static final List S = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));
    protected static final List T = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion", "/dbm/ad"));
    protected static final List U = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));
    public static final /* synthetic */ int V = 0;
    private final zzdpn A;
    private final zzfff B;
    private final zzbzg J;
    private String K;
    private final List M;
    private final List N;
    private final List O;
    private final List P;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final zzcgd f6376o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Context f6377p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzapw f6378q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzezt f6379r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final zzfuu f6381t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final ScheduledExecutorService f6382u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private zzbsa f6383v;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final zzc f6387z;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private zzdpd f6380s = null;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Point f6384w = new Point();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Point f6385x = new Point();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final Set f6386y = Collections.newSetFromMap(new WeakHashMap());
    private final AtomicInteger I = new AtomicInteger(0);
    private final zzfuu Q = zzbzn.f11618e;
    private final boolean C = ((Boolean) zzba.c().b(zzbar.O6)).booleanValue();
    private final boolean D = ((Boolean) zzba.c().b(zzbar.N6)).booleanValue();
    private final boolean E = ((Boolean) zzba.c().b(zzbar.P6)).booleanValue();
    private final boolean F = ((Boolean) zzba.c().b(zzbar.R6)).booleanValue();
    private final String G = (String) zzba.c().b(zzbar.Q6);
    private final String H = (String) zzba.c().b(zzbar.S6);
    private final String L = (String) zzba.c().b(zzbar.T6);

    public zzac(zzcgd zzcgdVar, Context context, zzapw zzapwVar, zzezt zzeztVar, zzfuu zzfuuVar, ScheduledExecutorService scheduledExecutorService, zzdpn zzdpnVar, zzfff zzfffVar, zzbzg zzbzgVar) {
        List listRb;
        this.f6376o = zzcgdVar;
        this.f6377p = context;
        this.f6378q = zzapwVar;
        this.f6379r = zzeztVar;
        this.f6381t = zzfuuVar;
        this.f6382u = scheduledExecutorService;
        this.f6387z = zzcgdVar.q();
        this.A = zzdpnVar;
        this.B = zzfffVar;
        this.J = zzbzgVar;
        if (((Boolean) zzba.c().b(zzbar.U6)).booleanValue()) {
            this.M = rb((String) zzba.c().b(zzbar.V6));
            this.N = rb((String) zzba.c().b(zzbar.W6));
            this.O = rb((String) zzba.c().b(zzbar.X6));
            listRb = rb((String) zzba.c().b(zzbar.Y6));
        } else {
            this.M = R;
            this.N = S;
            this.O = T;
            listRb = U;
        }
        this.P = listRb;
    }

    static /* bridge */ /* synthetic */ void Ya(zzac zzacVar, List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            if (zzacVar.hb((Uri) it.next())) {
                zzacVar.I.getAndIncrement();
                return;
            }
        }
    }

    static /* bridge */ /* synthetic */ void Za(final zzac zzacVar, final String str, final String str2, final zzdpd zzdpdVar) {
        if (((Boolean) zzba.c().b(zzbar.f10440z6)).booleanValue()) {
            if (((Boolean) zzba.c().b(zzbar.F6)).booleanValue()) {
                zzbzn.f11614a.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzi
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f6435o.cb(str, str2, zzdpdVar);
                    }
                });
            } else {
                zzacVar.f6387z.d(str, str2, zzdpdVar);
            }
        }
    }

    static final /* synthetic */ Uri jb(Uri uri, String str) {
        return !TextUtils.isEmpty(str) ? qb(uri, "nas", str) : uri;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0083  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final com.google.android.gms.ads.nonagon.signalgeneration.zzh kb(android.content.Context r8, java.lang.String r9, java.lang.String r10, com.google.android.gms.ads.internal.client.zzq r11, com.google.android.gms.ads.internal.client.zzl r12) {
        /*
            Method dump skipped, instruction units count: 246
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.nonagon.signalgeneration.zzac.kb(android.content.Context, java.lang.String, java.lang.String, com.google.android.gms.ads.internal.client.zzq, com.google.android.gms.ads.internal.client.zzl):com.google.android.gms.ads.nonagon.signalgeneration.zzh");
    }

    private final zzfut lb(final String str) {
        final zzdlf[] zzdlfVarArr = new zzdlf[1];
        zzfut zzfutVarM = zzfuj.m(this.f6379r.a(), new zzftq() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzl
            @Override // com.google.android.gms.internal.ads.zzftq
            public final zzfut a(Object obj) {
                return this.f6441a.Db(zzdlfVarArr, str, (zzdlf) obj);
            }
        }, this.f6381t);
        zzfutVarM.f(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzm
            @Override // java.lang.Runnable
            public final void run() {
                this.f6444o.bb(zzdlfVarArr);
            }
        }, this.f6381t);
        return zzfuj.e(zzfuj.l((zzfua) zzfuj.n(zzfua.D(zzfutVarM), ((Integer) zzba.c().b(zzbar.f10210e7)).intValue(), TimeUnit.MILLISECONDS, this.f6382u), new zzfnj() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzj
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                int i10 = zzac.V;
                return ((JSONObject) obj).optString("nas");
            }
        }, this.f6381t), Exception.class, new zzfnj() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzk
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                int i10 = zzac.V;
                zzbza.e(BuildConfig.FLAVOR, (Exception) obj);
                return null;
            }
        }, this.f6381t);
    }

    private final void mb(List list, final IObjectWrapper iObjectWrapper, zzbrr zzbrrVar, boolean z10) {
        zzfut zzfutVarE;
        if (!((Boolean) zzba.c().b(zzbar.f10199d7)).booleanValue()) {
            zzbza.g("The updating URL feature is not enabled.");
            try {
                zzbrrVar.s("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e10) {
                zzbza.e(BuildConfig.FLAVOR, e10);
                return;
            }
        }
        Iterator it = list.iterator();
        int i10 = 0;
        while (it.hasNext()) {
            if (hb((Uri) it.next())) {
                i10++;
            }
        }
        if (i10 > 1) {
            zzbza.g("Multiple google urls found: ".concat(String.valueOf(list)));
        }
        ArrayList arrayList = new ArrayList();
        Iterator it2 = list.iterator();
        while (it2.hasNext()) {
            final Uri uri = (Uri) it2.next();
            if (hb(uri)) {
                zzfutVarE = this.f6381t.e(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzs
                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f6455a.ub(uri, iObjectWrapper);
                    }
                });
                if (pb()) {
                    zzfutVarE = zzfuj.m(zzfutVarE, new zzftq() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzt
                        @Override // com.google.android.gms.internal.ads.zzftq
                        public final zzfut a(Object obj) {
                            zzac zzacVar = this.f6458a;
                            return zzfuj.l(zzacVar.lb("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new zzfnj() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzn
                                @Override // com.google.android.gms.internal.ads.zzfnj
                                public final Object a(Object obj2) {
                                    return zzac.jb(uri, (String) obj2);
                                }
                            }, zzacVar.f6381t);
                        }
                    }, this.f6381t);
                } else {
                    zzbza.f("Asset view map is empty.");
                }
            } else {
                zzbza.g("Not a Google URL: ".concat(String.valueOf(uri)));
                zzfutVarE = zzfuj.h(uri);
            }
            arrayList.add(zzfutVarE);
        }
        zzfuj.q(zzfuj.d(arrayList), new h(this, zzbrrVar, z10), this.f6376o.b());
    }

    private final void nb(final List list, final IObjectWrapper iObjectWrapper, zzbrr zzbrrVar, boolean z10) {
        if (!((Boolean) zzba.c().b(zzbar.f10199d7)).booleanValue()) {
            try {
                zzbrrVar.s("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e10) {
                zzbza.e(BuildConfig.FLAVOR, e10);
                return;
            }
        }
        zzfut zzfutVarE = this.f6381t.e(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzu
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f6459a.Va(list, iObjectWrapper);
            }
        });
        if (pb()) {
            zzfutVarE = zzfuj.m(zzfutVarE, new zzftq() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzv
                @Override // com.google.android.gms.internal.ads.zzftq
                public final zzfut a(Object obj) {
                    return this.f6462a.Eb((ArrayList) obj);
                }
            }, this.f6381t);
        } else {
            zzbza.f("Asset view map is empty.");
        }
        zzfuj.q(zzfutVarE, new g(this, zzbrrVar, z10), this.f6376o.b());
    }

    private static boolean ob(Uri uri, List list, List list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host != null && path != null) {
            Iterator it = list.iterator();
            while (it.hasNext()) {
                if (path.contains((String) it.next())) {
                    Iterator it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (host.endsWith((String) it2.next())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    private final boolean pb() {
        Map map;
        zzbsa zzbsaVar = this.f6383v;
        return (zzbsaVar == null || (map = zzbsaVar.f11200p) == null || map.isEmpty()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Uri qb(Uri uri, String str, String str2) {
        String string = uri.toString();
        int iIndexOf = string.indexOf("&adurl=");
        if (iIndexOf == -1) {
            iIndexOf = string.indexOf("?adurl=");
        }
        if (iIndexOf == -1) {
            return uri.buildUpon().appendQueryParameter(str, str2).build();
        }
        int i10 = iIndexOf + 1;
        return Uri.parse(string.substring(0, i10) + str + "=" + str2 + "&" + string.substring(i10));
    }

    private static final List rb(String str) {
        String[] strArrSplit = TextUtils.split(str, ",");
        ArrayList arrayList = new ArrayList();
        for (String str2 : strArrSplit) {
            if (!zzfoj.d(str2)) {
                arrayList.add(str2);
            }
        }
        return arrayList;
    }

    static /* bridge */ /* synthetic */ zzfen zb(zzfut zzfutVar, zzbxv zzbxvVar) {
        if (!zzfep.a() || !((Boolean) zzbcd.f10516e.e()).booleanValue()) {
            return null;
        }
        try {
            zzfen zzfenVarB = ((zzh) zzfuj.o(zzfutVar)).b();
            zzfenVarB.d(new ArrayList(Collections.singletonList(zzbxvVar.f11498p)));
            com.google.android.gms.ads.internal.client.zzl zzlVar = zzbxvVar.f11500r;
            zzfenVarB.b(zzlVar == null ? BuildConfig.FLAVOR : zzlVar.D);
            return zzfenVarB;
        } catch (ExecutionException e10) {
            com.google.android.gms.ads.internal.zzt.q().u(e10, "SignalGeneratorImpl.getConfiguredCriticalUserJourney");
            return null;
        }
    }

    final /* synthetic */ zzfut Cb() throws Exception {
        return kb(this.f6377p, null, AdFormat.BANNER.name(), null, null).c();
    }

    final /* synthetic */ zzfut Db(zzdlf[] zzdlfVarArr, String str, zzdlf zzdlfVar) throws Exception {
        zzdlfVarArr[0] = zzdlfVar;
        Context context = this.f6377p;
        zzbsa zzbsaVar = this.f6383v;
        Map map = zzbsaVar.f11200p;
        JSONObject jSONObjectD = zzbx.d(context, map, map, zzbsaVar.f11199o, null);
        JSONObject jSONObjectG = zzbx.g(this.f6377p, this.f6383v.f11199o);
        JSONObject jSONObjectF = zzbx.f(this.f6383v.f11199o);
        JSONObject jSONObjectE = zzbx.e(this.f6377p, this.f6383v.f11199o);
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("asset_view_signal", jSONObjectD);
        jSONObject.put("ad_view_signal", jSONObjectG);
        jSONObject.put("scroll_view_signal", jSONObjectF);
        jSONObject.put("lock_screen_signal", jSONObjectE);
        if ("google.afma.nativeAds.getPublisherCustomRenderedClickSignals".equals(str)) {
            jSONObject.put("click_signal", zzbx.c(null, this.f6377p, this.f6385x, this.f6384w));
        }
        return zzdlfVar.d(str, jSONObject);
    }

    final /* synthetic */ zzfut Eb(final ArrayList arrayList) throws Exception {
        return zzfuj.l(lb("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new zzfnj() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzp
            @Override // com.google.android.gms.internal.ads.zzfnj
            public final Object a(Object obj) {
                return this.f6450a.Ua(arrayList, (String) obj);
            }
        }, this.f6381t);
    }

    @Override // com.google.android.gms.internal.ads.zzbxr
    public final void O4(List list, IObjectWrapper iObjectWrapper, zzbrr zzbrrVar) {
        nb(list, iObjectWrapper, zzbrrVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbxr
    public final void O7(zzbsa zzbsaVar) {
        this.f6383v = zzbsaVar;
        this.f6379r.c(1);
    }

    final /* synthetic */ ArrayList Ua(List list, String str) {
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (!ib(uri) || TextUtils.isEmpty(str)) {
                arrayList.add(uri);
            } else {
                arrayList.add(qb(uri, "nas", str));
            }
        }
        return arrayList;
    }

    final /* synthetic */ ArrayList Va(List list, IObjectWrapper iObjectWrapper) throws Exception {
        String strG = this.f6378q.c() != null ? this.f6378q.c().g(this.f6377p, (View) ObjectWrapper.t1(iObjectWrapper), null) : BuildConfig.FLAVOR;
        if (TextUtils.isEmpty(strG)) {
            throw new Exception("Failed to get view signals.");
        }
        ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            Uri uri = (Uri) it.next();
            if (ib(uri)) {
                arrayList.add(qb(uri, "ms", strG));
            } else {
                zzbza.g("Not a Google URL: ".concat(String.valueOf(uri)));
                arrayList.add(uri);
            }
        }
        if (arrayList.isEmpty()) {
            throw new Exception("Empty impression URLs result.");
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzbxr
    public final void a4(List list, IObjectWrapper iObjectWrapper, zzbrr zzbrrVar) {
        mb(list, iObjectWrapper, zzbrrVar, true);
    }

    final /* synthetic */ void ab(WebView webView) {
        CookieManager cookieManagerB = com.google.android.gms.ads.internal.zzt.s().b(this.f6377p);
        boolean zAcceptThirdPartyCookies = cookieManagerB != null ? cookieManagerB.acceptThirdPartyCookies(webView) : false;
        if (((Boolean) zzba.c().b(zzbar.K8)).booleanValue()) {
            zzdpn zzdpnVar = this.A;
            zzdpd zzdpdVar = this.f6380s;
            Pair[] pairArr = new Pair[1];
            pairArr[0] = new Pair("tpc", true != zAcceptThirdPartyCookies ? AppEventsConstants.EVENT_PARAM_VALUE_NO : AppEventsConstants.EVENT_PARAM_VALUE_YES);
            zzf.c(zzdpnVar, zzdpdVar, "reg_wv", pairArr);
        }
        if (zAcceptThirdPartyCookies) {
            Context context = this.f6377p;
            String str = (String) zzba.c().b(zzbar.M8);
            AdRequest.Builder builder = new AdRequest.Builder();
            builder.d("paw");
            InterstitialAd.c(context, str, builder.c(), new c(this));
        }
    }

    final /* synthetic */ void bb(zzdlf[] zzdlfVarArr) {
        zzdlf zzdlfVar = zzdlfVarArr[0];
        if (zzdlfVar != null) {
            this.f6379r.b(zzfuj.h(zzdlfVar));
        }
    }

    final /* synthetic */ void cb(String str, String str2, zzdpd zzdpdVar) {
        this.f6387z.d(str, str2, zzdpdVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbxr
    public final void e0(IObjectWrapper iObjectWrapper) {
        if (((Boolean) zzba.c().b(zzbar.f10199d7)).booleanValue()) {
            MotionEvent motionEvent = (MotionEvent) ObjectWrapper.t1(iObjectWrapper);
            zzbsa zzbsaVar = this.f6383v;
            this.f6384w = zzbx.a(motionEvent, zzbsaVar == null ? null : zzbsaVar.f11199o);
            if (motionEvent.getAction() == 0) {
                this.f6385x = this.f6384w;
            }
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            Point point = this.f6384w;
            motionEventObtain.setLocation(point.x, point.y);
            this.f6378q.d(motionEventObtain);
            motionEventObtain.recycle();
        }
    }

    final boolean hb(Uri uri) {
        return ob(uri, this.M, this.N);
    }

    final boolean ib(Uri uri) {
        return ob(uri, this.O, this.P);
    }

    @Override // com.google.android.gms.internal.ads.zzbxr
    public final void k8(List list, IObjectWrapper iObjectWrapper, zzbrr zzbrrVar) {
        mb(list, iObjectWrapper, zzbrrVar, false);
    }

    @Override // com.google.android.gms.internal.ads.zzbxr
    public final void l3(IObjectWrapper iObjectWrapper, final zzbxv zzbxvVar, zzbxo zzbxoVar) {
        zzfut zzfutVarH;
        zzfut zzfutVarC;
        Context context = (Context) ObjectWrapper.t1(iObjectWrapper);
        this.f6377p = context;
        zzfec zzfecVarA = zzfeb.a(context, 22);
        zzfecVarA.f();
        if (((Boolean) zzba.c().b(zzbar.f10355r9)).booleanValue()) {
            zzfuu zzfuuVar = zzbzn.f11614a;
            zzfutVarH = zzfuuVar.e(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzq
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f6452a.yb(zzbxvVar);
                }
            });
            zzfutVarC = zzfuj.m(zzfutVarH, new zzftq() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzr
                @Override // com.google.android.gms.internal.ads.zzftq
                public final zzfut a(Object obj) {
                    return ((zzh) obj).c();
                }
            }, zzfuuVar);
        } else {
            zzh zzhVarKb = kb(this.f6377p, zzbxvVar.f11497o, zzbxvVar.f11498p, zzbxvVar.f11499q, zzbxvVar.f11500r);
            zzfutVarH = zzfuj.h(zzhVarKb);
            zzfutVarC = zzhVarKb.c();
        }
        zzfuj.q(zzfutVarC, new f(this, zzfutVarH, zzbxvVar, zzbxoVar, zzfecVarA, com.google.android.gms.ads.internal.zzt.b().a()), this.f6376o.b());
    }

    @Override // com.google.android.gms.internal.ads.zzbxr
    @SuppressLint({"AddJavascriptInterface"})
    public final void u0(IObjectWrapper iObjectWrapper) {
        if (((Boolean) zzba.c().b(zzbar.E8)).booleanValue()) {
            if (Build.VERSION.SDK_INT < 21) {
                zzbza.g("Not registering the webview because the Android API level is lower than Lollopop which has security risks on webviews.");
                return;
            }
            if (((Boolean) zzba.c().b(zzbar.F8)).booleanValue()) {
                if (!((Boolean) zzba.c().b(zzbar.I8)).booleanValue()) {
                    zzfuj.q(((Boolean) zzba.c().b(zzbar.f10355r9)).booleanValue() ? zzfuj.k(new zzftp() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzw
                        @Override // com.google.android.gms.internal.ads.zzftp
                        public final zzfut zza() {
                            return this.f6463a.Cb();
                        }
                    }, zzbzn.f11614a) : kb(this.f6377p, null, AdFormat.BANNER.name(), null, null).c(), new b(this), this.f6376o.b());
                }
            }
            final WebView webView = (WebView) ObjectWrapper.t1(iObjectWrapper);
            if (webView == null) {
                zzbza.d("The webView cannot be null.");
                return;
            }
            if (this.f6386y.contains(webView)) {
                zzbza.f("This webview has already been registered.");
                return;
            }
            this.f6386y.add(webView);
            webView.addJavascriptInterface(new a(webView, this.f6378q, this.A, this.B), "gmaSdk");
            if (((Boolean) zzba.c().b(zzbar.L8)).booleanValue()) {
                this.Q.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzo
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f6448o.ab(webView);
                    }
                });
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbxr
    public final void u9(List list, IObjectWrapper iObjectWrapper, zzbrr zzbrrVar) {
        nb(list, iObjectWrapper, zzbrrVar, true);
    }

    final /* synthetic */ Uri ub(Uri uri, IObjectWrapper iObjectWrapper) throws Exception {
        try {
            uri = this.f6378q.a(uri, this.f6377p, (View) ObjectWrapper.t1(iObjectWrapper), null);
        } catch (zzapx e10) {
            zzbza.h(BuildConfig.FLAVOR, e10);
        }
        if (uri.getQueryParameter("ms") != null) {
            return uri;
        }
        throw new Exception("Failed to append spam signals to click url.");
    }

    final /* synthetic */ zzh yb(zzbxv zzbxvVar) throws Exception {
        return kb(this.f6377p, zzbxvVar.f11497o, zzbxvVar.f11498p, zzbxvVar.f11499q, zzbxvVar.f11500r);
    }
}
