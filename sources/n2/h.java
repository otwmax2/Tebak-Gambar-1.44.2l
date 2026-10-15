package n2;

import android.graphics.Bitmap;
import b2.l;

/* JADX INFO: compiled from: GifFrameResourceDecoder.java */
/* JADX INFO: loaded from: classes.dex */
class h implements z1.e<x1.a, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c2.c f32416a;

    public h(c2.c cVar) {
        this.f32416a = cVar;
    }

    @Override // z1.e
    public String a() {
        return "GifFrameResourceDecoder.com.bumptech.glide.load.resource.gif";
    }

    @Override // z1.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public l<Bitmap> b(x1.a aVar, int i10, int i11) {
        return k2.c.d(aVar.i(), this.f32416a);
    }
}
