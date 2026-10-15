package x0;

import androidx.room.h0;
import java.util.Iterator;

/* JADX INFO: compiled from: EntityInsertionAdapter.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class g<T> extends l {
    public g(h0 h0Var) {
        super(h0Var);
    }

    protected abstract void g(b1.k kVar, T t10);

    public final void h(Iterable<? extends T> iterable) {
        b1.k kVarA = a();
        try {
            Iterator<? extends T> it = iterable.iterator();
            while (it.hasNext()) {
                g(kVarA, it.next());
                kVarA.I3();
            }
        } finally {
            f(kVarA);
        }
    }

    public final void i(T t10) {
        b1.k kVarA = a();
        try {
            g(kVarA, t10);
            kVarA.I3();
        } finally {
            f(kVarA);
        }
    }
}
