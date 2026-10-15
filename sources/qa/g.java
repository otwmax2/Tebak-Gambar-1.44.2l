package qa;

import ja.x;
import ja.y;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: Platform.java */
/* JADX INFO: loaded from: classes.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final g f34131a = k();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Logger f34132b = Logger.getLogger(x.class.getName());

    public static List<String> b(List<y> list) {
        ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            y yVar = list.get(i10);
            if (yVar != y.HTTP_1_0) {
                arrayList.add(yVar.toString());
            }
        }
        return arrayList;
    }

    static byte[] e(List<y> list) {
        okio.c cVar = new okio.c();
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            y yVar = list.get(i10);
            if (yVar != y.HTTP_1_0) {
                cVar.T0(yVar.toString().length());
                cVar.H1(yVar.toString());
            }
        }
        return cVar.M0();
    }

    private static g i() {
        g gVarW = a.w();
        if (gVarW != null) {
            return gVarW;
        }
        g gVarW2 = b.w();
        Objects.requireNonNull(gVarW2, "No platform found on Android");
        return gVarW2;
    }

    private static g j() {
        c cVarU;
        if (r() && (cVarU = c.u()) != null) {
            return cVarU;
        }
        d dVarU = d.u();
        if (dVarU != null) {
            return dVarU;
        }
        g gVarU = e.u();
        return gVarU != null ? gVarU : new g();
    }

    private static g k() {
        return p() ? i() : j();
    }

    public static g l() {
        return f34131a;
    }

    public static boolean p() {
        return "Dalvik".equals(System.getProperty("java.vm.name"));
    }

    public static boolean r() {
        if ("conscrypt".equals(System.getProperty("okhttp.platform"))) {
            return true;
        }
        return "Conscrypt".equals(Security.getProviders()[0].getName());
    }

    public void a(SSLSocket sSLSocket) {
    }

    public sa.c c(X509TrustManager x509TrustManager) {
        return new sa.a(d(x509TrustManager));
    }

    public sa.e d(X509TrustManager x509TrustManager) {
        return new sa.b(x509TrustManager.getAcceptedIssuers());
    }

    public void f(SSLSocketFactory sSLSocketFactory) {
    }

    public void g(SSLSocket sSLSocket, @Nullable String str, List<y> list) throws IOException {
    }

    public void h(Socket socket, InetSocketAddress inetSocketAddress, int i10) throws IOException {
        socket.connect(inetSocketAddress, i10);
    }

    public SSLContext m() {
        if ("1.7".equals(System.getProperty("java.specification.version"))) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException("No TLS provider", e10);
        }
    }

    @Nullable
    public String n(SSLSocket sSLSocket) {
        return null;
    }

    public Object o(String str) {
        if (f34132b.isLoggable(Level.FINE)) {
            return new Throwable(str);
        }
        return null;
    }

    public boolean q(String str) {
        return true;
    }

    public void s(int i10, String str, @Nullable Throwable th) {
        f34132b.log(i10 == 5 ? Level.WARNING : Level.INFO, str, th);
    }

    public void t(String str, Object obj) {
        if (obj == null) {
            str = str + " To see where this was allocated, set the OkHttpClient logger level to FINE: Logger.getLogger(OkHttpClient.class.getName()).setLevel(Level.FINE);";
        }
        s(5, str, (Throwable) obj);
    }

    public String toString() {
        return getClass().getSimpleName();
    }
}
