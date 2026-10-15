package ja;

import java.io.IOException;
import java.security.cert.Certificate;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;

/* JADX INFO: compiled from: Handshake.java */
/* JADX INFO: loaded from: classes.dex */
public final class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final f0 f31157a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h f31158b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final List<Certificate> f31159c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final List<Certificate> f31160d;

    private r(f0 f0Var, h hVar, List<Certificate> list, List<Certificate> list2) {
        this.f31157a = f0Var;
        this.f31158b = hVar;
        this.f31159c = list;
        this.f31160d = list2;
    }

    public static r b(SSLSession sSLSession) throws IOException {
        Certificate[] peerCertificates;
        String cipherSuite = sSLSession.getCipherSuite();
        if (cipherSuite == null) {
            throw new IllegalStateException("cipherSuite == null");
        }
        if ("SSL_NULL_WITH_NULL_NULL".equals(cipherSuite)) {
            throw new IOException("cipherSuite == SSL_NULL_WITH_NULL_NULL");
        }
        h hVarA = h.a(cipherSuite);
        String protocol = sSLSession.getProtocol();
        if (protocol == null) {
            throw new IllegalStateException("tlsVersion == null");
        }
        if ("NONE".equals(protocol)) {
            throw new IOException("tlsVersion == NONE");
        }
        f0 f0VarC = f0.c(protocol);
        try {
            peerCertificates = sSLSession.getPeerCertificates();
        } catch (SSLPeerUnverifiedException unused) {
            peerCertificates = null;
        }
        List listU = peerCertificates != null ? ka.c.u(peerCertificates) : Collections.emptyList();
        Certificate[] localCertificates = sSLSession.getLocalCertificates();
        return new r(f0VarC, hVarA, listU, localCertificates != null ? ka.c.u(localCertificates) : Collections.emptyList());
    }

    public h a() {
        return this.f31158b;
    }

    public List<Certificate> c() {
        return this.f31159c;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof r)) {
            return false;
        }
        r rVar = (r) obj;
        return this.f31157a.equals(rVar.f31157a) && this.f31158b.equals(rVar.f31158b) && this.f31159c.equals(rVar.f31159c) && this.f31160d.equals(rVar.f31160d);
    }

    public int hashCode() {
        return ((((((527 + this.f31157a.hashCode()) * 31) + this.f31158b.hashCode()) * 31) + this.f31159c.hashCode()) * 31) + this.f31160d.hashCode();
    }
}
