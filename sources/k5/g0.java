package k5;

import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: RestrictedComponentContainer.java */
/* JADX INFO: loaded from: classes2.dex */
final class g0 implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<f0<?>> f31541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<f0<?>> f31542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<f0<?>> f31543c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Set<f0<?>> f31544d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Set<f0<?>> f31545e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Set<Class<?>> f31546f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final e f31547g;

    /* JADX INFO: compiled from: RestrictedComponentContainer.java */
    private static class a implements h6.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Set<Class<?>> f31548a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final h6.c f31549b;

        public a(Set<Class<?>> set, h6.c cVar) {
            this.f31548a = set;
            this.f31549b = cVar;
        }
    }

    g0(c<?> cVar, e eVar) {
        HashSet hashSet = new HashSet();
        HashSet hashSet2 = new HashSet();
        HashSet hashSet3 = new HashSet();
        HashSet hashSet4 = new HashSet();
        HashSet hashSet5 = new HashSet();
        for (r rVar : cVar.g()) {
            if (rVar.e()) {
                if (rVar.g()) {
                    hashSet4.add(rVar.c());
                } else {
                    hashSet.add(rVar.c());
                }
            } else if (rVar.d()) {
                hashSet3.add(rVar.c());
            } else if (rVar.g()) {
                hashSet5.add(rVar.c());
            } else {
                hashSet2.add(rVar.c());
            }
        }
        if (!cVar.k().isEmpty()) {
            hashSet.add(f0.b(h6.c.class));
        }
        this.f31541a = Collections.unmodifiableSet(hashSet);
        this.f31542b = Collections.unmodifiableSet(hashSet2);
        this.f31543c = Collections.unmodifiableSet(hashSet3);
        this.f31544d = Collections.unmodifiableSet(hashSet4);
        this.f31545e = Collections.unmodifiableSet(hashSet5);
        this.f31546f = cVar.k();
        this.f31547g = eVar;
    }

    @Override // k5.e
    public <T> T a(Class<T> cls) {
        if (!this.f31541a.contains(f0.b(cls))) {
            throw new t(String.format("Attempting to request an undeclared dependency %s.", cls));
        }
        T t10 = (T) this.f31547g.a(cls);
        return !cls.equals(h6.c.class) ? t10 : (T) new a(this.f31546f, (h6.c) t10);
    }

    @Override // k5.e
    public <T> k6.b<T> b(f0<T> f0Var) {
        if (this.f31542b.contains(f0Var)) {
            return this.f31547g.b(f0Var);
        }
        throw new t(String.format("Attempting to request an undeclared dependency Provider<%s>.", f0Var));
    }

    @Override // k5.e
    public <T> k6.b<T> c(Class<T> cls) {
        return b(f0.b(cls));
    }

    @Override // k5.e
    public <T> Set<T> d(f0<T> f0Var) {
        if (this.f31544d.contains(f0Var)) {
            return this.f31547g.d(f0Var);
        }
        throw new t(String.format("Attempting to request an undeclared dependency Set<%s>.", f0Var));
    }

    @Override // k5.e
    public <T> T e(f0<T> f0Var) {
        if (this.f31541a.contains(f0Var)) {
            return (T) this.f31547g.e(f0Var);
        }
        throw new t(String.format("Attempting to request an undeclared dependency %s.", f0Var));
    }

    @Override // k5.e
    public <T> k6.a<T> f(f0<T> f0Var) {
        if (this.f31543c.contains(f0Var)) {
            return this.f31547g.f(f0Var);
        }
        throw new t(String.format("Attempting to request an undeclared dependency Deferred<%s>.", f0Var));
    }

    @Override // k5.e
    public /* synthetic */ Set g(Class cls) {
        return d.e(this, cls);
    }

    @Override // k5.e
    public <T> k6.b<Set<T>> h(f0<T> f0Var) {
        if (this.f31545e.contains(f0Var)) {
            return this.f31547g.h(f0Var);
        }
        throw new t(String.format("Attempting to request an undeclared dependency Provider<Set<%s>>.", f0Var));
    }

    @Override // k5.e
    public <T> k6.a<T> i(Class<T> cls) {
        return f(f0.b(cls));
    }
}
