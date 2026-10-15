package androidx.core.util;

/* JADX INFO: compiled from: Pair.java */
/* JADX INFO: loaded from: classes.dex */
public class d<F, S> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final F f2381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final S f2382b;

    public d(F f10, S s10) {
        this.f2381a = f10;
        this.f2382b = s10;
    }

    public static <A, B> d<A, B> a(A a10, B b10) {
        return new d<>(a10, b10);
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof d)) {
            return false;
        }
        d dVar = (d) obj;
        return c.a(dVar.f2381a, this.f2381a) && c.a(dVar.f2382b, this.f2382b);
    }

    public int hashCode() {
        F f10 = this.f2381a;
        int iHashCode = f10 == null ? 0 : f10.hashCode();
        S s10 = this.f2382b;
        return iHashCode ^ (s10 != null ? s10.hashCode() : 0);
    }

    public String toString() {
        return "Pair{" + this.f2381a + " " + this.f2382b + "}";
    }
}
