package l3;

import com.vungle.mediation.BuildConfig;
import java.util.Map;
import java.util.Objects;
import l3.i;

/* JADX INFO: compiled from: AutoValue_EventInternal.java */
/* JADX INFO: loaded from: classes.dex */
final class b extends i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31901a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Integer f31902b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final h f31903c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final long f31904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final long f31905e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Map<String, String> f31906f;

    /* JADX INFO: renamed from: l3.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AutoValue_EventInternal.java */
    static final class C0199b extends i.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31907a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Integer f31908b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private h f31909c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Long f31910d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Long f31911e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Map<String, String> f31912f;

        C0199b() {
        }

        @Override // l3.i.a
        public i d() {
            String str = this.f31907a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " transportName";
            }
            if (this.f31909c == null) {
                str2 = str2 + " encodedPayload";
            }
            if (this.f31910d == null) {
                str2 = str2 + " eventMillis";
            }
            if (this.f31911e == null) {
                str2 = str2 + " uptimeMillis";
            }
            if (this.f31912f == null) {
                str2 = str2 + " autoMetadata";
            }
            if (str2.isEmpty()) {
                return new b(this.f31907a, this.f31908b, this.f31909c, this.f31910d.longValue(), this.f31911e.longValue(), this.f31912f);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // l3.i.a
        protected Map<String, String> e() {
            Map<String, String> map = this.f31912f;
            if (map != null) {
                return map;
            }
            throw new IllegalStateException("Property \"autoMetadata\" has not been set");
        }

        @Override // l3.i.a
        protected i.a f(Map<String, String> map) {
            Objects.requireNonNull(map, "Null autoMetadata");
            this.f31912f = map;
            return this;
        }

        @Override // l3.i.a
        public i.a g(Integer num) {
            this.f31908b = num;
            return this;
        }

        @Override // l3.i.a
        public i.a h(h hVar) {
            Objects.requireNonNull(hVar, "Null encodedPayload");
            this.f31909c = hVar;
            return this;
        }

        @Override // l3.i.a
        public i.a i(long j10) {
            this.f31910d = Long.valueOf(j10);
            return this;
        }

        @Override // l3.i.a
        public i.a j(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.f31907a = str;
            return this;
        }

        @Override // l3.i.a
        public i.a k(long j10) {
            this.f31911e = Long.valueOf(j10);
            return this;
        }
    }

    @Override // l3.i
    protected Map<String, String> c() {
        return this.f31906f;
    }

    @Override // l3.i
    public Integer d() {
        return this.f31902b;
    }

    @Override // l3.i
    public h e() {
        return this.f31903c;
    }

    public boolean equals(Object obj) {
        Integer num;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof i)) {
            return false;
        }
        i iVar = (i) obj;
        return this.f31901a.equals(iVar.j()) && ((num = this.f31902b) != null ? num.equals(iVar.d()) : iVar.d() == null) && this.f31903c.equals(iVar.e()) && this.f31904d == iVar.f() && this.f31905e == iVar.k() && this.f31906f.equals(iVar.c());
    }

    @Override // l3.i
    public long f() {
        return this.f31904d;
    }

    public int hashCode() {
        int iHashCode = (this.f31901a.hashCode() ^ 1000003) * 1000003;
        Integer num = this.f31902b;
        int iHashCode2 = (((iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003) ^ this.f31903c.hashCode()) * 1000003;
        long j10 = this.f31904d;
        int i10 = (iHashCode2 ^ ((int) (j10 ^ (j10 >>> 32)))) * 1000003;
        long j11 = this.f31905e;
        return ((i10 ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003) ^ this.f31906f.hashCode();
    }

    @Override // l3.i
    public String j() {
        return this.f31901a;
    }

    @Override // l3.i
    public long k() {
        return this.f31905e;
    }

    public String toString() {
        return "EventInternal{transportName=" + this.f31901a + ", code=" + this.f31902b + ", encodedPayload=" + this.f31903c + ", eventMillis=" + this.f31904d + ", uptimeMillis=" + this.f31905e + ", autoMetadata=" + this.f31906f + "}";
    }

    private b(String str, Integer num, h hVar, long j10, long j11, Map<String, String> map) {
        this.f31901a = str;
        this.f31902b = num;
        this.f31903c = hVar;
        this.f31904d = j10;
        this.f31905e = j11;
        this.f31906f = map;
    }
}
