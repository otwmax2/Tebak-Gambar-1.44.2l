package v1;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import g2.l;
import java.io.InputStream;
import v1.j;

/* JADX INFO: compiled from: BitmapTypeRequest.java */
/* JADX INFO: loaded from: classes.dex */
public class b<ModelType> extends a<ModelType, Bitmap> {
    private final l<ModelType, InputStream> W;
    private final l<ModelType, ParcelFileDescriptor> X;
    private final g Y;
    private final j.d Z;

    b(e<ModelType, ?, ?, ?> eVar, l<ModelType, InputStream> lVar, l<ModelType, ParcelFileDescriptor> lVar2, j.d dVar) {
        super(S(eVar.f35715q, lVar, lVar2, Bitmap.class, null), Bitmap.class, eVar);
        this.W = lVar;
        this.X = lVar2;
        this.Y = eVar.f35715q;
        this.Z = dVar;
    }

    private static <A, R> s2.e<A, g2.g, Bitmap, R> S(g gVar, l<A, InputStream> lVar, l<A, ParcelFileDescriptor> lVar2, Class<R> cls, p2.c<Bitmap, R> cVar) {
        if (lVar == null && lVar2 == null) {
            return null;
        }
        if (cVar == null) {
            cVar = gVar.f(Bitmap.class, cls);
        }
        return new s2.e<>(new g2.f(lVar, lVar2), cVar, gVar.a(g2.g.class, Bitmap.class));
    }
}
