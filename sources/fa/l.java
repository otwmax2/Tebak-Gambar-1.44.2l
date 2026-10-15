package fa;

import da.s0;
import h9.t;
import java.util.concurrent.locks.ReentrantLock;
import kotlinx.coroutines.internal.e0;
import kotlinx.coroutines.internal.m0;
import kotlinx.coroutines.internal.y;

/* JADX INFO: compiled from: ConflatedChannel.kt */
/* JADX INFO: loaded from: classes2.dex */
public class l<E> extends a<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final ReentrantLock f29639e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Object f29640f;

    public l(s9.l<? super E, t> lVar) {
        super(lVar);
        this.f29639e = new ReentrantLock();
        this.f29640f = b.f29611a;
    }

    private final m0 C(Object obj) {
        s9.l<E, t> lVar;
        Object obj2 = this.f29640f;
        m0 m0VarD = null;
        if (obj2 != b.f29611a && (lVar = this.f29618b) != null) {
            m0VarD = y.d(lVar, obj2, null, 2, null);
        }
        this.f29640f = obj;
        return m0VarD;
    }

    @Override // fa.c
    protected String f() {
        ReentrantLock reentrantLock = this.f29639e;
        reentrantLock.lock();
        try {
            return "(value=" + this.f29640f + ')';
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // fa.c
    protected Object m(E e10) {
        p<E> pVarP;
        e0 e0VarJ;
        ReentrantLock reentrantLock = this.f29639e;
        reentrantLock.lock();
        try {
            i<?> iVarG = g();
            if (iVarG != null) {
                return iVarG;
            }
            if (this.f29640f == b.f29611a) {
                do {
                    pVarP = p();
                    if (pVarP != null) {
                        if (pVarP instanceof i) {
                            return pVarP;
                        }
                        t9.m.b(pVarP);
                        e0VarJ = pVarP.j(e10, null);
                    }
                } while (e0VarJ == null);
                if (s0.a()) {
                    if (!(e0VarJ == da.o.f28842a)) {
                        throw new AssertionError();
                    }
                }
                t tVar = t.f30301a;
                reentrantLock.unlock();
                pVarP.g(e10);
                return pVarP.d();
            }
            m0 m0VarC = C(e10);
            if (m0VarC == null) {
                return b.f29612b;
            }
            throw m0VarC;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // fa.a
    protected boolean u(n<? super E> nVar) {
        ReentrantLock reentrantLock = this.f29639e;
        reentrantLock.lock();
        try {
            return super.u(nVar);
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // fa.a
    protected final boolean v() {
        return false;
    }

    @Override // fa.a
    protected final boolean w() {
        ReentrantLock reentrantLock = this.f29639e;
        reentrantLock.lock();
        try {
            return this.f29640f == b.f29611a;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // fa.a
    protected Object z() {
        ReentrantLock reentrantLock = this.f29639e;
        reentrantLock.lock();
        try {
            Object obj = this.f29640f;
            e0 e0Var = b.f29611a;
            if (obj != e0Var) {
                this.f29640f = e0Var;
                t tVar = t.f30301a;
                return obj;
            }
            Object objG = g();
            if (objG == null) {
                objG = b.f29614d;
            }
            return objG;
        } finally {
            reentrantLock.unlock();
        }
    }
}
