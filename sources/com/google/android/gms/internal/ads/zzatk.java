package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzatk implements zzatr {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Activity f9901a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final /* synthetic */ Bundle f9902b;

    zzatk(zzats zzatsVar, Activity activity, Bundle bundle) {
        this.f9901a = activity;
        this.f9902b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzatr
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f9901a, this.f9902b);
    }
}
