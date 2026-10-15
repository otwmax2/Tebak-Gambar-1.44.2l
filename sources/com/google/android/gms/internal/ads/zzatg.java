package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.app.KeyguardManager;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.PowerManager;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.WindowManager;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.ref.WeakReference;
import java.util.HashSet;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzatg implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, Application.ActivityLifecycleCallbacks {
    private static final long D = ((Long) com.google.android.gms.ads.internal.client.zzba.c().b(zzbar.f10215f1)).longValue();
    private final DisplayMetrics B;
    private final Rect C;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final Context f9888o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Application f9889p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final WindowManager f9890q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final PowerManager f9891r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final KeyguardManager f9892s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    @VisibleForTesting
    BroadcastReceiver f9893t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private WeakReference f9894u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final WeakReference f9895v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private zzats f9896w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final com.google.android.gms.ads.internal.util.zzbz f9897x = new com.google.android.gms.ads.internal.util.zzbz(D);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f9898y = false;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f9899z = -1;
    private final HashSet A = new HashSet();

    public zzatg(Context context, View view) {
        Context applicationContext = context.getApplicationContext();
        this.f9888o = applicationContext;
        WindowManager windowManager = (WindowManager) context.getSystemService("window");
        this.f9890q = windowManager;
        this.f9891r = (PowerManager) applicationContext.getSystemService("power");
        this.f9892s = (KeyguardManager) context.getSystemService("keyguard");
        if (applicationContext instanceof Application) {
            Application application = (Application) applicationContext;
            this.f9889p = application;
            this.f9896w = new zzats(application, this);
        }
        this.B = context.getResources().getDisplayMetrics();
        Rect rect = new Rect();
        this.C = rect;
        rect.right = windowManager.getDefaultDisplay().getWidth();
        rect.bottom = windowManager.getDefaultDisplay().getHeight();
        WeakReference weakReference = this.f9895v;
        View view2 = weakReference != null ? (View) weakReference.get() : null;
        if (view2 != null) {
            view2.removeOnAttachStateChangeListener(this);
            m(view2);
        }
        this.f9895v = new WeakReference(view);
        if (view != null) {
            if (view.isAttachedToWindow()) {
                l(view);
            }
            view.addOnAttachStateChangeListener(this);
        }
    }

    private final int h(int i10) {
        return (int) (i10 / this.B.density);
    }

    private final void i(Activity activity, int i10) {
        Window window;
        if (this.f9895v == null || (window = activity.getWindow()) == null) {
            return;
        }
        View viewPeekDecorView = window.peekDecorView();
        View view = (View) this.f9895v.get();
        if (view == null || viewPeekDecorView == null || view.getRootView() != viewPeekDecorView.getRootView()) {
            return;
        }
        this.f9899z = i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:57:0x012a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void j(int r33) {
        /*
            Method dump skipped, instruction units count: 527
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzatg.j(int):void");
    }

    private final void k() {
        com.google.android.gms.ads.internal.util.zzs.f6190i.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzatc
            @Override // java.lang.Runnable
            public final void run() {
                this.f9875o.d();
            }
        });
    }

    private final void l(View view) {
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            this.f9894u = new WeakReference(viewTreeObserver);
            viewTreeObserver.addOnScrollChangedListener(this);
            viewTreeObserver.addOnGlobalLayoutListener(this);
        }
        if (this.f9893t == null) {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_ON");
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            intentFilter.addAction("android.intent.action.USER_PRESENT");
            this.f9893t = new zzatd(this);
            com.google.android.gms.ads.internal.zzt.x().c(this.f9888o, this.f9893t, intentFilter);
        }
        Application application = this.f9889p;
        if (application != null) {
            try {
                application.registerActivityLifecycleCallbacks(this.f9896w);
            } catch (Exception e10) {
                zzbza.e("Error registering activity lifecycle callbacks.", e10);
            }
        }
    }

    private final void m(View view) {
        try {
            WeakReference weakReference = this.f9894u;
            if (weakReference != null) {
                ViewTreeObserver viewTreeObserver = (ViewTreeObserver) weakReference.get();
                if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
                    viewTreeObserver.removeOnScrollChangedListener(this);
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
                this.f9894u = null;
            }
        } catch (Exception e10) {
            zzbza.e("Error while unregistering listeners from the last ViewTreeObserver.", e10);
        }
        try {
            ViewTreeObserver viewTreeObserver2 = view.getViewTreeObserver();
            if (viewTreeObserver2.isAlive()) {
                viewTreeObserver2.removeOnScrollChangedListener(this);
                viewTreeObserver2.removeGlobalOnLayoutListener(this);
            }
        } catch (Exception e11) {
            zzbza.e("Error while unregistering listeners from the ViewTreeObserver.", e11);
        }
        if (this.f9893t != null) {
            try {
                com.google.android.gms.ads.internal.zzt.x().d(this.f9888o, this.f9893t);
            } catch (IllegalStateException e12) {
                zzbza.e("Failed trying to unregister the receiver", e12);
            } catch (Exception e13) {
                com.google.android.gms.ads.internal.zzt.q().u(e13, "ActiveViewUnit.stopScreenStatusMonitoring");
            }
            this.f9893t = null;
        }
        Application application = this.f9889p;
        if (application != null) {
            try {
                application.unregisterActivityLifecycleCallbacks(this.f9896w);
            } catch (Exception e14) {
                zzbza.e("Error registering activity lifecycle callbacks.", e14);
            }
        }
    }

    final Rect a(Rect rect) {
        return new Rect(h(rect.left), h(rect.top), h(rect.right), h(rect.bottom));
    }

    public final void c(zzatf zzatfVar) {
        this.A.add(zzatfVar);
        j(3);
    }

    final /* synthetic */ void d() {
        j(3);
    }

    public final void e(zzatf zzatfVar) {
        this.A.remove(zzatfVar);
    }

    public final void f() {
        this.f9897x.a(D);
    }

    public final void g(long j10) {
        this.f9897x.a(j10);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        i(activity, 0);
        j(3);
        k();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        j(3);
        k();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        i(activity, 4);
        j(3);
        k();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        i(activity, 0);
        j(3);
        k();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        j(3);
        k();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        i(activity, 0);
        j(3);
        k();
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        j(3);
        k();
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        j(2);
        k();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        j(1);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f9899z = -1;
        l(view);
        j(3);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f9899z = -1;
        j(3);
        k();
        m(view);
    }
}
