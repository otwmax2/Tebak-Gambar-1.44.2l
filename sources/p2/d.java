package p2;

import java.util.HashMap;
import java.util.Map;
import x2.g;

/* JADX INFO: compiled from: TranscoderRegistry.java */
/* JADX INFO: loaded from: classes.dex */
public class d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final g f33516b = new g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<g, c<?, ?>> f33517a = new HashMap();

    public <Z, R> c<Z, R> a(Class<Z> cls, Class<R> cls2) {
        c<Z, R> cVar;
        if (cls.equals(cls2)) {
            return e.c();
        }
        g gVar = f33516b;
        synchronized (gVar) {
            gVar.a(cls, cls2);
            cVar = (c) this.f33517a.get(gVar);
        }
        if (cVar != null) {
            return cVar;
        }
        throw new IllegalArgumentException("No transcoder registered for " + cls + " and " + cls2);
    }

    public <Z, R> void b(Class<Z> cls, Class<R> cls2, c<Z, R> cVar) {
        this.f33517a.put(new g(cls, cls2), cVar);
    }
}
