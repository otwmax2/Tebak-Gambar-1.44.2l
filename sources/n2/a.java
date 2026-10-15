package n2;

import android.graphics.Bitmap;
import x1.a;

/* JADX INFO: compiled from: GifBitmapProvider.java */
/* JADX INFO: loaded from: classes.dex */
class a implements a.InterfaceC0293a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c2.c f32373a;

    public a(c2.c cVar) {
        this.f32373a = cVar;
    }

    @Override // x1.a.InterfaceC0293a
    public Bitmap a(int i10, int i11, Bitmap.Config config) {
        return this.f32373a.e(i10, i11, config);
    }

    @Override // x1.a.InterfaceC0293a
    public void b(Bitmap bitmap) {
        if (this.f32373a.a(bitmap)) {
            return;
        }
        bitmap.recycle();
    }
}
