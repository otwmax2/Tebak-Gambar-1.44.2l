package com.vungle.mediation;

import android.content.Context;
import android.util.Log;
import android.widget.RelativeLayout;
import com.google.ads.mediation.vungle.VungleMediationAdapter;
import com.google.ads.mediation.vungle.a;
import com.google.ads.mediation.vungle.b;
import com.google.ads.mediation.vungle.c;
import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.vungle.warren.AdConfig;
import com.vungle.warren.BannerAdConfig;
import com.vungle.warren.Banners;
import com.vungle.warren.LoadAdCallback;
import com.vungle.warren.PlayAdCallback;
import com.vungle.warren.VungleBanner;
import com.vungle.warren.error.VungleException;

/* JADX INFO: loaded from: classes2.dex */
public class VungleBannerAdapter implements PlayAdCallback {

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final String f27587l = "VungleBannerAdapter";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f27588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final AdConfig f27589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f27590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final MediationBannerAdapter f27591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private MediationBannerListener f27592e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private a f27593f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private RelativeLayout f27594g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f27596i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private boolean f27597j = true;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private final LoadAdCallback f27598k = new LoadAdCallback() { // from class: com.vungle.mediation.VungleBannerAdapter.3
        @Override // com.vungle.warren.LoadAdCallback
        public void onAdLoad(String str) {
            VungleBannerAdapter.this.k();
        }

        @Override // com.vungle.warren.LoadAdCallback, com.vungle.warren.PlayAdCallback
        public void onError(String str, VungleException vungleException) {
            VungleBannerAdapter.this.f27595h.removeActiveBannerAd(VungleBannerAdapter.this.f27588a, VungleBannerAdapter.this.f27593f);
            if (!VungleBannerAdapter.this.f27596i || VungleBannerAdapter.this.f27591d == null || VungleBannerAdapter.this.f27592e == null) {
                return;
            }
            AdError adError = VungleMediationAdapter.getAdError(vungleException);
            Log.w("TAG", adError.c());
            VungleBannerAdapter.this.f27592e.f(VungleBannerAdapter.this.f27591d, adError);
        }
    };

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final VungleManager f27595h = VungleManager.getInstance();

