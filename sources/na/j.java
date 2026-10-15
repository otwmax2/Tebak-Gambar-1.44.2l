package na;

import ja.a0;
import ja.c0;
import ja.e0;
import ja.p;
import ja.t;
import ja.u;
import ja.x;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;

/* JADX INFO: compiled from: RetryAndFollowUpInterceptor.java */
/* JADX INFO: loaded from: classes2.dex */
public final class j implements u {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final x f32536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final boolean f32537b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile ma.g f32538c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Object f32539d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile boolean f32540e;

    public j(x xVar, boolean z10) {
        this.f32536a = xVar;
        this.f32537b = z10;
    }

    private ja.a b(t tVar) {
        SSLSocketFactory sSLSocketFactory;
        HostnameVerifier hostnameVerifierP;
        ja.g gVarF;
        if (tVar.n()) {
            SSLSocketFactory sSLSocketFactoryD = this.f32536a.D();
            hostnameVerifierP = this.f32536a.p();
            sSLSocketFactory = sSLSocketFactoryD;
            gVarF = this.f32536a.f();
        } else {
            sSLSocketFactory = null;
            hostnameVerifierP = null;
            gVarF = null;
        }
        return new ja.a(tVar.m(), tVar.z(), this.f32536a.l(), this.f32536a.C(), sSLSocketFactory, hostnameVerifierP, gVarF, this.f32536a.y(), this.f32536a.x(), this.f32536a.w(), this.f32536a.i(), this.f32536a.z());
    }

    private a0 c(c0 c0Var, e0 e0Var) throws IOException {
        String strF;
        t tVarG;
        if (c0Var == null) {
            throw new IllegalStateException();
        }
        int iD = c0Var.d();
        String strF2 = c0Var.n().f();
        if (iD == 307 || iD == 308) {
            if (!strF2.equals("GET") && !strF2.equals("HEAD")) {
                return null;
            }
        } else {
            if (iD == 401) {
                return this.f32536a.b().a(e0Var, c0Var);
            }
            if (iD == 503) {
                if ((c0Var.l() == null || c0Var.l().d() != 503) && h(c0Var, Integer.MAX_VALUE) == 0) {
                    return c0Var.n();
                }
                return null;
            }
            if (iD == 407) {
                if (e0Var.b().type() == Proxy.Type.HTTP) {
                    return this.f32536a.y().a(e0Var, c0Var);
                }
                throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
            }
            if (iD == 408) {
                if (!this.f32536a.B()) {
                    return null;
                }
                c0Var.n().a();
                if ((c0Var.l() == null || c0Var.l().d() != 408) && h(c0Var, 0) <= 0) {
                    return c0Var.n();
                }
                return null;
            }
            switch (iD) {
                case 300:
                case 301:
                case 302:
                case 303:
                    break;
                default:
                    return null;
            }
        }
        if (!this.f32536a.n() || (strF = c0Var.f("Location")) == null || (tVarG = c0Var.n().h().G(strF)) == null) {
            return null;
        }
        if (!tVarG.H().equals(c0Var.n().h().H()) && !this.f32536a.o()) {
            return null;
        }
        a0.a aVarG = c0Var.n().g();
        if (f.b(strF2)) {
            boolean zD = f.d(strF2);
            if (f.c(strF2)) {
                aVarG.f("GET", null);
            } else {
                aVarG.f(strF2, zD ? c0Var.n().a() : null);
            }
            if (!zD) {
                aVarG.h("Transfer-Encoding");
                aVarG.h("Content-Length");
                aVarG.h("Content-Type");
            }
        }
        if (!i(c0Var, tVarG)) {
            aVarG.h("Authorization");
        }
        return aVarG.i(tVarG).b();
    }

    private boolean e(IOException iOException, boolean z10) {
        if (iOException instanceof ProtocolException) {
            return false;
        }
        return iOException instanceof InterruptedIOException ? (iOException instanceof SocketTimeoutException) && !z10 : (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) ? false : true;
    }

    private boolean f(IOException iOException, ma.g gVar, boolean z10, a0 a0Var) {
        gVar.q(iOException);
        if (this.f32536a.B()) {
            return !(z10 && g(iOException, a0Var)) && e(iOException, z10) && gVar.h();
        }
        return false;
    }

    private boolean g(IOException iOException, a0 a0Var) {
        a0Var.a();
        return iOException instanceof FileNotFoundException;
    }

    private int h(c0 c0Var, int i10) {
        String strF = c0Var.f("Retry-After");
        if (strF == null) {
            return i10;
        }
        if (strF.matches("\\d+")) {
            return Integer.valueOf(strF).intValue();
        }
        return Integer.MAX_VALUE;
    }

    private boolean i(c0 c0Var, t tVar) {
        t tVarH = c0Var.n().h();
        return tVarH.m().equals(tVar.m()) && tVarH.z() == tVar.z() && tVarH.H().equals(tVar.H());
    }

    public void a() {
        this.f32540e = true;
        ma.g gVar = this.f32538c;
        if (gVar != null) {
            gVar.b();
        }
    }

    public boolean d() {
        return this.f32540e;
    }

    @Override // ja.u
    public c0 intercept(u.a aVar) throws IOException {
        c0 c0VarJ;
        a0 a0VarC;
        a0 a0VarF = aVar.f();
        g gVar = (g) aVar;
        ja.e eVarG = gVar.g();
        p pVarH = gVar.h();
        ma.g gVar2 = new ma.g(this.f32536a.h(), b(a0VarF.h()), eVarG, pVarH, this.f32539d);
        this.f32538c = gVar2;
        c0 c0Var = null;
        int i10 = 0;
        while (!this.f32540e) {
            try {
                try {
                    try {
                        c0VarJ = gVar.j(a0VarF, gVar2, null, null);
                        if (c0Var != null) {
                            c0VarJ = c0VarJ.k().m(c0Var.k().b(null).c()).c();
                        }
                        try {
                            a0VarC = c(c0VarJ, gVar2.o());
                        } catch (IOException e10) {
                            gVar2.k();
                            throw e10;
                        }
                    } catch (IOException e11) {
                        if (!f(e11, gVar2, !(e11 instanceof pa.a), a0VarF)) {
                            throw e11;
                        }
                    }
                } catch (ma.e e12) {
                    if (!f(e12.c(), gVar2, false, a0VarF)) {
                        throw e12.b();
                    }
                }
                if (a0VarC == null) {
                    gVar2.k();
                    return c0VarJ;
                }
                ka.c.g(c0VarJ.b());
                int i11 = i10 + 1;
                if (i11 > 20) {
                    gVar2.k();
                    throw new ProtocolException("Too many follow-up requests: " + i11);
                }
                a0VarC.a();
                if (!i(c0VarJ, a0VarC.h())) {
                    gVar2.k();
                    gVar2 = new ma.g(this.f32536a.h(), b(a0VarC.h()), eVarG, pVarH, this.f32539d);
                    this.f32538c = gVar2;
                } else if (gVar2.c() != null) {
                    throw new IllegalStateException("Closing the body of " + c0VarJ + " didn't close its backing stream. Bad interceptor?");
                }
                c0Var = c0VarJ;
                a0VarF = a0VarC;
                i10 = i11;
            } catch (Throwable th) {
                gVar2.q(null);
                gVar2.k();
                throw th;
            }
        }
        gVar2.k();
        throw new IOException("Canceled");
    }

    public void j(Object obj) {
        this.f32539d = obj;
    }
}
