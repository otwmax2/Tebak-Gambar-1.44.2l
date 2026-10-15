package qa;

import android.annotation.SuppressLint;
import android.net.ssl.SSLSockets;
import ja.y;
import java.io.IOException;
import java.util.List;
import javax.annotation.Nullable;
import javax.net.ssl.SSLParameters;
import javax.net.ssl.SSLSocket;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* JADX INFO: compiled from: Android10Platform.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"NewApi"})
class a extends b {
    a(Class<?> cls) {
        super(cls, null, null, null, null);
    }

    @Nullable
    public static g w() {
        if (!g.p()) {
            return null;
        }
        try {
            if (b.x() >= 29) {
                return new a(Class.forName("com.android.org.conscrypt.SSLParametersImpl"));
            }
        } catch (ClassNotFoundException unused) {
        }
        return null;
    }

    private void z(SSLSocket sSLSocket) {
        if (SSLSockets.isSupportedSocket(sSLSocket)) {
            SSLSockets.setUseSessionTickets(sSLSocket, true);
        }
    }

    @Override // qa.b, qa.g
    @SuppressLint({"NewApi"})
    @IgnoreJRERequirement
    public void g(SSLSocket sSLSocket, String str, List<y> list) throws IOException {
        try {
            z(sSLSocket);
            SSLParameters sSLParameters = sSLSocket.getSSLParameters();
            sSLParameters.setApplicationProtocols((String[]) g.b(list).toArray(new String[0]));
            sSLSocket.setSSLParameters(sSLParameters);
        } catch (IllegalArgumentException e10) {
            throw new IOException("Android internal error", e10);
        }
    }

    @Override // qa.b, qa.g
    @Nullable
    @IgnoreJRERequirement
    public String n(SSLSocket sSLSocket) {
        String applicationProtocol = sSLSocket.getApplicationProtocol();
        if (applicationProtocol == null || applicationProtocol.isEmpty()) {
            return null;
        }
        return applicationProtocol;
    }
}
