package com.vungle.warren.utility;

import android.app.Activity;
import android.app.Application;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArraySet;

/* JADX INFO: loaded from: classes2.dex */
public class ActivityManager implements Application.ActivityLifecycleCallbacks {
    public static final String TAG = ActivityManager.class.getSimpleName();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private static final ActivityManager f28524x = new ActivityManager();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f28525o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f28526p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f28527q;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Handler f28530t;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private CopyOnWriteArraySet<LifeCycleCallback> f28528r = new CopyOnWriteArraySet<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private ConcurrentHashMap<LeftApplicationCallback, LifeCycleCallback> f28529s = new ConcurrentHashMap<>();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f28531u = true;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f28532v = true;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Runnable f28533w = new Runnable() { // from class: com.vungle.warren.utility.ActivityManager.1
        @Override // java.lang.Runnable
        public void run() {
            if (ActivityManager.this.f28527q == 0 && !ActivityManager.this.f28531u) {
                ActivityManager.this.f28531u = true;
                Iterator it = ActivityManager.this.f28528r.iterator();
                while (it.hasNext()) {
                    ((LifeCycleCallback) it.next()).onPause();
                }
            }
            if (ActivityManager.this.f28526p == 0 && ActivityManager.this.f28531u && !ActivityManager.this.f28532v) {
                ActivityManager.this.f28532v = true;
                Iterator it2 = ActivityManager.this.f28528r.iterator();
                while (it2.hasNext()) {
                    ((LifeCycleCallback) it2.next()).onStop();
                }
            }
        }
    };

    public interface LeftApplicationCallback {
        void onLeftApplication();
    }

    public static class LifeCycleCallback {
        public void onPause() {
        }

        public void onResume() {
        }

        public void onStart() {
        }

        public void onStop() {
        }
    }

    private ActivityManager() {
    }

