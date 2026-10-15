package v2;

import android.graphics.Bitmap;
import android.widget.ImageView;

/* JADX INFO: compiled from: BitmapImageViewTarget.java */
/* JADX INFO: loaded from: classes.dex */
public class b extends e<Bitmap> {
    public b(ImageView imageView) {
        super(imageView);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // v2.e
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public void o(Bitmap bitmap) {
        ((ImageView) this.f35788p).setImageBitmap(bitmap);
    }
}
