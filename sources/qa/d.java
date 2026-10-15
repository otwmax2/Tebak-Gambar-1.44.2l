package qa;

import com.vungle.mediation.BuildConfig;
import ja.y;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: Jdk9Platform.java */
/* JADX INFO: loaded from: classes.dex */
final class d extends g {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Method f34118c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Method f34119d;

    d(Method method, Method method2) {
        this.f34118c = method;
        this.f34119d = method2;
    }

    public static d u() {
        try {
            return new d(SSLParameters.class.getMethod("setApplicationProtocols", String[].class), SSLSocket.class.getMethod("getApplicationProtocol", new Class[0]));
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    @Override // qa.g
    public void g(SSLSocket sSLSocket, String str, List<y> list) {
        try {
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            List<String> listB = g.b(list);
            this.f34118c.invoke(sSLParameters, listB.toArray(new String[listB.size()]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalAccessException | InvocationTargetException e10) {
            throw ka.c.b("unable to set ssl parameters", e10);
        }
    }

    @Override // qa.g
    @Nullable
    public String n(SSLSocket sSLSocket) {
        try {
            String str = (String) this.f34119d.invoke(sSLSocket, new Object[0]);
            if (str != null) {
                if (!str.equals(BuildConfig.FLAVOR)) {
                    return str;
                }
            }
            return null;
        } catch (IllegalAccessException e10) {
            throw ka.c.b("failed to get ALPN selected protocol", e10);
        } catch (InvocationTargetException e11) {
            if (e11.getCause() instanceof UnsupportedOperationException) {
                return null;
            }
            throw ka.c.b("failed to get ALPN selected protocol", e11);
        }
    }
}
