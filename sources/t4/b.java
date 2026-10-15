package t4;

import com.facebook.internal.security.CertificateUtil;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class b {
    public static String a(String str, String str2) {
        StringBuilder sb = new StringBuilder(str.length() + 1 + String.valueOf(str2).length());
        sb.append(str);
        sb.append(CertificateUtil.DELIMITER);
        sb.append(str2);
        return sb.toString();
    }

    public static String b(String str, String str2, String str3) {
        int length = str.length();
        StringBuilder sb = new StringBuilder(length + 2 + String.valueOf(str2).length() + String.valueOf(str3).length());
        sb.append(str);
        sb.append(CertificateUtil.DELIMITER);
        sb.append(str2);
        sb.append(CertificateUtil.DELIMITER);
        sb.append(str3);
        return sb.toString();
    }
}
