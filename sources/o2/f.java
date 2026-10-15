package o2;

import android.graphics.Bitmap;
import b2.l;

/* JADX INFO: compiled from: GifBitmapWrapperTransformation.java */
/* JADX INFO: loaded from: classes.dex */
public class f implements z1.g<a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z1.g<Bitmap> f32922a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final z1.g<n2.b> f32923b;

    public f(c2.c cVar, z1.g<Bitmap> gVar) {
        this(gVar, new n2.e(gVar, cVar));
    }

    @Override // z1.g
    public String a() {
        return this.f32922a.a();
    }

    @Override // z1.g
    public l<a> b(l<a> lVar, int i10, int i11) {
        z1.g<n2.b> gVar;
        z1.g<Bitmap> gVar2;
        l<Bitmap> lVarA = lVar.get().a();
        l<n2.b> lVarB = lVar.get().b();
        if (lVarA != null && (gVar2 = this.f32922a) != null) {
            l<Bitmap> lVarB2 = gVar2.b(lVarA, i10, i11);
            return !lVarA.equals(lVarB2) ? new b(new a(lVarB2, lVar.get().b())) : lVar;
        }
        if (lVarB == null || (gVar = this.f32923b) == null) {
            return lVar;
        }
        l<n2.b> lVarB3 = gVar.b(lVarB, i10, i11);
        return !lVarB.equals(lVarB3) ? new b(new a(lVar.get().a(), lVarB3)) : lVar;
    }

    f(z1.g<Bitmap> gVar, z1.g<n2.b> gVar2) {
        this.f32922a = gVar;
        this.f32923b = gVar2;
    }
}
