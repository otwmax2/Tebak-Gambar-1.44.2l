package v2;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import u2.c;

/* JADX INFO: compiled from: ImageViewTarget.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class e<Z> extends k<ImageView, Z> implements c.a {
    public e(ImageView imageView) {
        super(imageView);
    }

    @Override // v2.j
    public void c(Z z10, u2.c<? super Z> cVar) {
        if (cVar == null || !cVar.a(z10, this)) {
            o(z10);
        }
    }

    @Override // u2.c.a
    public void d(Drawable drawable) {
        ((ImageView) this.f35788p).setImageDrawable(drawable);
    }

    @Override // u2.c.a
    public Drawable e() {
        return ((ImageView) this.f35788p).getDrawable();
    }

    @Override // v2.a, v2.j
    public void g(Exception exc, Drawable drawable) {
        ((ImageView) this.f35788p).setImageDrawable(drawable);
    }

    @Override // v2.a, v2.j
    public void j(Drawable drawable) {
        ((ImageView) this.f35788p).setImageDrawable(drawable);
    }

    @Override // v2.a, v2.j
    public void l(Drawable drawable) {
        ((ImageView) this.f35788p).setImageDrawable(drawable);
    }

    protected abstract void o(Z z10);
}
