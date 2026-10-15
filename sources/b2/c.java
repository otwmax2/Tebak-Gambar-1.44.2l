package b2;

import android.os.Looper;
import android.os.MessageQueue;
import android.util.Log;
import b2.a;
import b2.h;
import d2.a;
import d2.h;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

/* JADX INFO: compiled from: Engine.java */
/* JADX INFO: loaded from: classes.dex */
public class c implements b2.e, h.a, h.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<z1.c, b2.d> f4571a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final g f4572b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final d2.h f4573c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a f4574d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Map<z1.c, WeakReference<h<?>>> f4575e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final m f4576f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final b f4577g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private ReferenceQueue<h<?>> f4578h;

    /* JADX INFO: compiled from: Engine.java */
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final ExecutorService f4579a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ExecutorService f4580b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final b2.e f4581c;

        public a(ExecutorService executorService, ExecutorService executorService2, b2.e eVar) {
            this.f4579a = executorService;
            this.f4580b = executorService2;
            this.f4581c = eVar;
        }

        public b2.d a(z1.c cVar, boolean z10) {
            return new b2.d(cVar, this.f4579a, this.f4580b, z10, this.f4581c);
        }
    }

    /* JADX INFO: compiled from: Engine.java */
    private static class b implements a.InterfaceC0080a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a.InterfaceC0142a f4582a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private volatile d2.a f4583b;

        public b(a.InterfaceC0142a interfaceC0142a) {
            this.f4582a = interfaceC0142a;
        }

        @Override // b2.a.InterfaceC0080a
        public d2.a a() {
            if (this.f4583b == null) {
                synchronized (this) {
                    if (this.f4583b == null) {
                        this.f4583b = this.f4582a.build();
                    }
                    if (this.f4583b == null) {
                        this.f4583b = new d2.b();
                    }
                }
            }
            return this.f4583b;
        }
    }

    /* JADX INFO: renamed from: b2.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Engine.java */
    public static class C0081c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final b2.d f4584a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final t2.g f4585b;

        public C0081c(t2.g gVar, b2.d dVar) {
            this.f4585b = gVar;
            this.f4584a = dVar;
        }

        public void a() {
            this.f4584a.l(this.f4585b);
        }
    }

    /* JADX INFO: compiled from: Engine.java */
    private static class d implements MessageQueue.IdleHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Map<z1.c, WeakReference<h<?>>> f4586a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final ReferenceQueue<h<?>> f4587b;

        public d(Map<z1.c, WeakReference<h<?>>> map, ReferenceQueue<h<?>> referenceQueue) {
            this.f4586a = map;
            this.f4587b = referenceQueue;
        }

        @Override // android.os.MessageQueue.IdleHandler
        public boolean queueIdle() {
            e eVar = (e) this.f4587b.poll();
            if (eVar == null) {
                return true;
            }
            this.f4586a.remove(eVar.f4588a);
            return true;
        }
    }

    /* JADX INFO: compiled from: Engine.java */
    private static class e extends WeakReference<h<?>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final z1.c f4588a;

        public e(z1.c cVar, h<?> hVar, ReferenceQueue<? super h<?>> referenceQueue) {
            super(hVar, referenceQueue);
            this.f4588a = cVar;
        }
    }

    public c(d2.h hVar, a.InterfaceC0142a interfaceC0142a, ExecutorService executorService, ExecutorService executorService2) {
        this(hVar, interfaceC0142a, executorService, executorService2, null, null, null, null, null);
    }

    private h<?> e(z1.c cVar) {
        l<?> lVarE = this.f4573c.e(cVar);
        if (lVarE == null) {
            return null;
        }
        return lVarE instanceof h ? (h) lVarE : new h<>(lVarE, true);
    }

    private ReferenceQueue<h<?>> f() {
        if (this.f4578h == null) {
            this.f4578h = new ReferenceQueue<>();
            Looper.myQueue().addIdleHandler(new d(this.f4575e, this.f4578h));
        }
        return this.f4578h;
    }

    private h<?> h(z1.c cVar, boolean z10) {
        h<?> hVar = null;
        if (!z10) {
            return null;
        }
        WeakReference<h<?>> weakReference = this.f4575e.get(cVar);
        if (weakReference != null) {
            hVar = weakReference.get();
            if (hVar != null) {
                hVar.a();
            } else {
                this.f4575e.remove(cVar);
            }
        }
        return hVar;
    }

    private h<?> i(z1.c cVar, boolean z10) {
        if (!z10) {
            return null;
        }
        h<?> hVarE = e(cVar);
        if (hVarE != null) {
            hVarE.a();
            this.f4575e.put(cVar, new e(cVar, hVarE, f()));
        }
        return hVarE;
    }

    private static void j(String str, long j10, z1.c cVar) {
        Log.v("Engine", str + " in " + x2.d.a(j10) + "ms, key: " + cVar);
    }

    @Override // b2.h.a
    public void a(z1.c cVar, h hVar) {
        x2.h.b();
        this.f4575e.remove(cVar);
        if (hVar.d()) {
            this.f4573c.b(cVar, hVar);
        } else {
            this.f4576f.a(hVar);
        }
    }

    @Override // b2.e
    public void b(b2.d dVar, z1.c cVar) {
        x2.h.b();
        if (dVar.equals(this.f4571a.get(cVar))) {
            this.f4571a.remove(cVar);
        }
    }

    @Override // d2.h.a
    public void c(l<?> lVar) {
        x2.h.b();
        this.f4576f.a(lVar);
    }

    @Override // b2.e
    public void d(z1.c cVar, h<?> hVar) {
        x2.h.b();
        if (hVar != null) {
            hVar.f(cVar, this);
            if (hVar.d()) {
                this.f4575e.put(cVar, new e(cVar, hVar, f()));
            }
        }
        this.f4571a.remove(cVar);
    }

    public <T, Z, R> C0081c g(z1.c cVar, int i10, int i11, a2.c<T> cVar2, s2.b<T, Z> bVar, z1.g<Z> gVar, p2.c<Z, R> cVar3, v1.i iVar, boolean z10, b2.b bVar2, t2.g gVar2) {
        x2.h.b();
        long jB = x2.d.b();
        f fVarA = this.f4572b.a(cVar2.a(), cVar, i10, i11, bVar.g(), bVar.f(), gVar, bVar.d(), cVar3, bVar.a());
        h<?> hVarI = i(fVarA, z10);
        if (hVarI != null) {
            gVar2.d(hVarI);
            if (Log.isLoggable("Engine", 2)) {
                j("Loaded resource from cache", jB, fVarA);
            }
            return null;
        }
        h<?> hVarH = h(fVarA, z10);
        if (hVarH != null) {
            gVar2.d(hVarH);
            if (Log.isLoggable("Engine", 2)) {
                j("Loaded resource from active resources", jB, fVarA);
            }
            return null;
        }
        b2.d dVar = this.f4571a.get(fVarA);
        if (dVar != null) {
            dVar.f(gVar2);
            if (Log.isLoggable("Engine", 2)) {
                j("Added to existing load", jB, fVarA);
            }
            return new C0081c(gVar2, dVar);
        }
        b2.d dVarA = this.f4574d.a(fVarA, z10);
        i iVar2 = new i(dVarA, new b2.a(fVarA, i10, i11, cVar2, bVar, gVar, cVar3, this.f4577g, bVar2, iVar), iVar);
        this.f4571a.put(fVarA, dVarA);
        dVarA.f(gVar2);
        dVarA.m(iVar2);
        if (Log.isLoggable("Engine", 2)) {
            j("Started new load", jB, fVarA);
        }
        return new C0081c(gVar2, dVarA);
    }

    public void k(l lVar) {
        x2.h.b();
        if (!(lVar instanceof h)) {
            throw new IllegalArgumentException("Cannot release anything but an EngineResource");
        }
        ((h) lVar).e();
    }

    c(d2.h hVar, a.InterfaceC0142a interfaceC0142a, ExecutorService executorService, ExecutorService executorService2, Map<z1.c, b2.d> map, g gVar, Map<z1.c, WeakReference<h<?>>> map2, a aVar, m mVar) {
        this.f4573c = hVar;
        this.f4577g = new b(interfaceC0142a);
        this.f4575e = map2 == null ? new HashMap<>() : map2;
        this.f4572b = gVar == null ? new g() : gVar;
        this.f4571a = map == null ? new HashMap<>() : map;
        this.f4574d = aVar == null ? new a(executorService, executorService2, this) : aVar;
        this.f4576f = mVar == null ? new m() : mVar;
        hVar.a(this);
    }
}
