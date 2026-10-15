package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_CustomAttribute.java */
/* JADX INFO: loaded from: classes2.dex */
final class e extends f0.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34776a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34777b;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_CustomAttribute.java */
    static final class b extends f0.c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f34778a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34779b;

        b() {
        }

        @Override // s5.f0.c.a
        public f0.c a() {
            String str = this.f34778a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " key";
            }
            if (this.f34779b == null) {
                str2 = str2 + " value";
            }
            if (str2.isEmpty()) {
                return new e(this.f34778a, this.f34779b);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // s5.f0.c.a
        public f0.c.a b(String str) {
            Objects.requireNonNull(str, "Null key");
            this.f34778a = str;
            return this;
        }

        @Override // s5.f0.c.a
        public f0.c.a c(String str) {
            Objects.requireNonNull(str, "Null value");
            this.f34779b = str;
            return this;
        }
    }

    @Override // s5.f0.c
    public String b() {
        return this.f34776a;
    }

    @Override // s5.f0.c
    public String c() {
        return this.f34777b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.c)) {
            return false;
        }
        f0.c cVar = (f0.c) obj;
        return this.f34776a.equals(cVar.b()) && this.f34777b.equals(cVar.c());
    }

    public int hashCode() {
        return ((this.f34776a.hashCode() ^ 1000003) * 1000003) ^ this.f34777b.hashCode();
    }

    public String toString() {
        return "CustomAttribute{key=" + this.f34776a + ", value=" + this.f34777b + "}";
    }

    private e(String str, String str2) {
        this.f34776a = str;
        this.f34777b = str2;
    }
}
