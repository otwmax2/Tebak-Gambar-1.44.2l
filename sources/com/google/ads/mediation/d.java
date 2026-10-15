package com.google.ads.mediation;

import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
final class d extends FullScreenContentCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    final AbstractAdViewAdapter f5500a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @VisibleForTesting
    final MediationInterstitialListener f5501b;

    public d(AbstractAdViewAdapter abstractAdViewAdapter, MediationInterstitialListener mediationInterstitialListener) {
        this.f5500a = abstractAdViewAdapter;
        this.f5501b = mediationInterstitialListener;
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void b() {
        this.f5501b.r(this.f5500a);
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public final void e() {
        this.f5501b.v(this.f5500a);
    }
}
