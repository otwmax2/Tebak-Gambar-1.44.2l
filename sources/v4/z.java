package v4;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class z<T> implements c0<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c0<T> f35834a;

    public static <T> void a(c0<T> c0Var, c0<T> c0Var2) {
        z zVar = (z) c0Var;
        if (zVar.f35834a != null) {
            throw new IllegalStateException();
        }
        zVar.f35834a = c0Var2;
    }

    @Override // v4.c0
    public final T zza() {
        c0<T> c0Var = this.f35834a;
        if (c0Var != null) {
            return c0Var.zza();
        }
        throw new IllegalStateException();
    }
}
