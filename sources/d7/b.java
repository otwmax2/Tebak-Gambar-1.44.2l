package d7;

import com.google.gson.w;
import com.google.gson.x;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.Collection;
import java.util.Iterator;

/* JADX INFO: compiled from: CollectionTypeAdapterFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b implements x {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final c7.c f28640o;

    /* JADX INFO: compiled from: CollectionTypeAdapterFactory.java */
    private static final class a<E> extends w<Collection<E>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final w<E> f28641a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final c7.i<? extends Collection<E>> f28642b;

        public a(com.google.gson.f fVar, Type type, w<E> wVar, c7.i<? extends Collection<E>> iVar) {
            this.f28641a = new m(fVar, wVar, type);
            this.f28642b = iVar;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public Collection<E> b(h7.a aVar) throws IOException {
            if (aVar.x() == h7.b.NULL) {
                aVar.t();
                return null;
            }
            Collection<E> collectionA = this.f28642b.a();
            aVar.b();
            while (aVar.j()) {
                collectionA.add(this.f28641a.b(aVar));
            }
            aVar.g();
            return collectionA;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Collection<E> collection) throws IOException {
            if (collection == null) {
                cVar.n();
                return;
            }
            cVar.d();
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                this.f28641a.d(cVar, it.next());
            }
            cVar.g();
        }
    }

    public b(c7.c cVar) {
        this.f28640o = cVar;
    }

    @Override // com.google.gson.x
    public <T> w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
        Type type = aVar.getType();
        Class<? super T> rawType = aVar.getRawType();
        if (!Collection.class.isAssignableFrom(rawType)) {
            return null;
        }
        Type typeH = c7.b.h(type, rawType);
        return new a(fVar, typeH, fVar.m(g7.a.get(typeH)), this.f28640o.a(aVar));
    }
}
