package s5;

import com.vungle.mediation.BuildConfig;
import java.util.List;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution.java */
/* JADX INFO: loaded from: classes2.dex */
final class n extends f0.e.d.a.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<f0.e.d.a.b.AbstractC0240e> f34875a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f0.e.d.a.b.c f34876b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final f0.a f34877c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f0.e.d.a.b.AbstractC0238d f34878d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final List<f0.e.d.a.b.AbstractC0234a> f34879e;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application_Execution.java */
    static final class b extends f0.e.d.a.b.AbstractC0236b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private List<f0.e.d.a.b.AbstractC0240e> f34880a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private f0.e.d.a.b.c f34881b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private f0.a f34882c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private f0.e.d.a.b.AbstractC0238d f34883d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private List<f0.e.d.a.b.AbstractC0234a> f34884e;

        b() {
        }

        @Override // s5.f0.e.d.a.b.AbstractC0236b
        public f0.e.d.a.b a() {
            f0.e.d.a.b.AbstractC0238d abstractC0238d = this.f34883d;
            String str = BuildConfig.FLAVOR;
            if (abstractC0238d == null) {
                str = BuildConfig.FLAVOR + " signal";
            }
            if (this.f34884e == null) {
                str = str + " binaries";
            }
            if (str.isEmpty()) {
                return new n(this.f34880a, this.f34881b, this.f34882c, this.f34883d, this.f34884e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // s5.f0.e.d.a.b.AbstractC0236b
        public f0.e.d.a.b.AbstractC0236b b(f0.a aVar) {
            this.f34882c = aVar;
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0236b
        public f0.e.d.a.b.AbstractC0236b c(List<f0.e.d.a.b.AbstractC0234a> list) {
            Objects.requireNonNull(list, "Null binaries");
            this.f34884e = list;
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0236b
        public f0.e.d.a.b.AbstractC0236b d(f0.e.d.a.b.c cVar) {
            this.f34881b = cVar;
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0236b
        public f0.e.d.a.b.AbstractC0236b e(f0.e.d.a.b.AbstractC0238d abstractC0238d) {
            Objects.requireNonNull(abstractC0238d, "Null signal");
            this.f34883d = abstractC0238d;
            return this;
        }

        @Override // s5.f0.e.d.a.b.AbstractC0236b
        public f0.e.d.a.b.AbstractC0236b f(List<f0.e.d.a.b.AbstractC0240e> list) {
            this.f34880a = list;
            return this;
        }
    }

    @Override // s5.f0.e.d.a.b
    public f0.a b() {
        return this.f34877c;
    }

    @Override // s5.f0.e.d.a.b
    public List<f0.e.d.a.b.AbstractC0234a> c() {
        return this.f34879e;
    }

    @Override // s5.f0.e.d.a.b
    public f0.e.d.a.b.c d() {
        return this.f34876b;
    }

    @Override // s5.f0.e.d.a.b
    public f0.e.d.a.b.AbstractC0238d e() {
        return this.f34878d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a.b)) {
            return false;
        }
        f0.e.d.a.b bVar = (f0.e.d.a.b) obj;
        List<f0.e.d.a.b.AbstractC0240e> list = this.f34875a;
        if (list != null ? list.equals(bVar.f()) : bVar.f() == null) {
            f0.e.d.a.b.c cVar = this.f34876b;
            if (cVar != null ? cVar.equals(bVar.d()) : bVar.d() == null) {
                f0.a aVar = this.f34877c;
                if (aVar != null ? aVar.equals(bVar.b()) : bVar.b() == null) {
                    if (this.f34878d.equals(bVar.e()) && this.f34879e.equals(bVar.c())) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    @Override // s5.f0.e.d.a.b
    public List<f0.e.d.a.b.AbstractC0240e> f() {
        return this.f34875a;
    }

    public int hashCode() {
        List<f0.e.d.a.b.AbstractC0240e> list = this.f34875a;
        int iHashCode = ((list == null ? 0 : list.hashCode()) ^ 1000003) * 1000003;
        f0.e.d.a.b.c cVar = this.f34876b;
        int iHashCode2 = (iHashCode ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        f0.a aVar = this.f34877c;
        return ((((iHashCode2 ^ (aVar != null ? aVar.hashCode() : 0)) * 1000003) ^ this.f34878d.hashCode()) * 1000003) ^ this.f34879e.hashCode();
    }

    public String toString() {
        return "Execution{threads=" + this.f34875a + ", exception=" + this.f34876b + ", appExitInfo=" + this.f34877c + ", signal=" + this.f34878d + ", binaries=" + this.f34879e + "}";
    }

    private n(List<f0.e.d.a.b.AbstractC0240e> list, f0.e.d.a.b.c cVar, f0.a aVar, f0.e.d.a.b.AbstractC0238d abstractC0238d, List<f0.e.d.a.b.AbstractC0234a> list2) {
        this.f34875a = list;
        this.f34876b = cVar;
        this.f34877c = aVar;
        this.f34878d = abstractC0238d;
        this.f34879e = list2;
    }
}
