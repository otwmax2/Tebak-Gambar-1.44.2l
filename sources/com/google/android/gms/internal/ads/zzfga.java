package com.google.android.gms.internal.ads;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.os.Bundle;
import android.view.View;
import java.util.Iterator;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzfga implements Application.ActivityLifecycleCallbacks {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @SuppressLint({"StaticFieldLeak"})
    private static final zzfga f18150r = new zzfga();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f18151o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f18152p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private zzfgf f18153q;

    private zzfga() {
    }

    public static zzfga a() {
        return f18150r;
    }

    private final void e() {
        boolean z10 = this.f18152p;
        Iterator it = zzffz.a().c().iterator();
        while (it.hasNext()) {
            zzfgl zzfglVarG = ((zzffo) it.next()).g();
            if (zzfglVarG.k()) {
                zzfge.a().b(zzfglVarG.a(), "setState", true != z10 ? "foregrounded" : "backgrounded");
            }
        }
    }

    private final void f(boolean z10) {
        if (this.f18152p != z10) {
            this.f18152p = z10;
            if (this.f18151o) {
                e();
                if (this.f18153q != null) {
                    if (!z10) {
                        zzfhb.d().i();
                    } else {
                        zzfhb.d().h();
                    }
                }
            }
        }
    }

    public final void b() {
        this.f18151o = true;
        this.f18152p = false;
        e();
    }

    public final void c() {
        this.f18151o = false;
        this.f18152p = false;
        this.f18153q = null;
    }

    public final void d(zzfgf zzfgfVar) {
        this.f18153q = zzfgfVar;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        f(false);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        View viewF;
        ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
        ActivityManager.getMyMemoryState(runningAppProcessInfo);
        int i10 = runningAppProcessInfo.importance;
        boolean z10 = true;
        for (zzffo zzffoVar : zzffz.a().b()) {
            if (zzffoVar.j() && (viewF = zzffoVar.f()) != null && viewF.hasWindowFocus()) {
                z10 = false;
            }
        }
        f(i10 != 100 && z10);
    }
}
