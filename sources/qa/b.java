package qa;

import android.os.Build;
import android.util.Log;
import ja.y;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.security.NoSuchAlgorithmException;
import java.security.Security;
import java.security.cert.Certificate;
import java.security.cert.TrustAnchor;
import java.security.cert.X509Certificate;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.X509TrustManager;

/* JADX INFO: compiled from: AndroidPlatform.java */
/* JADX INFO: loaded from: classes.dex */
class b extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Class<?> f34105c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f<Socket> f34106d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final f<Socket> f34107e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final f<Socket> f34108f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final f<Socket> f34109g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final c f34110h = c.b();

    /* JADX INFO: compiled from: AndroidPlatform.java */
    /* JADX INFO: loaded from: classes2.dex */
    static final class a extends sa.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Object f34111a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Method f34112b;

        a(Object obj, Method method) {
            this.f34111a = obj;
            this.f34112b = method;
        }

        @Override // sa.c
        public List<Certificate> a(List<Certificate> list, String str) throws SSLPeerUnverifiedException {
            try {
                return (List) this.f34112b.invoke(this.f34111a, (X509Certificate[]) list.toArray(new X509Certificate[list.size()]), "RSA", str);
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InvocationTargetException e11) {
                SSLPeerUnverifiedException sSLPeerUnverifiedException = new SSLPeerUnverifiedException(e11.getMessage());
                sSLPeerUnverifiedException.initCause(e11);
                throw sSLPeerUnverifiedException;
            }
        }

        public boolean equals(Object obj) {
            return obj instanceof a;
        }

        public int hashCode() {
            return 0;
        }
    }

    /* JADX INFO: renamed from: qa.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AndroidPlatform.java */
    /* JADX INFO: loaded from: classes2.dex */
    static final class C0224b implements sa.e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final X509TrustManager f34113a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Method f34114b;

        C0224b(X509TrustManager x509TrustManager, Method method) {
            this.f34114b = method;
            this.f34113a = x509TrustManager;
        }

        @Override // sa.e
        public X509Certificate a(X509Certificate x509Certificate) {
            try {
                TrustAnchor trustAnchor = (TrustAnchor) this.f34114b.invoke(this.f34113a, x509Certificate);
                if (trustAnchor != null) {
                    return trustAnchor.getTrustedCert();
                }
                return null;
            } catch (IllegalAccessException e10) {
                throw ka.c.b("unable to get issues and signature", e10);
            } catch (InvocationTargetException unused) {
                return null;
            }
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0224b)) {
                return false;
            }
            C0224b c0224b = (C0224b) obj;
            return this.f34113a.equals(c0224b.f34113a) && this.f34114b.equals(c0224b.f34114b);
        }

        public int hashCode() {
            return this.f34113a.hashCode() + (this.f34114b.hashCode() * 31);
        }
    }

    /* JADX INFO: compiled from: AndroidPlatform.java */
    /* JADX INFO: loaded from: classes2.dex */
    static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Method f34115a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Method f34116b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Method f34117c;

        c(Method method, Method method2, Method method3) {
            this.f34115a = method;
            this.f34116b = method2;
            this.f34117c = method3;
        }

        static c b() throws NoSuchMethodException {
            Method method;
            Method method2;
            Method method3 = null;
            try {
                Class<?> cls = Class.forName("dalvik.system.CloseGuard");
                Method method4 = cls.getMethod("get", new Class[0]);
                method2 = cls.getMethod("open", String.class);
                method = cls.getMethod("warnIfOpen", new Class[0]);
                method3 = method4;
            } catch (Exception unused) {
                method = null;
                method2 = null;
            }
            return new c(method3, method2, method);
        }

        Object a(String str) {
            Method method = this.f34115a;
            if (method != null) {
                try {
                    Object objInvoke = method.invoke(null, new Object[0]);
                    this.f34116b.invoke(objInvoke, str);
                    return objInvoke;
                } catch (Exception unused) {
                }
            }
            return null;
        }

        boolean c(Object obj) {
            if (obj == null) {
                return false;
            }
            try {
                this.f34117c.invoke(obj, new Object[0]);
                return true;
            } catch (Exception unused) {
                return false;
            }
        }
    }

    b(Class<?> cls, f<Socket> fVar, f<Socket> fVar2, f<Socket> fVar3, f<Socket> fVar4) {
        this.f34105c = cls;
        this.f34106d = fVar;
        this.f34107e = fVar2;
        this.f34108f = fVar3;
        this.f34109g = fVar4;
    }

    private boolean u(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", new Class[0]).invoke(obj, new Object[0])).booleanValue();
        } catch (NoSuchMethodException unused) {
            return super.q(str);
        }
    }

    private boolean v(String str, Class<?> cls, Object obj) throws IllegalAccessException, InvocationTargetException {
        try {
            return ((Boolean) cls.getMethod("isCleartextTrafficPermitted", String.class).invoke(obj, str)).booleanValue();
        } catch (NoSuchMethodException unused) {
            return u(str, cls, obj);
        }
    }

    public static g w() {
        Class<?> cls;
        f fVar;
        f fVar2;
        if (!g.p()) {
            return null;
        }
        try {
            try {
                cls = Class.forName("com.android.org.conscrypt.SSLParametersImpl");
            } catch (ClassNotFoundException unused) {
                cls = Class.forName("org.apache.harmony.xnet.provider.jsse.SSLParametersImpl");
            }
            Class<?> cls2 = cls;
            f fVar3 = new f(null, "setUseSessionTickets", Boolean.TYPE);
            f fVar4 = new f(null, "setHostname", String.class);
            if (y()) {
                f fVar5 = new f(byte[].class, "getAlpnSelectedProtocol", new Class[0]);
                fVar2 = new f(null, "setAlpnProtocols", byte[].class);
                fVar = fVar5;
            } else {
                fVar = null;
                fVar2 = null;
            }
            return new b(cls2, fVar3, fVar4, fVar, fVar2);
        } catch (ClassNotFoundException unused2) {
            return null;
        }
    }

    static int x() {
        try {
            return Build.VERSION.SDK_INT;
        } catch (NoClassDefFoundError unused) {
            return 0;
        }
    }

    private static boolean y() {
        if (Security.getProvider("GMSCore_OpenSSL") != null) {
            return true;
        }
        try {
            Class.forName("android.net.Network");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    @Override // qa.g
    public sa.c c(X509TrustManager x509TrustManager) {
        try {
            Class<?> cls = Class.forName("android.net.http.X509TrustManagerExtensions");
            return new a(cls.getConstructor(X509TrustManager.class).newInstance(x509TrustManager), cls.getMethod("checkServerTrusted", X509Certificate[].class, String.class, String.class));
        } catch (Exception unused) {
            return super.c(x509TrustManager);
        }
    }

    @Override // qa.g
    public sa.e d(X509TrustManager x509TrustManager) {
        try {
            Method declaredMethod = x509TrustManager.getClass().getDeclaredMethod("findTrustAnchorByIssuerAndSignature", X509Certificate.class);
            declaredMethod.setAccessible(true);
            return new C0224b(x509TrustManager, declaredMethod);
        } catch (NoSuchMethodException unused) {
            return super.d(x509TrustManager);
        }
    }

    @Override // qa.g
    public void g(SSLSocket sSLSocket, String str, List<y> list) throws IOException {
        if (str != null) {
            this.f34106d.e(sSLSocket, Boolean.TRUE);
            this.f34107e.e(sSLSocket, str);
        }
        f<Socket> fVar = this.f34109g;
        if (fVar == null || !fVar.g(sSLSocket)) {
            return;
        }
        this.f34109g.f(sSLSocket, g.e(list));
    }

    @Override // qa.g
    public void h(Socket socket, InetSocketAddress inetSocketAddress, int i10) throws IOException {
        try {
            socket.connect(inetSocketAddress, i10);
        } catch (AssertionError e10) {
            if (!ka.c.A(e10)) {
                throw e10;
            }
            throw new IOException(e10);
        } catch (ClassCastException e11) {
            if (Build.VERSION.SDK_INT != 26) {
                throw e11;
            }
            IOException iOException = new IOException("Exception in connect");
            iOException.initCause(e11);
            throw iOException;
        } catch (SecurityException e12) {
            IOException iOException2 = new IOException("Exception in connect");
            iOException2.initCause(e12);
            throw iOException2;
        }
    }

    @Override // qa.g
    public SSLContext m() {
        boolean z10 = true;
        try {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 < 16 || i10 >= 22) {
                z10 = false;
            }
        } catch (NoClassDefFoundError unused) {
        }
        if (z10) {
            try {
                return SSLContext.getInstance("TLSv1.2");
            } catch (NoSuchAlgorithmException unused2) {
            }
        }
        try {
            return SSLContext.getInstance("TLS");
        } catch (NoSuchAlgorithmException e10) {
            throw new IllegalStateException("No TLS provider", e10);
        }
    }

    @Override // qa.g
    @Nullable
    public String n(SSLSocket sSLSocket) {
        byte[] bArr;
        f<Socket> fVar = this.f34108f;
        if (fVar == null || !fVar.g(sSLSocket) || (bArr = (byte[]) this.f34108f.f(sSLSocket, new Object[0])) == null) {
            return null;
        }
        return new String(bArr, ka.c.f31647j);
    }

    @Override // qa.g
    public Object o(String str) {
        return this.f34110h.a(str);
    }

    @Override // qa.g
    public boolean q(String str) {
        if (Build.VERSION.SDK_INT < 23) {
            return super.q(str);
        }
        try {
            Class<?> cls = Class.forName("android.security.NetworkSecurityPolicy");
            return v(str, cls, cls.getMethod("getInstance", new Class[0]).invoke(null, new Object[0]));
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
            return super.q(str);
        } catch (IllegalAccessException e10) {
            e = e10;
            throw ka.c.b("unable to determine cleartext support", e);
        } catch (IllegalArgumentException e11) {
            e = e11;
            throw ka.c.b("unable to determine cleartext support", e);
        } catch (InvocationTargetException e12) {
            e = e12;
            throw ka.c.b("unable to determine cleartext support", e);
        }
    }

    @Override // qa.g
    public void s(int i10, String str, @Nullable Throwable th) {
        int iMin;
        int i11 = i10 != 5 ? 3 : 5;
        if (th != null) {
            str = str + '\n' + Log.getStackTraceString(th);
        }
        int i12 = 0;
        int length = str.length();
        while (i12 < length) {
            int iIndexOf = str.indexOf(10, i12);
            if (iIndexOf == -1) {
                iIndexOf = length;
            }
            while (true) {
                iMin = Math.min(iIndexOf, i12 + 4000);
                Log.println(i11, "OkHttp", str.substring(i12, iMin));
                if (iMin >= iIndexOf) {
                    break;
                } else {
                    i12 = iMin;
                }
            }
            i12 = iMin + 1;
        }
    }

    @Override // qa.g
    public void t(String str, Object obj) {
        if (this.f34110h.c(obj)) {
            return;
        }
        s(5, str, null);
    }
}
