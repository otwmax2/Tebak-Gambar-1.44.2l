package m9;

import t9.m;
import t9.z;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class k extends d implements t9.h<Object> {

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final int f32230r;

    public k(int i10, k9.d<Object> dVar) {
        super(dVar);
        this.f32230r = i10;
    }

    @Override // t9.h
    public int getArity() {
        return this.f32230r;
    }

    @Override // m9.a
    public String toString() {
        if (f() != null) {
            return super.toString();
        }
        String strG = z.g(this);
        m.d(strG, "renderLambdaToString(this)");
        return strG;
    }
}
