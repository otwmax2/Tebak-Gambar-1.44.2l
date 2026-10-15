package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.AdError;
import com.google.android.gms.ads.formats.NativeCustomTemplateAd;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface MediationNativeListener {
    void b(MediationNativeAdapter mediationNativeAdapter);

    void c(MediationNativeAdapter mediationNativeAdapter, AdError adError);

    void g(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd);

    void i(MediationNativeAdapter mediationNativeAdapter);

    void k(MediationNativeAdapter mediationNativeAdapter);

    void m(MediationNativeAdapter mediationNativeAdapter, NativeCustomTemplateAd nativeCustomTemplateAd, String str);

    void s(MediationNativeAdapter mediationNativeAdapter, UnifiedNativeAdMapper unifiedNativeAdMapper);

    void u(MediationNativeAdapter mediationNativeAdapter);
}
