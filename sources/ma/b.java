package ma;

import ja.k;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.UnknownServiceException;
import java.security.cert.CertificateException;
import java.util.Arrays;
import java.util.List;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLProtocolException;
import javax.net.ssl.SSLSocket;

/* JADX INFO: compiled from: ConnectionSpecSelector.java */
/* JADX INFO: loaded from: classes2.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<k> f32232a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f32233b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f32234c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f32235d;

    public b(List<k> list) {
        this.f32232a = list;
    }

    private boolean c(SSLSocket sSLSocket) {
        for (int i10 = this.f32233b; i10 < this.f32232a.size(); i10++) {
            if (this.f32232a.get(i10).c(sSLSocket)) {
                return true;
            }
        }
        return false;
    }

    public k a(SSLSocket sSLSocket) throws IOException {
        k kVar;
        int i10 = this.f32233b;
        int size = this.f32232a.size();
        while (true) {
            if (i10 >= size) {
                kVar = null;
                break;
            }
            kVar = this.f32232a.get(i10);
            if (kVar.c(sSLSocket)) {
                this.f32233b = i10 + 1;
                break;
            }
            i10++;
        }
        if (kVar != null) {
            this.f32234c = c(sSLSocket);
            ka.a.f31636a.c(kVar, sSLSocket, this.f32235d);
            return kVar;
        }
        throw new UnknownServiceException("Unable to find acceptable protocols. isFallback=" + this.f32235d + ", modes=" + this.f32232a + ", supported protocols=" + Arrays.toString(sSLSocket.getEnabledProtocols()));
    }

    public boolean b(IOException iOException) {
        this.f32235d = true;
        if (!this.f32234c || (iOException instanceof ProtocolException) || (iOException instanceof InterruptedIOException)) {
            return false;
        }
        boolean z10 = iOException instanceof SSLHandshakeException;
        if ((z10 && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        return z10 || (iOException instanceof SSLProtocolException) || (iOException instanceof SSLException);
    }
}
