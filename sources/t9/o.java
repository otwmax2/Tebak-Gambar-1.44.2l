package t9;

/* JADX INFO: compiled from: PackageReference.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class o implements d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f35548a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f35549b;

    public o(Class<?> cls, String str) {
        m.e(cls, "jClass");
        m.e(str, "moduleName");
        this.f35548a = cls;
        this.f35549b = str;
    }

    @Override // t9.d
    public Class<?> b() {
        return this.f35548a;
    }

    public boolean equals(Object obj) {
        return (obj instanceof o) && m.a(b(), ((o) obj).b());
    }

    public int hashCode() {
        return b().hashCode();
    }

    public String toString() {
        return b().toString() + " (Kotlin reflection is not available)";
    }
}
