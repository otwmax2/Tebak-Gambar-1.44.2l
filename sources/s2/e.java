package s2;

import g2.l;
import java.io.File;
import java.util.Objects;

/* JADX INFO: compiled from: FixedLoadProvider.java */
/* JADX INFO: loaded from: classes.dex */
public class e<A, T, Z, R> implements f<A, T, Z, R> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final l<A, T> f34477o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final p2.c<Z, R> f34478p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final b<T, Z> f34479q;

    public e(l<A, T> lVar, p2.c<Z, R> cVar, b<T, Z> bVar) {
        Objects.requireNonNull(lVar, "ModelLoader must not be null");
        this.f34477o = lVar;
        Objects.requireNonNull(cVar, "Transcoder must not be null");
        this.f34478p = cVar;
        Objects.requireNonNull(bVar, "DataLoadProvider must not be null");
        this.f34479q = bVar;
    }

    @Override // s2.b
    public z1.b<T> a() {
        return this.f34479q.a();
    }

    @Override // s2.f
    public p2.c<Z, R> b() {
        return this.f34478p;
    }

    @Override // s2.b
    public z1.f<Z> d() {
        return this.f34479q.d();
    }

    @Override // s2.b
    public z1.e<T, Z> f() {
        return this.f34479q.f();
    }

    @Override // s2.b
    public z1.e<File, Z> g() {
        return this.f34479q.g();
    }

    @Override // s2.f
    public l<A, T> h() {
        return this.f34477o;
    }
}
