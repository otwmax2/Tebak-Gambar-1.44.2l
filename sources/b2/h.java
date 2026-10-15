package b2;

import android.os.Looper;
import java.util.Objects;

/* JADX INFO: compiled from: EngineResource.java */
/* JADX INFO: loaded from: classes.dex */
class h<Z> implements l<Z> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l<Z> f4620a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f4621b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private a f4622c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private z1.c f4623d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f4624e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f4625f;

    /* JADX INFO: compiled from: EngineResource.java */
    interface a {
        void a(z1.c cVar, h<?> hVar);
    }

    h(l<Z> lVar, boolean z10) {
        Objects.requireNonNull(lVar, "Wrapped resource must not be null");
        this.f4620a = lVar;
        this.f4621b = z10;
    }

    void a() {
        if (this.f4625f) {
            throw new IllegalStateException("Cannot acquire a recycled resource");
        }
        if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call acquire on the main thread");
        }
        this.f4624e++;
    }

    @Override // b2.l
    public void b() {
        if (this.f4624e > 0) {
            throw new IllegalStateException("Cannot recycle a resource while it is still acquired");
        }
        if (this.f4625f) {
            throw new IllegalStateException("Cannot recycle a resource that has already been recycled");
        }
        this.f4625f = true;
        this.f4620a.b();
    }

    @Override // b2.l
    public int c() {
        return this.f4620a.c();
    }

    boolean d() {
        return this.f4621b;
    }

    void e() {
        if (this.f4624e <= 0) {
            throw new IllegalStateException("Cannot release a recycled or not yet acquired resource");
        }
        if (!Looper.getMainLooper().equals(Looper.myLooper())) {
            throw new IllegalThreadStateException("Must call release on the main thread");
        }
        int i10 = this.f4624e - 1;
        this.f4624e = i10;
        if (i10 == 0) {
            this.f4622c.a(this.f4623d, this);
        }
    }

    void f(z1.c cVar, a aVar) {
        this.f4623d = cVar;
        this.f4622c = aVar;
    }

    @Override // b2.l
    public Z get() {
        return this.f4620a.get();
    }
}
