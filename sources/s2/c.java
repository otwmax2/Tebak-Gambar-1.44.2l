package s2;

import java.util.HashMap;
import java.util.Map;
import x2.g;

/* JADX INFO: compiled from: DataLoadProviderRegistry.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final g f34474b = new g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<g, b<?, ?>> f34475a = new HashMap();

    public <T, Z> b<T, Z> a(Class<T> cls, Class<Z> cls2) {
        b<T, Z> bVar;
        g gVar = f34474b;
        synchronized (gVar) {
            gVar.a(cls, cls2);
            bVar = (b) this.f34475a.get(gVar);
        }
        return bVar == null ? d.c() : bVar;
    }

    public <T, Z> void b(Class<T> cls, Class<Z> cls2, b<T, Z> bVar) {
        this.f34475a.put(new g(cls, cls2), bVar);
    }
}
