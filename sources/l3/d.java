package l3;

import com.vungle.mediation.BuildConfig;
import java.util.Arrays;
import java.util.Objects;
import l3.p;

/* JADX INFO: compiled from: AutoValue_TransportContext.java */
/* JADX INFO: loaded from: classes.dex */
final class d extends p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31923a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final byte[] f31924b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final j3.d f31925c;

    /* JADX INFO: compiled from: AutoValue_TransportContext.java */
    static final class b extends p.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31926a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private byte[] f31927b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private j3.d f31928c;

        b() {
        }

        @Override // l3.p.a
        public p a() {
            String str = this.f31926a;
            String str2 = BuildConfig.FLAVOR;
            if (str == null) {
                str2 = BuildConfig.FLAVOR + " backendName";
            }
            if (this.f31928c == null) {
                str2 = str2 + " priority";
            }
            if (str2.isEmpty()) {
                return new d(this.f31926a, this.f31927b, this.f31928c);
            }
            throw new IllegalStateException("Missing required properties:" + str2);
        }

        @Override // l3.p.a
        public p.a b(String str) {
            Objects.requireNonNull(str, "Null backendName");
            this.f31926a = str;
            return this;
        }

        @Override // l3.p.a
        public p.a c(byte[] bArr) {
            this.f31927b = bArr;
            return this;
        }

        @Override // l3.p.a
        public p.a d(j3.d dVar) {
            Objects.requireNonNull(dVar, "Null priority");
            this.f31928c = dVar;
            return this;
        }
    }

    @Override // l3.p
    public String b() {
        return this.f31923a;
    }

    @Override // l3.p
    public byte[] c() {
        return this.f31924b;
    }

    @Override // l3.p
    public j3.d d() {
        return this.f31925c;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof p)) {
            return false;
        }
        p pVar = (p) obj;
        if (this.f31923a.equals(pVar.b())) {
            if (Arrays.equals(this.f31924b, pVar instanceof d ? ((d) pVar).f31924b : pVar.c()) && this.f31925c.equals(pVar.d())) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return ((((this.f31923a.hashCode() ^ 1000003) * 1000003) ^ Arrays.hashCode(this.f31924b)) * 1000003) ^ this.f31925c.hashCode();
    }

    private d(String str, byte[] bArr, j3.d dVar) {
        this.f31923a = str;
        this.f31924b = bArr;
        this.f31925c = dVar;
    }
}
