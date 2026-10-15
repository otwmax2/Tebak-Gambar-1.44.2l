package x6;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* JADX INFO: compiled from: SessionsActivityLifecycleCallbacks.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class j0 implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final j0 f36430o = new j0();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static boolean f36431p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private static g0 f36432q;

    private j0() {
    }

    public final void a(g0 g0Var) {
        f36432q = g0Var;
        if (g0Var == null || !f36431p) {
            return;
        }
        f36431p = false;
        g0Var.k();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        t9.m.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        t9.m.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        t9.m.e(activity, "activity");
        g0 g0Var = f36432q;
        if (g0Var != null) {
            g0Var.h();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        h9.t tVar;
        t9.m.e(activity, "activity");
        g0 g0Var = f36432q;
        if (g0Var != null) {
            g0Var.k();
            tVar = h9.t.f30301a;
        } else {
            tVar = null;
        }
        if (tVar == null) {
            f36431p = true;
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        t9.m.e(activity, "activity");
        t9.m.e(bundle, "outState");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        t9.m.e(activity, "activity");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        t9.m.e(activity, "activity");
    }
}
