package ma;

import com.facebook.appevents.integrity.IntegrityManager;
import com.facebook.internal.security.CertificateUtil;
import com.vungle.warren.ui.JavascriptBridge;
import ja.a0;
import ja.c0;
import ja.e0;
import ja.i;
import ja.j;
import ja.k;
import ja.p;
import ja.r;
import ja.t;
import ja.u;
import ja.x;
import ja.y;
import java.io.IOException;
import java.lang.ref.Reference;
import java.net.ConnectException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketException;
import java.net.SocketTimeoutException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import okio.n;
import okio.u;
import okio.v;
import pa.g;

/* JADX INFO: compiled from: RealConnection.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends g.j implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final j f32236b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final e0 f32237c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Socket f32238d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Socket f32239e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private r f32240f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private y f32241g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private pa.g f32242h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private okio.e f32243i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private okio.d f32244j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f32245k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f32246l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f32247m = 1;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final List<Reference<g>> f32248n = new ArrayList();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public long f32249o = Long.MAX_VALUE;

    public c(j jVar, e0 e0Var) {
        this.f32236b = jVar;
        this.f32237c = e0Var;
    }

    private void f(int i10, int i11, ja.e eVar, p pVar) throws IOException {
        Proxy proxyB = this.f32237c.b();
        this.f32238d = (proxyB.type() == Proxy.Type.DIRECT || proxyB.type() == Proxy.Type.HTTP) ? this.f32237c.a().j().createSocket() : new Socket(proxyB);
        pVar.f(eVar, this.f32237c.d(), proxyB);
        this.f32238d.setSoTimeout(i11);
        try {
            qa.g.l().h(this.f32238d, this.f32237c.d(), i10);
            try {
                this.f32243i = n.c(n.l(this.f32238d));
                this.f32244j = n.b(n.h(this.f32238d));
            } catch (NullPointerException e10) {
                if ("throw with null exception".equals(e10.getMessage())) {
                    throw new IOException(e10);
                }
            }
        } catch (ConnectException e11) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.f32237c.d());
            connectException.initCause(e11);
            throw connectException;
        }
    }

    private void g(b bVar) throws Throwable {
        SSLSocket sSLSocket;
        ja.a aVarA = this.f32237c.a();
        SSLSocket sSLSocket2 = null;
        try {
            try {
                sSLSocket = (SSLSocket) aVarA.k().createSocket(this.f32238d, aVarA.l().m(), aVarA.l().z(), true);
            } catch (AssertionError e10) {
                e = e10;
            }
        } catch (Throwable th) {
            th = th;
        }
        try {
            k kVarA = bVar.a(sSLSocket);
            if (kVarA.f()) {
                qa.g.l().g(sSLSocket, aVarA.l().m(), aVarA.f());
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            r rVarB = r.b(session);
            if (aVarA.e().verify(aVarA.l().m(), session)) {
                aVarA.a().a(aVarA.l().m(), rVarB.c());
                String strN = kVarA.f() ? qa.g.l().n(sSLSocket) : null;
                this.f32239e = sSLSocket;
                this.f32243i = n.c(n.l(sSLSocket));
                this.f32244j = n.b(n.h(this.f32239e));
                this.f32240f = rVarB;
                this.f32241g = strN != null ? y.c(strN) : y.HTTP_1_1;
                qa.g.l().a(sSLSocket);
                return;
            }
            List<Certificate> listC = rVarB.c();
            if (listC.isEmpty()) {
                throw new SSLPeerUnverifiedException("Hostname " + aVarA.l().m() + " not verified (no certificates)");
            }
            X509Certificate x509Certificate = (X509Certificate) listC.get(0);
            throw new SSLPeerUnverifiedException("Hostname " + aVarA.l().m() + " not verified:\n    certificate: " + ja.g.c(x509Certificate) + "\n    DN: " + x509Certificate.getSubjectDN().getName() + "\n    subjectAltNames: " + sa.d.a(x509Certificate));
        } catch (AssertionError e11) {
            e = e11;
            if (!ka.c.A(e)) {
                throw e;
            }
            throw new IOException(e);
        } catch (Throwable th2) {
            th = th2;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                qa.g.l().a(sSLSocket2);
            }
            ka.c.h(sSLSocket2);
            throw th;
        }
    }

    private void h(int i10, int i11, int i12, ja.e eVar, p pVar) throws IOException {
        a0 a0VarJ = j();
        t tVarH = a0VarJ.h();
        for (int i13 = 0; i13 < 21; i13++) {
            f(i10, i11, eVar, pVar);
            a0VarJ = i(i11, i12, a0VarJ, tVarH);
            if (a0VarJ == null) {
                return;
            }
            ka.c.h(this.f32238d);
            this.f32238d = null;
            this.f32244j = null;
            this.f32243i = null;
            pVar.d(eVar, this.f32237c.d(), this.f32237c.b(), null);
        }
    }

    private a0 i(int i10, int i11, a0 a0Var, t tVar) throws IOException {
        String str = "CONNECT " + ka.c.s(tVar, true) + " HTTP/1.1";
        while (true) {
            oa.a aVar = new oa.a(null, null, this.f32243i, this.f32244j);
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            this.f32243i.timeout().g(i10, timeUnit);
            this.f32244j.timeout().g(i11, timeUnit);
            aVar.o(a0Var.d(), str);
            aVar.a();
            c0 c0VarC = aVar.d(false).p(a0Var).c();
            long jB = na.e.b(c0VarC);
            if (jB == -1) {
                jB = 0;
            }
            u uVarK = aVar.k(jB);
            ka.c.D(uVarK, Integer.MAX_VALUE, timeUnit);
            uVarK.close();
            int iD = c0VarC.d();
            if (iD == 200) {
                if (this.f32243i.B().S0() && this.f32244j.B().S0()) {
                    return null;
                }
                throw new IOException("TLS tunnel buffered too many bytes!");
            }
            if (iD != 407) {
                throw new IOException("Unexpected response code for CONNECT: " + c0VarC.d());
            }
            a0 a0VarA = this.f32237c.a().h().a(this.f32237c, c0VarC);
            if (a0VarA == null) {
                throw new IOException("Failed to authenticate with proxy");
            }
            if (JavascriptBridge.MraidHandler.CLOSE_ACTION.equalsIgnoreCase(c0VarC.f("Connection"))) {
                return a0VarA;
            }
            a0Var = a0VarA;
        }
    }

    private a0 j() throws IOException {
        a0 a0VarB = new a0.a().i(this.f32237c.a().l()).f("CONNECT", null).d("Host", ka.c.s(this.f32237c.a().l(), true)).d("Proxy-Connection", "Keep-Alive").d("User-Agent", ka.d.a()).b();
        a0 a0VarA = this.f32237c.a().h().a(this.f32237c, new c0.a().p(a0VarB).n(y.HTTP_1_1).g(407).k("Preemptive Authenticate").b(ka.c.f31640c).q(-1L).o(-1L).i("Proxy-Authenticate", "OkHttp-Preemptive").c());
        return a0VarA != null ? a0VarA : a0VarB;
    }

    private void k(b bVar, int i10, ja.e eVar, p pVar) throws Throwable {
        if (this.f32237c.a().k() != null) {
            pVar.u(eVar);
            g(bVar);
            pVar.t(eVar, this.f32240f);
            if (this.f32241g == y.HTTP_2) {
                s(i10);
                return;
            }
            return;
        }
        List<y> listF = this.f32237c.a().f();
        y yVar = y.H2_PRIOR_KNOWLEDGE;
        if (!listF.contains(yVar)) {
            this.f32239e = this.f32238d;
            this.f32241g = y.HTTP_1_1;
        } else {
            this.f32239e = this.f32238d;
            this.f32241g = yVar;
            s(i10);
        }
    }

    private void s(int i10) throws IOException {
        this.f32239e.setSoTimeout(0);
        pa.g gVarA = new g.h(true).d(this.f32239e, this.f32237c.a().l().m(), this.f32243i, this.f32244j).b(this).c(i10).a();
        this.f32242h = gVarA;
        gVarA.E();
    }

    @Override // ja.i
    public y a() {
        return this.f32241g;
    }

    @Override // pa.g.j
    public void b(pa.g gVar) {
        synchronized (this.f32236b) {
            this.f32247m = gVar.q();
        }
    }

    @Override // pa.g.j
    public void c(pa.i iVar) throws IOException {
        iVar.f(pa.b.REFUSED_STREAM);
    }

    public void d() {
        ka.c.h(this.f32238d);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x00f4 A[ORIG_RETURN, RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:55:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0135  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x0142 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void e(int r17, int r18, int r19, int r20, boolean r21, ja.e r22, ja.p r23) throws java.lang.Throwable {
        /*
            Method dump skipped, instruction units count: 346
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ma.c.e(int, int, int, int, boolean, ja.e, ja.p):void");
    }

    public r l() {
        return this.f32240f;
    }

    public boolean m(ja.a aVar, @Nullable e0 e0Var) {
        if (this.f32248n.size() >= this.f32247m || this.f32245k || !ka.a.f31636a.g(this.f32237c.a(), aVar)) {
            return false;
        }
        if (aVar.l().m().equals(q().a().l().m())) {
            return true;
        }
        if (this.f32242h == null || e0Var == null || e0Var.b().type() != Proxy.Type.DIRECT || this.f32237c.b().type() != Proxy.Type.DIRECT || !this.f32237c.d().equals(e0Var.d()) || e0Var.a().e() != sa.d.f35041a || !t(aVar.l())) {
            return false;
        }
        try {
            aVar.a().a(aVar.l().m(), l().c());
            return true;
        } catch (SSLPeerUnverifiedException unused) {
            return false;
        }
    }

    public boolean n(boolean z10) {
        if (this.f32239e.isClosed() || this.f32239e.isInputShutdown() || this.f32239e.isOutputShutdown()) {
            return false;
        }
        pa.g gVar = this.f32242h;
        if (gVar != null) {
            return gVar.p(System.nanoTime());
        }
        if (z10) {
            try {
                int soTimeout = this.f32239e.getSoTimeout();
                try {
                    this.f32239e.setSoTimeout(1);
                    return !this.f32243i.S0();
                } finally {
                    this.f32239e.setSoTimeout(soTimeout);
                }
            } catch (SocketTimeoutException unused) {
            } catch (IOException unused2) {
                return false;
            }
        }
        return true;
    }

    public boolean o() {
        return this.f32242h != null;
    }

    public na.c p(x xVar, u.a aVar, g gVar) throws SocketException {
        if (this.f32242h != null) {
            return new pa.f(xVar, aVar, gVar, this.f32242h);
        }
        this.f32239e.setSoTimeout(aVar.a());
        v vVarTimeout = this.f32243i.timeout();
        long jA = aVar.a();
        TimeUnit timeUnit = TimeUnit.MILLISECONDS;
        vVarTimeout.g(jA, timeUnit);
        this.f32244j.timeout().g(aVar.b(), timeUnit);
        return new oa.a(xVar, gVar, this.f32243i, this.f32244j);
    }

    public e0 q() {
        return this.f32237c;
    }

    public Socket r() {
        return this.f32239e;
    }

    public boolean t(t tVar) {
        if (tVar.z() != this.f32237c.a().l().z()) {
            return false;
        }
        if (tVar.m().equals(this.f32237c.a().l().m())) {
            return true;
        }
        return this.f32240f != null && sa.d.f35041a.c(tVar.m(), (X509Certificate) this.f32240f.c().get(0));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Connection{");
        sb.append(this.f32237c.a().l().m());
        sb.append(CertificateUtil.DELIMITER);
        sb.append(this.f32237c.a().l().z());
        sb.append(", proxy=");
        sb.append(this.f32237c.b());
        sb.append(" hostAddress=");
        sb.append(this.f32237c.d());
        sb.append(" cipherSuite=");
        r rVar = this.f32240f;
        sb.append(rVar != null ? rVar.a() : IntegrityManager.INTEGRITY_TYPE_NONE);
        sb.append(" protocol=");
        sb.append(this.f32241g);
        sb.append('}');
        return sb.toString();
    }
}
