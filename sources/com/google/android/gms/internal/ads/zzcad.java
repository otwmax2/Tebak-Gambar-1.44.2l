package com.google.android.gms.internal.ads;

import android.view.View;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
abstract class zzcad {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final WeakReference f11648o;

    public zzcad(View view) {
        this.f11648o = new WeakReference(view);
    }

    protected abstract void a(ViewTreeObserver viewTreeObserver);

    protected abstract void b(ViewTreeObserver viewTreeObserver);

    protected final ViewTreeObserver c() {
        ViewTreeObserver viewTreeObserver;
        View view = (View) this.f11648o.get();
        if (view == null || (viewTreeObserver = view.getViewTreeObserver()) == null || !viewTreeObserver.isAlive()) {
            return null;
        }
        return viewTreeObserver;
    }

    public final void d() {
        ViewTreeObserver viewTreeObserverC = c();
        if (viewTreeObserverC != null) {
            a(viewTreeObserverC);
        }
    }

    public final void e() {
        ViewTreeObserver viewTreeObserverC = c();
        if (viewTreeObserverC != null) {
            b(viewTreeObserverC);
        }
    }
}
