package fa;

import da.s0;
import h9.t;
import java.util.concurrent.locks.ReentrantLock;
import kotlinx.coroutines.internal.e0;

/* JADX INFO: compiled from: ArrayChannel.kt */
/* JADX INFO: loaded from: classes2.dex */
public class d<E> extends fa.a<E> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f29621e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final e f29622f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final ReentrantLock f29623g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private Object[] f29624h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f29625i;
    private volatile /* synthetic */ int size;

    /* JADX INFO: compiled from: ArrayChannel.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f29626a;

        static {
            int[] iArr = new int[e.values().length];
            iArr[e.SUSPEND.ordinal()] = 1;
            iArr[e.DROP_LATEST.ordinal()] = 2;
            iArr[e.DROP_OLDEST.ordinal()] = 3;
            f29626a = iArr;
        }
    }

    public d(int i10, e eVar, s9.l<? super E, t> lVar) {
        super(lVar);
        this.f29621e = i10;
        this.f29622f = eVar;
        if (!(i10 >= 1)) {
            throw new IllegalArgumentException(("ArrayChannel capacity must be at least 1, but " + i10 + " was specified").toString());
        }
        this.f29623g = new ReentrantLock();
        Object[] objArr = new Object[Math.min(i10, 8)];
        i9.f.e(objArr, b.f29611a, 0, 0, 6, null);
        this.f29624h = objArr;
        this.size = 0;
    }

    private final void C(int i10, E e10) {
        if (i10 < this.f29621e) {
            D(i10);
            Object[] objArr = this.f29624h;
            objArr[(this.f29625i + i10) % objArr.length] = e10;
            return;
        }
        if (s0.a()) {
            if (!(this.f29622f == e.DROP_OLDEST)) {
                throw new AssertionError();
            }
        }
        Object[] objArr2 = this.f29624h;
        int i11 = this.f29625i;
        objArr2[i11 % objArr2.length] = null;
        objArr2[(i10 + i11) % objArr2.length] = e10;
        this.f29625i = (i11 + 1) % objArr2.length;
    }

    private final void D(int i10) {
        Object[] objArr = this.f29624h;
        if (i10 >= objArr.length) {
            int iMin = Math.min(objArr.length * 2, this.f29621e);
            Object[] objArr2 = new Object[iMin];
            for (int i11 = 0; i11 < i10; i11++) {
                Object[] objArr3 = this.f29624h;
                objArr2[i11] = objArr3[(this.f29625i + i11) % objArr3.length];
            }
            i9.f.d(objArr2, b.f29611a, i10, iMin);
            this.f29624h = objArr2;
            this.f29625i = 0;
        }
    }

    private final e0 E(int i10) {
        if (i10 < this.f29621e) {
            this.size = i10 + 1;
            return null;
        }
        int i11 = a.f29626a[this.f29622f.ordinal()];
        if (i11 == 1) {
            return b.f29613c;
        }
        if (i11 == 2) {
            return b.f29612b;
        }
        if (i11 == 3) {
            return null;
        }
        throw new h9.l();
    }

    @Override // fa.c
    protected String f() {
        return "(buffer:capacity=" + this.f29621e + ",size=" + this.size + ')';
    }

    @Override // fa.c
    protected Object m(E e10) {
        p<E> pVarP;
        e0 e0VarJ;
        ReentrantLock reentrantLock = this.f29623g;
        reentrantLock.lock();
        try {
            int i10 = this.size;
            i<?> iVarG = g();
            if (iVarG != null) {
                return iVarG;
            }
            e0 e0VarE = E(i10);
            if (e0VarE != null) {
                return e0VarE;
            }
            if (i10 == 0) {
                do {
                    pVarP = p();
                    if (pVarP != null) {
                        if (pVarP instanceof i) {
                            this.size = i10;
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
                this.size = i10;
                t tVar = t.f30301a;
                reentrantLock.unlock();
                pVarP.g(e10);
                return pVarP.d();
            }
            C(i10, e10);
            return b.f29612b;
        } finally {
            reentrantLock.unlock();
        }
    }

    @Override // fa.a
    protected boolean u(n<? super E> nVar) {
        ReentrantLock reentrantLock = this.f29623g;
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
        return this.size == 0;
    }

    @Override // fa.a
    protected Object z() {
        ReentrantLock reentrantLock = this.f29623g;
        reentrantLock.lock();
        try {
            int i10 = this.size;
            if (i10 == 0) {
                Object objG = g();
                if (objG == null) {
                    objG = b.f29614d;
                }
                return objG;
            }
            Object[] objArr = this.f29624h;
            int i11 = this.f29625i;
            Object obj = objArr[i11];
            r rVar = null;
            objArr[i11] = null;
            this.size = i10 - 1;
            Object objD = b.f29614d;
            if (i10 == this.f29621e) {
                r rVar2 = null;
                while (true) {
                    r rVarQ = q();
                    if (rVarQ == null) {
                        rVar = rVar2;
                        break;
                    }
                    t9.m.b(rVarQ);
                    e0 e0VarE = rVarQ.E(null);
                    if (e0VarE != null) {
                        if (s0.a()) {
                            if (!(e0VarE == da.o.f28842a)) {
                                throw new AssertionError();
                            }
                        }
                        objD = rVarQ.D();
                        rVar = rVarQ;
                        z = true;
                    } else {
                        rVarQ.F();
                        rVar2 = rVarQ;
                    }
                }
            }
            if (objD != b.f29614d && !(objD instanceof i)) {
                this.size = i10;
                Object[] objArr2 = this.f29624h;
                objArr2[(this.f29625i + i10) % objArr2.length] = objD;
            }
            this.f29625i = (this.f29625i + 1) % this.f29624h.length;
            t tVar = t.f30301a;
            if (z) {
                t9.m.b(rVar);
                rVar.C();
            }
            return obj;
        } finally {
            reentrantLock.unlock();
        }
    }
}
