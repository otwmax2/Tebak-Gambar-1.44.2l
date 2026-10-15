package v1;

import android.content.Context;
import g2.l;
import java.io.File;
import q2.m;
import v1.j;

/* JADX INFO: compiled from: GenericTranscodeRequest.java */
/* JADX INFO: loaded from: classes.dex */
public class f<ModelType, DataType, ResourceType> extends e<ModelType, DataType, ResourceType, ResourceType> {
    private final l<ModelType, DataType> R;
    private final Class<DataType> S;
    private final Class<ResourceType> T;
    private final j.d U;

    f(Class<ResourceType> cls, e<ModelType, ?, ?, ?> eVar, l<ModelType, DataType> lVar, Class<DataType> cls2, Class<ResourceType> cls3, j.d dVar) {
        super(C(eVar.f35715q, lVar, cls2, cls3, p2.e.c()), cls, eVar);
        this.R = lVar;
        this.S = cls2;
        this.T = cls3;
        this.U = dVar;
    }

    private static <A, T, Z, R> s2.f<A, T, Z, R> C(g gVar, l<A, T> lVar, Class<T> cls, Class<Z> cls2, p2.c<Z, R> cVar) {
        return new s2.e(lVar, cVar, gVar.a(cls, cls2));
    }

    private e<ModelType, DataType, File, File> E() {
        return this.U.a(new e(new s2.e(this.R, p2.e.c(), this.f35715q.a(this.S, File.class)), File.class, this)).x(i.LOW).j(b2.b.SOURCE).z(true);
    }

    public t2.a<File> D(int i10, int i11) {
        return E().o(i10, i11);
    }

    f(Context context, g gVar, Class<ModelType> cls, l<ModelType, DataType> lVar, Class<DataType> cls2, Class<ResourceType> cls3, m mVar, q2.g gVar2, j.d dVar) {
        super(context, cls, C(gVar, lVar, cls2, cls3, p2.e.c()), cls3, gVar, mVar, gVar2);
        this.R = lVar;
        this.S = cls2;
        this.T = cls3;
        this.U = dVar;
    }
}
