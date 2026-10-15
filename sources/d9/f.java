package d9;

import android.text.TextUtils;
import com.vungle.mediation.BuildConfig;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.TreeMap;

/* JADX INFO: compiled from: UrlUtils.java */
/* JADX INFO: loaded from: classes2.dex */
public final class f {
    public static TreeMap<String, String> a(String str, boolean z10) {
        TreeMap<String, String> treeMap = new TreeMap<>();
        if (str == null) {
            return treeMap;
        }
        for (String str2 : str.split("&")) {
            String[] strArrSplit = str2.split("=");
            if (strArrSplit.length == 2) {
                if (z10) {
                    treeMap.put(d(strArrSplit[0]), d(strArrSplit[1]));
                } else {
                    treeMap.put(strArrSplit[0], strArrSplit[1]);
                }
            } else if (!TextUtils.isEmpty(strArrSplit[0])) {
                if (z10) {
                    treeMap.put(d(strArrSplit[0]), BuildConfig.FLAVOR);
                } else {
                    treeMap.put(strArrSplit[0], BuildConfig.FLAVOR);
                }
            }
        }
        return treeMap;
    }

    public static TreeMap<String, String> b(URI uri, boolean z10) {
        return a(uri.getRawQuery(), z10);
    }

    public static String c(String str) {
        int i10;
        if (str == null) {
            return BuildConfig.FLAVOR;
        }
        StringBuilder sb = new StringBuilder();
        String strE = e(str);
        int length = strE.length();
        int i11 = 0;
        while (i11 < length) {
            char cCharAt = strE.charAt(i11);
            if (cCharAt == '*') {
                sb.append("%2A");
            } else if (cCharAt == '+') {
                sb.append("%20");
            } else if (cCharAt == '%' && (i10 = i11 + 2) < length && strE.charAt(i11 + 1) == '7' && strE.charAt(i10) == 'E') {
                sb.append('~');
                i11 = i10;
            } else {
                sb.append(cCharAt);
            }
            i11++;
        }
        return sb.toString();
    }

    public static String d(String str) {
        if (str == null) {
            return BuildConfig.FLAVOR;
        }
        try {
            return URLDecoder.decode(str, "UTF8");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }

    public static String e(String str) {
        if (str == null) {
            return BuildConfig.FLAVOR;
        }
        try {
            return URLEncoder.encode(str, "UTF8");
        } catch (UnsupportedEncodingException e10) {
            throw new RuntimeException(e10.getMessage(), e10);
        }
    }
}
