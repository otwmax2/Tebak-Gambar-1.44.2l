package com.google.android.gms.ads.nonagon.signalgeneration;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import android.view.MotionEvent;
import android.webkit.CookieManager;
import android.webkit.JavascriptInterface;
import android.webkit.WebView;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AdFormat;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.internal.client.zzba;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.internal.ads.zzapw;
import com.google.android.gms.internal.ads.zzapx;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzbza;
import com.google.android.gms.internal.ads.zzbzn;
import com.google.android.gms.internal.ads.zzdpn;
import com.google.android.gms.internal.ads.zzfff;
import com.google.android.gms.internal.ads.zzfuu;
import com.vungle.mediation.BuildConfig;
import java.util.UUID;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import org.json.JSONException;
import org.json.JSONObject;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f6348a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WebView f6349b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final zzapw f6350c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f6351d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final zzdpn f6352e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f6353f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final zzfuu f6354g = zzbzn.f11618e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final zzfff f6355h;

    a(WebView webView, zzapw zzapwVar, zzdpn zzdpnVar, zzfff zzfffVar) {
        this.f6349b = webView;
        Context context = webView.getContext();
        this.f6348a = context;
        this.f6350c = zzapwVar;
        this.f6352e = zzdpnVar;
        zzbar.c(context);
        this.f6351d = ((Integer) zzba.c().b(zzbar.G8)).intValue();
        this.f6353f = ((Boolean) zzba.c().b(zzbar.H8)).booleanValue();
        this.f6355h = zzfffVar;
    }

    final /* synthetic */ void b(Bundle bundle, QueryInfoGenerationCallback queryInfoGenerationCallback) {
        CookieManager cookieManagerB = com.google.android.gms.ads.internal.zzt.s().b(this.f6348a);
        bundle.putBoolean("accept_3p_cookie", cookieManagerB != null ? cookieManagerB.acceptThirdPartyCookies(this.f6349b) : false);
        Context context = this.f6348a;
        AdFormat adFormat = AdFormat.BANNER;
        AdRequest.Builder builder = new AdRequest.Builder();
        builder.b(AdMobAdapter.class, bundle);
        QueryInfo.a(context, adFormat, builder.c(), queryInfoGenerationCallback);
    }

    final /* synthetic */ void c(String str) {
        Uri uriA = Uri.parse(str);
        try {
            uriA = this.f6350c.a(uriA, this.f6348a, this.f6349b, null);
        } catch (zzapx e10) {
            zzbza.c("Failed to append the click signal to URL: ", e10);
            com.google.android.gms.ads.internal.zzt.q().u(e10, "TaggingLibraryJsInterface.recordClick");
        }
        this.f6355h.c(uriA.toString(), null);
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getClickSignals(String str) {
        try {
            long jA = com.google.android.gms.ads.internal.zzt.b().a();
            String strH = this.f6350c.c().h(this.f6348a, str, this.f6349b);
            if (this.f6353f) {
                zzf.c(this.f6352e, null, "csg", new Pair("clat", String.valueOf(com.google.android.gms.ads.internal.zzt.b().a() - jA)));
            }
            return strH;
        } catch (RuntimeException e10) {
            zzbza.e("Exception getting click signals. ", e10);
            com.google.android.gms.ads.internal.zzt.q().u(e10, "TaggingLibraryJsInterface.getClickSignals");
            return BuildConfig.FLAVOR;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getClickSignalsWithTimeout(final String str, int i10) {
        if (i10 <= 0) {
            zzbza.d("Invalid timeout for getting click signals. Timeout=" + i10);
            return BuildConfig.FLAVOR;
        }
        try {
            return (String) zzbzn.f11614a.e(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzas
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f6419a.getClickSignals(str);
                }
            }).get(Math.min(i10, this.f6351d), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            zzbza.e("Exception getting click signals with timeout. ", e10);
            com.google.android.gms.ads.internal.zzt.q().u(e10, "TaggingLibraryJsInterface.getClickSignalsWithTimeout");
            return e10 instanceof TimeoutException ? "17" : BuildConfig.FLAVOR;
        }
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getQueryInfo() {
        com.google.android.gms.ads.internal.zzt.r();
        String string = UUID.randomUUID().toString();
        final Bundle bundle = new Bundle();
        bundle.putString("query_info_type", "requester_type_6");
        final d dVar = new d(this, string);
        if (((Boolean) zzba.c().b(zzbar.J8)).booleanValue()) {
            this.f6354g.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzaq
                @Override // java.lang.Runnable
                public final void run() {
                    this.f6415o.b(bundle, dVar);
                }
            });
        } else {
            Context context = this.f6348a;
            AdFormat adFormat = AdFormat.BANNER;
            AdRequest.Builder builder = new AdRequest.Builder();
            builder.b(AdMobAdapter.class, bundle);
            QueryInfo.a(context, adFormat, builder.c(), dVar);
        }
        return string;
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getViewSignals() {
        try {
            long jA = com.google.android.gms.ads.internal.zzt.b().a();
            String strG = this.f6350c.c().g(this.f6348a, this.f6349b, null);
            if (this.f6353f) {
                zzf.c(this.f6352e, null, "vsg", new Pair("vlat", String.valueOf(com.google.android.gms.ads.internal.zzt.b().a() - jA)));
            }
            return strG;
        } catch (RuntimeException e10) {
            zzbza.e("Exception getting view signals. ", e10);
            com.google.android.gms.ads.internal.zzt.q().u(e10, "TaggingLibraryJsInterface.getViewSignals");
            return BuildConfig.FLAVOR;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public String getViewSignalsWithTimeout(int i10) {
        if (i10 <= 0) {
            zzbza.d("Invalid timeout for getting view signals. Timeout=" + i10);
            return BuildConfig.FLAVOR;
        }
        try {
            return (String) zzbzn.f11614a.e(new Callable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzar
                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f6418a.getViewSignals();
                }
            }).get(Math.min(i10, this.f6351d), TimeUnit.MILLISECONDS);
        } catch (InterruptedException | ExecutionException | TimeoutException e10) {
            zzbza.e("Exception getting view signals with timeout. ", e10);
            com.google.android.gms.ads.internal.zzt.q().u(e10, "TaggingLibraryJsInterface.getViewSignalsWithTimeout");
            return e10 instanceof TimeoutException ? "17" : BuildConfig.FLAVOR;
        }
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public void recordClick(final String str) {
        if (!((Boolean) zzba.c().b(zzbar.N8)).booleanValue() || TextUtils.isEmpty(str)) {
            return;
        }
        zzbzn.f11614a.execute(new Runnable() { // from class: com.google.android.gms.ads.nonagon.signalgeneration.zzap
            @Override // java.lang.Runnable
            public final void run() {
                this.f6413o.c(str);
            }
        });
    }

    @JavascriptInterface
    @KeepForSdk
    @TargetApi(21)
    public void reportTouchEvent(String str) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            int i10 = jSONObject.getInt("x");
            int i11 = jSONObject.getInt("y");
            int i12 = jSONObject.getInt("duration_ms");
            float f10 = (float) jSONObject.getDouble("force");
            int i13 = jSONObject.getInt("type");
            try {
                this.f6350c.d(MotionEvent.obtain(0L, i12, i13 != 0 ? i13 != 1 ? i13 != 2 ? i13 != 3 ? -1 : 3 : 2 : 1 : 0, i10, i11, f10, 1.0f, 0, 1.0f, 1.0f, 0, 0));
            } catch (RuntimeException e10) {
                e = e10;
                zzbza.e("Failed to parse the touch string. ", e);
                com.google.android.gms.ads.internal.zzt.q().u(e, "TaggingLibraryJsInterface.reportTouchEvent");
            } catch (JSONException e11) {
                e = e11;
                zzbza.e("Failed to parse the touch string. ", e);
                com.google.android.gms.ads.internal.zzt.q().u(e, "TaggingLibraryJsInterface.reportTouchEvent");
            }
        } catch (RuntimeException | JSONException e12) {
            e = e12;
        }
    }
}
