package d7;

import com.google.gson.w;
import com.google.gson.x;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.util.ArrayList;

/* JADX INFO: compiled from: ArrayTypeAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a<E> extends w<Object> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final x f28637c = new C0144a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<E> f28638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final w<E> f28639b;

    /* JADX INFO: renamed from: d7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ArrayTypeAdapter.java */
    class C0144a implements x {
        C0144a() {
        }

        @Override // com.google.gson.x
        public <T> w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
            Type type = aVar.getType();
            if (!(type instanceof GenericArrayType) && (!(type instanceof Class) || !((Class) type).isArray())) {
                return null;
            }
            Type typeG = c7.b.g(type);
            return new a(fVar, fVar.m(g7.a.get(typeG)), c7.b.k(typeG));
        }
    }

    public a(com.google.gson.f fVar, w<E> wVar, Class<E> cls) {
        this.f28639b = new m(fVar, wVar, cls);
        this.f28638a = cls;
    }

    @Override // com.google.gson.w
    public Object b(h7.a aVar) throws IOException {
        if (aVar.x() == h7.b.NULL) {
            aVar.t();
            return null;
        }
        ArrayList arrayList = new ArrayList();
        aVar.b();
        while (aVar.j()) {
            arrayList.add(this.f28639b.b(aVar));
        }
        aVar.g();
        int size = arrayList.size();
        Object objNewInstance = Array.newInstance((Class<?>) this.f28638a, size);
        for (int i10 = 0; i10 < size; i10++) {
            Array.set(objNewInstance, i10, arrayList.get(i10));
        }
        return objNewInstance;
    }

    @Override // com.google.gson.w
    public void d(h7.c cVar, Object obj) throws IOException {
        if (obj == null) {
            cVar.n();
            return;
        }
        cVar.d();
        int length = Array.getLength(obj);
        for (int i10 = 0; i10 < length; i10++) {
            this.f28639b.d(cVar, (E) Array.get(obj, i10));
        }
        cVar.g();
    }
}
