package x0;

import androidx.room.h0;

/* JADX INFO: compiled from: EntityDeletionOrUpdateAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class f<T> extends l {
    public f(h0 h0Var) {
        super(h0Var);
    }

    protected abstract void g(b1.k kVar, T t10);

    public final int h(T t10) {
        b1.k kVarA = a();
        try {
            g(kVarA, t10);
            return kVarA.u0();
        } finally {
            f(kVarA);
        }
    }
}
