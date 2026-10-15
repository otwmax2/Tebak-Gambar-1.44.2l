package f8;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import f8.t;

/* JADX INFO: compiled from: ImageViewAction.java */
/* JADX INFO: loaded from: classes2.dex */
class l extends a<ImageView> {

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    e f29382m;

    l(t tVar, ImageView imageView, w wVar, int i10, int i11, int i12, Drawable drawable, String str, Object obj, e eVar, boolean z10) {
        super(tVar, imageView, wVar, i10, i11, i12, drawable, str, obj, z10);
        this.f29382m = eVar;
    }

    @Override // f8.a
    void a() {
        super.a();
        if (this.f29382m != null) {
            this.f29382m = null;
        }
    }

    @Override // f8.a
    public void b(Bitmap bitmap, t.e eVar) {
        if (bitmap == null) {
            throw new AssertionError(String.format("Attempted to complete action with no result!\n%s", this));
        }
        ImageView imageView = (ImageView) this.f29284c.get();
        if (imageView == null) {
            return;
        }
        t tVar = this.f29282a;
        u.c(imageView, tVar.f29421e, bitmap, eVar, this.f29285d, tVar.f29429m);
        e eVar2 = this.f29382m;
        if (eVar2 != null) {
            eVar2.onSuccess();
        }
    }

    @Override // f8.a
    public void c() {
        ImageView imageView = (ImageView) this.f29284c.get();
        if (imageView == null) {
            return;
        }
        int i10 = this.f29288g;
        if (i10 != 0) {
            imageView.setImageResource(i10);
        } else {
            Drawable drawable = this.f29289h;
            if (drawable != null) {
                imageView.setImageDrawable(drawable);
            }
        }
        e eVar = this.f29382m;
        if (eVar != null) {
            eVar.onError();
        }
    }
}
