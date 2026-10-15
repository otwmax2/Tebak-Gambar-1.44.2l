package da;

/* JADX INFO: compiled from: MainCoroutineDispatcher.kt */
/* JADX INFO: loaded from: classes2.dex */
public abstract class h2 extends i0 {
    @Override // da.i0
    public String toString() {
        String strZ = z();
        if (strZ != null) {
            return strZ;
        }
        return t0.a(this) + '@' + t0.b(this);
    }

    public abstract h2 x();

    protected final String z() {
        h2 h2VarX;
        h2 h2VarC = d1.c();
        if (this == h2VarC) {
            return "Dispatchers.Main";
        }
        try {
            h2VarX = h2VarC.x();
        } catch (UnsupportedOperationException unused) {
            h2VarX = null;
        }
        if (this == h2VarX) {
            return "Dispatchers.Main.immediate";
        }
        return null;
    }
}
