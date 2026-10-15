package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.internal.BackgroundDetector;

/* JADX INFO: compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* JADX INFO: loaded from: classes.dex */
final class t implements BackgroundDetector.BackgroundStateChangeListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ GoogleApiManager f7140a;

    t(GoogleApiManager googleApiManager) {
        this.f7140a = googleApiManager;
    }

    @Override // com.google.android.gms.common.api.internal.BackgroundDetector.BackgroundStateChangeListener
    public final void a(boolean z10) {
        GoogleApiManager googleApiManager = this.f7140a;
        googleApiManager.D.sendMessage(googleApiManager.D.obtainMessage(1, Boolean.valueOf(z10)));
    }
}
