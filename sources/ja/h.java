package ja;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: compiled from: CipherSuite.java */
/* JADX INFO: loaded from: classes2.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f31104a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Comparator<String> f31037b = new a();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Map<String, h> f31040c = new LinkedHashMap();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h f31043d = c("SSL_RSA_WITH_NULL_MD5", 1);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final h f31046e = c("SSL_RSA_WITH_NULL_SHA", 2);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final h f31049f = c("SSL_RSA_EXPORT_WITH_RC4_40_MD5", 3);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final h f31052g = c("SSL_RSA_WITH_RC4_128_MD5", 4);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final h f31055h = c("SSL_RSA_WITH_RC4_128_SHA", 5);

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final h f31058i = c("SSL_RSA_EXPORT_WITH_DES40_CBC_SHA", 8);

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final h f31061j = c("SSL_RSA_WITH_DES_CBC_SHA", 9);

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final h f31064k = c("SSL_RSA_WITH_3DES_EDE_CBC_SHA", 10);

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final h f31067l = c("SSL_DHE_DSS_EXPORT_WITH_DES40_CBC_SHA", 17);

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final h f31070m = c("SSL_DHE_DSS_WITH_DES_CBC_SHA", 18);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final h f31073n = c("SSL_DHE_DSS_WITH_3DES_EDE_CBC_SHA", 19);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final h f31076o = c("SSL_DHE_RSA_EXPORT_WITH_DES40_CBC_SHA", 20);

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final h f31079p = c("SSL_DHE_RSA_WITH_DES_CBC_SHA", 21);

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public static final h f31082q = c("SSL_DHE_RSA_WITH_3DES_EDE_CBC_SHA", 22);

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public static final h f31085r = c("SSL_DH_anon_EXPORT_WITH_RC4_40_MD5", 23);

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public static final h f31088s = c("SSL_DH_anon_WITH_RC4_128_MD5", 24);

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public static final h f31090t = c("SSL_DH_anon_EXPORT_WITH_DES40_CBC_SHA", 25);

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final h f31092u = c("SSL_DH_anon_WITH_DES_CBC_SHA", 26);

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public static final h f31094v = c("SSL_DH_anon_WITH_3DES_EDE_CBC_SHA", 27);

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public static final h f31096w = c("TLS_KRB5_WITH_DES_CBC_SHA", 30);

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public static final h f31098x = c("TLS_KRB5_WITH_3DES_EDE_CBC_SHA", 31);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static final h f31100y = c("TLS_KRB5_WITH_RC4_128_SHA", 32);

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public static final h f31102z = c("TLS_KRB5_WITH_DES_CBC_MD5", 34);
    public static final h A = c("TLS_KRB5_WITH_3DES_EDE_CBC_MD5", 35);
    public static final h B = c("TLS_KRB5_WITH_RC4_128_MD5", 36);
    public static final h C = c("TLS_KRB5_EXPORT_WITH_DES_CBC_40_SHA", 38);
    public static final h D = c("TLS_KRB5_EXPORT_WITH_RC4_40_SHA", 40);
    public static final h E = c("TLS_KRB5_EXPORT_WITH_DES_CBC_40_MD5", 41);
    public static final h F = c("TLS_KRB5_EXPORT_WITH_RC4_40_MD5", 43);
    public static final h G = c("TLS_RSA_WITH_AES_128_CBC_SHA", 47);
    public static final h H = c("TLS_DHE_DSS_WITH_AES_128_CBC_SHA", 50);
    public static final h I = c("TLS_DHE_RSA_WITH_AES_128_CBC_SHA", 51);
    public static final h J = c("TLS_DH_anon_WITH_AES_128_CBC_SHA", 52);
    public static final h K = c("TLS_RSA_WITH_AES_256_CBC_SHA", 53);
    public static final h L = c("TLS_DHE_DSS_WITH_AES_256_CBC_SHA", 56);
    public static final h M = c("TLS_DHE_RSA_WITH_AES_256_CBC_SHA", 57);
    public static final h N = c("TLS_DH_anon_WITH_AES_256_CBC_SHA", 58);
    public static final h O = c("TLS_RSA_WITH_NULL_SHA256", 59);
    public static final h P = c("TLS_RSA_WITH_AES_128_CBC_SHA256", 60);
    public static final h Q = c("TLS_RSA_WITH_AES_256_CBC_SHA256", 61);
    public static final h R = c("TLS_DHE_DSS_WITH_AES_128_CBC_SHA256", 64);
    public static final h S = c("TLS_RSA_WITH_CAMELLIA_128_CBC_SHA", 65);
    public static final h T = c("TLS_DHE_DSS_WITH_CAMELLIA_128_CBC_SHA", 68);
    public static final h U = c("TLS_DHE_RSA_WITH_CAMELLIA_128_CBC_SHA", 69);
    public static final h V = c("TLS_DHE_RSA_WITH_AES_128_CBC_SHA256", 103);
    public static final h W = c("TLS_DHE_DSS_WITH_AES_256_CBC_SHA256", 106);
    public static final h X = c("TLS_DHE_RSA_WITH_AES_256_CBC_SHA256", 107);
    public static final h Y = c("TLS_DH_anon_WITH_AES_128_CBC_SHA256", 108);
    public static final h Z = c("TLS_DH_anon_WITH_AES_256_CBC_SHA256", 109);

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    public static final h f31035a0 = c("TLS_RSA_WITH_CAMELLIA_256_CBC_SHA", 132);

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public static final h f31038b0 = c("TLS_DHE_DSS_WITH_CAMELLIA_256_CBC_SHA", 135);

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public static final h f31041c0 = c("TLS_DHE_RSA_WITH_CAMELLIA_256_CBC_SHA", 136);

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    public static final h f31044d0 = c("TLS_PSK_WITH_RC4_128_SHA", 138);

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    public static final h f31047e0 = c("TLS_PSK_WITH_3DES_EDE_CBC_SHA", 139);

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    public static final h f31050f0 = c("TLS_PSK_WITH_AES_128_CBC_SHA", 140);

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    public static final h f31053g0 = c("TLS_PSK_WITH_AES_256_CBC_SHA", 141);

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    public static final h f31056h0 = c("TLS_RSA_WITH_SEED_CBC_SHA", 150);

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public static final h f31059i0 = c("TLS_RSA_WITH_AES_128_GCM_SHA256", 156);

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public static final h f31062j0 = c("TLS_RSA_WITH_AES_256_GCM_SHA384", 157);

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    public static final h f31065k0 = c("TLS_DHE_RSA_WITH_AES_128_GCM_SHA256", 158);

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public static final h f31068l0 = c("TLS_DHE_RSA_WITH_AES_256_GCM_SHA384", 159);

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public static final h f31071m0 = c("TLS_DHE_DSS_WITH_AES_128_GCM_SHA256", 162);

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public static final h f31074n0 = c("TLS_DHE_DSS_WITH_AES_256_GCM_SHA384", 163);

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public static final h f31077o0 = c("TLS_DH_anon_WITH_AES_128_GCM_SHA256", 166);

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public static final h f31080p0 = c("TLS_DH_anon_WITH_AES_256_GCM_SHA384", 167);

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public static final h f31083q0 = c("TLS_EMPTY_RENEGOTIATION_INFO_SCSV", 255);

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public static final h f31086r0 = c("TLS_FALLBACK_SCSV", 22016);

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public static final h f31089s0 = c("TLS_ECDH_ECDSA_WITH_NULL_SHA", 49153);

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public static final h f31091t0 = c("TLS_ECDH_ECDSA_WITH_RC4_128_SHA", 49154);

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public static final h f31093u0 = c("TLS_ECDH_ECDSA_WITH_3DES_EDE_CBC_SHA", 49155);

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public static final h f31095v0 = c("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA", 49156);

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public static final h f31097w0 = c("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA", 49157);

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public static final h f31099x0 = c("TLS_ECDHE_ECDSA_WITH_NULL_SHA", 49158);

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public static final h f31101y0 = c("TLS_ECDHE_ECDSA_WITH_RC4_128_SHA", 49159);

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public static final h f31103z0 = c("TLS_ECDHE_ECDSA_WITH_3DES_EDE_CBC_SHA", 49160);
    public static final h A0 = c("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA", 49161);
    public static final h B0 = c("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA", 49162);
    public static final h C0 = c("TLS_ECDH_RSA_WITH_NULL_SHA", 49163);
    public static final h D0 = c("TLS_ECDH_RSA_WITH_RC4_128_SHA", 49164);
    public static final h E0 = c("TLS_ECDH_RSA_WITH_3DES_EDE_CBC_SHA", 49165);
    public static final h F0 = c("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA", 49166);
    public static final h G0 = c("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA", 49167);
    public static final h H0 = c("TLS_ECDHE_RSA_WITH_NULL_SHA", 49168);
    public static final h I0 = c("TLS_ECDHE_RSA_WITH_RC4_128_SHA", 49169);
    public static final h J0 = c("TLS_ECDHE_RSA_WITH_3DES_EDE_CBC_SHA", 49170);
    public static final h K0 = c("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA", 49171);
    public static final h L0 = c("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA", 49172);
    public static final h M0 = c("TLS_ECDH_anon_WITH_NULL_SHA", 49173);
    public static final h N0 = c("TLS_ECDH_anon_WITH_RC4_128_SHA", 49174);
    public static final h O0 = c("TLS_ECDH_anon_WITH_3DES_EDE_CBC_SHA", 49175);
    public static final h P0 = c("TLS_ECDH_anon_WITH_AES_128_CBC_SHA", 49176);
    public static final h Q0 = c("TLS_ECDH_anon_WITH_AES_256_CBC_SHA", 49177);
    public static final h R0 = c("TLS_ECDHE_ECDSA_WITH_AES_128_CBC_SHA256", 49187);
    public static final h S0 = c("TLS_ECDHE_ECDSA_WITH_AES_256_CBC_SHA384", 49188);
    public static final h T0 = c("TLS_ECDH_ECDSA_WITH_AES_128_CBC_SHA256", 49189);
    public static final h U0 = c("TLS_ECDH_ECDSA_WITH_AES_256_CBC_SHA384", 49190);
    public static final h V0 = c("TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256", 49191);
    public static final h W0 = c("TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384", 49192);
    public static final h X0 = c("TLS_ECDH_RSA_WITH_AES_128_CBC_SHA256", 49193);
    public static final h Y0 = c("TLS_ECDH_RSA_WITH_AES_256_CBC_SHA384", 49194);
    public static final h Z0 = c("TLS_ECDHE_ECDSA_WITH_AES_128_GCM_SHA256", 49195);

    /* JADX INFO: renamed from: a1, reason: collision with root package name */
    public static final h f31036a1 = c("TLS_ECDHE_ECDSA_WITH_AES_256_GCM_SHA384", 49196);

    /* JADX INFO: renamed from: b1, reason: collision with root package name */
    public static final h f31039b1 = c("TLS_ECDH_ECDSA_WITH_AES_128_GCM_SHA256", 49197);

    /* JADX INFO: renamed from: c1, reason: collision with root package name */
    public static final h f31042c1 = c("TLS_ECDH_ECDSA_WITH_AES_256_GCM_SHA384", 49198);

    /* JADX INFO: renamed from: d1, reason: collision with root package name */
    public static final h f31045d1 = c("TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256", 49199);

    /* JADX INFO: renamed from: e1, reason: collision with root package name */
    public static final h f31048e1 = c("TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384", 49200);

    /* JADX INFO: renamed from: f1, reason: collision with root package name */
    public static final h f31051f1 = c("TLS_ECDH_RSA_WITH_AES_128_GCM_SHA256", 49201);

    /* JADX INFO: renamed from: g1, reason: collision with root package name */
    public static final h f31054g1 = c("TLS_ECDH_RSA_WITH_AES_256_GCM_SHA384", 49202);

    /* JADX INFO: renamed from: h1, reason: collision with root package name */
    public static final h f31057h1 = c("TLS_ECDHE_PSK_WITH_AES_128_CBC_SHA", 49205);

    /* JADX INFO: renamed from: i1, reason: collision with root package name */
    public static final h f31060i1 = c("TLS_ECDHE_PSK_WITH_AES_256_CBC_SHA", 49206);

    /* JADX INFO: renamed from: j1, reason: collision with root package name */
    public static final h f31063j1 = c("TLS_ECDHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52392);

    /* JADX INFO: renamed from: k1, reason: collision with root package name */
    public static final h f31066k1 = c("TLS_ECDHE_ECDSA_WITH_CHACHA20_POLY1305_SHA256", 52393);

    /* JADX INFO: renamed from: l1, reason: collision with root package name */
    public static final h f31069l1 = c("TLS_DHE_RSA_WITH_CHACHA20_POLY1305_SHA256", 52394);

    /* JADX INFO: renamed from: m1, reason: collision with root package name */
    public static final h f31072m1 = c("TLS_ECDHE_PSK_WITH_CHACHA20_POLY1305_SHA256", 52396);

    /* JADX INFO: renamed from: n1, reason: collision with root package name */
    public static final h f31075n1 = c("TLS_AES_128_GCM_SHA256", 4865);

    /* JADX INFO: renamed from: o1, reason: collision with root package name */
    public static final h f31078o1 = c("TLS_AES_256_GCM_SHA384", 4866);

    /* JADX INFO: renamed from: p1, reason: collision with root package name */
    public static final h f31081p1 = c("TLS_CHACHA20_POLY1305_SHA256", 4867);

    /* JADX INFO: renamed from: q1, reason: collision with root package name */
    public static final h f31084q1 = c("TLS_AES_128_CCM_SHA256", 4868);

    /* JADX INFO: renamed from: r1, reason: collision with root package name */
    public static final h f31087r1 = c("TLS_AES_256_CCM_8_SHA256", 4869);

    /* JADX INFO: compiled from: CipherSuite.java */
    class a implements Comparator<String> {
        a() {
        }

        @Override // java.util.Comparator
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public int compare(String str, String str2) {
            int iMin = Math.min(str.length(), str2.length());
            for (int i10 = 4; i10 < iMin; i10++) {
                char cCharAt = str.charAt(i10);
                char cCharAt2 = str2.charAt(i10);
                if (cCharAt != cCharAt2) {
                    return cCharAt < cCharAt2 ? -1 : 1;
                }
            }
            int length = str.length();
            int length2 = str2.length();
            if (length != length2) {
                return length < length2 ? -1 : 1;
            }
            return 0;
        }
    }

    private h(String str) {
        Objects.requireNonNull(str);
        this.f31104a = str;
    }

    public static synchronized h a(String str) {
        h hVar;
        Map<String, h> map = f31040c;
        hVar = map.get(str);
        if (hVar == null) {
            hVar = map.get(d(str));
            if (hVar == null) {
                hVar = new h(str);
            }
            map.put(str, hVar);
        }
        return hVar;
    }

    static List<h> b(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    private static h c(String str, int i10) {
        h hVar = new h(str);
        f31040c.put(str, hVar);
        return hVar;
    }

    private static String d(String str) {
        if (str.startsWith("TLS_")) {
            return "SSL_" + str.substring(4);
        }
        if (!str.startsWith("SSL_")) {
            return str;
        }
        return "TLS_" + str.substring(4);
    }

    public String toString() {
        return this.f31104a;
    }
}
