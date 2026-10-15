package p2;

import android.content.res.Resources;
import android.graphics.Bitmap;
import b2.l;
import k2.j;
import k2.k;

/* JADX INFO: compiled from: GlideBitmapDrawableTranscoder.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements c<Bitmap, j> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Resources f33514a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c2.c f33515b;

    public b(Resources resources, c2.c cVar) {
        this.f33514a = resources;
        this.f33515b = cVar;
    }

    @Override // p2.c
    public String a() {
        return "GlideBitmapDrawableTranscoder.com.bumptech.glide.load.resource.transcode";
    }

    @Override // p2.c
    public l<j> b(l<Bitmap> lVar) {
        return new k(new j(this.f33514a, lVar.get()), this.f33515b);
    }
}
