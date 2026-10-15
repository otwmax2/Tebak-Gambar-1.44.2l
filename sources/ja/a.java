package ja;

import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import com.facebook.internal.security.CertificateUtil;
import ja.t;
import java.net.Proxy;
import java.net.ProxySelector;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: Address.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final t f30931a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final o f30932b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final SocketFactory f30933c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final b f30934d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final List<y> f30935e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    final List<k> f30936f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    final ProxySelector f30937g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    final Proxy f30938h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    @Nullable
    final SSLSocketFactory f30939i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    @Nullable
    final HostnameVerifier f30940j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    @Nullable
    final g f30941k;

    public a(String str, int i10, o oVar, SocketFactory socketFactory, @Nullable SSLSocketFactory sSLSocketFactory, @Nullable HostnameVerifier hostnameVerifier, @Nullable g gVar, b bVar, @Nullable Proxy proxy, List<y> list, List<k> list2, ProxySelector proxySelector) {
        this.f30931a = new t.a().t(sSLSocketFactory != null ? TournamentShareDialogURIBuilder.scheme : "http").g(str).n(i10).c();
        Objects.requireNonNull(oVar, "dns == null");
        this.f30932b = oVar;
        Objects.requireNonNull(socketFactory, "socketFactory == null");
        this.f30933c = socketFactory;
        Objects.requireNonNull(bVar, "proxyAuthenticator == null");
        this.f30934d = bVar;
        Objects.requireNonNull(list, "protocols == null");
        this.f30935e = ka.c.t(list);
        Objects.requireNonNull(list2, "connectionSpecs == null");
        this.f30936f = ka.c.t(list2);
        Objects.requireNonNull(proxySelector, "proxySelector == null");
        this.f30937g = proxySelector;
        this.f30938h = proxy;
        this.f30939i = sSLSocketFactory;
        this.f30940j = hostnameVerifier;
        this.f30941k = gVar;
    }

    @Nullable
    public g a() {
        return this.f30941k;
    }

    public List<k> b() {
        return this.f30936f;
    }

    public o c() {
        return this.f30932b;
    }

    boolean d(a aVar) {
        return this.f30932b.equals(aVar.f30932b) && this.f30934d.equals(aVar.f30934d) && this.f30935e.equals(aVar.f30935e) && this.f30936f.equals(aVar.f30936f) && this.f30937g.equals(aVar.f30937g) && ka.c.q(this.f30938h, aVar.f30938h) && ka.c.q(this.f30939i, aVar.f30939i) && ka.c.q(this.f30940j, aVar.f30940j) && ka.c.q(this.f30941k, aVar.f30941k) && l().z() == aVar.l().z();
    }

    @Nullable
    public HostnameVerifier e() {
        return this.f30940j;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof a) {
            a aVar = (a) obj;
            if (this.f30931a.equals(aVar.f30931a) && d(aVar)) {
                return true;
            }
        }
        return false;
    }

    public List<y> f() {
        return this.f30935e;
    }

    @Nullable
    public Proxy g() {
        return this.f30938h;
    }

    public b h() {
        return this.f30934d;
    }

    public int hashCode() {
        int iHashCode = (((((((((((527 + this.f30931a.hashCode()) * 31) + this.f30932b.hashCode()) * 31) + this.f30934d.hashCode()) * 31) + this.f30935e.hashCode()) * 31) + this.f30936f.hashCode()) * 31) + this.f30937g.hashCode()) * 31;
        Proxy proxy = this.f30938h;
        int iHashCode2 = (iHashCode + (proxy != null ? proxy.hashCode() : 0)) * 31;
        SSLSocketFactory sSLSocketFactory = this.f30939i;
        int iHashCode3 = (iHashCode2 + (sSLSocketFactory != null ? sSLSocketFactory.hashCode() : 0)) * 31;
        HostnameVerifier hostnameVerifier = this.f30940j;
        int iHashCode4 = (iHashCode3 + (hostnameVerifier != null ? hostnameVerifier.hashCode() : 0)) * 31;
        g gVar = this.f30941k;
        return iHashCode4 + (gVar != null ? gVar.hashCode() : 0);
    }

    public ProxySelector i() {
        return this.f30937g;
    }

    public SocketFactory j() {
        return this.f30933c;
    }

    @Nullable
    public SSLSocketFactory k() {
        return this.f30939i;
    }

    public t l() {
        return this.f30931a;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Address{");
        sb.append(this.f30931a.m());
        sb.append(CertificateUtil.DELIMITER);
        sb.append(this.f30931a.z());
        if (this.f30938h != null) {
            sb.append(", proxy=");
            sb.append(this.f30938h);
        } else {
            sb.append(", proxySelector=");
            sb.append(this.f30937g);
        }
        sb.append("}");
        return sb.toString();
    }
}
