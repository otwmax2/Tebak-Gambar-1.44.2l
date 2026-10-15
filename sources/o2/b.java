package o2;

import android.graphics.Bitmap;
import b2.l;
import java.util.Objects;

/* JADX INFO: compiled from: GifBitmapWrapperResource.java */
/* JADX INFO: loaded from: classes.dex */
public class b implements l<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f32909a;

    public b(a aVar) {
        Objects.requireNonNull(aVar, "Data must not be null");
        this.f32909a = aVar;
    }

    @Override // b2.l
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a get() {
        return this.f32909a;
    }

    @Override // b2.l
    public void b() {
        l<Bitmap> lVarA = this.f32909a.a();
        if (lVarA != null) {
            lVarA.b();
        }
        l<n2.b> lVarB = this.f32909a.b();
        if (lVarB != null) {
            lVarB.b();
        }
    }

    @Override // b2.l
    public int c() {
        return this.f32909a.c();
    }
}
