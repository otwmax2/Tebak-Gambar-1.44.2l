package k2;

import android.graphics.Bitmap;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamBitmapDataLoadProvider.java */
/* JADX INFO: loaded from: classes.dex */
public class p implements s2.b<InputStream, Bitmap> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final q f31359o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final b f31360p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final g2.o f31361q = new g2.o();

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final m2.c<Bitmap> f31362r;

    public p(c2.c cVar, z1.a aVar) {
        q qVar = new q(cVar, aVar);
        this.f31359o = qVar;
        this.f31360p = new b();
        this.f31362r = new m2.c<>(qVar);
    }

    @Override // s2.b
    public z1.b<InputStream> a() {
        return this.f31361q;
    }

    @Override // s2.b
    public z1.f<Bitmap> d() {
        return this.f31360p;
    }

    @Override // s2.b
    public z1.e<InputStream, Bitmap> f() {
        return this.f31359o;
    }

    @Override // s2.b
    public z1.e<File, Bitmap> g() {
        return this.f31362r;
    }
}
