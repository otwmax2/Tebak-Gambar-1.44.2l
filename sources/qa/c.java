package qa;

import ja.y;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLContext;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import org.conscrypt.Conscrypt;

/* JADX INFO: compiled from: ConscryptPlatform.java */
/* JADX INFO: loaded from: classes.dex */
public class c extends g {
    private c() {
    }

    public static c u() {
        try {
            Class.forName("org.conscrypt.Conscrypt");
            if (Conscrypt.isAvailable()) {
                return new c();
            }
            return null;
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    private Provider v() {
        return Conscrypt.newProviderBuilder().provideTrustManager().build();
    }

    @Override // qa.g
    public void f(SSLSocketFactory sSLSocketFactory) {
        if (Conscrypt.isConscrypt(sSLSocketFactory)) {
            Conscrypt.setUseEngineSocket(sSLSocketFactory, true);
        }
    }

    @Override // qa.g
    public void g(SSLSocket sSLSocket, String str, List<y> list) throws IOException {
        if (!Conscrypt.isConscrypt(sSLSocket)) {
            super.g(sSLSocket, str, list);
            return;
        }
        if (str != null) {
            Conscrypt.setUseSessionTickets(sSLSocket, true);
            Conscrypt.setHostname(sSLSocket, str);
        }
        Conscrypt.setApplicationProtocols(sSLSocket, (String[]) g.b(list).toArray(new String[0]));
    }

    @Override // qa.g
    public SSLContext m() {
        try {
            return SSLContext.getInstance("TLSv1.3", v());
        } catch (NoSuchAlgorithmException e10) {
            try {
                return SSLContext.getInstance("TLS", v());
            } catch (NoSuchAlgorithmException unused) {
                throw new IllegalStateException("No TLS provider", e10);
            }
        }
    }

    @Override // qa.g
    @Nullable
    public String n(SSLSocket sSLSocket) {
        return Conscrypt.isConscrypt(sSLSocket) ? Conscrypt.getApplicationProtocol(sSLSocket) : super.n(sSLSocket);
    }
}
