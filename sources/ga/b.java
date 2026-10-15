package ga;

import ga.d;
import h9.n;
import h9.t;
import java.util.Arrays;
import t9.m;

/* JADX INFO: compiled from: AbstractSharedFlow.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class b<S extends d<?>> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private S[] f30038o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f30039p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f30040q;

    protected final S b() {
        S s10;
        synchronized (this) {
            S[] sArr = this.f30038o;
            if (sArr == null) {
                sArr = (S[]) e(2);
                this.f30038o = sArr;
            } else if (this.f30039p >= sArr.length) {
                Object[] objArrCopyOf = Arrays.copyOf(sArr, sArr.length * 2);
                m.d(objArrCopyOf, "copyOf(this, newSize)");
                this.f30038o = (S[]) ((d[]) objArrCopyOf);
                sArr = (S[]) ((d[]) objArrCopyOf);
            }
            int i10 = this.f30040q;
            do {
                s10 = sArr[i10];
                if (s10 == null) {
                    s10 = (S) d();
                    sArr[i10] = s10;
                }
                i10++;
                if (i10 >= sArr.length) {
                    i10 = 0;
                }
            } while (!s10.a(this));
            this.f30040q = i10;
            this.f30039p++;
        }
        return s10;
    }

    protected abstract S d();

    protected abstract S[] e(int i10);

    protected final void f(S s10) {
        int i10;
        k9.d<t>[] dVarArrB;
        synchronized (this) {
            int i11 = this.f30039p - 1;
            this.f30039p = i11;
            if (i11 == 0) {
                this.f30040q = 0;
            }
            dVarArrB = s10.b(this);
        }
        for (k9.d<t> dVar : dVarArrB) {
            if (dVar != null) {
                n.a aVar = n.f30295o;
                dVar.g(n.a(t.f30301a));
            }
        }
    }

    protected final S[] g() {
        return this.f30038o;
    }
}
