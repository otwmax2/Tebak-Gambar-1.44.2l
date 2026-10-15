package com.google.android.gms.ads.mediation.customevent;

import com.google.android.gms.ads.mediation.MediationNativeListener;
import com.google.android.gms.common.util.VisibleForTesting;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads-lite@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
@VisibleForTesting
final class c implements CustomEventNativeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CustomEventAdapter f6315a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final MediationNativeListener f6316b;

    public c(CustomEventAdapter customEventAdapter, MediationNativeListener mediationNativeListener) {
        this.f6315a = customEventAdapter;
        this.f6316b = mediationNativeListener;
    }
}
