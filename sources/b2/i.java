package b2;

import android.util.Log;

/* JADX INFO: compiled from: EngineRunnable.java */
/* JADX INFO: loaded from: classes.dex */
class i implements Runnable, e2.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final v1.i f4626o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final a f4627p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final b2.a<?, ?, ?> f4628q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private b f4629r = b.CACHE;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private volatile boolean f4630s;

    /* JADX INFO: compiled from: EngineRunnable.java */
    interface a extends t2.g {
        void c(i iVar);
    }

    /* JADX INFO: compiled from: EngineRunnable.java */
    private enum b {
        CACHE,
        SOURCE
    }

    public i(a aVar, b2.a<?, ?, ?> aVar2, v1.i iVar) {
        this.f4627p = aVar;
        this.f4628q = aVar2;
        this.f4626o = iVar;
    }

    private l<?> c() throws Exception {
        return f() ? d() : e();
    }

    private l<?> d() throws Exception {
        l<?> lVarF;
        try {
            lVarF = this.f4628q.f();
        } catch (Exception e10) {
            if (Log.isLoggable("EngineRunnable", 3)) {
                Log.d("EngineRunnable", "Exception decoding result from cache: " + e10);
            }
            lVarF = null;
        }
        return lVarF == null ? this.f4628q.h() : lVarF;
    }

    private l<?> e() throws Exception {
        return this.f4628q.d();
    }

    private boolean f() {
        return this.f4629r == b.CACHE;
    }

    private void g(l lVar) {
        this.f4627p.d(lVar);
    }

    private void h(Exception exc) {
        if (!f()) {
            this.f4627p.a(exc);
        } else {
            this.f4629r = b.SOURCE;
            this.f4627p.c(this);
        }
    }

    @Override // e2.b
    public int a() {
        return this.f4626o.ordinal();
    }

    public void b() {
        this.f4630s = true;
        this.f4628q.c();
    }

    @Override // java.lang.Runnable
    public void run() throws Exception {
        Exception jVar;
        if (this.f4630s) {
            return;
        }
        l<?> lVarC = null;
        try {
            lVarC = c();
            jVar = null;
        } catch (Exception e10) {
            if (Log.isLoggable("EngineRunnable", 2)) {
                Log.v("EngineRunnable", "Exception decoding", e10);
            }
            jVar = e10;
        } catch (OutOfMemoryError e11) {
            if (Log.isLoggable("EngineRunnable", 2)) {
                Log.v("EngineRunnable", "Out Of Memory Error decoding", e11);
            }
            jVar = new j(e11);
        }
        if (this.f4630s) {
            if (lVarC != null) {
                lVarC.b();
            }
        } else if (lVarC == null) {
            h(jVar);
        } else {
            g(lVarC);
        }
    }
}
