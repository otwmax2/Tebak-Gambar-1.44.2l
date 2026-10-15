package s3;

import java.util.Map;
import java.util.Objects;
import s3.g;

/* JADX INFO: compiled from: AutoValue_SchedulerConfig.java */
/* JADX INFO: loaded from: classes.dex */
final class c extends g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final v3.a f34486a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<j3.d, g.b> f34487b;

    c(v3.a aVar, Map<j3.d, g.b> map) {
        Objects.requireNonNull(aVar, "Null clock");
        this.f34486a = aVar;
        Objects.requireNonNull(map, "Null values");
        this.f34487b = map;
    }

    @Override // s3.g
    v3.a e() {
        return this.f34486a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f34486a.equals(gVar.e()) && this.f34487b.equals(gVar.h());
    }

    @Override // s3.g
    Map<j3.d, g.b> h() {
        return this.f34487b;
    }

    public int hashCode() {
        return ((this.f34486a.hashCode() ^ 1000003) * 1000003) ^ this.f34487b.hashCode();
    }

    public String toString() {
        return "SchedulerConfig{clock=" + this.f34486a + ", values=" + this.f34487b + "}";
    }
}
