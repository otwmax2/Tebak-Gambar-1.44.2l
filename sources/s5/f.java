package s5;

import com.vungle.mediation.BuildConfig;
import java.util.List;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_FilesPayload.java */
/* JADX INFO: loaded from: classes2.dex */
final class f extends f0.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<f0.d.b> f34783a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34784b;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_FilesPayload.java */
    static final class b extends f0.d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<f0.d.b> f34785a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f34786b;

        b() {
        }

        @Override // s5.f0.d.a
        public f0.d a() {
            List<f0.d.b> list = this.f34785a;
            String str = BuildConfig.FLAVOR;
            if (list == null) {
                str = BuildConfig.FLAVOR + " files";
            }
            if (str.isEmpty()) {
                return new f(this.f34785a, this.f34786b);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // s5.f0.d.a
        public f0.d.a b(List<f0.d.b> list) {
            Objects.requireNonNull(list, "Null files");
            this.f34785a = list;
            return this;
        }

        @Override // s5.f0.d.a
        public f0.d.a c(String str) {
            this.f34786b = str;
            return this;
        }
    }

    @Override // s5.f0.d
    public List<f0.d.b> b() {
        return this.f34783a;
    }

    @Override // s5.f0.d
    public String c() {
        return this.f34784b;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.d)) {
            return false;
        }
        f0.d dVar = (f0.d) obj;
        if (this.f34783a.equals(dVar.b())) {
            String str = this.f34784b;
            if (str == null) {
                if (dVar.c() == null) {
                    return true;
                }
            } else if (str.equals(dVar.c())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int iHashCode = (this.f34783a.hashCode() ^ 1000003) * 1000003;
        String str = this.f34784b;
        return iHashCode ^ (str == null ? 0 : str.hashCode());
    }

    public String toString() {
        return "FilesPayload{files=" + this.f34783a + ", orgId=" + this.f34784b + "}";
    }

    private f(List<f0.d.b> list, String str) {
        this.f34783a = list;
        this.f34784b = str;
    }
}
