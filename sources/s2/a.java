package s2;

import g2.l;
import java.io.File;

/* JADX INFO: compiled from: ChildLoadProvider.java */
/* JADX INFO: loaded from: classes.dex */
public class a<A, T, Z, R> implements f<A, T, Z, R>, Cloneable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final f<A, T, Z, R> f34468o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private z1.e<File, Z> f34469p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private z1.e<T, Z> f34470q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private z1.f<Z> f34471r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private p2.c<Z, R> f34472s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private z1.b<T> f34473t;

    public a(f<A, T, Z, R> fVar) {
        this.f34468o = fVar;
    }

    @Override // s2.b
    public z1.b<T> a() {
        z1.b<T> bVar = this.f34473t;
        return bVar != null ? bVar : this.f34468o.a();
    }

    @Override // s2.f
    public p2.c<Z, R> b() {
        p2.c<Z, R> cVar = this.f34472s;
        return cVar != null ? cVar : this.f34468o.b();
    }

    @Override // s2.b
    public z1.f<Z> d() {
        z1.f<Z> fVar = this.f34471r;
        return fVar != null ? fVar : this.f34468o.d();
    }

    @Override // s2.b
    public z1.e<T, Z> f() {
        z1.e<T, Z> eVar = this.f34470q;
        return eVar != null ? eVar : this.f34468o.f();
    }

    @Override // s2.b
    public z1.e<File, Z> g() {
        z1.e<File, Z> eVar = this.f34469p;
        return eVar != null ? eVar : this.f34468o.g();
    }

    @Override // s2.f
    public l<A, T> h() {
        return this.f34468o.h();
    }

    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public a<A, T, Z, R> clone() {
        try {
            return (a) super.clone();
        } catch (CloneNotSupportedException e10) {
            throw new RuntimeException(e10);
        }
    }

    public void j(z1.e<T, Z> eVar) {
        this.f34470q = eVar;
    }

    public void k(z1.b<T> bVar) {
        this.f34473t = bVar;
    }
}
