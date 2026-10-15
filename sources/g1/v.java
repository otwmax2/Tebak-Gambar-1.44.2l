package g1;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroupOverlay;

/* JADX INFO: compiled from: ViewGroupOverlayApi18.java */
/* JADX INFO: loaded from: classes.dex */
class v implements w {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewGroupOverlay f29781a;

    v(ViewGroup viewGroup) {
        this.f29781a = viewGroup.getOverlay();
    }

    @Override // g1.b0
    public void a(Drawable drawable) {
        this.f29781a.add(drawable);
    }

    @Override // g1.b0
    public void b(Drawable drawable) {
        this.f29781a.remove(drawable);
    }

    @Override // g1.w
    public void c(View view) {
        this.f29781a.add(view);
    }

    @Override // g1.w
    public void d(View view) {
        this.f29781a.remove(view);
    }
}
