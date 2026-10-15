package ja;

import com.facebook.internal.security.CertificateUtil;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;

/* JADX INFO: compiled from: CertificatePinner.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final g f31027c = new a().b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<b> f31028a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final sa.c f31029b;

    /* JADX INFO: compiled from: CertificatePinner.java */
    /* JADX INFO: loaded from: classes2.dex */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final List<b> f31030a = new ArrayList();

        public a a(String str, String... strArr) {
            Objects.requireNonNull(str, "pattern == null");
            for (String str2 : strArr) {
                this.f31030a.add(new b(str, str2));
            }
            return this;
        }

        public g b() {
            return new g(new LinkedHashSet(this.f31030a), null);
        }
    }

    /* JADX INFO: compiled from: CertificatePinner.java */
    /* JADX INFO: loaded from: classes2.dex */
    static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final String f31031a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final String f31032b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final String f31033c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final okio.f f31034d;

        b(String str, String str2) {
            String strM;
            this.f31031a = str;
            if (str.startsWith("*.")) {
                strM = t.l("http://" + str.substring(2)).m();
            } else {
                strM = t.l("http://" + str).m();
            }
            this.f31032b = strM;
            if (str2.startsWith("sha1/")) {
                this.f31033c = "sha1/";
                this.f31034d = okio.f.g(str2.substring(5));
            } else {
                if (!str2.startsWith("sha256/")) {
                    throw new IllegalArgumentException("pins must start with 'sha256/' or 'sha1/': " + str2);
                }
                this.f31033c = "sha256/";
                this.f31034d = okio.f.g(str2.substring(7));
            }
            if (this.f31034d != null) {
                return;
            }
            throw new IllegalArgumentException("pins must be base64: " + str2);
        }

        boolean a(String str) {
            if (!this.f31031a.startsWith("*.")) {
                return str.equals(this.f31032b);
            }
            int iIndexOf = str.indexOf(46);
            if ((str.length() - iIndexOf) - 1 == this.f31032b.length()) {
                String str2 = this.f31032b;
                if (str.regionMatches(false, iIndexOf + 1, str2, 0, str2.length())) {
                    return true;
                }
            }
            return false;
        }

        public boolean equals(Object obj) {
            if (obj instanceof b) {
                b bVar = (b) obj;
                if (this.f31031a.equals(bVar.f31031a) && this.f31033c.equals(bVar.f31033c) && this.f31034d.equals(bVar.f31034d)) {
                    return true;
                }
            }
            return false;
        }

        public int hashCode() {
            return ((((527 + this.f31031a.hashCode()) * 31) + this.f31033c.hashCode()) * 31) + this.f31034d.hashCode();
        }

        public String toString() {
            return this.f31033c + this.f31034d.c();
        }
    }

    g(Set<b> set, @Nullable sa.c cVar) {
        this.f31028a = set;
        this.f31029b = cVar;
    }

    public static String c(Certificate certificate) {
        if (!(certificate instanceof X509Certificate)) {
            throw new IllegalArgumentException("Certificate pinning requires X509 certificates");
        }
        return "sha256/" + e((X509Certificate) certificate).c();
    }

    static okio.f d(X509Certificate x509Certificate) {
        return okio.f.o(x509Certificate.getPublicKey().getEncoded()).u();
    }

    static okio.f e(X509Certificate x509Certificate) {
        return okio.f.o(x509Certificate.getPublicKey().getEncoded()).I();
    }

    public void a(String str, List<Certificate> list) throws SSLPeerUnverifiedException {
        List<b> listB = b(str);
        if (listB.isEmpty()) {
            return;
        }
        sa.c cVar = this.f31029b;
        if (cVar != null) {
            list = cVar.a(list, str);
        }
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            X509Certificate x509Certificate = (X509Certificate) list.get(i10);
            int size2 = listB.size();
            okio.f fVarE = null;
            okio.f fVarD = null;
            for (int i11 = 0; i11 < size2; i11++) {
                b bVar = listB.get(i11);
                if (bVar.f31033c.equals("sha256/")) {
                    if (fVarE == null) {
                        fVarE = e(x509Certificate);
                    }
                    if (bVar.f31034d.equals(fVarE)) {
                        return;
                    }
                } else {
                    if (!bVar.f31033c.equals("sha1/")) {
                        throw new AssertionError("unsupported hashAlgorithm: " + bVar.f31033c);
                    }
                    if (fVarD == null) {
                        fVarD = d(x509Certificate);
                    }
                    if (bVar.f31034d.equals(fVarD)) {
                        return;
                    }
                }
            }
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Certificate pinning failure!");
        sb.append("\n  Peer certificate chain:");
        int size3 = list.size();
        for (int i12 = 0; i12 < size3; i12++) {
            X509Certificate x509Certificate2 = (X509Certificate) list.get(i12);
            sb.append("\n    ");
            sb.append(c(x509Certificate2));
            sb.append(": ");
            sb.append(x509Certificate2.getSubjectDN().getName());
        }
        sb.append("\n  Pinned certificates for ");
        sb.append(str);
        sb.append(CertificateUtil.DELIMITER);
        int size4 = listB.size();
        for (int i13 = 0; i13 < size4; i13++) {
            b bVar2 = listB.get(i13);
            sb.append("\n    ");
            sb.append(bVar2);
        }
        throw new SSLPeerUnverifiedException(sb.toString());
    }

    List<b> b(String str) {
        List<b> listEmptyList = Collections.emptyList();
        for (b bVar : this.f31028a) {
            if (bVar.a(str)) {
                if (listEmptyList.isEmpty()) {
                    listEmptyList = new ArrayList<>();
                }
                listEmptyList.add(bVar);
            }
        }
        return listEmptyList;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof g) {
            g gVar = (g) obj;
            if (ka.c.q(this.f31029b, gVar.f31029b) && this.f31028a.equals(gVar.f31028a)) {
                return true;
            }
        }
        return false;
    }

    g f(@Nullable sa.c cVar) {
        return ka.c.q(this.f31029b, cVar) ? this : new g(this.f31028a, cVar);
    }

    public int hashCode() {
        sa.c cVar = this.f31029b;
        return ((cVar != null ? cVar.hashCode() : 0) * 31) + this.f31028a.hashCode();
    }
}
