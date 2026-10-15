package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_ApplicationExitInfo_BuildIdMappingForArch.java */
/* JADX INFO: loaded from: classes2.dex */
final class d extends f0.a.AbstractC0230a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34761a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34762b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f34763c;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_ApplicationExitInfo_BuildIdMappingForArch.java */
    static final class b extends f0.a.AbstractC0230a.AbstractC0231a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f34764a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34765b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private String f34766c;

        b() {
        }

        @Override // s5.f0.a.AbstractC0230a.AbstractC0231a
        public f0.a.AbstractC0230a a() {
            String str = this.f34764a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " arch";
            }
            if (this.f34765b == null) {
                str2 = str2 + " libraryName";
            }
            if (this.f34766c == null) {
                str2 = str2 + " buildId";
            }
            if (str2.isEmpty()) {
                return new d(this.f34764a, this.f34765b, this.f34766c);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // s5.f0.a.AbstractC0230a.AbstractC0231a
        public f0.a.AbstractC0230a.AbstractC0231a b(String str) {
            Objects.requireNonNull(str, "Null arch");
            this.f34764a = str;
            return this;
        }

        @Override // s5.f0.a.AbstractC0230a.AbstractC0231a
        public f0.a.AbstractC0230a.AbstractC0231a c(String str) {
            Objects.requireNonNull(str, "Null buildId");
            this.f34766c = str;
            return this;
        }

        @Override // s5.f0.a.AbstractC0230a.AbstractC0231a
        public f0.a.AbstractC0230a.AbstractC0231a d(String str) {
            Objects.requireNonNull(str, "Null libraryName");
            this.f34765b = str;
            return this;
        }
    }

    @Override // s5.f0.a.AbstractC0230a
    public String b() {
        return this.f34761a;
    }

    @Override // s5.f0.a.AbstractC0230a
    public String c() {
        return this.f34763c;
    }

    @Override // s5.f0.a.AbstractC0230a
    public String d() {
        return this.f34762b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.a.AbstractC0230a)) {
            return false;
        }
        f0.a.AbstractC0230a abstractC0230a = (f0.a.AbstractC0230a) obj;
        return this.f34761a.equals(abstractC0230a.b()) && this.f34762b.equals(abstractC0230a.d()) && this.f34763c.equals(abstractC0230a.c());
    }

    public int hashCode() {
        return ((((this.f34761a.hashCode() ^ 1000003) * 1000003) ^ this.f34762b.hashCode()) * 1000003) ^ this.f34763c.hashCode();
    }

    public String toString() {
        return "BuildIdMappingForArch{arch=" + this.f34761a + ", libraryName=" + this.f34762b + ", buildId=" + this.f34763c + "}";
    }

    private d(String str, String str2, String str3) {
        this.f34761a = str;
        this.f34762b = str2;
        this.f34763c = str3;
    }
}
