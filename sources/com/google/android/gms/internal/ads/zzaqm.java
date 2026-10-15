package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzaqm implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Application f9725o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final WeakReference f9726p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f9727q = false;

    public zzaqm(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f9726p = new WeakReference(activityLifecycleCallbacks);
        this.f9725o = application;
    }

    protected final void a(zzaql zzaqlVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f9726p.get();
            if (activityLifecycleCallbacks != null) {
                zzaqlVar.a(activityLifecycleCallbacks);
            } else {
                if (this.f9727q) {
                    return;
                }
                this.f9725o.unregisterActivityLifecycleCallbacks(this);
                this.f9727q = true;
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(new zzaqe(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a(new zzaqk(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(new zzaqh(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(new zzaqg(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(new zzaqj(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(new zzaqf(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(new zzaqi(this, activity));
    }
}
