package t2;

/* JADX INFO: compiled from: ThumbnailRequestCoordinator.java */
/* JADX INFO: loaded from: classes.dex */
public class h implements d, c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f35291a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private c f35292b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private d f35293c;

    public h(d dVar) {
        this.f35293c = dVar;
    }

    private boolean j() {
        d dVar = this.f35293c;
        return dVar == null || dVar.a(this);
    }

    private boolean k() {
        d dVar = this.f35293c;
        return dVar == null || dVar.c(this);
    }

    private boolean l() {
        d dVar = this.f35293c;
        return dVar != null && dVar.d();
    }

    @Override // t2.d
    public boolean a(c cVar) {
        return j() && cVar.equals(this.f35291a) && !d();
    }

    @Override // t2.c
    public void b() {
        this.f35291a.b();
        this.f35292b.b();
    }

    @Override // t2.d
    public boolean c(c cVar) {
        return k() && (cVar.equals(this.f35291a) || !this.f35291a.f());
    }

    @Override // t2.c
    public void clear() {
        this.f35292b.clear();
        this.f35291a.clear();
    }

    @Override // t2.d
    public boolean d() {
        return l() || f();
    }

    @Override // t2.c
    public void e() {
        this.f35291a.e();
        this.f35292b.e();
    }

    @Override // t2.c
    public boolean f() {
        return this.f35291a.f() || this.f35292b.f();
    }

    @Override // t2.d
    public void g(c cVar) {
        if (cVar.equals(this.f35292b)) {
            return;
        }
        d dVar = this.f35293c;
        if (dVar != null) {
            dVar.g(this);
        }
        if (this.f35292b.i()) {
            return;
        }
        this.f35292b.clear();
    }

    @Override // t2.c
    public void h() {
        if (!this.f35292b.isRunning()) {
            this.f35292b.h();
        }
        if (this.f35291a.isRunning()) {
            return;
        }
        this.f35291a.h();
    }

    @Override // t2.c
    public boolean i() {
        return this.f35291a.i() || this.f35292b.i();
    }

    @Override // t2.c
    public boolean isCancelled() {
        return this.f35291a.isCancelled();
    }

    @Override // t2.c
    public boolean isRunning() {
        return this.f35291a.isRunning();
    }

    public void m(c cVar, c cVar2) {
        this.f35291a = cVar;
        this.f35292b = cVar2;
    }
}
