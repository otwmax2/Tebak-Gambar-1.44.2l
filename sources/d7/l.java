package d7;

import com.google.gson.p;
import com.google.gson.s;
import com.google.gson.t;
import com.google.gson.w;
import com.google.gson.x;
import java.io.IOException;
import java.lang.reflect.Type;

/* JADX INFO: compiled from: TreeTypeAdapter.java */
/* JADX INFO: loaded from: classes2.dex */
public final class l<T> extends w<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final t<T> f28677a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final com.google.gson.k<T> f28678b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final com.google.gson.f f28679c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final g7.a<T> f28680d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final x f28681e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final l<T>.b f28682f = new b();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private w<T> f28683g;

    /* JADX INFO: compiled from: TreeTypeAdapter.java */
    private final class b implements s, com.google.gson.j {
        private b() {
        }

        @Override // com.google.gson.j
        public <R> R a(com.google.gson.l lVar, Type type) throws p {
            return (R) l.this.f28679c.h(lVar, type);
        }
    }

    /* JADX INFO: compiled from: TreeTypeAdapter.java */
    private static final class c implements x {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final g7.a<?> f28685o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final boolean f28686p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final Class<?> f28687q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final t<?> f28688r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private final com.google.gson.k<?> f28689s;

        c(Object obj, g7.a<?> aVar, boolean z10, Class<?> cls) {
            t<?> tVar = obj instanceof t ? (t) obj : null;
            this.f28688r = tVar;
            com.google.gson.k<?> kVar = obj instanceof com.google.gson.k ? (com.google.gson.k) obj : null;
            this.f28689s = kVar;
            c7.a.a((tVar == null && kVar == null) ? false : true);
            this.f28685o = aVar;
            this.f28686p = z10;
            this.f28687q = cls;
        }

        @Override // com.google.gson.x
        public <T> w<T> a(com.google.gson.f fVar, g7.a<T> aVar) {
            g7.a<?> aVar2 = this.f28685o;
            if (aVar2 != null ? aVar2.equals(aVar) || (this.f28686p && this.f28685o.getType() == aVar.getRawType()) : this.f28687q.isAssignableFrom(aVar.getRawType())) {
                return new l(this.f28688r, this.f28689s, fVar, aVar, this);
            }
            return null;
        }
    }

    public l(t<T> tVar, com.google.gson.k<T> kVar, com.google.gson.f fVar, g7.a<T> aVar, x xVar) {
        this.f28677a = tVar;
        this.f28678b = kVar;
        this.f28679c = fVar;
        this.f28680d = aVar;
        this.f28681e = xVar;
    }

    private w<T> e() {
        w<T> wVar = this.f28683g;
        if (wVar != null) {
            return wVar;
        }
        w<T> wVarO = this.f28679c.o(this.f28681e, this.f28680d);
        this.f28683g = wVarO;
        return wVarO;
    }

    public static x f(g7.a<?> aVar, Object obj) {
        return new c(obj, aVar, aVar.getType() == aVar.getRawType(), null);
    }

    @Override // com.google.gson.w
    public T b(h7.a aVar) throws IOException {
        if (this.f28678b == null) {
            return e().b(aVar);
        }
        com.google.gson.l lVarA = c7.l.a(aVar);
        if (lVarA.q()) {
            return null;
        }
        return this.f28678b.a(lVarA, this.f28680d.getType(), this.f28682f);
    }

    @Override // com.google.gson.w
    public void d(h7.c cVar, T t10) throws IOException {
        t<T> tVar = this.f28677a;
        if (tVar == null) {
            e().d(cVar, t10);
        } else if (t10 == null) {
            cVar.n();
        } else {
            c7.l.b(tVar.b(t10, this.f28680d.getType(), this.f28682f), cVar);
        }
    }
}
