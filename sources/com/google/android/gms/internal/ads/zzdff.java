package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.Point;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.common.util.VisibleForTesting;
import com.vungle.mediation.BuildConfig;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@ParametersAreNonnullByDefault
public final class zzdff implements zzdgq {
    private com.google.android.gms.ads.internal.client.zzcs A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f14483a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final zzdgt f14484b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final JSONObject f14485c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final zzdlf f14486d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzdgi f14487e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final zzapw f14488f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzcvg f14489g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzcum f14490h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final zzdca f14491i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final zzeyc f14492j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final zzbzg f14493k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private final zzeyx f14494l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private final zzcng f14495m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private final zzdhm f14496n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Clock f14497o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final zzdbw f14498p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final zzfff f14499q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final zzfen f14500r;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f14502t;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f14501s = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f14503u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f14504v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Point f14505w = new Point();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Point f14506x = new Point();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private long f14507y = 0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private long f14508z = 0;

    public zzdff(Context context, zzdgt zzdgtVar, JSONObject jSONObject, zzdlf zzdlfVar, zzdgi zzdgiVar, zzapw zzapwVar, zzcvg zzcvgVar, zzcum zzcumVar, zzdca zzdcaVar, zzeyc zzeycVar, zzbzg zzbzgVar, zzeyx zzeyxVar, zzcng zzcngVar, zzdhm zzdhmVar, Clock clock, zzdbw zzdbwVar, zzfff zzfffVar, zzfen zzfenVar) {
        this.f14483a = context;
        this.f14484b = zzdgtVar;
        this.f14485c = jSONObject;
        this.f14486d = zzdlfVar;
        this.f14487e = zzdgiVar;
        this.f14488f = zzapwVar;
        this.f14489g = zzcvgVar;
        this.f14490h = zzcumVar;
        this.f14491i = zzdcaVar;
        this.f14492j = zzeycVar;
        this.f14493k = zzbzgVar;
        this.f14494l = zzeyxVar;
        this.f14495m = zzcngVar;
        this.f14496n = zzdhmVar;
        this.f14497o = clock;
        this.f14498p = zzdbwVar;
        this.f14499q = zzfffVar;
        this.f14500r = zzfenVar;
    }

    private final String v(View view, Map map) {
        if (map != null && view != null) {
            for (Map.Entry entry : map.entrySet()) {
                if (view.equals((View) ((WeakReference) entry.getValue()).get())) {
                    return (String) entry.getKey();
                }
            }
        }
        int iM = this.f14487e.M();
        if (iM == 1) {
            return "1099";
        }
        if (iM == 2) {
            return "2099";
        }
        if (iM != 6) {
            return null;
        }
        return "3099";
    }

    private final boolean w(String str) {
        JSONObject jSONObjectOptJSONObject = this.f14485c.optJSONObject("allow_pub_event_reporting");
        return jSONObjectOptJSONObject != null && jSONObjectOptJSONObject.optBoolean(str, false);
    }

