package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.nativead.NativeAd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzbqr extends zzbfk {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final NativeAd.OnNativeAdLoadedListener f11183o;

    public zzbqr(NativeAd.OnNativeAdLoadedListener onNativeAdLoadedListener) {
        this.f11183o = onNativeAdLoadedListener;
    }

    @Override // com.google.android.gms.internal.ads.zzbfl
    public final void t9(zzbfu zzbfuVar) {
        this.f11183o.a(new zzbqk(zzbfuVar));
    }
}
