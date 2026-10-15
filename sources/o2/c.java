package o2;

import android.graphics.Bitmap;
import java.io.IOException;
import java.io.InputStream;
import k2.l;
import k2.o;

/* JADX INFO: compiled from: GifBitmapWrapperResourceDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements z1.e<g2.g, o2.a> {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final b f32910g = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final a f32911h = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z1.e<g2.g, Bitmap> f32912a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final z1.e<InputStream, n2.b> f32913b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final c2.c f32914c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final b f32915d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a f32916e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private String f32917f;

    /* JADX INFO: compiled from: GifBitmapWrapperResourceDecoder.java */
    static class a {
        a() {
        }

        public InputStream a(InputStream inputStream, byte[] bArr) {
            return new o(inputStream, bArr);
        }
    }

    /* JADX INFO: compiled from: GifBitmapWrapperResourceDecoder.java */
    static class b {
        b() {
        }

        public l.a a(InputStream inputStream) throws IOException {
            return new l(inputStream).d();
        }
    }

    public c(z1.e<g2.g, Bitmap> eVar, z1.e<InputStream, n2.b> eVar2, c2.c cVar) {
        this(eVar, eVar2, cVar, f32910g, f32911h);
    }

    private o2.a d(g2.g gVar, int i10, int i11, byte[] bArr) throws IOException {
        return gVar.b() != null ? g(gVar, i10, i11, bArr) : e(gVar, i10, i11);
    }

    private o2.a e(g2.g gVar, int i10, int i11) throws IOException {
        b2.l<Bitmap> lVarB = this.f32912a.b(gVar, i10, i11);
        if (lVarB != null) {
            return new o2.a(lVarB, null);
        }
        return null;
    }

    private o2.a f(InputStream inputStream, int i10, int i11) throws IOException {
        b2.l<n2.b> lVarB = this.f32913b.b(inputStream, i10, i11);
        if (lVarB == null) {
            return null;
        }
        n2.b bVar = lVarB.get();
        return bVar.f() > 1 ? new o2.a(null, lVarB) : new o2.a(new k2.c(bVar.e(), this.f32914c), null);
    }

    private o2.a g(g2.g gVar, int i10, int i11, byte[] bArr) throws IOException {
        InputStream inputStreamA = this.f32916e.a(gVar.b(), bArr);
        inputStreamA.mark(2048);
        l.a aVarA = this.f32915d.a(inputStreamA);
        inputStreamA.reset();
        o2.a aVarF = aVarA == l.a.GIF ? f(inputStreamA, i10, i11) : null;
        return aVarF == null ? e(new g2.g(inputStreamA, gVar.a()), i10, i11) : aVarF;
    }

    @Override // z1.e
    public String a() {
        if (this.f32917f == null) {
            this.f32917f = this.f32913b.a() + this.f32912a.a();
        }
        return this.f32917f;
    }

    @Override // z1.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public b2.l<o2.a> b(g2.g gVar, int i10, int i11) throws IOException {
        x2.a aVarA = x2.a.a();
        byte[] bArrB = aVarA.b();
        try {
            o2.a aVarD = d(gVar, i10, i11, bArrB);
            if (aVarD != null) {
                return new o2.b(aVarD);
            }
            return null;
        } finally {
            aVarA.c(bArrB);
        }
    }

    c(z1.e<g2.g, Bitmap> eVar, z1.e<InputStream, n2.b> eVar2, c2.c cVar, b bVar, a aVar) {
        this.f32912a = eVar;
        this.f32913b = eVar2;
        this.f32914c = cVar;
        this.f32915d = bVar;
        this.f32916e = aVar;
    }
}
