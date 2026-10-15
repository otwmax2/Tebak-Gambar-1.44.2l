package com.google.ads.mediation.vungle;

import com.vungle.mediation.VungleBannerAdapter;
import com.vungle.mediation.VungleManager;
import com.vungle.warren.PlayAdCallback;
import com.vungle.warren.error.VungleException;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: VunglePlayAdCallback.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements PlayAdCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final WeakReference<VungleBannerAdapter> f5532a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final WeakReference<PlayAdCallback> f5533b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final a f5534c;

    public c(PlayAdCallback playAdCallback, VungleBannerAdapter vungleBannerAdapter, a aVar) {
        this.f5533b = new WeakReference<>(playAdCallback);
        this.f5532a = new WeakReference<>(vungleBannerAdapter);
        this.f5534c = aVar;
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void creativeId(String str) {
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdClick(String str) {
        PlayAdCallback playAdCallback = this.f5533b.get();
        VungleBannerAdapter vungleBannerAdapter = this.f5532a.get();
        if (playAdCallback == null || vungleBannerAdapter == null || !vungleBannerAdapter.isRequestPending()) {
            return;
        }
        playAdCallback.onAdClick(str);
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdEnd(String str) {
        PlayAdCallback playAdCallback = this.f5533b.get();
        VungleBannerAdapter vungleBannerAdapter = this.f5532a.get();
        if (playAdCallback == null || vungleBannerAdapter == null || !vungleBannerAdapter.isRequestPending()) {
            return;
        }
        playAdCallback.onAdEnd(str);
    }

    @Override // com.vungle.warren.PlayAdCallback
    @Deprecated
    public void onAdEnd(String str, boolean z10, boolean z11) {
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdLeftApplication(String str) {
        PlayAdCallback playAdCallback = this.f5533b.get();
        VungleBannerAdapter vungleBannerAdapter = this.f5532a.get();
        if (playAdCallback == null || vungleBannerAdapter == null || !vungleBannerAdapter.isRequestPending()) {
            return;
        }
        playAdCallback.onAdLeftApplication(str);
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdRewarded(String str) {
        PlayAdCallback playAdCallback = this.f5533b.get();
        VungleBannerAdapter vungleBannerAdapter = this.f5532a.get();
        if (playAdCallback == null || vungleBannerAdapter == null || !vungleBannerAdapter.isRequestPending()) {
            return;
        }
        playAdCallback.onAdRewarded(str);
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdStart(String str) {
        PlayAdCallback playAdCallback = this.f5533b.get();
        VungleBannerAdapter vungleBannerAdapter = this.f5532a.get();
        if (playAdCallback == null || vungleBannerAdapter == null || !vungleBannerAdapter.isRequestPending()) {
            return;
        }
        playAdCallback.onAdStart(str);
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onAdViewed(String str) {
    }

    @Override // com.vungle.warren.PlayAdCallback
    public void onError(String str, VungleException vungleException) {
        VungleManager.getInstance().removeActiveBannerAd(str, this.f5534c);
        PlayAdCallback playAdCallback = this.f5533b.get();
        VungleBannerAdapter vungleBannerAdapter = this.f5532a.get();
        if (playAdCallback == null || vungleBannerAdapter == null || !vungleBannerAdapter.isRequestPending()) {
            return;
        }
        playAdCallback.onError(str, vungleException);
    }
}
