package com.google.android.gms.ads.mediation.customevent;

import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
final class b implements CustomEventInterstitialListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CustomEventAdapter f6312a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MediationInterstitialListener f6313b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final /* synthetic */ CustomEventAdapter f6314c;

    public b(CustomEventAdapter customEventAdapter, CustomEventAdapter customEventAdapter2, MediationInterstitialListener mediationInterstitialListener) {
        this.f6314c = customEventAdapter;
        this.f6312a = customEventAdapter2;
        this.f6313b = mediationInterstitialListener;
    }
}
