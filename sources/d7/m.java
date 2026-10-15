package d7;

import com.google.gson.w;
import d7.i;
import java.io.IOException;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;

/* JADX INFO: compiled from: TypeAdapterRuntimeTypeWrapper.java */
/* JADX INFO: loaded from: classes2.dex */
final class m<T> extends w<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final com.google.gson.f f28690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w<T> f28691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Type f28692c;

    m(com.google.gson.f fVar, w<T> wVar, Type type) {
        this.f28690a = fVar;
        this.f28691b = wVar;
        this.f28692c = type;
    }

    private Type e(Type type, Object obj) {
        return obj != null ? (type == Object.class || (type instanceof TypeVariable) || (type instanceof Class)) ? obj.getClass() : type : type;
    }

    @Override // com.google.gson.w
    public T b(h7.a aVar) throws IOException {
        return this.f28691b.b(aVar);
    }

    @Override // com.google.gson.w
    public void d(h7.c cVar, T t10) throws IOException {
        w<T> wVarM = this.f28691b;
        Type typeE = e(this.f28692c, t10);
        if (typeE != this.f28692c) {
            wVarM = this.f28690a.m(g7.a.get(typeE));
            if (wVarM instanceof i.b) {
                w<T> wVar = this.f28691b;
                if (!(wVar instanceof i.b)) {
                    wVarM = wVar;
                }
            }
        }
        wVarM.d(cVar, t10);
    }
}
