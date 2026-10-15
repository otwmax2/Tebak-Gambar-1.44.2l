package k3;

import com.vungle.mediation.BuildConfig;
import java.util.List;
import k3.m;

/* JADX INFO: compiled from: AutoValue_LogRequest.java */
/* JADX INFO: loaded from: classes.dex */
final class g extends m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final long f31451a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final long f31452b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final k f31453c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Integer f31454d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f31455e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<l> f31456f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final p f31457g;

    /* JADX INFO: compiled from: AutoValue_LogRequest.java */
    static final class b extends m.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Long f31458a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Long f31459b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private k f31460c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Integer f31461d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f31462e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List<l> f31463f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private p f31464g;

        b() {
        }

        @Override // k3.m.a
        public m a() {
            Long l10 = this.f31458a;
            String str = BuildConfig.FLAVOR;
            if (l10 == null) {
                str = BuildConfig.FLAVOR + " requestTimeMs";
            }
            if (this.f31459b == null) {
                str = str + " requestUptimeMs";
            }
            if (str.isEmpty()) {
                return new g(this.f31458a.longValue(), this.f31459b.longValue(), this.f31460c, this.f31461d, this.f31462e, this.f31463f, this.f31464g);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // k3.m.a
        public m.a b(k kVar) {
            this.f31460c = kVar;
            return this;
        }

        @Override // k3.m.a
        public m.a c(List<l> list) {
            this.f31463f = list;
            return this;
        }

        @Override // k3.m.a
        m.a d(Integer num) {
            this.f31461d = num;
            return this;
        }

        @Override // k3.m.a
        m.a e(String str) {
            this.f31462e = str;
            return this;
        }

        @Override // k3.m.a
        public m.a f(p pVar) {
            this.f31464g = pVar;
            return this;
        }

        @Override // k3.m.a
        public m.a g(long j10) {
            this.f31458a = Long.valueOf(j10);
            return this;
        }

        @Override // k3.m.a
        public m.a h(long j10) {
            this.f31459b = Long.valueOf(j10);
            return this;
        }
    }

    @Override // k3.m
    public k b() {
        return this.f31453c;
    }

    @Override // k3.m
    public List<l> c() {
        return this.f31456f;
    }

    @Override // k3.m
    public Integer d() {
        return this.f31454d;
    }

    @Override // k3.m
    public String e() {
        return this.f31455e;
    }

    public boolean equals(Object obj) {
        k kVar;
        Integer num;
        String str;
        List<l> list;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof m)) {
            return false;
        }
        m mVar = (m) obj;
        if (this.f31451a == mVar.g() && this.f31452b == mVar.h() && ((kVar = this.f31453c) != null ? kVar.equals(mVar.b()) : mVar.b() == null) && ((num = this.f31454d) != null ? num.equals(mVar.d()) : mVar.d() == null) && ((str = this.f31455e) != null ? str.equals(mVar.e()) : mVar.e() == null) && ((list = this.f31456f) != null ? list.equals(mVar.c()) : mVar.c() == null)) {
            p pVar = this.f31457g;
            if (pVar == null) {
                if (mVar.f() == null) {
                    return true;
                }
            } else if (pVar.equals(mVar.f())) {
                return true;
            }
        }
        return false;
    }

    @Override // k3.m
    public p f() {
        return this.f31457g;
    }

    @Override // k3.m
    public long g() {
        return this.f31451a;
    }

    @Override // k3.m
    public long h() {
        return this.f31452b;
    }

    public int hashCode() {
        long j10 = this.f31451a;
        long j11 = this.f31452b;
        int i10 = (((((int) (j10 ^ (j10 >>> 32))) ^ 1000003) * 1000003) ^ ((int) (j11 ^ (j11 >>> 32)))) * 1000003;
        k kVar = this.f31453c;
        int iHashCode = (i10 ^ (kVar == null ? 0 : kVar.hashCode())) * 1000003;
        Integer num = this.f31454d;
        int iHashCode2 = (iHashCode ^ (num == null ? 0 : num.hashCode())) * 1000003;
        String str = this.f31455e;
        int iHashCode3 = (iHashCode2 ^ (str == null ? 0 : str.hashCode())) * 1000003;
        List<l> list = this.f31456f;
        int iHashCode4 = (iHashCode3 ^ (list == null ? 0 : list.hashCode())) * 1000003;
        p pVar = this.f31457g;
        return iHashCode4 ^ (pVar != null ? pVar.hashCode() : 0);
    }

    public String toString() {
        return "LogRequest{requestTimeMs=" + this.f31451a + ", requestUptimeMs=" + this.f31452b + ", clientInfo=" + this.f31453c + ", logSource=" + this.f31454d + ", logSourceName=" + this.f31455e + ", logEvents=" + this.f31456f + ", qosTier=" + this.f31457g + "}";
    }

    private g(long j10, long j11, k kVar, Integer num, String str, List<l> list, p pVar) {
        this.f31451a = j10;
        this.f31452b = j11;
        this.f31453c = kVar;
        this.f31454d = num;
        this.f31455e = str;
        this.f31456f = list;
        this.f31457g = pVar;
    }
}
