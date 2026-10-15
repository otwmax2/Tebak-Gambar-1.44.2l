package androidx.core.view;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.Objects;

/* JADX INFO: compiled from: OneShotPreDrawListener.java */
/* JADX INFO: loaded from: classes.dex */
public final class x implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final View f2543o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ViewTreeObserver f2544p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Runnable f2545q;

    private x(View view, Runnable runnable) {
        this.f2543o = view;
        this.f2544p = view.getViewTreeObserver();
        this.f2545q = runnable;
    }

    public static x a(View view, Runnable runnable) {
        Objects.requireNonNull(view, "view == null");
        Objects.requireNonNull(runnable, "runnable == null");
        x xVar = new x(view, runnable);
        view.getViewTreeObserver().addOnPreDrawListener(xVar);
        view.addOnAttachStateChangeListener(xVar);
        return xVar;
    }

    public void b() {
        if (this.f2544p.isAlive()) {
            this.f2544p.removeOnPreDrawListener(this);
        } else {
            this.f2543o.getViewTreeObserver().removeOnPreDrawListener(this);
        }
        this.f2543o.removeOnAttachStateChangeListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        b();
        this.f2545q.run();
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        this.f2544p = view.getViewTreeObserver();
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        b();
    }
}
