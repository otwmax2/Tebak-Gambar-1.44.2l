package com.google.android.gms.games.internal;

import android.R;
import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.view.Display;
import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.games.zzfg;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-games@@21.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzae implements View.OnAttachStateChangeListener, ViewTreeObserver.OnGlobalLayoutListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private zzf f8114o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private zzfg f8115p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private WeakReference<View> f8116q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f8117r = false;

    private zzae(zzf zzfVar, int i10) {
        this.f8114o = zzfVar;
        this.f8115p = new zzfg(i10, null);
    }

    public static zzae b(zzf zzfVar, int i10) {
        return new zzae(zzfVar, i10);
    }

    @TargetApi(17)
    private final void h(View view) {
        Display display;
        int displayId = -1;
        if (PlatformVersion.c() && (display = view.getDisplay()) != null) {
            displayId = display.getDisplayId();
        }
        IBinder windowToken = view.getWindowToken();
        int[] iArr = new int[2];
        view.getLocationInWindow(iArr);
        int width = view.getWidth();
        int height = view.getHeight();
        zzfg zzfgVar = this.f8115p;
        zzfgVar.f23188c = displayId;
        zzfgVar.f23186a = windowToken;
        zzfgVar.f23189d = iArr[0];
        zzfgVar.f23190e = iArr[1];
        zzfgVar.f23191f = iArr[0] + width;
        zzfgVar.f23192g = iArr[1] + height;
        if (this.f8117r) {
            g();
        }
    }

    public final void a(int i10) {
        this.f8115p.f23187b = i10;
    }

    @TargetApi(16)
    public final void c(View view) {
        this.f8114o.O1();
        WeakReference<View> weakReference = this.f8116q;
        if (weakReference != null) {
            View decorView = weakReference.get();
            Context contextD = this.f8114o.D();
            if (decorView == null && (contextD instanceof Activity)) {
                decorView = ((Activity) contextD).getWindow().getDecorView();
            }
            if (decorView != null) {
                decorView.removeOnAttachStateChangeListener(this);
                ViewTreeObserver viewTreeObserver = decorView.getViewTreeObserver();
                if (PlatformVersion.b()) {
                    viewTreeObserver.removeOnGlobalLayoutListener(this);
                } else {
                    viewTreeObserver.removeGlobalOnLayoutListener(this);
                }
            }
        }
        this.f8116q = null;
        Context contextD2 = this.f8114o.D();
        if (view == null && (contextD2 instanceof Activity)) {
            Activity activity = (Activity) contextD2;
            try {
                view = activity.findViewById(R.id.content);
            } catch (IllegalStateException unused) {
            }
            if (view == null) {
                view = activity.getWindow().getDecorView();
            }
            zzz.c("PopupManager", "You have not specified a View to use as content view for popups. Falling back to the Activity content view. Note that this may not work as expected in multi-screen environments");
        }
        if (view == null) {
            zzz.a("PopupManager", "No content view usable to display popups. Popups will not be displayed in response to this client's calls. Use setViewForPopups() to set your content view.");
            return;
        }
        h(view);
        this.f8116q = new WeakReference<>(view);
        view.addOnAttachStateChangeListener(this);
        view.getViewTreeObserver().addOnGlobalLayoutListener(this);
    }

    public final Bundle d() {
        return this.f8115p.a();
    }

    public final IBinder e() {
        return this.f8115p.f23186a;
    }

    public final zzfg f() {
        return this.f8115p;
    }

    public final void g() {
        zzfg zzfgVar = this.f8115p;
        IBinder iBinder = zzfgVar.f23186a;
        if (iBinder == null) {
            this.f8117r = true;
        } else {
            this.f8114o.w0(iBinder, zzfgVar.a());
            this.f8117r = false;
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        View view;
        WeakReference<View> weakReference = this.f8116q;
        if (weakReference == null || (view = weakReference.get()) == null) {
            return;
        }
        h(view);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        h(view);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
        this.f8114o.O1();
        view.removeOnAttachStateChangeListener(this);
    }
}
