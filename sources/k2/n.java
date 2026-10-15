package k2;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: ImageVideoDataLoadProvider.java */
/* JADX INFO: loaded from: classes.dex */
public class n implements s2.b<g2.g, Bitmap> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final m f31350o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final z1.e<File, Bitmap> f31351p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final z1.f<Bitmap> f31352q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final g2.h f31353r;

    public n(s2.b<InputStream, Bitmap> bVar, s2.b<ParcelFileDescriptor, Bitmap> bVar2) {
        this.f31352q = bVar.d();
        this.f31353r = new g2.h(bVar.a(), bVar2.a());
        this.f31351p = bVar.g();
        this.f31350o = new m(bVar.f(), bVar2.f());
    }

    @Override // s2.b
    public z1.b<g2.g> a() {
        return this.f31353r;
    }

    @Override // s2.b
    public z1.f<Bitmap> d() {
        return this.f31352q;
    }

    @Override // s2.b
    public z1.e<g2.g, Bitmap> f() {
        return this.f31350o;
    }

    @Override // s2.b
    public z1.e<File, Bitmap> g() {
        return this.f31351p;
    }
}
