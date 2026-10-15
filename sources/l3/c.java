package l3;

import com.vungle.mediation.BuildConfig;
import java.util.Objects;
import l3.o;

/* JADX INFO: compiled from: AutoValue_SendRequest.java */
/* JADX INFO: loaded from: classes.dex */
final class c extends o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final p f31913a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31914b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j3.c<?> f31915c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final j3.e<?, byte[]> f31916d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final j3.b f31917e;

    /* JADX INFO: compiled from: AutoValue_SendRequest.java */
    static final class b extends o.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private p f31918a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private String f31919b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private j3.c<?> f31920c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private j3.e<?, byte[]> f31921d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private j3.b f31922e;

        b() {
        }

        @Override // l3.o.a
        public o a() {
            p pVar = this.f31918a;
            String str = BuildConfig.FLAVOR;
            if (pVar == null) {
                str = BuildConfig.FLAVOR + " transportContext";
            }
            if (this.f31919b == null) {
                str = str + " transportName";
            }
            if (this.f31920c == null) {
                str = str + " event";
            }
            if (this.f31921d == null) {
                str = str + " transformer";
            }
            if (this.f31922e == null) {
                str = str + " encoding";
            }
            if (str.isEmpty()) {
                return new c(this.f31918a, this.f31919b, this.f31920c, this.f31921d, this.f31922e);
            }
            throw new IllegalStateException("Missing required properties:" + str);
        }

        @Override // l3.o.a
        o.a b(j3.b bVar) {
            Objects.requireNonNull(bVar, "Null encoding");
            this.f31922e = bVar;
            return this;
        }

        @Override // l3.o.a
        o.a c(j3.c<?> cVar) {
            Objects.requireNonNull(cVar, "Null event");
            this.f31920c = cVar;
            return this;
        }

        @Override // l3.o.a
        o.a d(j3.e<?, byte[]> eVar) {
            Objects.requireNonNull(eVar, "Null transformer");
            this.f31921d = eVar;
            return this;
        }

        @Override // l3.o.a
        public o.a e(p pVar) {
            Objects.requireNonNull(pVar, "Null transportContext");
            this.f31918a = pVar;
            return this;
        }

        @Override // l3.o.a
        public o.a f(String str) {
            Objects.requireNonNull(str, "Null transportName");
            this.f31919b = str;
            return this;
        }
    }

    @Override // l3.o
    public j3.b b() {
        return this.f31917e;
    }

    @Override // l3.o
    j3.c<?> c() {
        return this.f31915c;
    }

    @Override // l3.o
    j3.e<?, byte[]> e() {
        return this.f31916d;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        o oVar = (o) obj;
        return this.f31913a.equals(oVar.f()) && this.f31914b.equals(oVar.g()) && this.f31915c.equals(oVar.c()) && this.f31916d.equals(oVar.e()) && this.f31917e.equals(oVar.b());
    }

    @Override // l3.o
    public p f() {
        return this.f31913a;
    }

    @Override // l3.o
    public String g() {
        return this.f31914b;
    }

    public int hashCode() {
        return ((((((((this.f31913a.hashCode() ^ 1000003) * 1000003) ^ this.f31914b.hashCode()) * 1000003) ^ this.f31915c.hashCode()) * 1000003) ^ this.f31916d.hashCode()) * 1000003) ^ this.f31917e.hashCode();
    }

    public String toString() {
        return "SendRequest{transportContext=" + this.f31913a + ", transportName=" + this.f31914b + ", event=" + this.f31915c + ", transformer=" + this.f31916d + ", encoding=" + this.f31917e + "}";
    }

    private c(p pVar, String str, j3.c<?> cVar, j3.e<?, byte[]> eVar, j3.b bVar) {
        this.f31913a = pVar;
        this.f31914b = str;
        this.f31915c = cVar;
        this.f31916d = eVar;
        this.f31917e = bVar;
    }
}
