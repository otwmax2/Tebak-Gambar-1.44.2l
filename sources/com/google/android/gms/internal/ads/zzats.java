package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzats implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Application f9910o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final WeakReference f9911p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f9912q = false;

    public zzats(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f9911p = new WeakReference(activityLifecycleCallbacks);
        this.f9910o = application;
    }

    protected final void a(zzatr zzatrVar) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = (Application.ActivityLifecycleCallbacks) this.f9911p.get();
            if (activityLifecycleCallbacks != null) {
                zzatrVar.a(activityLifecycleCallbacks);
            } else {
                if (this.f9912q) {
                    return;
                }
                this.f9910o.unregisterActivityLifecycleCallbacks(this);
                this.f9912q = true;
            }
        } catch (Exception e10) {
            zzbza.e("Error while dispatching lifecycle callback.", e10);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(new zzatk(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a(new zzatq(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(new zzatn(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(new zzatm(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(new zzatp(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(new zzatl(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(new zzato(this, activity));
    }
}
