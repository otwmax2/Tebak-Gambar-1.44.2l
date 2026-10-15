package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment_RolloutVariant.java */
/* JADX INFO: loaded from: classes2.dex */
final class x extends f0.e.d.AbstractC0246e.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34955a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34956b;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_RolloutAssignment_RolloutVariant.java */
    static final class b extends f0.e.d.AbstractC0246e.b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f34957a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34958b;

        b() {
        }

        @Override // s5.f0.e.d.AbstractC0246e.b.a
        public f0.e.d.AbstractC0246e.b a() {
            String str = this.f34957a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " rolloutId";
            }
            if (this.f34958b == null) {
                str2 = str2 + " variantId";
            }
            if (str2.isEmpty()) {
                return new x(this.f34957a, this.f34958b);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // s5.f0.e.d.AbstractC0246e.b.a
        public f0.e.d.AbstractC0246e.b.a b(String str) {
            Objects.requireNonNull(str, "Null rolloutId");
            this.f34957a = str;
            return this;
        }

        @Override // s5.f0.e.d.AbstractC0246e.b.a
        public f0.e.d.AbstractC0246e.b.a c(String str) {
            Objects.requireNonNull(str, "Null variantId");
            this.f34958b = str;
            return this;
        }
    }

    @Override // s5.f0.e.d.AbstractC0246e.b
    public String b() {
        return this.f34955a;
    }

    @Override // s5.f0.e.d.AbstractC0246e.b
    public String c() {
        return this.f34956b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.AbstractC0246e.b)) {
            return false;
        }
        f0.e.d.AbstractC0246e.b bVar = (f0.e.d.AbstractC0246e.b) obj;
        return this.f34955a.equals(bVar.b()) && this.f34956b.equals(bVar.c());
    }

    public int hashCode() {
        return ((this.f34955a.hashCode() ^ 1000003) * 1000003) ^ this.f34956b.hashCode();
    }

    public String toString() {
        return "RolloutVariant{rolloutId=" + this.f34955a + ", variantId=" + this.f34956b + "}";
    }

    private x(String str, String str2) {
        this.f34955a = str;
        this.f34956b = str2;
    }
}
