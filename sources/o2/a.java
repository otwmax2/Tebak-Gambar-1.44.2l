package o2;

import android.graphics.Bitmap;
import b2.l;

/* JADX INFO: compiled from: GifBitmapWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l<n2.b> f32907a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final l<Bitmap> f32908b;

    public a(l<Bitmap> lVar, l<n2.b> lVar2) {
        if (lVar != null && lVar2 != null) {
            throw new IllegalArgumentException("Can only contain either a bitmap resource or a gif resource, not both");
        }
        if (lVar == null && lVar2 == null) {
            throw new IllegalArgumentException("Must contain either a bitmap resource or a gif resource");
        }
        this.f32908b = lVar;
        this.f32907a = lVar2;
    }

    public l<Bitmap> a() {
        return this.f32908b;
    }

    public l<n2.b> b() {
        return this.f32907a;
    }

    public int c() {
        l<Bitmap> lVar = this.f32908b;
        return lVar != null ? lVar.c() : this.f32907a.c();
    }
}
