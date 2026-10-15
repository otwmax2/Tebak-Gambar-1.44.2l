package k5;

import k6.a;

/* JADX INFO: compiled from: OptionalProvider.java */
/* JADX INFO: loaded from: classes2.dex */
class d0<T> implements k6.b<T>, k6.a<T> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final a.InterfaceC0188a<Object> f31531c = new a.InterfaceC0188a() { // from class: k5.b0
        @Override // k6.a.InterfaceC0188a
        public final void a(k6.b bVar) {
            d0.f(bVar);
        }
    };

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final k6.b<Object> f31532d = new k6.b() { // from class: k5.c0
        @Override // k6.b
        public final Object get() {
            return d0.g();
        }
    };

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private a.InterfaceC0188a<T> f31533a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile k6.b<T> f31534b;

    private d0(a.InterfaceC0188a<T> interfaceC0188a, k6.b<T> bVar) {
        this.f31533a = interfaceC0188a;
        this.f31534b = bVar;
    }

    static <T> d0<T> e() {
        return new d0<>(f31531c, f31532d);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void f(k6.b bVar) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object g() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void h(a.InterfaceC0188a interfaceC0188a, a.InterfaceC0188a interfaceC0188a2, k6.b bVar) {
        interfaceC0188a.a(bVar);
        interfaceC0188a2.a(bVar);
    }

    static <T> d0<T> i(k6.b<T> bVar) {
        return new d0<>(null, bVar);
    }

    @Override // k6.a
    public void a(final a.InterfaceC0188a<T> interfaceC0188a) {
        k6.b<T> bVar;
        k6.b<T> bVar2 = this.f31534b;
        k6.b<Object> bVar3 = f31532d;
        if (bVar2 != bVar3) {
            interfaceC0188a.a(bVar2);
            return;
        }
        k6.b<T> bVar4 = null;
        synchronized (this) {
            bVar = this.f31534b;
            if (bVar != bVar3) {
                bVar4 = bVar;
            } else {
                final a.InterfaceC0188a<T> interfaceC0188a2 = this.f31533a;
                this.f31533a = new a.InterfaceC0188a() { // from class: k5.a0
                    @Override // k6.a.InterfaceC0188a
                    public final void a(k6.b bVar5) {
                        d0.h(interfaceC0188a2, interfaceC0188a, bVar5);
                    }
                };
            }
        }
        if (bVar4 != null) {
            interfaceC0188a.a(bVar);
        }
    }

    @Override // k6.b
    public T get() {
        return this.f31534b.get();
    }

    void j(k6.b<T> bVar) {
        a.InterfaceC0188a<T> interfaceC0188a;
        if (this.f31534b != f31532d) {
            throw new IllegalStateException("provide() can be called only once.");
        }
        synchronized (this) {
            interfaceC0188a = this.f31533a;
            this.f31533a = null;
            this.f31534b = bVar;
        }
        interfaceC0188a.a(bVar);
    }
}
