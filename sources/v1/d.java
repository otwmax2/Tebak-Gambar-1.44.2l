package v1;

import android.content.Context;
import android.os.ParcelFileDescriptor;
import g2.l;
import java.io.File;
import java.io.InputStream;
import q2.m;
import v1.j;

/* JADX INFO: compiled from: DrawableTypeRequest.java */
/* JADX INFO: loaded from: classes.dex */
public class d<ModelType> extends c<ModelType> {
    private final l<ModelType, InputStream> R;
    private final l<ModelType, ParcelFileDescriptor> S;
    private final j.d T;

    d(Class<ModelType> cls, l<ModelType, InputStream> lVar, l<ModelType, ParcelFileDescriptor> lVar2, Context context, g gVar, m mVar, q2.g gVar2, j.d dVar) {
        super(context, cls, Y(gVar, lVar, lVar2, o2.a.class, l2.b.class, null), gVar, mVar, gVar2);
        this.R = lVar;
        this.S = lVar2;
        this.T = dVar;
    }

    private static <A, Z, R> s2.e<A, g2.g, Z, R> Y(g gVar, l<A, InputStream> lVar, l<A, ParcelFileDescriptor> lVar2, Class<Z> cls, Class<R> cls2, p2.c<Z, R> cVar) {
        if (lVar == null && lVar2 == null) {
            return null;
        }
        if (cVar == null) {
            cVar = gVar.f(cls, cls2);
        }
        return new s2.e<>(new g2.f(lVar, lVar2), cVar, gVar.a(g2.g.class, cls));
    }

    private f<ModelType, InputStream, File> a0() {
        j.d dVar = this.T;
        return (f) dVar.a(new f(File.class, this, this.R, InputStream.class, File.class, dVar));
    }

    public b<ModelType> W() {
        j.d dVar = this.T;
        return (b) dVar.a(new b(this, this.R, this.S, dVar));
    }

    public t2.a<File> Z(int i10, int i11) {
        return a0().D(i10, i11);
    }
}
