package t9;

/* JADX INFO: compiled from: FunctionReference.java */
/* JADX INFO: loaded from: classes2.dex */
public class i extends c implements h, z9.d {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final int f35545v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final int f35546w;

    public i(int i10, Object obj, Class cls, String str, String str2, int i11) {
        super(obj, cls, str, str2, (i11 & 1) == 1);
        this.f35545v = i10;
        this.f35546w = i11 >> 1;
    }

    @Override // t9.c
    protected z9.a e() {
        return z.a(this);
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            return g().equals(iVar.g()) && k().equals(iVar.k()) && this.f35546w == iVar.f35546w && this.f35545v == iVar.f35545v && m.a(f(), iVar.f()) && m.a(i(), iVar.i());
        }
        if (obj instanceof z9.d) {
            return obj.equals(d());
        }
        return false;
    }

    @Override // t9.h
    public int getArity() {
        return this.f35545v;
    }

    public int hashCode() {
        return (((i() == null ? 0 : i().hashCode() * 31) + g().hashCode()) * 31) + k().hashCode();
    }

    public String toString() {
        z9.a aVarD = d();
        if (aVarD != this) {
            return aVarD.toString();
        }
        if ("<init>".equals(g())) {
            return "constructor (Kotlin reflection is not available)";
        }
        return "function " + g() + " (Kotlin reflection is not available)";
    }
}
