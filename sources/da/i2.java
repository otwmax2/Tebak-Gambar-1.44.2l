package da;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class i2 extends kotlinx.coroutines.internal.p implements s1 {
    public final String E(String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("List{");
        sb.append(str);
        sb.append("}[");
        boolean z10 = true;
        for (kotlinx.coroutines.internal.r rVarS = (kotlinx.coroutines.internal.r) r(); !t9.m.a(rVarS, this); rVarS = rVarS.s()) {
            if (rVarS instanceof d2) {
                d2 d2Var = (d2) rVarS;
                if (z10) {
                    z10 = false;
                } else {
                    sb.append(", ");
                }
                sb.append(d2Var);
            }
        }
        sb.append("]");
        String string = sb.toString();
        t9.m.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    @Override // da.s1
    public boolean c() {
        return true;
    }

    @Override // da.s1
    public i2 f() {
        return this;
    }

    @Override // kotlinx.coroutines.internal.r
    public String toString() {
        return s0.c() ? E("Active") : super.toString();
    }
}
