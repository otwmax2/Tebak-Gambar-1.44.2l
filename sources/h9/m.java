package h9;

import java.io.Serializable;

/* JADX INFO: compiled from: Tuples.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class m<A, B> implements Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final A f30293o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final B f30294p;

    public m(A a10, B b10) {
        this.f30293o = a10;
        this.f30294p = b10;
    }

    public final A a() {
        return this.f30293o;
    }

    public final B b() {
        return this.f30294p;
    }

    public final A c() {
        return this.f30293o;
    }

    public final B d() {
        return this.f30294p;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        return t9.m.a(this.f30293o, mVar.f30293o) && t9.m.a(this.f30294p, mVar.f30294p);
    }

    public int hashCode() {
        A a10 = this.f30293o;
        int iHashCode = (a10 == null ? 0 : a10.hashCode()) * 31;
        B b10 = this.f30294p;
        return iHashCode + (b10 != null ? b10.hashCode() : 0);
    }

    public String toString() {
        return '(' + this.f30293o + ", " + this.f30294p + ')';
    }
}
