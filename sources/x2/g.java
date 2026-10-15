package x2;

/* JADX INFO: compiled from: MultiClassKey.java */
/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Class<?> f36254a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Class<?> f36255b;

    public g() {
    }

    public void a(Class<?> cls, Class<?> cls2) {
        this.f36254a = cls;
        this.f36255b = cls2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f36254a.equals(gVar.f36254a) && this.f36255b.equals(gVar.f36255b);
    }

    public int hashCode() {
        return (this.f36254a.hashCode() * 31) + this.f36255b.hashCode();
    }

    public String toString() {
        return "MultiClassKey{first=" + this.f36254a + ", second=" + this.f36255b + '}';
    }

    public g(Class<?> cls, Class<?> cls2) {
        a(cls, cls2);
    }
}
