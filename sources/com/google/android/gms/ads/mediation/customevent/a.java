package com.google.android.gms.ads.mediation.customevent;

import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
final class a implements CustomEventBannerListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CustomEventAdapter f6310a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MediationBannerListener f6311b;

    public a(CustomEventAdapter customEventAdapter, MediationBannerListener mediationBannerListener) {
        this.f6310a = customEventAdapter;
        this.f6311b = mediationBannerListener;
    }
}
