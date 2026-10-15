package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import com.vungle.mediation.BuildConfig;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzatx implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private Activity f9935o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Context f9936p;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Runnable f9942v;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private long f9944x;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Object f9937q = new Object();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f9938r = true;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f9939s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @GuardedBy("lock")
    private final List f9940t = new ArrayList();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    @GuardedBy("lock")
    private final List f9941u = new ArrayList();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f9943w = false;

    zzatx() {
    }

    private final void k(Activity activity) {
        synchronized (this.f9937q) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.f9935o = activity;
            }
        }
    }

    public final Activity a() {
        return this.f9935o;
    }

    public final Context b() {
        return this.f9936p;
    }

    public final void f(zzaty zzatyVar) {
        synchronized (this.f9937q) {
            this.f9940t.add(zzatyVar);
        }
    }

    public final void g(Application application, Context context) {
        if (this.f9943w) {
            return;
        }
        application.registerActivityLifecycleCallbacks(this);
        if (context instanceof Activity) {
            k((Activity) context);
        }
        this.f9936p = application;
        this.f9944x = ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.M0)).longValue();
        this.f9943w = true;
    }

    public final void h(zzaty zzatyVar) {
        synchronized (this.f9937q) {
            this.f9940t.remove(zzatyVar);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.f9937q) {
            Activity activity2 = this.f9935o;
            if (activity2 != null) {
                if (activity2.equals(activity)) {
                    this.f9935o = null;
                }
                Iterator it = this.f9941u.iterator();
                while (it.hasNext()) {
                    try {
                        if (((zzaum) it.next()).zza()) {
                            it.remove();
                        }
                    } catch (Exception e10) {
                        com.google.android.gms.ads.internal.zzt.q().u(e10, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                        zzbza.e(BuildConfig.FLAVOR, e10);
                    }
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        k(activity);
        synchronized (this.f9937q) {
            Iterator it = this.f9941u.iterator();
            while (it.hasNext()) {
                try {
                    ((zzaum) it.next()).zzb();
                } catch (Exception e10) {
                    com.google.android.gms.ads.internal.zzt.q().u(e10, "AppActivityTracker.ActivityListener.onActivityPaused");
                    zzbza.e(BuildConfig.FLAVOR, e10);
                }
            }
        }
        this.f9939s = true;
        Runnable runnable = this.f9942v;
        if (runnable != null) {
            com.google.android.gms.ads.internal.util.zzs.f6190i.removeCallbacks(runnable);
        }
        zzfkr zzfkrVar = com.google.android.gms.ads.internal.util.zzs.f6190i;
        zzatw zzatwVar = new zzatw(this);
        this.f9942v = zzatwVar;
        zzfkrVar.postDelayed(zzatwVar, this.f9944x);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        k(activity);
        this.f9939s = false;
        boolean z10 = !this.f9938r;
        this.f9938r = true;
        Runnable runnable = this.f9942v;
        if (runnable != null) {
            com.google.android.gms.ads.internal.util.zzs.f6190i.removeCallbacks(runnable);
        }
        synchronized (this.f9937q) {
            Iterator it = this.f9941u.iterator();
            while (it.hasNext()) {
                try {
                    ((zzaum) it.next()).a();
                } catch (Exception e10) {
                    com.google.android.gms.ads.internal.zzt.q().u(e10, "AppActivityTracker.ActivityListener.onActivityResumed");
                    zzbza.e(BuildConfig.FLAVOR, e10);
                }
            }
            if (z10) {
                Iterator it2 = this.f9940t.iterator();
                while (it2.hasNext()) {
                    try {
                        ((zzaty) it2.next()).S(true);
                    } catch (Exception e11) {
                        zzbza.e(BuildConfig.FLAVOR, e11);
                    }
                }
            } else {
                zzbza.b("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        k(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
