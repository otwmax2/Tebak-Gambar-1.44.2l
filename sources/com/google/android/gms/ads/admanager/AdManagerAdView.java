package com.google.android.gms.ads.admanager;

import android.content.Context;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.BaseAdView;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.internal.client.zzbu;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.ads.zzbsf;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class AdManagerAdView extends BaseAdView {
    public AdManagerAdView(Context context) {
        super(context, 0);
        Preconditions.l(context, "Context cannot be null");
    }

    final /* synthetic */ void e(AdManagerAdRequest adManagerAdRequest) {
        try {
            this.f5602o.p(adManagerAdRequest.a());
        } catch (IllegalStateException e10) {
            zzbsf.c(getContext()).a(e10, "AdManagerAdView.loadAd");
        }
    }

    public final boolean f(zzbu zzbuVar) {
        return this.f5602o.B(zzbuVar);
    }

    public AdSize[] getAdSizes() {
        return this.f5602o.a();
    }

    public AppEventListener getAppEventListener() {
        return this.f5602o.k();
    }

    public VideoController getVideoController() {
        return this.f5602o.i();
    }

    public VideoOptions getVideoOptions() {
        return this.f5602o.j();
    }

    public void setAdSizes(AdSize... adSizeArr) {
        if (adSizeArr == null || adSizeArr.length <= 0) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.f5602o.v(adSizeArr);
    }

    public void setAppEventListener(AppEventListener appEventListener) {
        this.f5602o.x(appEventListener);
    }

    public void setManualImpressionsEnabled(boolean z10) {
        this.f5602o.y(z10);
    }

    public void setVideoOptions(VideoOptions videoOptions) {
        this.f5602o.A(videoOptions);
    }
}
