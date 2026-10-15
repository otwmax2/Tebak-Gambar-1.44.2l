package k3;

import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: AutoValue_BatchedLogRequest.java */
/* JADX INFO: loaded from: classes.dex */
final class d extends j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<m> f31432a;

    d(List<m> list) {
        Objects.requireNonNull(list, "Null logRequests");
        this.f31432a = list;
    }

    @Override // k3.j
    public List<m> c() {
        return this.f31432a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof j) {
            return this.f31432a.equals(((j) obj).c());
        }
        return false;
    }

    public int hashCode() {
        return this.f31432a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "BatchedLogRequest{logRequests=" + this.f31432a + "}";
    }
}
