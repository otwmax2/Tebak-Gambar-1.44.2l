package g1;

import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewOverlay;

/* JADX INFO: compiled from: ViewOverlayApi18.java */
/* JADX INFO: loaded from: classes.dex */
class a0 implements b0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final ViewOverlay f29641a;

    a0(View view) {
        this.f29641a = view.getOverlay();
    }

    @Override // g1.b0
    public void a(Drawable drawable) {
        this.f29641a.add(drawable);
    }

    @Override // g1.b0
    public void b(Drawable drawable) {
        this.f29641a.remove(drawable);
    }
}
