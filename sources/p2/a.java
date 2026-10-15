package p2;

import android.graphics.Bitmap;
import b2.l;
import k2.j;

/* JADX INFO: compiled from: GifBitmapWrapperDrawableTranscoder.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements c<o2.a, l2.b> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c<Bitmap, j> f33513a;

    public a(c<Bitmap, j> cVar) {
        this.f33513a = cVar;
    }

    @Override // p2.c
    public String a() {
        return "GifBitmapWrapperDrawableTranscoder.com.bumptech.glide.load.resource.transcode";
    }

    @Override // p2.c
    public l<l2.b> b(l<o2.a> lVar) {
        o2.a aVar = lVar.get();
        l<Bitmap> lVarA = aVar.a();
        return lVarA != null ? this.f33513a.b(lVarA) : aVar.b();
    }
}
