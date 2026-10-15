package s5;

import com.vungle.mediation.BuildConfig;
import java.util.List;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_RolloutsState.java */
/* JADX INFO: loaded from: classes2.dex */
final class y extends f0.e.d.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<f0.e.d.AbstractC0246e> f34959a;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_RolloutsState.java */
    static final class b extends f0.e.d.f.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<f0.e.d.AbstractC0246e> f34960a;

        b() {
        }

        @Override // s5.f0.e.d.f.a
        public f0.e.d.f a() {
            List<f0.e.d.AbstractC0246e> list = this.f34960a;
            String str = BuildConfig.FLAVOR;
            if (list == null) {
                str = BuildConfig.FLAVOR + " rolloutAssignments";
            }
            if (str.isEmpty()) {
                return new y(this.f34960a);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // s5.f0.e.d.f.a
        public f0.e.d.f.a b(List<f0.e.d.AbstractC0246e> list) {
            Objects.requireNonNull(list, "Null rolloutAssignments");
            this.f34960a = list;
            return this;
        }
    }

    @Override // s5.f0.e.d.f
    public List<f0.e.d.AbstractC0246e> b() {
        return this.f34959a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof f0.e.d.f) {
            return this.f34959a.equals(((f0.e.d.f) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return this.f34959a.hashCode() ^ 1000003;
    }

    public String toString() {
        return "RolloutsState{rolloutAssignments=" + this.f34959a + "}";
    }

    private y(List<f0.e.d.AbstractC0246e> list) {
        this.f34959a = list;
    }
}
