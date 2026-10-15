package f8;

import android.view.ViewTreeObserver;
import android.widget.ImageView;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: DeferredRequestCreator.java */
/* JADX INFO: loaded from: classes2.dex */
class h implements ViewTreeObserver.OnPreDrawListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final x f29353o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final WeakReference<ImageView> f29354p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    e f29355q;

    h(x xVar, ImageView imageView, e eVar) {
        this.f29353o = xVar;
        this.f29354p = new WeakReference<>(imageView);
        this.f29355q = eVar;
        imageView.getViewTreeObserver().addOnPreDrawListener(this);
    }

    void a() {
        this.f29355q = null;
        ImageView imageView = this.f29354p.get();
        if (imageView == null) {
            return;
        }
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(this);
        }
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        ImageView imageView = this.f29354p.get();
        if (imageView == null) {
            return true;
        }
        ViewTreeObserver viewTreeObserver = imageView.getViewTreeObserver();
        if (!viewTreeObserver.isAlive()) {
            return true;
        }
        int width = imageView.getWidth();
        int height = imageView.getHeight();
        if (width > 0 && height > 0) {
            viewTreeObserver.removeOnPreDrawListener(this);
            this.f29353o.g().f(width, height).d(imageView, this.f29355q);
        }
        return true;
    }
}
