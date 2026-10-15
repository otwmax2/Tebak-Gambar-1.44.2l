package o2;

import android.graphics.Bitmap;
import b2.l;
import java.io.OutputStream;

/* JADX INFO: compiled from: GifBitmapWrapperResourceEncoder.java */
/* JADX INFO: loaded from: classes.dex */
public class d implements z1.f<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z1.f<Bitmap> f32918a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final z1.f<n2.b> f32919b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private String f32920c;

    public d(z1.f<Bitmap> fVar, z1.f<n2.b> fVar2) {
        this.f32918a = fVar;
        this.f32919b = fVar2;
    }

    @Override // z1.b
    public String a() {
        if (this.f32920c == null) {
            this.f32920c = this.f32918a.a() + this.f32919b.a();
        }
        return this.f32920c;
    }

    @Override // z1.b
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public boolean b(l<a> lVar, OutputStream outputStream) {
        a aVar = lVar.get();
        l<Bitmap> lVarA = aVar.a();
        return lVarA != null ? this.f32918a.b(lVarA, outputStream) : this.f32919b.b(aVar.b(), outputStream);
    }
}
