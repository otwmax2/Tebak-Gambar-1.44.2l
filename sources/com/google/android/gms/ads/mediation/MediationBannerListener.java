package com.google.android.gms.ads.mediation;

import com.google.android.gms.ads.AdError;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
public interface MediationBannerListener {
    void a(MediationBannerAdapter mediationBannerAdapter);

    void f(MediationBannerAdapter mediationBannerAdapter, AdError adError);

    void h(MediationBannerAdapter mediationBannerAdapter);

    void j(MediationBannerAdapter mediationBannerAdapter);

    void n(MediationBannerAdapter mediationBannerAdapter);

    void q(MediationBannerAdapter mediationBannerAdapter);

    void t(MediationBannerAdapter mediationBannerAdapter, String str, String str2);
}
