package androidx.lifecycle;

import androidx.lifecycle.j;

/* JADX INFO: loaded from: classes.dex */
public abstract class LiveData<T> {

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    static final Object f3464k = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Object f3465a = new Object();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private k.b<u<? super T>, LiveData<T>.c> f3466b = new k.b<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    int f3467c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3468d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile Object f3469e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    volatile Object f3470f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f3471g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f3472h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f3473i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final Runnable f3474j;

    class LifecycleBoundObserver extends LiveData<T>.c implements l {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final n f3475e;

        LifecycleBoundObserver(n nVar, u<? super T> uVar) {
            super(uVar);
            this.f3475e = nVar;
        }

        @Override // androidx.lifecycle.l
        public void c(n nVar, j.b bVar) {
            j.c cVarB = this.f3475e.getLifecycle().b();
            if (cVarB == j.c.DESTROYED) {
                LiveData.this.m(this.f3479a);
                return;
            }
            j.c cVar = null;
            while (cVar != cVarB) {
                h(k());
                cVar = cVarB;
                cVarB = this.f3475e.getLifecycle().b();
            }
        }

        @Override // androidx.lifecycle.LiveData.c
        void i() {
            this.f3475e.getLifecycle().c(this);
        }

        @Override // androidx.lifecycle.LiveData.c
        boolean j(n nVar) {
            return this.f3475e == nVar;
        }

        @Override // androidx.lifecycle.LiveData.c
        boolean k() {
            return this.f3475e.getLifecycle().b().c(j.c.STARTED);
        }
    }

    class a implements Runnable {
        a() {
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.lang.Runnable
        public void run() {
            Object obj;
            synchronized (LiveData.this.f3465a) {
                obj = LiveData.this.f3470f;
                LiveData.this.f3470f = LiveData.f3464k;
            }
            LiveData.this.n(obj);
        }
    }

    private class b extends LiveData<T>.c {
        b(u<? super T> uVar) {
            super(uVar);
        }

        @Override // androidx.lifecycle.LiveData.c
        boolean k() {
            return true;
        }
    }

    private abstract class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final u<? super T> f3479a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f3480b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f3481c = -1;

        c(u<? super T> uVar) {
            this.f3479a = uVar;
        }

        void h(boolean z10) {
            if (z10 == this.f3480b) {
                return;
            }
            this.f3480b = z10;
            LiveData.this.c(z10 ? 1 : -1);
            if (this.f3480b) {
                LiveData.this.e(this);
            }
        }

        void i() {
        }

        boolean j(n nVar) {
            return false;
        }

        abstract boolean k();
    }

    public LiveData() {
        Object obj = f3464k;
        this.f3470f = obj;
        this.f3474j = new a();
        this.f3469e = obj;
        this.f3471g = -1;
    }

    static void b(String str) {
        if (j.a.e().b()) {
            return;
        }
        throw new IllegalStateException("Cannot invoke " + str + " on a background thread");
    }

    private void d(LiveData<T>.c cVar) {
        if (cVar.f3480b) {
            if (!cVar.k()) {
                cVar.h(false);
                return;
            }
            int i10 = cVar.f3481c;
            int i11 = this.f3471g;
            if (i10 >= i11) {
                return;
            }
            cVar.f3481c = i11;
            cVar.f3479a.d((Object) this.f3469e);
        }
    }

    void c(int i10) {
        int i11 = this.f3467c;
        this.f3467c = i10 + i11;
        if (this.f3468d) {
            return;
        }
        this.f3468d = true;
        while (true) {
            try {
                int i12 = this.f3467c;
                if (i11 == i12) {
                    return;
                }
                boolean z10 = i11 == 0 && i12 > 0;
                boolean z11 = i11 > 0 && i12 == 0;
                if (z10) {
                    j();
                } else if (z11) {
                    k();
                }
                i11 = i12;
            } finally {
                this.f3468d = false;
            }
        }
    }

    void e(LiveData<T>.c cVar) {
        if (this.f3472h) {
            this.f3473i = true;
            return;
        }
        this.f3472h = true;
        do {
            this.f3473i = false;
            if (cVar != null) {
                d(cVar);
                cVar = null;
            } else {
                k.b<u<? super T>, LiveData<T>.c>.d dVarI = this.f3466b.i();
                while (dVarI.hasNext()) {
                    d((c) dVarI.next().getValue());
                    if (this.f3473i) {
                        break;
                    }
                }
            }
        } while (this.f3473i);
        this.f3472h = false;
    }

    public T f() {
        T t10 = (T) this.f3469e;
        if (t10 != f3464k) {
            return t10;
        }
        return null;
    }

    public boolean g() {
        return this.f3467c > 0;
    }

    public void h(n nVar, u<? super T> uVar) {
        b("observe");
        if (nVar.getLifecycle().b() == j.c.DESTROYED) {
            return;
        }
        LifecycleBoundObserver lifecycleBoundObserver = new LifecycleBoundObserver(nVar, uVar);
        LiveData<T>.c cVarL = this.f3466b.l(uVar, lifecycleBoundObserver);
        if (cVarL != null && !cVarL.j(nVar)) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (cVarL != null) {
            return;
        }
        nVar.getLifecycle().a(lifecycleBoundObserver);
    }

    public void i(u<? super T> uVar) {
        b("observeForever");
        b bVar = new b(uVar);
        LiveData<T>.c cVarL = this.f3466b.l(uVar, bVar);
        if (cVarL instanceof LifecycleBoundObserver) {
            throw new IllegalArgumentException("Cannot add the same observer with different lifecycles");
        }
        if (cVarL != null) {
            return;
        }
        bVar.h(true);
    }

    protected void j() {
    }

    protected void k() {
    }

    protected void l(T t10) {
        boolean z10;
        synchronized (this.f3465a) {
            z10 = this.f3470f == f3464k;
            this.f3470f = t10;
        }
        if (z10) {
            j.a.e().c(this.f3474j);
        }
    }

    public void m(u<? super T> uVar) {
        b("removeObserver");
        LiveData<T>.c cVarM = this.f3466b.m(uVar);
        if (cVarM == null) {
            return;
        }
        cVarM.i();
        cVarM.h(false);
    }

    protected void n(T t10) {
        b("setValue");
        this.f3471g++;
        this.f3469e = t10;
        e(null);
    }
}
