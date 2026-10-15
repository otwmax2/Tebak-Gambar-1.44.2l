package j3;

import java.util.Objects;

/* JADX INFO: compiled from: Encoding.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f30664a;

    private b(String str) {
        Objects.requireNonNull(str, "name is null");
        this.f30664a = str;
    }

    public static b b(String str) {
        return new b(str);
    }

    public String a() {
        return this.f30664a;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof b) {
            return this.f30664a.equals(((b) obj).f30664a);
        }
        return false;
    }

    public int hashCode() {
        return this.f30664a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Encoding{name=\"" + this.f30664a + "\"}";
    }
}
