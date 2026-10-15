package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaqk implements zzaql {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f9724a;

    zzaqk(zzaqm zzaqmVar, Activity activity) {
        this.f9724a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzaql
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityDestroyed(this.f9724a);
    }
}
