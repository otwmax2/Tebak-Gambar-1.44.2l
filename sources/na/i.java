package na;

import ja.a0;
import ja.t;
import java.net.Proxy;

/* JADX INFO: compiled from: RequestLine.java */
/* JADX INFO: loaded from: classes2.dex */
public final class i {
    public static String a(a0 a0Var, Proxy.Type type) {
        StringBuilder sb = new StringBuilder();
        sb.append(a0Var.f());
        sb.append(' ');
        if (b(a0Var, type)) {
            sb.append(a0Var.h());
        } else {
            sb.append(c(a0Var.h()));
        }
        sb.append(" HTTP/1.1");
        return sb.toString();
    }

    private static boolean b(a0 a0Var, Proxy.Type type) {
        return !a0Var.e() && type == Proxy.Type.HTTP;
    }

    public static String c(t tVar) {
        String strH = tVar.h();
        String strJ = tVar.j();
        if (strJ == null) {
            return strH;
        }
        return strH + '?' + strJ;
    }
}
