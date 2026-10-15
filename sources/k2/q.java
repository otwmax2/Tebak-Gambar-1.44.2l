package k2;

import android.graphics.Bitmap;
import java.io.InputStream;

/* JADX INFO: compiled from: StreamBitmapDecoder.java */
/* JADX INFO: loaded from: classes.dex */
public class q implements z1.e<InputStream, Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f f31363a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c2.c f31364b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private z1.a f31365c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private String f31366d;

    public q(c2.c cVar, z1.a aVar) {
        this(f.f31315c, cVar, aVar);
    }

    @Override // z1.e
    public String a() {
        if (this.f31366d == null) {
            this.f31366d = "StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap" + this.f31363a.a() + this.f31365c.name();
        }
        return this.f31366d;
    }

    @Override // z1.e
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public b2.l<Bitmap> b(InputStream inputStream, int i10, int i11) {
        return c.d(this.f31363a.b(inputStream, this.f31364b, i10, i11, this.f31365c), this.f31364b);
    }

    public q(f fVar, c2.c cVar, z1.a aVar) {
        this.f31363a = fVar;
        this.f31364b = cVar;
        this.f31365c = aVar;
    }
}
