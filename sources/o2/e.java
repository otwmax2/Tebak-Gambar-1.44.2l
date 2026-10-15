package o2;

import b2.l;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: compiled from: GifBitmapWrapperStreamResourceDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public class e implements z1.e<InputStream, a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z1.e<g2.g, a> f32921a;

    public e(z1.e<g2.g, a> eVar) {
        this.f32921a = eVar;
    }

    @Override // z1.e
    public String a() {
        return this.f32921a.a();
    }

    @Override // z1.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public l<a> b(InputStream inputStream, int i10, int i11) throws IOException {
        return this.f32921a.b(new g2.g(inputStream, null), i10, i11);
    }
}
