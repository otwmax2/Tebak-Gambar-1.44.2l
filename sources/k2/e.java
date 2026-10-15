package k2;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: CenterCrop.java */
/* JADX INFO: loaded from: classes.dex */
public class e extends d {
    public e(c2.c cVar) {
        super(cVar);
    }

    @Override // z1.g
    public String a() {
        return "CenterCrop.com.bumptech.glide.load.resource.bitmap";
    }

    @Override // k2.d
    protected Bitmap c(c2.c cVar, Bitmap bitmap, int i10, int i11) {
        Bitmap bitmapB = cVar.b(i10, i11, bitmap.getConfig() != null ? bitmap.getConfig() : Bitmap.Config.ARGB_8888);
        Bitmap bitmapA = r.a(bitmapB, bitmap, i10, i11);
        if (bitmapB != null && bitmapB != bitmapA && !cVar.a(bitmapB)) {
            bitmapB.recycle();
        }
        return bitmapA;
    }
}
