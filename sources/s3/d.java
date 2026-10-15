package s3;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import java.util.Set;
import s3.g;

/* JADX INFO: compiled from: AutoValue_SchedulerConfig_ConfigValue.java */
/* JADX INFO: loaded from: classes.dex */
final class d extends g.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f34488a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f34489b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<g.c> f34490c;

    /* JADX INFO: compiled from: AutoValue_SchedulerConfig_ConfigValue.java */
    static final class b extends g.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Long f34491a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Long f34492b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private Set<g.c> f34493c;

        b() {
        }

        @Override // s3.g.b.a
        public g.b a() {
            Long l10 = this.f34491a;
            String str = BuildConfig.FLAVOR;
            if (l10 == null) {
                str = BuildConfig.FLAVOR + " delta";
            }
            if (this.f34492b == null) {
                str = str + " maxAllowedDelay";
            }
            if (this.f34493c == null) {
                str = str + " flags";
            }
            if (str.isEmpty()) {
                return new d(this.f34491a.longValue(), this.f34492b.longValue(), this.f34493c);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // s3.g.b.a
        public g.b.a b(long j10) {
            this.f34491a = Long.valueOf(j10);
            return this;
        }

        @Override // s3.g.b.a
        public g.b.a c(Set<g.c> set) {
            Objects.requireNonNull(set, "Null flags");
            this.f34493c = set;
            return this;
        }

        @Override // s3.g.b.a
        public g.b.a d(long j10) {
            this.f34492b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // s3.g.b
    long b() {
        return this.f34488a;
    }

    @Override // s3.g.b
    Set<g.c> c() {
        return this.f34490c;
    }

    @Override // s3.g.b
    long d() {
        return this.f34489b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof g.b)) {
            return false;
        }
        g.b bVar = (g.b) obj;
        return this.f34488a == bVar.b() && this.f34489b == bVar.d() && this.f34490c.equals(bVar.c());
    }

    public int hashCode() {
        long j10 = this.f34488a;
        int i10 = (((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003;
        long j11 = this.f34489b;
        return this.f34490c.hashCode() ^ ((i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003);
    }

    public String toString() {
        return "ConfigValue{delta=" + this.f34488a + ", maxAllowedDelay=" + this.f34489b + ", flags=" + this.f34490c + "}";
    }

    private d(long j10, long j11, Set<g.c> set) {
        this.f34488a = j10;
        this.f34489b = j11;
        this.f34490c = set;
    }
}
