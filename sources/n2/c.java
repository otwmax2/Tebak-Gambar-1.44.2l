package n2;

import android.content.Context;
import g2.o;
import java.io.File;
import java.io.InputStream;

/* JADX INFO: compiled from: GifDrawableLoadProvider.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements s2.b<InputStream, b> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final i f32395o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final j f32396p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final o f32397q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final m2.c<b> f32398r;

    public c(Context context, c2.c cVar) {
        i iVar = new i(context, cVar);
        this.f32395o = iVar;
        this.f32398r = new m2.c<>(iVar);
        this.f32396p = new j(cVar);
        this.f32397q = new o();
    }

    @Override // s2.b
    public z1.b<InputStream> a() {
        return this.f32397q;
    }

    @Override // s2.b
    public z1.f<b> d() {
        return this.f32396p;
    }

    @Override // s2.b
    public z1.e<InputStream, b> f() {
        return this.f32395o;
    }

    @Override // s2.b
    public z1.e<File, b> g() {
        return this.f32398r;
    }
}
