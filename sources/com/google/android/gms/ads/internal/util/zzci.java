package com.google.android.gms.ads.internal.util;

import android.app.Activity;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import com.google.android.gms.internal.ads.zzcaa;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes.dex */
public final class zzci {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final View f6149a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Activity f6150b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f6151c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f6152d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6153e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final ViewTreeObserver.OnGlobalLayoutListener f6154f;

    public zzci(Activity activity, View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener onScrollChangedListener) {
        this.f6150b = activity;
        this.f6149a = view;
        this.f6154f = onGlobalLayoutListener;
    }

    private static ViewTreeObserver f(Activity activity) {
        View decorView;
        Window window = activity.getWindow();
        if (window == null || (decorView = window.getDecorView()) == null) {
            return null;
        }
        return decorView.getViewTreeObserver();
    }

    private final void g() {
        if (this.f6151c) {
            return;
        }
        Activity activity = this.f6150b;
        if (activity != null) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f6154f;
            ViewTreeObserver viewTreeObserverF = f(activity);
            if (viewTreeObserverF != null) {
                viewTreeObserverF.addOnGlobalLayoutListener(onGlobalLayoutListener);
            }
        }
        com.google.android.gms.ads.internal.zzt.z();
        zzcaa.a(this.f6149a, this.f6154f);
        this.f6151c = true;
    }

    private final void h() {
        Activity activity = this.f6150b;
        if (activity != null && this.f6151c) {
            ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f6154f;
            ViewTreeObserver viewTreeObserverF = f(activity);
            if (viewTreeObserverF != null) {
                viewTreeObserverF.removeOnGlobalLayoutListener(onGlobalLayoutListener);
            }
            this.f6151c = false;
        }
    }

    public final void a() {
        this.f6153e = false;
        h();
    }

    public final void b() {
        this.f6153e = true;
        if (this.f6152d) {
            g();
        }
    }

    public final void c() {
        this.f6152d = true;
        if (this.f6153e) {
            g();
        }
    }

    public final void d() {
        this.f6152d = false;
        h();
    }

    public final void e(Activity activity) {
        this.f6150b = activity;
    }
}
