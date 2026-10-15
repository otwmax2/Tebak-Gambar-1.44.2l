package s5;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Log.java */
/* JADX INFO: loaded from: classes2.dex */
final class v extends f0.e.d.AbstractC0245d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34945a;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Log.java */
    static final class b extends f0.e.d.AbstractC0245d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f34946a;

        b() {
        }

        @Override // s5.f0.e.d.AbstractC0245d.a
        public f0.e.d.AbstractC0245d a() {
            String str = this.f34946a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " content";
            }
            if (str2.isEmpty()) {
                return new v(this.f34946a);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // s5.f0.e.d.AbstractC0245d.a
        public f0.e.d.AbstractC0245d.a b(String str) {
            Objects.requireNonNull(str, "Null content");
            this.f34946a = str;
            return this;
        }
    }

    @Override // s5.f0.e.d.AbstractC0245d
    public String b() {
        return this.f34945a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.d.AbstractC0245d) {
            return this.f34945a.equals(((f0.e.d.AbstractC0245d) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f34945a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "Log{content=" + this.f34945a + "}";
    }

    private v(String str) {
        this.f34945a = str;
    }
}
