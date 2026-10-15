package s3;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;
import javax.inject.Inject;
import m3.g;
import o3.c;
import u3.b;

/* JADX INFO: compiled from: Uploader.java */
/* JADX INFO: loaded from: classes.dex */
public class s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Context f34530a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final m3.e f34531b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final t3.d f34532c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final y f34533d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Executor f34534e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final u3.b f34535f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final v3.a f34536g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final v3.a f34537h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final t3.c f34538i;

    @Inject
    public s(Context context, m3.e eVar, t3.d dVar, y yVar, Executor executor, u3.b bVar, v3.a aVar, v3.a aVar2, t3.c cVar) {
        this.f34530a = context;
        this.f34531b = eVar;
        this.f34532c = dVar;
        this.f34533d = yVar;
        this.f34534e = executor;
        this.f34535f = bVar;
        this.f34536g = aVar;
        this.f34537h = aVar2;
        this.f34538i = cVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Boolean l(l3.p pVar) {
        return Boolean.valueOf(this.f34532c.b2(pVar));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Iterable m(l3.p pVar) {
        return this.f34532c.V0(pVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object n(Iterable iterable, l3.p pVar, long j10) {
        this.f34532c.s3(iterable);
        this.f34532c.o0(pVar, this.f34536g.a() + j10);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object o(Iterable iterable) {
        this.f34532c.b0(iterable);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object p() {
        this.f34538i.c();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object q(Map map) {
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            this.f34538i.e(((Integer) r0.getValue()).intValue(), c.b.INVALID_PAYLOD, (String) ((Map.Entry) it.next()).getKey());
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object r(l3.p pVar, long j10) {
        this.f34532c.o0(pVar, this.f34536g.a() + j10);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Object s(l3.p pVar, int i10) {
        this.f34533d.b(pVar, i10 + 1);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t(final l3.p pVar, final int i10, Runnable runnable) {
        try {
            try {
                u3.b bVar = this.f34535f;
                final t3.d dVar = this.f34532c;
                Objects.requireNonNull(dVar);
                bVar.b(new b.a() { // from class: s3.i
                    @Override // u3.b.a
                    public final Object execute() {
                        return Integer.valueOf(dVar.W());
                    }
                });
                if (k()) {
                    u(pVar, i10);
                } else {
                    this.f34535f.b(new b.a() { // from class: s3.p
                        @Override // u3.b.a
                        public final Object execute() {
                            return this.f34523a.s(pVar, i10);
                        }
                    });
                }
            } catch (u3.a unused) {
                this.f34533d.b(pVar, i10 + 1);
            }
        } finally {
            runnable.run();
        }
    }

    public l3.i j(m3.m mVar) {
        u3.b bVar = this.f34535f;
        final t3.c cVar = this.f34538i;
        Objects.requireNonNull(cVar);
        return mVar.a(l3.i.a().i(this.f34536g.a()).k(this.f34537h.a()).j("GDT_CLIENT_METRICS").h(new l3.h(j3.b.b("proto"), ((o3.a) bVar.b(new b.a() { // from class: s3.r
            @Override // u3.b.a
            public final Object execute() {
                return cVar.d();
            }
        })).f())).d());
    }

    boolean k() {
        NetworkInfo activeNetworkInfo = ((ConnectivityManager) this.f34530a.getSystemService("connectivity")).getActiveNetworkInfo();
        return activeNetworkInfo != null && activeNetworkInfo.isConnected();
    }

    public m3.g u(final l3.p pVar, int i10) {
        m3.g gVarB;
        m3.m mVarA = this.f34531b.a(pVar.b());
        long jMax = 0;
        m3.g gVarE = m3.g.e(0L);
        while (true) {
            final long j10 = jMax;
            while (((Boolean) this.f34535f.b(new b.a() { // from class: s3.n
                @Override // u3.b.a
                public final Object execute() {
                    return this.f34519a.l(pVar);
                }
            })).booleanValue()) {
                final Iterable iterable = (Iterable) this.f34535f.b(new b.a() { // from class: s3.o
                    @Override // u3.b.a
                    public final Object execute() {
                        return this.f34521a.m(pVar);
                    }
                });
                if (!iterable.iterator().hasNext()) {
                    return gVarE;
                }
                if (mVarA == null) {
                    p3.a.b("Uploader", "Unknown backend for %s, deleting event batch for it...", pVar);
                    gVarB = m3.g.a();
                } else {
                    ArrayList arrayList = new ArrayList();
                    Iterator it = iterable.iterator();
                    while (it.hasNext()) {
                        arrayList.add(((t3.k) it.next()).b());
                    }
                    if (pVar.e()) {
                        arrayList.add(j(mVarA));
                    }
                    gVarB = mVarA.b(m3.f.a().b(arrayList).c(pVar.c()).a());
                }
                gVarE = gVarB;
                if (gVarE.c() == g.a.TRANSIENT_ERROR) {
                    this.f34535f.b(new b.a() { // from class: s3.l
                        @Override // u3.b.a
                        public final Object execute() {
                            return this.f34513a.n(iterable, pVar, j10);
                        }
                    });
                    this.f34533d.a(pVar, i10 + 1, true);
                    return gVarE;
                }
                this.f34535f.b(new b.a() { // from class: s3.k
                    @Override // u3.b.a
                    public final Object execute() {
                        return this.f34511a.o(iterable);
                    }
                });
                if (gVarE.c() == g.a.OK) {
                    jMax = Math.max(j10, gVarE.b());
                    if (pVar.e()) {
                        this.f34535f.b(new b.a() { // from class: s3.j
                            @Override // u3.b.a
                            public final Object execute() {
                                return this.f34510a.p();
                            }
                        });
                    }
                } else if (gVarE.c() == g.a.INVALID_PAYLOAD) {
                    final HashMap map = new HashMap();
                    Iterator it2 = iterable.iterator();
                    while (it2.hasNext()) {
                        String strJ = ((t3.k) it2.next()).b().j();
                        if (map.containsKey(strJ)) {
                            map.put(strJ, Integer.valueOf(((Integer) map.get(strJ)).intValue() + 1));
                        } else {
                            map.put(strJ, 1);
                        }
                    }
                    this.f34535f.b(new b.a() { // from class: s3.m
                        @Override // u3.b.a
                        public final Object execute() {
                            return this.f34517a.q(map);
                        }
                    });
                }
            }
            this.f34535f.b(new b.a() { // from class: s3.q
                @Override // u3.b.a
                public final Object execute() {
                    return this.f34526a.r(pVar, j10);
                }
            });
            return gVarE;
        }
    }

    public void v(final l3.p pVar, final int i10, final Runnable runnable) {
        this.f34534e.execute(new Runnable() { // from class: s3.h
            @Override // java.lang.Runnable
            public final void run() {
                this.f34505o.t(pVar, i10, runnable);
            }
        });
    }
}
