package v2;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;

/* JADX INFO: compiled from: DrawableImageViewTarget.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends e<Drawable> {
    public c(ImageView imageView) {
        super(imageView);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // v2.e
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void o(Drawable drawable) {
        ((ImageView) this.f35788p).setImageDrawable(drawable);
    }
}
