package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.formats.UnifiedNativeAd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbgf extends zzbfk {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final UnifiedNativeAd.OnUnifiedNativeAdLoadedListener f10697o;

    public zzbgf(UnifiedNativeAd.OnUnifiedNativeAdLoadedListener onUnifiedNativeAdLoadedListener) {
        this.f10697o = onUnifiedNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbfl
    public final void t9(zzbfu zzbfuVar) {
        this.f10697o.a(new zzbfv(zzbfuVar));
    }
}
