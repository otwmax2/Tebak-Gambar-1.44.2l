package com.google.android.gms.common.api.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.PlatformVersion;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
/* JADX INFO: loaded from: classes.dex */
@KeepForSdk
public final class BackgroundDetector implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private static final BackgroundDetector f6990s = new BackgroundDetector();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final AtomicBoolean f6991o = new AtomicBoolean();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final AtomicBoolean f6992p = new AtomicBoolean();

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    @GuardedBy("sInstance")
    private final ArrayList f6993q = new ArrayList();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    @GuardedBy("sInstance")
    private boolean f6994r = false;

    /* JADX INFO: compiled from: com.google.android.gms:play-services-basement@@18.1.0 */
    @KeepForSdk
    public interface BackgroundStateChangeListener {
        @KeepForSdk
        void a(boolean z10);
    }

    @KeepForSdk
    private BackgroundDetector() {
    }

    @KeepForSdk
    public static BackgroundDetector b() {
        return f6990s;
    }

    @KeepForSdk
    public static void c(Application application) {
        BackgroundDetector backgroundDetector = f6990s;
        synchronized (backgroundDetector) {
            if (!backgroundDetector.f6994r) {
                application.registerActivityLifecycleCallbacks(backgroundDetector);
                application.registerComponentCallbacks(backgroundDetector);
                backgroundDetector.f6994r = true;
            }
        }
    }

    private final void f(boolean z10) {
        synchronized (f6990s) {
            Iterator it = this.f6993q.iterator();
            while (it.hasNext()) {
                ((BackgroundStateChangeListener) it.next()).a(z10);
            }
        }
    }

    @KeepForSdk
    public void a(BackgroundStateChangeListener backgroundStateChangeListener) {
        synchronized (f6990s) {
            this.f6993q.add(backgroundStateChangeListener);
        }
    }

    @KeepForSdk
    public boolean d() {
        return this.f6991o.get();
    }

    @KeepForSdk
    @TargetApi(16)
    public boolean e(boolean z10) {
        if (!this.f6992p.get()) {
            if (!PlatformVersion.b()) {
                return z10;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f6992p.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f6991o.set(true);
            }
        }
        return d();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean zCompareAndSet = this.f6991o.compareAndSet(true, false);
        this.f6992p.set(true);
        if (zCompareAndSet) {
            f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        boolean zCompareAndSet = this.f6991o.compareAndSet(true, false);
        this.f6992p.set(true);
        if (zCompareAndSet) {
            f(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i10) {
        if (i10 == 20 && this.f6991o.compareAndSet(false, true)) {
            this.f6992p.set(true);
            f(true);
        }
    }
}