    public static ActivityManager getInstance() {
        return f28524x;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(LifeCycleCallback lifeCycleCallback) {
        this.f28528r.remove(lifeCycleCallback);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p(LeftApplicationCallback leftApplicationCallback) {
        LifeCycleCallback lifeCycleCallbackRemove;
        if (leftApplicationCallback == null || (lifeCycleCallbackRemove = this.f28529s.remove(leftApplicationCallback)) == null) {
            return;
        }
        o(lifeCycleCallbackRemove);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean q(Context context, Intent intent) {
        try {
            context.startActivity(intent);
            return true;
        } catch (ActivityNotFoundException e10) {
            Log.e(TAG, "Cannot find activity to handle the Implicit intent: " + e10.getLocalizedMessage());
            return false;
        }
    }

    public static void startWhenForeground(Context context, final Intent intent, final LeftApplicationCallback leftApplicationCallback) {
        final WeakReference weakReference = new WeakReference(context);
        ActivityManager activityManager = f28524x;
        if (!activityManager.n()) {
            activityManager.addListener(new LifeCycleCallback() { // from class: com.vungle.warren.utility.ActivityManager.2
                @Override // com.vungle.warren.utility.ActivityManager.LifeCycleCallback
                public void onStart() {
                    super.onStart();
                    ActivityManager.f28524x.o(this);
                    Context context2 = (Context) weakReference.get();
                    if (context2 == null || !ActivityManager.q(context2, intent)) {
                        return;
                    }
                    ActivityManager.f28524x.addOnNextAppLeftCallback(leftApplicationCallback);
                }
            });
        } else if (q(context, intent)) {
            activityManager.addOnNextAppLeftCallback(leftApplicationCallback);
        }
    }

    public void addListener(LifeCycleCallback lifeCycleCallback) {
        this.f28528r.add(lifeCycleCallback);
    }

    public void addOnNextAppLeftCallback(LeftApplicationCallback leftApplicationCallback) {
        if (leftApplicationCallback == null) {
            return;
        }
        if (!this.f28525o) {
            leftApplicationCallback.onLeftApplication();
            return;
        }
        final WeakReference weakReference = new WeakReference(leftApplicationCallback);
        final Runnable runnable = new Runnable() { // from class: com.vungle.warren.utility.ActivityManager.3
            @Override // java.lang.Runnable
            public void run() {
                ActivityManager.this.f28530t.removeCallbacks(this);
                ActivityManager.this.p((LeftApplicationCallback) weakReference.get());
            }
        };
        LifeCycleCallback lifeCycleCallback = new LifeCycleCallback() { // from class: com.vungle.warren.utility.ActivityManager.4

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            boolean f28540a = false;

            @Override // com.vungle.warren.utility.ActivityManager.LifeCycleCallback
            public void onPause() {
                super.onPause();
                this.f28540a = true;
                ActivityManager.this.f28530t.removeCallbacks(runnable);
            }

            @Override // com.vungle.warren.utility.ActivityManager.LifeCycleCallback
            public void onResume() {
                super.onResume();
                ActivityManager.this.f28530t.postDelayed(runnable, 1400L);
            }

            @Override // com.vungle.warren.utility.ActivityManager.LifeCycleCallback
            public void onStop() {
                super.onStop();
                LeftApplicationCallback leftApplicationCallback2 = (LeftApplicationCallback) weakReference.get();
                if (this.f28540a && leftApplicationCallback2 != null && ActivityManager.this.f28529s.containsKey(leftApplicationCallback2)) {
                    leftApplicationCallback2.onLeftApplication();
                }
                ActivityManager.this.p(leftApplicationCallback2);
                ActivityManager.this.f28530t.removeCallbacks(runnable);
            }
        };
        this.f28529s.put(leftApplicationCallback, lifeCycleCallback);
        if (!n()) {
            getInstance().addListener(new LifeCycleCallback() { // from class: com.vungle.warren.utility.ActivityManager.5
                @Override // com.vungle.warren.utility.ActivityManager.LifeCycleCallback
                public void onStart() {
                    ActivityManager.f28524x.o(this);
                    LifeCycleCallback lifeCycleCallback2 = (LifeCycleCallback) ActivityManager.this.f28529s.get(weakReference.get());
                    if (lifeCycleCallback2 != null) {
                        ActivityManager.this.f28530t.postDelayed(runnable, 3000L);
                        ActivityManager.this.addListener(lifeCycleCallback2);
                    }
                }
            });
        } else {
            this.f28530t.postDelayed(runnable, 3000L);
            addListener(lifeCycleCallback);
        }
    }

    public void init(Context context) {
        if (this.f28525o) {
            return;
        }
        this.f28530t = new Handler(Looper.getMainLooper());
        ((Application) context.getApplicationContext()).registerActivityLifecycleCallbacks(this);
        this.f28525o = true;
    }

    public boolean isInitialized() {
        return this.f28525o;
    }

    protected boolean n() {
        return !this.f28525o || this.f28526p > 0;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        this.f28527q = Math.max(0, this.f28527q - 1);
        this.f28530t.postDelayed(this.f28533w, 700L);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        int i10 = this.f28527q + 1;
        this.f28527q = i10;
        if (i10 == 1) {
            if (!this.f28531u) {
                this.f28530t.removeCallbacks(this.f28533w);
                return;
            }
            this.f28531u = false;
            Iterator<LifeCycleCallback> it = this.f28528r.iterator();
            while (it.hasNext()) {
                it.next().onResume();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        int i10 = this.f28526p + 1;
        this.f28526p = i10;
        if (i10 == 1 && this.f28532v) {
            this.f28532v = false;
            Iterator<LifeCycleCallback> it = this.f28528r.iterator();
            while (it.hasNext()) {
                it.next().onStart();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        this.f28526p = Math.max(0, this.f28526p - 1);
        this.f28530t.postDelayed(this.f28533w, 700L);
    }
}
