package kotlinx.coroutines.sync;

import da.e1;
import da.m;
import da.o;
import h9.t;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.internal.p;
import kotlinx.coroutines.internal.r;
import kotlinx.coroutines.internal.z;
import s9.l;
import t9.n;

/* JADX INFO: compiled from: Mutex.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class c implements kotlinx.coroutines.sync.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ AtomicReferenceFieldUpdater f31847a = AtomicReferenceFieldUpdater.newUpdater(c.class, Object.class, "_state");
    volatile /* synthetic */ Object _state;

    /* JADX INFO: compiled from: Mutex.kt */
    private final class a extends b {

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        private final m<t> f31848u;

        /* JADX INFO: renamed from: kotlinx.coroutines.sync.c$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Mutex.kt */
        static final class C0195a extends n implements l<Throwable, t> {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            final /* synthetic */ c f31850o;

            /* JADX INFO: renamed from: p, reason: collision with root package name */
            final /* synthetic */ a f31851p;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0195a(c cVar, a aVar) {
                super(1);
                this.f31850o = cVar;
                this.f31851p = aVar;
            }

            public final void c(Throwable th) {
                this.f31850o.b(this.f31851p.f31853r);
            }

            @Override // s9.l
            public /* bridge */ /* synthetic */ t invoke(Throwable th) {
                c(th);
                return t.f30301a;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        public a(Object obj, m<? super t> mVar) {
            super(obj);
            this.f31848u = mVar;
        }

        @Override // kotlinx.coroutines.sync.c.b
        public void C() {
            this.f31848u.B(o.f28842a);
        }

        @Override // kotlinx.coroutines.sync.c.b
        public boolean E() {
            return D() && this.f31848u.m(t.f30301a, null, new C0195a(c.this, this)) != null;
        }

        @Override // kotlinx.coroutines.internal.r
        public String toString() {
            return "LockCont[" + this.f31853r + ", " + this.f31848u + "] for " + c.this;
        }
    }

    /* JADX INFO: compiled from: Mutex.kt */
    private abstract class b extends r implements e1 {

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private static final /* synthetic */ AtomicIntegerFieldUpdater f31852t = AtomicIntegerFieldUpdater.newUpdater(b.class, "isTaken");
        private volatile /* synthetic */ int isTaken = 0;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public final Object f31853r;

        public b(Object obj) {
            this.f31853r = obj;
        }

        public abstract void C();

        public final boolean D() {
            return f31852t.compareAndSet(this, 0, 1);
        }

        public abstract boolean E();

        @Override // da.e1
        public final void i() {
            x();
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.sync.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Mutex.kt */
    private static final class C0196c extends p {
        public volatile Object owner;

        public C0196c(Object obj) {
            this.owner = obj;
        }

        @Override // kotlinx.coroutines.internal.r
        public String toString() {
            return "LockedQueue[" + this.owner + ']';
        }
    }

    /* JADX INFO: compiled from: Mutex.kt */
    private static final class d extends kotlinx.coroutines.internal.c<c> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final C0196c f31855b;

        public d(C0196c c0196c) {
            this.f31855b = c0196c;
        }

        @Override // kotlinx.coroutines.internal.c
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public void d(c cVar, Object obj) {
            androidx.concurrent.futures.b.a(c.f31847a, cVar, this, obj == null ? kotlinx.coroutines.sync.d.f31863f : this.f31855b);
        }

        @Override // kotlinx.coroutines.internal.c
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Object g(c cVar) {
            if (this.f31855b.C()) {
                return null;
            }
            return kotlinx.coroutines.sync.d.f31859b;
        }
    }

    /* JADX INFO: compiled from: Mutex.kt */
    static final class e extends n implements l<Throwable, t> {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Object f31857p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        e(Object obj) {
            super(1);
            this.f31857p = obj;
        }

        public final void c(Throwable th) {
            c.this.b(this.f31857p);
        }

        @Override // s9.l
        public /* bridge */ /* synthetic */ t invoke(Throwable th) {
            c(th);
            return t.f30301a;
        }
    }

    public c(boolean z10) {
        this._state = z10 ? kotlinx.coroutines.sync.d.f31862e : kotlinx.coroutines.sync.d.f31863f;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x006e, code lost:
    
        da.p.c(r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0071, code lost:
    
        r7 = r0.t();
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0079, code lost:
    
        if (r7 != l9.d.c()) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007b, code lost:
    
        m9.h.c(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0082, code lost:
    
        if (r7 != l9.d.c()) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0084, code lost:
    
        return r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0087, code lost:
    
        return h9.t.f30301a;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.Object d(java.lang.Object r7, k9.d<? super h9.t> r8) {
        /*
            Method dump skipped, instruction units count: 203
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.sync.c.d(java.lang.Object, k9.d):java.lang.Object");
    }

    @Override // kotlinx.coroutines.sync.b
    public boolean a() {
        while (true) {
            Object obj = this._state;
            if (obj instanceof kotlinx.coroutines.sync.a) {
                return ((kotlinx.coroutines.sync.a) obj).f31846a != kotlinx.coroutines.sync.d.f31861d;
            }
            if (obj instanceof C0196c) {
                return true;
            }
            if (!(obj instanceof z)) {
                throw new IllegalStateException(("Illegal state " + obj).toString());
            }
            ((z) obj).c(this);
        }
    }

    @Override // kotlinx.coroutines.sync.b
    public void b(Object obj) {
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof kotlinx.coroutines.sync.a) {
                if (obj == null) {
                    if (!(((kotlinx.coroutines.sync.a) obj2).f31846a != kotlinx.coroutines.sync.d.f31861d)) {
                        throw new IllegalStateException("Mutex is not locked".toString());
                    }
                } else {
                    kotlinx.coroutines.sync.a aVar = (kotlinx.coroutines.sync.a) obj2;
                    if (!(aVar.f31846a == obj)) {
                        throw new IllegalStateException(("Mutex is locked by " + aVar.f31846a + " but expected " + obj).toString());
                    }
                }
                if (androidx.concurrent.futures.b.a(f31847a, this, obj2, kotlinx.coroutines.sync.d.f31863f)) {
                    return;
                }
            } else if (obj2 instanceof z) {
                ((z) obj2).c(this);
            } else {
                if (!(obj2 instanceof C0196c)) {
                    throw new IllegalStateException(("Illegal state " + obj2).toString());
                }
                if (obj != null) {
                    C0196c c0196c = (C0196c) obj2;
                    if (!(c0196c.owner == obj)) {
                        throw new IllegalStateException(("Mutex is locked by " + c0196c.owner + " but expected " + obj).toString());
                    }
                }
                C0196c c0196c2 = (C0196c) obj2;
                r rVarY = c0196c2.y();
                if (rVarY == null) {
                    d dVar = new d(c0196c2);
                    if (androidx.concurrent.futures.b.a(f31847a, this, obj2, dVar) && dVar.c(this) == null) {
                        return;
                    }
                } else {
                    b bVar = (b) rVarY;
                    if (bVar.E()) {
                        Object obj3 = bVar.f31853r;
                        if (obj3 == null) {
                            obj3 = kotlinx.coroutines.sync.d.f31860c;
                        }
                        c0196c2.owner = obj3;
                        bVar.C();
                        return;
                    }
                }
            }
        }
    }

    @Override // kotlinx.coroutines.sync.b
    public Object c(Object obj, k9.d<? super t> dVar) {
        Object objD;
        return (!e(obj) && (objD = d(obj, dVar)) == l9.d.c()) ? objD : t.f30301a;
    }

    public boolean e(Object obj) {
        while (true) {
            Object obj2 = this._state;
            if (obj2 instanceof kotlinx.coroutines.sync.a) {
                if (((kotlinx.coroutines.sync.a) obj2).f31846a != kotlinx.coroutines.sync.d.f31861d) {
                    return false;
                }
                if (androidx.concurrent.futures.b.a(f31847a, this, obj2, obj == null ? kotlinx.coroutines.sync.d.f31862e : new kotlinx.coroutines.sync.a(obj))) {
                    return true;
                }
            } else {
                if (obj2 instanceof C0196c) {
                    if (((C0196c) obj2).owner != obj) {
                        return false;
                    }
                    throw new IllegalStateException(("Already locked by " + obj).toString());
                }
                if (!(obj2 instanceof z)) {
                    throw new IllegalStateException(("Illegal state " + obj2).toString());
                }
                ((z) obj2).c(this);
            }
        }
    }

    public String toString() {
        while (true) {
            Object obj = this._state;
            if (obj instanceof kotlinx.coroutines.sync.a) {
                return "Mutex[" + ((kotlinx.coroutines.sync.a) obj).f31846a + ']';
            }
            if (!(obj instanceof z)) {
                if (!(obj instanceof C0196c)) {
                    throw new IllegalStateException(("Illegal state " + obj).toString());
                }
                return "Mutex[" + ((C0196c) obj).owner + ']';
            }
            ((z) obj).c(this);
        }
    }
}
