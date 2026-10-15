package com.vungle.warren;

import android.content.Context;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.vungle.warren.AdConfig;
import com.vungle.warren.error.VungleException;
import com.vungle.warren.ui.view.VungleNativeView;
import com.vungle.warren.utility.RefreshHandler;
import com.vungle.warren.utility.ViewUtility;
import com.vungle.warren.utility.WeakLoadAdCallback;
import com.vungle.warren.utility.WeakRunnable;

/* JADX INFO: loaded from: classes2.dex */
public class VungleBanner extends RelativeLayout {
    private static final String B = VungleBanner.class.getSimpleName();
    private LoadAdCallback A;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private String f27964o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f27965p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f27966q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f27967r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f27968s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f27969t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private VungleNativeView f27970u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private BannerAdConfig f27971v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private PlayAdCallback f27972w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private RefreshHandler f27973x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f27974y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private Runnable f27975z;

    protected VungleBanner(Context context, String str, AdMarkup adMarkup, int i10, BannerAdConfig bannerAdConfig, PlayAdCallback playAdCallback) {
        super(context);
        this.f27975z = new Runnable() { // from class: com.vungle.warren.VungleBanner.1
            @Override // java.lang.Runnable
            public void run() {
                Log.d(VungleBanner.B, "Refresh Timeout Reached");
                VungleBanner.this.f27968s = true;
                VungleBanner.this.m();
            }
        };
        this.A = new LoadAdCallback() { // from class: com.vungle.warren.VungleBanner.2
            @Override // com.vungle.warren.LoadAdCallback
            public void onAdLoad(String str2) {
                Log.d(VungleBanner.B, "Ad Loaded : " + str2);
                if (VungleBanner.this.f27968s && VungleBanner.this.k()) {
                    VungleBanner.this.f27968s = false;
                    VungleBanner.this.l(false);
                    VungleNativeView nativeAdInternal = Vungle.getNativeAdInternal(VungleBanner.this.f27964o, null, new AdConfig(VungleBanner.this.f27971v), VungleBanner.this.f27972w);
                    if (nativeAdInternal != null) {
                        VungleBanner.this.f27970u = nativeAdInternal;
                        VungleBanner.this.renderAd();
                        return;
                    }
                    onError(VungleBanner.this.f27964o, new VungleException(10));
                    VungleLogger.error(VungleBanner.class.getSimpleName() + "#loadAdCallback; onAdLoad", "VungleNativeView is null");
                }
            }

            @Override // com.vungle.warren.LoadAdCallback, com.vungle.warren.PlayAdCallback
            public void onError(String str2, VungleException vungleException) {
                Log.d(VungleBanner.B, "Ad Load Error : " + str2 + " Message : " + vungleException.getLocalizedMessage());
                if (VungleBanner.this.getVisibility() == 0 && VungleBanner.this.k()) {
                    VungleBanner.this.f27973x.start();
                }
            }
        };
        long jCurrentTimeMillis = System.currentTimeMillis();
        String str2 = B;
        VungleLogger.verbose(true, str2, AdLoader.TT_DOWNLOAD_CONTEXT, String.format("Creating banner ad, id = %1$s, at: %2$d", str, Long.valueOf(jCurrentTimeMillis)));
        this.f27964o = str;
        this.f27971v = bannerAdConfig;
        AdConfig.AdSize adSize = bannerAdConfig.getAdSize();
        this.f27972w = playAdCallback;
        this.f27966q = ViewUtility.dpToPixels(context, adSize.getHeight());
        this.f27965p = ViewUtility.dpToPixels(context, adSize.getWidth());
        this.f27970u = Vungle.getNativeAdInternal(str, adMarkup, new AdConfig(bannerAdConfig), this.f27972w);
        this.f27973x = new RefreshHandler(new WeakRunnable(this.f27975z), ((long) i10) * 1000);
        VungleLogger.verbose(true, str2, AdLoader.TT_DOWNLOAD_CONTEXT, String.format("Banner ad created, id = %1$s, elapsed time: %2$dms", str, Long.valueOf(System.currentTimeMillis() - jCurrentTimeMillis)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean k() {
        return !this.f27967r && (!this.f27969t || this.f27974y);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l(boolean z10) {
        synchronized (this) {
            this.f27973x.clean();
            VungleNativeView vungleNativeView = this.f27970u;
            if (vungleNativeView != null) {
                vungleNativeView.finishDisplayingAdInternal(z10);
                this.f27970u = null;
                removeAllViews();
            }
        }
    }

    public void destroyAd() {
        l(true);
        this.f27967r = true;
        this.f27972w = null;
    }

    public void disableLifeCycleManagement(boolean z10) {
        this.f27969t = z10;
    }

    public void finishAd() {
        l(true);
    }

    protected void m() {
        Log.d(B, "Loading Ad");
        Banners.loadBanner(this.f27964o, this.f27971v, new WeakLoadAdCallback(this.A));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        Log.d(B, "Banner onAttachedToWindow");
        if (this.f27969t) {
            return;
        }
        renderAd();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        if (this.f27969t) {
            Log.d(B, "Banner onDetachedFromWindow: render management disabled, do nothing");
        } else {
            l(true);
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i10) {
        super.onVisibilityChanged(view, i10);
        setAdVisibility(i10 == 0);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z10) {
        setAdVisibility(z10);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        Log.d(B, "Banner onWindowVisibilityChanged: " + i10);
        setAdVisibility(i10 == 0);
    }

    public void renderAd() {
        this.f27974y = true;
        if (getVisibility() != 0) {
            return;
        }
        VungleNativeView vungleNativeView = this.f27970u;
        if (vungleNativeView == null) {
            if (k()) {
                this.f27968s = true;
                m();
                return;
            }
            return;
        }
        View viewRenderNativeView = vungleNativeView.renderNativeView();
        if (viewRenderNativeView.getParent() != this) {
            addView(viewRenderNativeView, this.f27965p, this.f27966q);
            Log.d(B, "Add VungleNativeView to Parent");
        }
        Log.d(B, "Rendering new ad for: " + this.f27964o);
        ViewGroup.LayoutParams layoutParams = getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = this.f27966q;
            layoutParams.width = this.f27965p;
            requestLayout();
        }
        this.f27973x.start();
    }

    public void setAdVisibility(boolean z10) {
        if (z10 && k()) {
            this.f27973x.start();
        } else {
            this.f27973x.pause();
        }
        VungleNativeView vungleNativeView = this.f27970u;
        if (vungleNativeView != null) {
            vungleNativeView.setAdVisibility(z10);
        }
    }
}
