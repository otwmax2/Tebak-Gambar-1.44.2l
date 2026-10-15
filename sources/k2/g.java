package k2;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import java.io.File;

/* JADX INFO: compiled from: FileDescriptorBitmapDataLoadProvider.java */
/* JADX INFO: loaded from: classes.dex */
public class g implements s2.b<ParcelFileDescriptor, Bitmap> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final z1.e<File, Bitmap> f31318o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final h f31319p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final b f31320q = new b();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final z1.b<ParcelFileDescriptor> f31321r = j2.a.c();

    public g(c2.c cVar, z1.a aVar) {
        this.f31318o = new m2.c(new q(cVar, aVar));
        this.f31319p = new h(cVar, aVar);
    }

    @Override // s2.b
    public z1.b<ParcelFileDescriptor> a() {
        return this.f31321r;
    }

    @Override // s2.b
    public z1.f<Bitmap> d() {
        return this.f31320q;
    }

    @Override // s2.b
    public z1.e<ParcelFileDescriptor, Bitmap> f() {
        return this.f31319p;
    }

    @Override // s2.b
    public z1.e<File, Bitmap> g() {
        return this.f31318o;
    }
}
