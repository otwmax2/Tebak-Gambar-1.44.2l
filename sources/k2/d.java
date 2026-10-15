package k2;

import android.graphics.Bitmap;

/* JADX INFO: compiled from: BitmapTransformation.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d implements z1.g<Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c2.c f31312a;

    public d(c2.c cVar) {
        this.f31312a = cVar;
    }

    @Override // z1.g
    public final b2.l<Bitmap> b(b2.l<Bitmap> lVar, int i10, int i11) {
        if (x2.h.l(i10, i11)) {
            Bitmap bitmap = lVar.get();
            if (i10 == Integer.MIN_VALUE) {
                i10 = bitmap.getWidth();
            }
            if (i11 == Integer.MIN_VALUE) {
                i11 = bitmap.getHeight();
            }
            Bitmap bitmapC = c(this.f31312a, bitmap, i10, i11);
            return bitmap.equals(bitmapC) ? lVar : c.d(bitmapC, this.f31312a);
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i10 + " or height: " + i11 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }

    protected abstract Bitmap c(c2.c cVar, Bitmap bitmap, int i10, int i11);
}
