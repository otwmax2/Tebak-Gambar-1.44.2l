package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaqh implements zzaql {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f9720a;

    zzaqh(zzaqm zzaqmVar, Activity activity) {
        this.f9720a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzaql
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f9720a);
    }
}