    VungleBannerAdapter(String str, String str2, AdConfig adConfig, MediationBannerAdapter mediationBannerAdapter) {
        this.f27588a = str;
        this.f27590c = str2;
        this.f27589b = adConfig;
        this.f27591d = mediationBannerAdapter;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k() {
        MediationBannerListener mediationBannerListener;
        MediationBannerListener mediationBannerListener2;
        MediationBannerListener mediationBannerListener3;
        String str = f27587l;
        Log.d(str, "create banner: " + this);
        if (this.f27596i) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(14, -1);
            layoutParams.addRule(15, -1);
            a vungleBannerAd = this.f27595h.getVungleBannerAd(this.f27588a);
            this.f27593f = vungleBannerAd;
            c cVar = new c(this, this, vungleBannerAd);
            if (!AdConfig.AdSize.isBannerAdSize(this.f27589b.getAdSize())) {
                AdError adError = new AdError(106, "Vungle SDK returned a successful load callback, but Banners.getBanner() or Vungle.getNativeAd() returned null.", VungleMediationAdapter.ERROR_DOMAIN);
                Log.d(str, adError.c());
                MediationBannerAdapter mediationBannerAdapter = this.f27591d;
                if (mediationBannerAdapter == null || (mediationBannerListener = this.f27592e) == null) {
                    return;
                }
                mediationBannerListener.f(mediationBannerAdapter, adError);
                return;
            }
            VungleBanner banner = Banners.getBanner(this.f27588a, new BannerAdConfig(this.f27589b), cVar);
            if (banner == null) {
                AdError adError2 = new AdError(106, "Vungle SDK returned a successful load callback, but Banners.getBanner() or Vungle.getNativeAd() returned null.", VungleMediationAdapter.ERROR_DOMAIN);
                Log.d(str, adError2.c());
                MediationBannerAdapter mediationBannerAdapter2 = this.f27591d;
                if (mediationBannerAdapter2 == null || (mediationBannerListener2 = this.f27592e) == null) {
                    return;
                }
                mediationBannerListener2.f(mediationBannerAdapter2, adError2);
                return;
            }
            Log.d(str, "display banner:" + banner.hashCode() + this);
            a aVar = this.f27593f;
            if (aVar != null) {
                aVar.f(banner);
            }
            q(this.f27597j);
            banner.setLayoutParams(layoutParams);
            MediationBannerAdapter mediationBannerAdapter3 = this.f27591d;
            if (mediationBannerAdapter3 == null || (mediationBannerListener3 = this.f27592e) == null) {
                return;
            }
            mediationBannerListener3.j(mediationBannerAdapter3);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        Log.d(f27587l, "loadBanner: " + this);
        Banners.loadBanner(this.f27588a, new BannerAdConfig(this.f27589b), this.f27598k);
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void creativeId(String str) {
    }

    public RelativeLayout getAdLayout() {
        return this.f27594g;
    }

    public String getUniqueRequestId() {
        return this.f27590c;
    }

    public boolean isRequestPending() {
        return this.f27596i;
    }

    void j() {
        a aVar = this.f27593f;
        if (aVar != null) {
            aVar.a();
        }
    }

    void l() {
        Log.d(f27587l, "Vungle banner adapter destroy:" + this);
        this.f27597j = false;
        this.f27595h.removeActiveBannerAd(this.f27588a, this.f27593f);
        a aVar = this.f27593f;
        if (aVar != null) {
            aVar.c();
            this.f27593f.b();
        }
        this.f27593f = null;
        this.f27596i = false;
    }

    void m() {
        a aVar = this.f27593f;
        if (aVar != null) {
            aVar.c();
        }
    }

    void o() {
        Banners.loadBanner(this.f27588a, new BannerAdConfig(this.f27589b), (LoadAdCallback) null);
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdClick(String str) {
        MediationBannerListener mediationBannerListener;
        MediationBannerAdapter mediationBannerAdapter = this.f27591d;
        if (mediationBannerAdapter == null || (mediationBannerListener = this.f27592e) == null) {
            return;
        }
        mediationBannerListener.h(mediationBannerAdapter);
        this.f27592e.q(this.f27591d);
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdEnd(String str) {
    }

    @Override // com.vungle.warren.PlayAdCallback
    @Deprecated
    public void onAdEnd(String str, boolean z10, boolean z11) {
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdLeftApplication(String str) {
        MediationBannerListener mediationBannerListener;
        MediationBannerAdapter mediationBannerAdapter = this.f27591d;
        if (mediationBannerAdapter == null || (mediationBannerListener = this.f27592e) == null) {
            return;
        }
        mediationBannerListener.n(mediationBannerAdapter);
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdRewarded(String str) {
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdStart(String str) {
        o();
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdViewed(String str) {
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onError(String str, VungleException vungleException) {
        MediationBannerListener mediationBannerListener;
        AdError adError = VungleMediationAdapter.getAdError(vungleException);
        Log.w(f27587l, adError.c());
        MediationBannerAdapter mediationBannerAdapter = this.f27591d;
        if (mediationBannerAdapter == null || (mediationBannerListener = this.f27592e) == null) {
            return;
        }
        mediationBannerListener.f(mediationBannerAdapter, adError);
    }

    void p(Context context, String str, AdSize adSize, MediationBannerListener mediationBannerListener) {
        this.f27594g = new RelativeLayout(context) { // from class: com.vungle.mediation.VungleBannerAdapter.1
            @Override // android.view.ViewGroup, android.view.View
            protected void onAttachedToWindow() {
                super.onAttachedToWindow();
                VungleBannerAdapter.this.j();
            }

            @Override // android.view.ViewGroup, android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                VungleBannerAdapter.this.m();
            }
        };
        int iC = adSize.c(context);
        if (iC <= 0) {
            iC = Math.round(this.f27589b.getAdSize().getHeight() * context.getResources().getDisplayMetrics().density);
        }
        this.f27594g.setLayoutParams(new RelativeLayout.LayoutParams(adSize.e(context), iC));
        this.f27592e = mediationBannerListener;
        Log.d(f27587l, "requestBannerAd: " + this);
        this.f27596i = true;
        b.b().c(str, context.getApplicationContext(), new b.d() { // from class: com.vungle.mediation.VungleBannerAdapter.2
            @Override // com.google.ads.mediation.vungle.b.d
            public void onInitializeError(AdError adError) {
                VungleBannerAdapter.this.f27595h.removeActiveBannerAd(VungleBannerAdapter.this.f27588a, VungleBannerAdapter.this.f27593f);
                if (!VungleBannerAdapter.this.f27596i || VungleBannerAdapter.this.f27591d == null || VungleBannerAdapter.this.f27592e == null) {
                    return;
                }
                Log.w(VungleBannerAdapter.f27587l, adError.c());
                VungleBannerAdapter.this.f27592e.f(VungleBannerAdapter.this.f27591d, adError);
            }

            @Override // com.google.ads.mediation.vungle.b.d
            public void onInitializeSuccess() {
                VungleBannerAdapter.this.n();
            }
        });
    }

    void q(boolean z10) {
        a aVar = this.f27593f;
        if (aVar == null) {
            return;
        }
        this.f27597j = z10;
        if (aVar.e() != null) {
            this.f27593f.e().setAdVisibility(z10);
        }
    }

    public String toString() {
        return " [placementId=" + this.f27588a + " # uniqueRequestId=" + this.f27590c + " # hashcode=" + hashCode() + "] ";
    }
}
