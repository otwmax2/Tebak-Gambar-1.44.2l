package na;

import com.vungle.mediation.BuildConfig;
import ja.y;
import java.io.IOException;
import java.net.ProtocolException;

/* JADX INFO: compiled from: StatusLine.java */
/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final y f32541a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f32542b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f32543c;

    public k(y yVar, int i10, String str) {
        this.f32541a = yVar;
        this.f32542b = i10;
        this.f32543c = str;
    }

    public static k a(String str) throws IOException {
        y yVar;
        String strSubstring;
        int i10 = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int iCharAt = str.charAt(7) - '0';
            if (iCharAt == 0) {
                yVar = y.HTTP_1_0;
            } else {
                if (iCharAt != 1) {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                yVar = y.HTTP_1_1;
            }
        } else {
            if (!str.startsWith("ICY ")) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            yVar = y.HTTP_1_0;
            i10 = 4;
        }
        int i11 = i10 + 3;
        if (str.length() < i11) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            int i12 = Integer.parseInt(str.substring(i10, i11));
            if (str.length() <= i11) {
                strSubstring = BuildConfig.FLAVOR;
            } else {
                if (str.charAt(i11) != ' ') {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                strSubstring = str.substring(i10 + 4);
            }
            return new k(yVar, i12, strSubstring);
        } catch (NumberFormatException unused) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f32541a == y.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f32542b);
        if (this.f32543c != null) {
            sb.append(' ');
            sb.append(this.f32543c);
        }
        return sb.toString();
    }
}
