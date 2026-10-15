package n2;

import android.graphics.Bitmap;
import b2.l;

/* JADX INFO: compiled from: GifDrawableTransformation.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements z1.g<b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z1.g<Bitmap> f32399a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c2.c f32400b;

    public e(z1.g<Bitmap> gVar, c2.c cVar) {
        this.f32399a = gVar;
        this.f32400b = cVar;
    }

    @Override // z1.g
    public String a() {
        return this.f32399a.a();
    }

    @Override // z1.g
    public l<b> b(l<b> lVar, int i10, int i11) {
        b bVar = lVar.get();
        Bitmap bitmapE = lVar.get().e();
        Bitmap bitmap = this.f32399a.b(new k2.c(bitmapE, this.f32400b), i10, i11).get();
        return !bitmap.equals(bitmapE) ? new d(new b(bVar, bitmap, this.f32399a)) : lVar;
    }
}
