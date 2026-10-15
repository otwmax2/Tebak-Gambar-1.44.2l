package t9;

/* JADX INFO: compiled from: PropertyReference.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class v extends c implements z9.h {
    public v() {
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof v) {
            v vVar = (v) obj;
            return i().equals(vVar.i()) && g().equals(vVar.g()) && k().equals(vVar.k()) && m.a(f(), vVar.f());
        }
        if (obj instanceof z9.h) {
            return obj.equals(d());
        }
        return false;
    }

    public int hashCode() {
        return (((i().hashCode() * 31) + g().hashCode()) * 31) + k().hashCode();
    }

    protected z9.h l() {
        return (z9.h) super.j();
    }

    public String toString() {
        z9.a aVarD = d();
        if (aVarD != this) {
            return aVarD.toString();
        }
        return "property " + g() + " (Kotlin reflection is not available)";
    }

    public v(Object obj, Class cls, String str, String str2, int i10) {
        super(obj, cls, str, str2, (i10 & 1) == 1);
    }
}
