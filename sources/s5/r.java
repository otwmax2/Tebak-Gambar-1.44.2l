package s5;

import com.vungle.mediation.BuildConfig;
import java.util.List;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread.java */
/* JADX INFO: loaded from: classes2.dex */
final class r extends f0.e.d.a.b.AbstractC0240e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f34909a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f34910b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<f0.e.d.a.b.AbstractC0240e.AbstractC0242b> f34911c;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution_Thread.java */
    static final class b extends f0.e.d.a.b.AbstractC0240e.AbstractC0241a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f34912a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Integer f34913b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List<f0.e.d.a.b.AbstractC0240e.AbstractC0242b> f34914c;

        b() {
        }

        @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0241a
        public f0.e.d.a.b.AbstractC0240e a() {
            String str = this.f34912a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " name";
            }
            if (this.f34913b == null) {
                str2 = str2 + " importance";
            }
            if (this.f34914c == null) {
                str2 = str2 + " frames";
            }
            if (str2.isEmpty()) {
                return new r(this.f34912a, this.f34913b.intValue(), this.f34914c);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0241a
        public f0.e.d.a.b.AbstractC0240e.AbstractC0241a b(List<f0.e.d.a.b.AbstractC0240e.AbstractC0242b> list) {
            Objects.requireNonNull(list, "Null frames");
            this.f34914c = list;
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0241a
        public f0.e.d.a.b.AbstractC0240e.AbstractC0241a c(int i10) {
            this.f34913b = Integer.valueOf(i10);
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0240e.AbstractC0241a
        public f0.e.d.a.b.AbstractC0240e.AbstractC0241a d(String str) {
            Objects.requireNonNull(str, "Null name");
            this.f34912a = str;
            return this;
        }
    }

    @Override // s5.f0.e.d.a.b.AbstractC0240e
    public List<f0.e.d.a.b.AbstractC0240e.AbstractC0242b> b() {
        return this.f34911c;
    }

    @Override // s5.f0.e.d.a.b.AbstractC0240e
    public int c() {
        return this.f34910b;
    }

    @Override // s5.f0.e.d.a.b.AbstractC0240e
    public String d() {
        return this.f34909a;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b.AbstractC0240e)) {
            return false;
        }
        f0.e.d.a.b.AbstractC0240e abstractC0240e = (f0.e.d.a.b.AbstractC0240e) obj;
        return this.f34909a.equals(abstractC0240e.d()) && this.f34910b == abstractC0240e.c() && this.f34911c.equals(abstractC0240e.b());
    }

    public int hashCode() {
        return ((((this.f34909a.hashCode() ^ 1000003) * 1000003) ^ this.f34910b) * 1000003) ^ this.f34911c.hashCode();
    }

    public String toString() {
        return "Thread{name=" + this.f34909a + ", importance=" + this.f34910b + ", frames=" + this.f34911c + "}";
    }

    private r(String str, int i10, List<f0.e.d.a.b.AbstractC0240e.AbstractC0242b> list) {
        this.f34909a = str;
        this.f34910b = i10;
        this.f34911c = list;
    }
}
