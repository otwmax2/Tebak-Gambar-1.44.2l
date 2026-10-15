package c9;

import android.net.Uri;
import android.os.Build;
import java.text.Normalizer;

/* JADX INFO: compiled from: TwitterApi.java */
/* JADX INFO: loaded from: classes2.dex */
public class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f4992a;

    public j() {
        this("https://api.twitter.com");
    }

    public static String b(String str, String str2) {
        StringBuilder sb = new StringBuilder(str);
        sb.append('/');
        sb.append(str2);
        sb.append(' ');
        String str3 = Build.MODEL;
        sb.append(str3);
        sb.append('/');
        sb.append(Build.VERSION.RELEASE);
        sb.append(" (");
        sb.append(Build.MANUFACTURER);
        sb.append(';');
        sb.append(str3);
        sb.append(';');
        sb.append(Build.BRAND);
        sb.append(';');
        sb.append(Build.PRODUCT);
        sb.append(')');
        return d(sb.toString());
    }

    static String d(String str) {
        return e(Normalizer.normalize(str, Normalizer.Form.NFD));
    }

    static String e(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (cCharAt > 31 && cCharAt < 127) {
                sb.append(cCharAt);
            }
        }
        return sb.toString();
    }

    public Uri.Builder a(String... strArr) {
        Uri.Builder builderBuildUpon = Uri.parse(c()).buildUpon();
        if (strArr != null) {
            for (String str : strArr) {
                builderBuildUpon.appendPath(str);
            }
        }
        return builderBuildUpon;
    }

    public String c() {
        return this.f4992a;
    }

    public j(String str) {
        this.f4992a = str;
    }
}