    private final boolean x() {
        return this.f14485c.optBoolean("allow_custom_click_gesture", false);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private final boolean y(JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, boolean z10) {
        Preconditions.f("recordImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject6 = new JSONObject();
            jSONObject6.put("ad", this.f14485c);
            jSONObject6.put("asset_view_signal", jSONObject2);
            jSONObject6.put("ad_view_signal", jSONObject);
            jSONObject6.put("scroll_view_signal", jSONObject3);
            jSONObject6.put("lock_screen_signal", jSONObject4);
            jSONObject6.put("provided_signals", jSONObject5);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10162a3)).booleanValue()) {
                jSONObject6.put("view_signals", str);
            }
            jSONObject6.put("policy_validator_enabled", z10);
            Context context = this.f14483a;
            JSONObject jSONObject7 = new JSONObject();
            com.google.android.gms.ads.internal.zzt.r();
            DisplayMetrics displayMetricsP = com.google.android.gms.ads.internal.util.zzs.P((WindowManager) context.getSystemService("window"));
            zzdfb zzdfbVar = null;
            Object[] objArr = 0;
            Object[] objArr2 = 0;
            try {
                jSONObject7.put(ViewHierarchyConstants.DIMENSION_WIDTH_KEY, com.google.android.gms.ads.internal.client.zzay.b().g(context, displayMetricsP.widthPixels));
                jSONObject7.put(ViewHierarchyConstants.DIMENSION_HEIGHT_KEY, com.google.android.gms.ads.internal.client.zzay.b().g(context, displayMetricsP.heightPixels));
            } catch (JSONException unused) {
                jSONObject7 = null;
            }
            jSONObject6.put("screen", jSONObject7);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.M7)).booleanValue()) {
                this.f14486d.i("/clickRecorded", new zzdfc(this, zzdfbVar));
            } else {
                this.f14486d.i("/logScionEvent", new zzdfa(this, objArr == true ? 1 : 0));
            }
            this.f14486d.i("/nativeImpression", new zzdfe(this, objArr2 == true ? 1 : 0));
            zzbzq.a(this.f14486d.d("google.afma.nativeAds.handleImpression", jSONObject6), "Error during performing handleImpression");
            if (this.f14501s) {
                return true;
            }
            this.f14501s = com.google.android.gms.ads.internal.zzt.u().n(this.f14483a, this.f14493k.f11605o, this.f14492j.D.toString(), this.f14494l.f17733f);
            return true;
        } catch (JSONException e10) {
            zzbza.e("Unable to create impression JSON.", e10);
            return false;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final boolean B() {
        if (zza() == 0) {
            return true;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.F9)).booleanValue()) {
            return this.f14494l.f17736i.f10654x;
        }
        return true;
    }

    @VisibleForTesting
    protected final void D(View view, JSONObject jSONObject, JSONObject jSONObject2, JSONObject jSONObject3, JSONObject jSONObject4, String str, JSONObject jSONObject5, JSONObject jSONObject6, boolean z10, boolean z11) {
        String strH;
        Preconditions.f("performClick must be called on the main UI thread.");
        try {
            JSONObject jSONObject7 = new JSONObject();
            jSONObject7.put("ad", this.f14485c);
            jSONObject7.put("asset_view_signal", jSONObject2);
            jSONObject7.put("ad_view_signal", jSONObject);
            jSONObject7.put("click_signal", jSONObject5);
            jSONObject7.put("scroll_view_signal", jSONObject3);
            jSONObject7.put("lock_screen_signal", jSONObject4);
            jSONObject7.put("has_custom_click_handler", this.f14484b.c(this.f14487e.j0()) != null);
            jSONObject7.put("provided_signals", jSONObject6);
            JSONObject jSONObject8 = new JSONObject();
            jSONObject8.put("asset_id", str);
            jSONObject8.put("template", this.f14487e.M());
            jSONObject8.put("view_aware_api_used", z10);
            zzbdl zzbdlVar = this.f14494l.f17736i;
            jSONObject8.put("custom_mute_requested", zzbdlVar != null && zzbdlVar.f10651u);
            jSONObject8.put("custom_mute_enabled", (this.f14487e.g().isEmpty() || this.f14487e.U() == null) ? false : true);
            if (this.f14496n.a() != null && this.f14485c.optBoolean("custom_one_point_five_click_enabled", false)) {
                jSONObject8.put("custom_one_point_five_click_eligible", true);
            }
            jSONObject8.put("timestamp", this.f14497o.a());
            if (this.f14504v && x()) {
                jSONObject8.put("custom_click_gesture_eligible", true);
            }
            if (z11) {
                jSONObject8.put("is_custom_click_gesture", true);
            }
            jSONObject8.put("has_custom_click_handler", this.f14484b.c(this.f14487e.j0()) != null);
            try {
                JSONObject jSONObjectOptJSONObject = this.f14485c.optJSONObject("tracking_urls_and_actions");
                if (jSONObjectOptJSONObject == null) {
                    jSONObjectOptJSONObject = new JSONObject();
                }
                strH = this.f14488f.c().h(this.f14483a, jSONObjectOptJSONObject.optString("click_string"), view);
            } catch (Exception e10) {
                zzbza.e("Exception obtaining click signals", e10);
                strH = null;
            }
            jSONObject8.put("click_signals", strH);
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10229g4)).booleanValue()) {
                jSONObject8.put("open_chrome_custom_tab", true);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.Q7)).booleanValue() && PlatformVersion.m()) {
                jSONObject8.put("try_fallback_for_deep_link", true);
            }
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.R7)).booleanValue() && PlatformVersion.m()) {
                jSONObject8.put("in_app_link_handling_for_android_11_enabled", true);
            }
            jSONObject7.put("click", jSONObject8);
            JSONObject jSONObject9 = new JSONObject();
            long jA = this.f14497o.a();
            jSONObject9.put("time_from_last_touch_down", jA - this.f14507y);
            jSONObject9.put("time_from_last_touch", jA - this.f14508z);
            jSONObject7.put("touch_signal", jSONObject9);
            zzbzq.a(this.f14486d.d("google.afma.nativeAds.handleClick", jSONObject7), "Error during performing handleClick");
        } catch (JSONException e11) {
            zzbza.e("Unable to create click JSON.", e11);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final boolean R() {
        return x();
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void a(View view, MotionEvent motionEvent, View view2) {
        this.f14505w = com.google.android.gms.ads.internal.util.zzbx.a(motionEvent, view2);
        long jA = this.f14497o.a();
        this.f14508z = jA;
        if (motionEvent.getAction() == 0) {
            this.f14507y = jA;
            this.f14506x = this.f14505w;
        }
        MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
        Point point = this.f14505w;
        motionEventObtain.setLocation(point.x, point.y);
        this.f14488f.d(motionEventObtain);
        motionEventObtain.recycle();
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void b(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        String strG;
        JSONObject jSONObjectD = com.google.android.gms.ads.internal.util.zzbx.d(this.f14483a, map, map2, view, scaleType);
        JSONObject jSONObjectG = com.google.android.gms.ads.internal.util.zzbx.g(this.f14483a, view);
        JSONObject jSONObjectF = com.google.android.gms.ads.internal.util.zzbx.f(view);
        JSONObject jSONObjectE = com.google.android.gms.ads.internal.util.zzbx.e(this.f14483a, view);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10162a3)).booleanValue()) {
            try {
                strG = this.f14488f.c().g(this.f14483a, view, null);
            } catch (Exception unused) {
                zzbza.d("Exception getting data.");
                strG = null;
            }
        } else {
            strG = null;
        }
        y(jSONObjectG, jSONObjectD, jSONObjectF, jSONObjectE, strG, null, com.google.android.gms.ads.internal.util.zzbx.h(this.f14483a, this.f14492j));
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void c(View view, Map map) {
        this.f14505w = new Point();
        this.f14506x = new Point();
        if (view != null) {
            this.f14498p.c1(view);
        }
        this.f14502t = false;
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final boolean d(Bundle bundle) {
        if (w("impression_reporting")) {
            return y(null, null, null, null, null, com.google.android.gms.ads.internal.client.zzay.b().p(bundle, null), false);
        }
        zzbza.d("The ad slot cannot handle external impression events. You must be in the allow list to be able to report your impression events.");
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void e() {
        try {
            com.google.android.gms.ads.internal.client.zzcs zzcsVar = this.A;
            if (zzcsVar != null) {
                zzcsVar.b();
            }
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void f() {
        if (this.f14485c.optBoolean("custom_one_point_five_click_enabled", false)) {
            this.f14496n.b();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void g() {
        this.f14486d.f();
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void h(View view) {
        if (!this.f14485c.optBoolean("custom_one_point_five_click_enabled", false)) {
            zzbza.g("setClickConfirmingView: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
            return;
        }
        zzdhm zzdhmVar = this.f14496n;
        if (view == null) {
            return;
        }
        view.setOnClickListener(zzdhmVar);
        view.setClickable(true);
        zzdhmVar.f14763u = new WeakReference(view);
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void i(View view, Map map, Map map2, View.OnTouchListener onTouchListener, View.OnClickListener onClickListener) {
        this.f14505w = new Point();
        this.f14506x = new Point();
        if (!this.f14502t) {
            this.f14498p.Y0(view);
            this.f14502t = true;
        }
        view.setOnTouchListener(onTouchListener);
        view.setClickable(true);
        view.setOnClickListener(onClickListener);
        this.f14495m.e(this);
        boolean zI = com.google.android.gms.ads.internal.util.zzbx.i(this.f14493k.f11607q);
        if (map != null) {
            Iterator it = map.entrySet().iterator();
            while (it.hasNext()) {
                View view2 = (View) ((WeakReference) ((Map.Entry) it.next()).getValue()).get();
                if (view2 != null) {
                    if (zI) {
                        view2.setOnTouchListener(onTouchListener);
                    }
                    view2.setClickable(true);
                    view2.setOnClickListener(onClickListener);
                }
            }
        }
        if (map2 != null) {
            Iterator it2 = map2.entrySet().iterator();
            while (it2.hasNext()) {
                View view3 = (View) ((WeakReference) ((Map.Entry) it2.next()).getValue()).get();
                if (view3 != null) {
                    if (zI) {
                        view3.setOnTouchListener(onTouchListener);
                    }
                    view3.setClickable(false);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void j(View view, View view2, Map map, Map map2, boolean z10, ImageView.ScaleType scaleType) {
        JSONObject jSONObjectD = com.google.android.gms.ads.internal.util.zzbx.d(this.f14483a, map, map2, view2, scaleType);
        JSONObject jSONObjectG = com.google.android.gms.ads.internal.util.zzbx.g(this.f14483a, view2);
        JSONObject jSONObjectF = com.google.android.gms.ads.internal.util.zzbx.f(view2);
        JSONObject jSONObjectE = com.google.android.gms.ads.internal.util.zzbx.e(this.f14483a, view2);
        String strV = v(view, map);
        D(true == ((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10217f3)).booleanValue() ? view2 : view, jSONObjectG, jSONObjectD, jSONObjectF, jSONObjectE, strV, com.google.android.gms.ads.internal.util.zzbx.c(strV, this.f14483a, this.f14506x, this.f14505w), null, z10, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void k(Bundle bundle) {
        if (bundle == null) {
            zzbza.b("Click data is null. No click is reported.");
        } else if (!w("click_reporting")) {
            zzbza.d("The ad slot cannot handle external click events. You must be part of the allow list to be able to report your click events.");
        } else {
            Bundle bundle2 = bundle.getBundle("click_signal");
            D(null, null, null, null, null, bundle2 != null ? bundle2.getString("asset_id") : null, null, com.google.android.gms.ads.internal.client.zzay.b().p(bundle, null), false, false);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void l(Bundle bundle) {
        if (bundle == null) {
            zzbza.b("Touch event data is null. No touch event is reported.");
            return;
        }
        if (!w("touch_reporting")) {
            zzbza.d("The ad slot cannot handle external touch events. You must be in the allow list to be able to report your touch events.");
            return;
        }
        this.f14488f.c().d((int) bundle.getFloat("x"), (int) bundle.getFloat("y"), bundle.getInt("duration_ms"));
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final JSONObject m(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        JSONObject jSONObjectD = com.google.android.gms.ads.internal.util.zzbx.d(this.f14483a, map, map2, view, scaleType);
        JSONObject jSONObjectG = com.google.android.gms.ads.internal.util.zzbx.g(this.f14483a, view);
        JSONObject jSONObjectF = com.google.android.gms.ads.internal.util.zzbx.f(view);
        JSONObject jSONObjectE = com.google.android.gms.ads.internal.util.zzbx.e(this.f14483a, view);
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("asset_view_signal", jSONObjectD);
            jSONObject.put("ad_view_signal", jSONObjectG);
            jSONObject.put("scroll_view_signal", jSONObjectF);
            jSONObject.put("lock_screen_signal", jSONObjectE);
            return jSONObject;
        } catch (JSONException e10) {
            zzbza.e("Unable to create native ad view signals JSON.", e10);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void m0(String str) {
        D(null, null, null, null, null, str, null, null, false, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void n() {
        Preconditions.f("recordDownloadedImpression must be called on the main UI thread.");
        try {
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("ad", this.f14485c);
            zzbzq.a(this.f14486d.d("google.afma.nativeAds.handleDownloadedImpression", jSONObject), "Error during performing handleDownloadedImpression");
        } catch (JSONException e10) {
            zzbza.e(BuildConfig.FLAVOR, e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void o(com.google.android.gms.ads.internal.client.zzcs zzcsVar) {
        this.A = zzcsVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void p() {
        y(null, null, null, null, null, null, false);
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void q(View view, View view2, Map map, Map map2, boolean z10, ImageView.ScaleType scaleType, int i10) {
        JSONObject jSONObject;
        boolean z11 = false;
        if (this.f14485c.optBoolean("allow_sdk_custom_click_gesture", false)) {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.F9)).booleanValue()) {
                z11 = true;
            }
        }
        if (!z11) {
            if (!this.f14504v) {
                zzbza.b("Custom click reporting failed. enableCustomClickGesture is not set.");
                return;
            } else if (!x()) {
                zzbza.b("Custom click reporting failed. Ad unit id not in the allow list.");
                return;
            }
        }
        JSONObject jSONObjectD = com.google.android.gms.ads.internal.util.zzbx.d(this.f14483a, map, map2, view2, scaleType);
        JSONObject jSONObjectG = com.google.android.gms.ads.internal.util.zzbx.g(this.f14483a, view2);
        JSONObject jSONObjectF = com.google.android.gms.ads.internal.util.zzbx.f(view2);
        JSONObject jSONObjectE = com.google.android.gms.ads.internal.util.zzbx.e(this.f14483a, view2);
        String strV = v(view, map);
        JSONObject jSONObjectC = com.google.android.gms.ads.internal.util.zzbx.c(strV, this.f14483a, this.f14506x, this.f14505w);
        if (z11) {
            try {
                JSONObject jSONObject2 = this.f14485c;
                Point point = this.f14506x;
                Point point2 = this.f14505w;
                try {
                    jSONObject = new JSONObject();
                } catch (Exception e10) {
                    e = e10;
                    jSONObject = null;
                }
                try {
                    JSONObject jSONObject3 = new JSONObject();
                    JSONObject jSONObject4 = new JSONObject();
                    if (point != null) {
                        jSONObject3.put("x", point.x);
                        jSONObject3.put("y", point.y);
                    }
                    if (point2 != null) {
                        jSONObject4.put("x", point2.x);
                        jSONObject4.put("y", point2.y);
                    }
                    jSONObject.put("start_point", jSONObject3);
                    jSONObject.put("end_point", jSONObject4);
                    jSONObject.put("duration_ms", i10);
                } catch (Exception e11) {
                    e = e11;
                    zzbza.e("Error occurred while grabbing custom click gesture signals.", e);
                }
                jSONObject2.put("custom_click_gesture_signal", jSONObject);
            } catch (JSONException e12) {
                zzbza.e("Error occurred while adding CustomClickGestureSignals to adJson.", e12);
                com.google.android.gms.ads.internal.zzt.q().u(e12, "FirstPartyNativeAdCore.performCustomClickGesture");
            }
        }
        D(view2, jSONObjectG, jSONObjectD, jSONObjectF, jSONObjectE, strV, jSONObjectC, null, z10, true);
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void r(com.google.android.gms.ads.internal.client.zzcw zzcwVar) {
        try {
            if (this.f14503u) {
                return;
            }
            if (zzcwVar == null) {
                zzdgi zzdgiVar = this.f14487e;
                if (zzdgiVar.U() != null) {
                    this.f14503u = true;
                    this.f14499q.c(zzdgiVar.U().c(), this.f14500r);
                    e();
                    return;
                }
            }
            this.f14503u = true;
            this.f14499q.c(zzcwVar.c(), this.f14500r);
            e();
        } catch (RemoteException e10) {
            zzbza.i("#007 Could not call remote method.", e10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final JSONObject s(View view, Map map, Map map2, ImageView.ScaleType scaleType) {
        JSONObject jSONObjectM = m(view, map, map2, scaleType);
        JSONObject jSONObject = new JSONObject();
        try {
            if (this.f14504v && x()) {
                jSONObject.put("custom_click_gesture_eligible", true);
            }
            if (jSONObjectM != null) {
                jSONObject.put("nas", jSONObjectM);
            }
        } catch (JSONException e10) {
            zzbza.e("Unable to create native click meta data JSON.", e10);
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void t() {
        this.f14504v = true;
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final void u(zzbfr zzbfrVar) {
        if (this.f14485c.optBoolean("custom_one_point_five_click_enabled", false)) {
            this.f14496n.d(zzbfrVar);
        } else {
            zzbza.g("setUnconfirmedClickListener: Your account need to be in the allow list to use this feature.\nContact your account manager for more information.");
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgq
    public final int zza() {
        if (this.f14494l.f17736i == null) {
            return 0;
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.F9)).booleanValue()) {
            return this.f14494l.f17736i.f10653w;
        }
        return 0;
    }
}
