package o2;

import android.graphics.Bitmap;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: ImageVideoGifDrawableLoadProvider.java */
/* JADX INFO: loaded from: classes.dex */
public class g implements s2.b<g2.g, a> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final z1.e<File, a> f32924o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final z1.e<g2.g, a> f32925p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final z1.f<a> f32926q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final z1.b<g2.g> f32927r;

    public g(s2.b<g2.g, Bitmap> bVar, s2.b<InputStream, n2.b> bVar2, c2.c cVar) {
        c cVar2 = new c(bVar.f(), bVar2.f(), cVar);
        this.f32924o = new m2.c(new e(cVar2));
        this.f32925p = cVar2;
        this.f32926q = new d(bVar.d(), bVar2.d());
        this.f32927r = bVar.a();
    }

    @Override // s2.b
    public z1.b<g2.g> a() {
        return this.f32927r;
    }

    @Override // s2.b
    public z1.f<a> d() {
        return this.f32926q;
    }

    @Override // s2.b
    public z1.e<g2.g, a> f() {
        return this.f32925p;
    }

    @Override // s2.b
    public z1.e<File, a> g() {
        return this.f32924o;
    }
}
