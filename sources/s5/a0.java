package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_User.java */
/* JADX INFO: loaded from: classes2.dex */
final class a0 extends f0.e.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34710a;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_User.java */
    static final class b extends f0.e.f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f34711a;

        b() {
        }

        @Override // s5.f0.e.f.a
        public f0.e.f a() {
            String str = this.f34711a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " identifier";
            }
            if (str2.isEmpty()) {
                return new a0(this.f34711a);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // s5.f0.e.f.a
        public f0.e.f.a b(String str) {
            Objects.requireNonNull(str, "Null identifier");
            this.f34711a = str;
            return this;
        }
    }

    @Override // s5.f0.e.f
    public String b() {
        return this.f34710a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.f) {
            return this.f34710a.equals(((f0.e.f) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f34710a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "User{identifier=" + this.f34710a + "}";
    }

    private a0(String str) {
        this.f34710a = str;
    }
}
