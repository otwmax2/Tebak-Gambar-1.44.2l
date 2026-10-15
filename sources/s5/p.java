package s5;

import com.vungle.mediation.BuildConfig;
import java.util.List;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception.java */
/* JADX INFO: loaded from: classes2.dex */
final class p extends f0.e.d.a.b.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34893a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34894b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<f0.e.d.a.b.AbstractC0240e.AbstractC0242b> f34895c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f0.e.d.a.b.c f34896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f34897e;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Exception.java */
    static final class b extends f0.e.d.a.b.c.AbstractC0237a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f34898a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34899b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List<f0.e.d.a.b.AbstractC0240e.AbstractC0242b> f34900c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private f0.e.d.a.b.c f34901d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private Integer f34902e;

        b() {
        }

        @Override // s5.f0.e.d.a.b.c.AbstractC0237a
        public f0.e.d.a.b.c a() {
            String str = this.f34898a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " type";
            }
            if (this.f34900c == null) {
                str2 = str2 + " frames";
            }
            if (this.f34902e == null) {
                str2 = str2 + " overflowCount";
            }
            if (str2.isEmpty()) {
                return new p(this.f34898a, this.f34899b, this.f34900c, this.f34901d, this.f34902e.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // s5.f0.e.d.a.b.c.AbstractC0237a
        public f0.e.d.a.b.c.AbstractC0237a b(f0.e.d.a.b.c cVar) {
            this.f34901d = cVar;
            return this;
        }

        @Override // s5.f0.e.d.a.b.c.AbstractC0237a
        public f0.e.d.a.b.c.AbstractC0237a c(List<f0.e.d.a.b.AbstractC0240e.AbstractC0242b> list) {
            Objects.requireNonNull(list, "Null frames");
            this.f34900c = list;
            return this;
        }

        @Override // s5.f0.e.d.a.b.c.AbstractC0237a
        public f0.e.d.a.b.c.AbstractC0237a d(int i10) {
            this.f34902e = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.e.d.a.b.c.AbstractC0237a
        public f0.e.d.a.b.c.AbstractC0237a e(String str) {
            this.f34899b = str;
            return this;
        }

        @Override // s5.f0.e.d.a.b.c.AbstractC0237a
        public f0.e.d.a.b.c.AbstractC0237a f(String str) {
            Objects.requireNonNull(str, "Null type");
            this.f34898a = str;
            return this;
        }
    }

    @Override // s5.f0.e.d.a.b.c
    public f0.e.d.a.b.c b() {
        return this.f34896d;
    }

    @Override // s5.f0.e.d.a.b.c
    public List<f0.e.d.a.b.AbstractC0240e.AbstractC0242b> c() {
        return this.f34895c;
    }

    @Override // s5.f0.e.d.a.b.c
    public int d() {
        return this.f34897e;
    }

    @Override // s5.f0.e.d.a.b.c
    public String e() {
        return this.f34894b;
    }

    public boolean equals(Object obj) {
        String str;
        f0.e.d.a.b.c cVar;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.c)) {
            return false;
        }
        f0.e.d.a.b.c cVar2 = (f0.e.d.a.b.c) obj;
        return this.f34893a.equals(cVar2.f()) && ((str = this.f34894b) != null ? str.equals(cVar2.e()) : cVar2.e() == null) && this.f34895c.equals(cVar2.c()) && ((cVar = this.f34896d) != null ? cVar.equals(cVar2.b()) : cVar2.b() == null) && this.f34897e == cVar2.d();
    }

    @Override // s5.f0.e.d.a.b.c
    public String f() {
        return this.f34893a;
    }

    public int hashCode() {
        int iHashCode = (this.f34893a.hashCode() ^ 1000003) * 1000003;
        String str = this.f34894b;
        int iHashCode2 = (((iHashCode ^ (str == null ? 0 : str.hashCode())) * 1000003) ^ this.f34895c.hashCode()) * 1000003;
        f0.e.d.a.b.c cVar = this.f34896d;
        return ((iHashCode2 ^ (cVar != null ? cVar.hashCode() : 0)) * 1000003) ^ this.f34897e;
    }

    public String toString() {
        return "Exception{type=" + this.f34893a + ", reason=" + this.f34894b + ", frames=" + this.f34895c + ", causedBy=" + this.f34896d + ", overflowCount=" + this.f34897e + "}";
    }

    private p(String str, String str2, List<f0.e.d.a.b.AbstractC0240e.AbstractC0242b> list, f0.e.d.a.b.c cVar, int i10) {
        this.f34893a = str;
        this.f34894b = str2;
        this.f34895c = list;
        this.f34896d = cVar;
        this.f34897e = i10;
    }
}
