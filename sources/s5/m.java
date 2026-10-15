package s5;

import com.vungle.mediation.BuildConfig;
import java.util.List;
import java.util.Objects;
import s5.f0;

/* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application.java */
/* JADX INFO: loaded from: classes2.dex */
final class m extends f0.e.d.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f0.e.d.a.b f34861a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final List<f0.c> f34862b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<f0.c> f34863c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Boolean f34864d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f0.e.d.a.c f34865e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<f0.e.d.a.c> f34866f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f34867g;

    /* JADX INFO: compiled from: AutoValue_CrashlyticsReport_Session_Event_Application.java */
    static final class b extends f0.e.d.a.AbstractC0233a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private f0.e.d.a.b f34868a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private List<f0.c> f34869b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private List<f0.c> f34870c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Boolean f34871d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private f0.e.d.a.c f34872e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private List<f0.e.d.a.c> f34873f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private Integer f34874g;

        @Override // s5.f0.e.d.a.AbstractC0233a
        public f0.e.d.a a() {
            f0.e.d.a.b bVar = this.f34868a;
            String str = BuildConfig.FLAVOR;
            if (bVar == null) {
                str = BuildConfig.FLAVOR + " execution";
            }
            if (this.f34874g == null) {
                str = str + " uiOrientation";
            }
            if (str.isEmpty()) {
                return new m(this.f34868a, this.f34869b, this.f34870c, this.f34871d, this.f34872e, this.f34873f, this.f34874g.intValue());
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // s5.f0.e.d.a.AbstractC0233a
        public f0.e.d.a.AbstractC0233a b(List<f0.e.d.a.c> list) {
            this.f34873f = list;
            return this;
        }

        @Override // s5.f0.e.d.a.AbstractC0233a
        public f0.e.d.a.AbstractC0233a c(Boolean bool) {
            this.f34871d = bool;
            return this;
        }

        @Override // s5.f0.e.d.a.AbstractC0233a
        public f0.e.d.a.AbstractC0233a d(f0.e.d.a.c cVar) {
            this.f34872e = cVar;
            return this;
        }

        @Override // s5.f0.e.d.a.AbstractC0233a
        public f0.e.d.a.AbstractC0233a e(List<f0.c> list) {
            this.f34869b = list;
            return this;
        }

        @Override // s5.f0.e.d.a.AbstractC0233a
        public f0.e.d.a.AbstractC0233a f(f0.e.d.a.b bVar) {
            Objects.requireNonNull(bVar, "Null execution");
            this.f34868a = bVar;
            return this;
        }

        @Override // s5.f0.e.d.a.AbstractC0233a
        public f0.e.d.a.AbstractC0233a g(List<f0.c> list) {
            this.f34870c = list;
            return this;
        }

        @Override // s5.f0.e.d.a.AbstractC0233a
        public f0.e.d.a.AbstractC0233a h(int i10) {
            this.f34874g = Integer.valueOf(i10);
            return this;
        }

        b() {
        }

        private b(f0.e.d.a aVar) {
            this.f34868a = aVar.f();
            this.f34869b = aVar.e();
            this.f34870c = aVar.g();
            this.f34871d = aVar.c();
            this.f34872e = aVar.d();
            this.f34873f = aVar.b();
            this.f34874g = Integer.valueOf(aVar.h());
        }
    }

    @Override // s5.f0.e.d.a
    public List<f0.e.d.a.c> b() {
        return this.f34866f;
    }

    @Override // s5.f0.e.d.a
    public Boolean c() {
        return this.f34864d;
    }

    @Override // s5.f0.e.d.a
    public f0.e.d.a.c d() {
        return this.f34865e;
    }

    @Override // s5.f0.e.d.a
    public List<f0.c> e() {
        return this.f34862b;
    }

    public boolean equals(Object obj) {
        List<f0.c> list;
        List<f0.c> list2;
        Boolean bool;
        f0.e.d.a.c cVar;
        List<f0.e.d.a.c> list3;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof f0.e.d.a)) {
            return false;
        }
        f0.e.d.a aVar = (f0.e.d.a) obj;
        return this.f34861a.equals(aVar.f()) && ((list = this.f34862b) != null ? list.equals(aVar.e()) : aVar.e() == null) && ((list2 = this.f34863c) != null ? list2.equals(aVar.g()) : aVar.g() == null) && ((bool = this.f34864d) != null ? bool.equals(aVar.c()) : aVar.c() == null) && ((cVar = this.f34865e) != null ? cVar.equals(aVar.d()) : aVar.d() == null) && ((list3 = this.f34866f) != null ? list3.equals(aVar.b()) : aVar.b() == null) && this.f34867g == aVar.h();
    }

    @Override // s5.f0.e.d.a
    public f0.e.d.a.b f() {
        return this.f34861a;
    }

    @Override // s5.f0.e.d.a
    public List<f0.c> g() {
        return this.f34863c;
    }

    @Override // s5.f0.e.d.a
    public int h() {
        return this.f34867g;
    }

    public int hashCode() {
        int iHashCode = (this.f34861a.hashCode() ^ 1000003) * 1000003;
        List<f0.c> list = this.f34862b;
        int iHashCode2 = (iHashCode ^ (list == null ? 0 : list.hashCode())) * 1000003;
        List<f0.c> list2 = this.f34863c;
        int iHashCode3 = (iHashCode2 ^ (list2 == null ? 0 : list2.hashCode())) * 1000003;
        Boolean bool = this.f34864d;
        int iHashCode4 = (iHashCode3 ^ (bool == null ? 0 : bool.hashCode())) * 1000003;
        f0.e.d.a.c cVar = this.f34865e;
        int iHashCode5 = (iHashCode4 ^ (cVar == null ? 0 : cVar.hashCode())) * 1000003;
        List<f0.e.d.a.c> list3 = this.f34866f;
        return ((iHashCode5 ^ (list3 != null ? list3.hashCode() : 0)) * 1000003) ^ this.f34867g;
    }

    @Override // s5.f0.e.d.a
    public f0.e.d.a.AbstractC0233a i() {
        return new b(this);
    }

    public String toString() {
        return "Application{execution=" + this.f34861a + ", customAttributes=" + this.f34862b + ", internalKeys=" + this.f34863c + ", background=" + this.f34864d + ", currentProcessDetails=" + this.f34865e + ", appProcessDetails=" + this.f34866f + ", uiOrientation=" + this.f34867g + "}";
    }

    private m(f0.e.d.a.b bVar, List<f0.c> list, List<f0.c> list2, Boolean bool, f0.e.d.a.c cVar, List<f0.e.d.a.c> list3, int i10) {
        this.f34861a = bVar;
        this.f34862b = list;
        this.f34863c = list2;
        this.f34864d = bool;
        this.f34865e = cVar;
        this.f34866f = list3;
        this.f34867g = i10;
    }
}
