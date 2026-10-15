package d7;

import com.google.gson.r;
import com.google.gson.u;
import com.google.gson.w;
import com.google.gson.x;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

/* JADX INFO: compiled from: MapTypeAdapterFactory.java */
/* JADX INFO: loaded from: classes2.dex */
public final class g implements x {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final c7.c f28647o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final boolean f28648p;

    /* JADX INFO: compiled from: MapTypeAdapterFactory.java */
    private final class a<K, V> extends w<Map<K, V>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final w<K> f28649a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final w<V> f28650b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final c7.i<? extends Map<K, V>> f28651c;

        public a(com.google.gson.f fVar, Type type, w<K> wVar, Type type2, w<V> wVar2, c7.i<? extends Map<K, V>> iVar) {
            this.f28649a = new m(fVar, wVar, type);
            this.f28650b = new m(fVar, wVar2, type2);
            this.f28651c = iVar;
        }

        private String e(com.google.gson.l lVar) {
            if (!lVar.s()) {
                if (lVar.q()) {
                    return "null";
                }
                throw new AssertionError();
            }
            r rVarM = lVar.m();
            if (rVarM.x()) {
                return String.valueOf(rVarM.t());
            }
            if (rVarM.u()) {
                return Boolean.toString(rVarM.c());
            }
            if (rVarM.y()) {
                return rVarM.o();
            }
            throw new AssertionError();
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public Map<K, V> b(h7.a aVar) throws IOException {
            h7.b bVarX = aVar.x();
            if (bVarX == h7.b.NULL) {
                aVar.t();
                return null;
            }
            Map<K, V> mapA = this.f28651c.a();
            if (bVarX == h7.b.BEGIN_ARRAY) {
                aVar.b();
                while (aVar.j()) {
                    aVar.b();
                    K kB = this.f28649a.b(aVar);
                    if (mapA.put(kB, this.f28650b.b(aVar)) != null) {
                        throw new u("duplicate key: " + kB);
                    }
                    aVar.g();
                }
                aVar.g();
            } else {
                aVar.c();
                while (aVar.j()) {
                    c7.f.f4921a.a(aVar);
                    K kB2 = this.f28649a.b(aVar);
                    if (mapA.put(kB2, this.f28650b.b(aVar)) != null) {
                        throw new u("duplicate key: " + kB2);
                    }
                }
                aVar.h();
            }
            return mapA;
        }

        @Override // com.google.gson.w
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public void d(h7.c cVar, Map<K, V> map) throws IOException {
            if (map == null) {
                cVar.n();
                return;
            }
            if (!g.this.f28648p) {
                cVar.e();
                for (Map.Entry<K, V> entry : map.entrySet()) {
                    cVar.l(String.valueOf(entry.getKey()));
                    this.f28650b.d(cVar, entry.getValue());
                }
                cVar.h();
                return;
            }
            ArrayList arrayList = new ArrayList(map.size());
            ArrayList arrayList2 = new ArrayList(map.size());
            int i10 = 0;
            boolean z10 = false;
            for (Map.Entry<K, V> entry2 : map.entrySet()) {
                com.google.gson.l lVarC = this.f28649a.c(entry2.getKey());
                arrayList.add(lVarC);
                arrayList2.add(entry2.getValue());
                z10 |= lVarC.p() || lVarC.r();
            }
            if (!z10) {
                cVar.e();
                int size = arrayList.size();
                while (i10 < size) {
                    cVar.l(e((com.google.gson.l) arrayList.get(i10)));
                    this.f28650b.d(cVar, (V) arrayList2.get(i10));
                    i10++;
                }
                cVar.h();
                return;
            }
            cVar.d();
            int size2 = arrayList.size();
            while (i10 < size2) {
                cVar.d();
                c7.l.b((com.google.gson.l) arrayList.get(i10), cVar);
                this.f28650b.d(cVar, (V) arrayList2.get(i10));
                cVar.g();
                i10++;
            }
            cVar.g();
        }
    }

    public g(c7.c cVar, boolean z10) {
        this.f28647o = cVar;
        this.f28648p = z10;
    }

    private w<?> b(com.google.gson.f fVar, Type type) {
        return (type == Boolean.TYPE || type == Boolean.class) ? n.f28698f : fVar.m(g7.a.get(type));
    }

    @Override // com.google.gson.x
    public <T> w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
        Type type = aVar.getType();
        if (!Map.class.isAssignableFrom(aVar.getRawType())) {
            return null;
        }
        Type[] typeArrJ = c7.b.j(type, c7.b.k(type));
        return new a(fVar, typeArrJ[0], b(fVar, typeArrJ[0]), typeArrJ[1], fVar.m(g7.a.get(typeArrJ[1])), this.f28647o.a(aVar));
    }
}
