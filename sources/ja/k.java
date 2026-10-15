package ja;

import java.util.Arrays;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: ConnectionSpec.java */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final h[] f31113e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final h[] f31114f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final k f31115g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final k f31116h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final k f31117i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final k f31118j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final boolean f31119a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final boolean f31120b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    final String[] f31121c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    final String[] f31122d;

    static {
        h hVar = h.f31075n1;
        h hVar2 = h.f31078o1;
        h hVar3 = h.f31081p1;
        h hVar4 = h.f31084q1;
        h hVar5 = h.f31087r1;
        h hVar6 = h.Z0;
        h hVar7 = h.f31045d1;
        h hVar8 = h.f31036a1;
        h hVar9 = h.f31048e1;
        h hVar10 = h.f31066k1;
        h hVar11 = h.f31063j1;
        h[] hVarArr = {hVar, hVar2, hVar3, hVar4, hVar5, hVar6, hVar7, hVar8, hVar9, hVar10, hVar11};
        f31113e = hVarArr;
        h[] hVarArr2 = {hVar, hVar2, hVar3, hVar4, hVar5, hVar6, hVar7, hVar8, hVar9, hVar10, hVar11, h.K0, h.L0, h.f31059i0, h.f31062j0, h.G, h.K, h.f31064k};
        f31114f = hVarArr2;
        a aVarB = new a(true).b(hVarArr);
        f0 f0Var = f0.TLS_1_3;
        f0 f0Var2 = f0.TLS_1_2;
        f31115g = aVarB.e(f0Var, f0Var2).d(true).a();
        a aVarB2 = new a(true).b(hVarArr2);
        f0 f0Var3 = f0.TLS_1_0;
        f31116h = aVarB2.e(f0Var, f0Var2, f0.TLS_1_1, f0Var3).d(true).a();
        f31117i = new a(true).b(hVarArr2).e(f0Var3).d(true).a();
        f31118j = new a(false).a();
    }

    k(a aVar) {
        this.f31119a = aVar.f31123a;
        this.f31121c = aVar.f31124b;
        this.f31122d = aVar.f31125c;
        this.f31120b = aVar.f31126d;
    }

    private k e(SSLSocket sSLSocket, boolean z10) {
        String[] strArrZ = this.f31121c != null ? ka.c.z(h.f31037b, sSLSocket.getEnabledCipherSuites(), this.f31121c) : sSLSocket.getEnabledCipherSuites();
        String[] strArrZ2 = this.f31122d != null ? ka.c.z(ka.c.f31654q, sSLSocket.getEnabledProtocols(), this.f31122d) : sSLSocket.getEnabledProtocols();
        String[] supportedCipherSuites = sSLSocket.getSupportedCipherSuites();
        int iW = ka.c.w(h.f31037b, supportedCipherSuites, "TLS_FALLBACK_SCSV");
        if (z10 && iW != -1) {
            strArrZ = ka.c.i(strArrZ, supportedCipherSuites[iW]);
        }
        return new a(this).c(strArrZ).f(strArrZ2).a();
    }

    void a(SSLSocket sSLSocket, boolean z10) {
        k kVarE = e(sSLSocket, z10);
        String[] strArr = kVarE.f31122d;
        if (strArr != null) {
            sSLSocket.setEnabledProtocols(strArr);
        }
        String[] strArr2 = kVarE.f31121c;
        if (strArr2 != null) {
            sSLSocket.setEnabledCipherSuites(strArr2);
        }
    }

    @Nullable
    public List<h> b() {
        String[] strArr = this.f31121c;
        if (strArr != null) {
            return h.b(strArr);
        }
        return null;
    }

    public boolean c(SSLSocket sSLSocket) {
        if (!this.f31119a) {
            return false;
        }
        String[] strArr = this.f31122d;
        if (strArr != null && !ka.c.B(ka.c.f31654q, strArr, sSLSocket.getEnabledProtocols())) {
            return false;
        }
        String[] strArr2 = this.f31121c;
        return strArr2 == null || ka.c.B(h.f31037b, strArr2, sSLSocket.getEnabledCipherSuites());
    }

    public boolean d() {
        return this.f31119a;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof k)) {
            return false;
        }
        if (obj == this) {
            return true;
        }
        k kVar = (k) obj;
        boolean z10 = this.f31119a;
        if (z10 != kVar.f31119a) {
            return false;
        }
        return !z10 || (Arrays.equals(this.f31121c, kVar.f31121c) && Arrays.equals(this.f31122d, kVar.f31122d) && this.f31120b == kVar.f31120b);
    }

    public boolean f() {
        return this.f31120b;
    }

    @Nullable
    public List<f0> g() {
        String[] strArr = this.f31122d;
        if (strArr != null) {
            return f0.e(strArr);
        }
        return null;
    }

    public int hashCode() {
        if (this.f31119a) {
            return ((((527 + Arrays.hashCode(this.f31121c)) * 31) + Arrays.hashCode(this.f31122d)) * 31) + (!this.f31120b ? 1 : 0);
        }
        return 17;
    }

    public String toString() {
        if (!this.f31119a) {
            return "ConnectionSpec()";
        }
        return "ConnectionSpec(cipherSuites=" + (this.f31121c != null ? b().toString() : "[all enabled]") + ", tlsVersions=" + (this.f31122d != null ? g().toString() : "[all enabled]") + ", supportsTlsExtensions=" + this.f31120b + ")";
    }

    /* JADX INFO: compiled from: ConnectionSpec.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f31123a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        @Nullable
        String[] f31124b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        @Nullable
        String[] f31125c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f31126d;

        a(boolean z10) {
            this.f31123a = z10;
        }

        public k a() {
            return new k(this);
        }

        public a b(h... hVarArr) {
            if (!this.f31123a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            String[] strArr = new String[hVarArr.length];
            for (int i10 = 0; i10 < hVarArr.length; i10++) {
                strArr[i10] = hVarArr[i10].f31104a;
            }
            return c(strArr);
        }

        public a c(String... strArr) {
            if (!this.f31123a) {
                throw new IllegalStateException("no cipher suites for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one cipher suite is required");
            }
            this.f31124b = (String[]) strArr.clone();
            return this;
        }

        public a d(boolean z10) {
            if (!this.f31123a) {
                throw new IllegalStateException("no TLS extensions for cleartext connections");
            }
            this.f31126d = z10;
            return this;
        }

        public a e(f0... f0VarArr) {
            if (!this.f31123a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            String[] strArr = new String[f0VarArr.length];
            for (int i10 = 0; i10 < f0VarArr.length; i10++) {
                strArr[i10] = f0VarArr[i10].f31026o;
            }
            return f(strArr);
        }

        public a f(String... strArr) {
            if (!this.f31123a) {
                throw new IllegalStateException("no TLS versions for cleartext connections");
            }
            if (strArr.length == 0) {
                throw new IllegalArgumentException("At least one TLS version is required");
            }
            this.f31125c = (String[]) strArr.clone();
            return this;
        }

        public a(k kVar) {
            this.f31123a = kVar.f31119a;
            this.f31124b = kVar.f31121c;
            this.f31125c = kVar.f31122d;
            this.f31126d = kVar.f31120b;
        }
    }
}
