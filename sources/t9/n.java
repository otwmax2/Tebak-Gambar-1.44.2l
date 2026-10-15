package t9;

import java.io.Serializable;

/* JADX INFO: compiled from: Lambda.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class n<R> implements h<R>, Serializable {
    private final int arity;

    public n(int i10) {
        this.arity = i10;
    }

    @Override // t9.h
    public int getArity() {
        return this.arity;
    }

    public String toString() {
        String strH = z.h(this);
        m.d(strH, "renderLambdaToString(this)");
        return strH;
    }
}
