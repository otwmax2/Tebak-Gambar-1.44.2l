package k2;

import android.graphics.Bitmap;
import java.util.Objects;

/* JADX INFO: compiled from: BitmapResource.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements b2.l<Bitmap> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Bitmap f31310a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final c2.c f31311b;

    public c(Bitmap bitmap, c2.c cVar) {
        Objects.requireNonNull(bitmap, "Bitmap must not be null");
        Objects.requireNonNull(cVar, "BitmapPool must not be null");
        this.f31310a = bitmap;
        this.f31311b = cVar;
    }

    public static c d(Bitmap bitmap, c2.c cVar) {
        if (bitmap == null) {
            return null;
        }
        return new c(bitmap, cVar);
    }

    @Override // b2.l
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public Bitmap get() {
        return this.f31310a;
    }

    @Override // b2.l
    public void b() {
        if (this.f31311b.a(this.f31310a)) {
            return;
        }
        this.f31310a.recycle();
    }

    @Override // b2.l
    public int c() {
        return x2.h.f(this.f31310a);
    }
}
