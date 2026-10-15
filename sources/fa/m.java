package fa;

import h9.t;
import kotlinx.coroutines.internal.e0;

/* JADX INFO: compiled from: LinkedListChannel.kt */
/* JADX INFO: loaded from: classes2.dex */
public class m<E> extends a<E> {
    public m(s9.l<? super E, t> lVar) {
        super(lVar);
    }

    @Override // fa.c
    protected Object m(E e10) {
        p<?> pVarO;
        do {
            Object objM = super.m(e10);
            e0 e0Var = b.f29612b;
            if (objM == e0Var) {
                return e0Var;
            }
            if (objM != b.f29613c) {
                if (objM instanceof i) {
                    return objM;
                }
                throw new IllegalStateException(("Invalid offerInternal result " + objM).toString());
            }
            pVarO = o(e10);
            if (pVarO == null) {
                return e0Var;
            }
        } while (!(pVarO instanceof i));
        return pVarO;
    }

    @Override // fa.a
    protected final boolean v() {
        return true;
    }

    @Override // fa.a
    protected final boolean w() {
        return true;
    }
}
