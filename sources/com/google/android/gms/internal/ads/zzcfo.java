package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
public final class zzcfo {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Pattern f12120a = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*\\s*<!DOCTYPE(\\s)+html(|(\\s)+[^>]*)>", 2);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final Pattern f12121b = Pattern.compile("^\\uFEFF?\\s*(\\s*<!--([^-]|(?!-->))*-->)*?\\s*<!DOCTYPE[^>]*>", 2);

    public static String a(String str, String... strArr) {
        StringBuilder sb = new StringBuilder();
        Matcher matcher = f12120a.matcher(str);
        int i10 = 0;
        if (matcher.find()) {
            int iEnd = matcher.end();
            sb.append(str.substring(0, iEnd));
            while (i10 <= 0) {
                String str2 = strArr[i10];
                if (str2 != null) {
                    sb.append(str2);
                }
                i10++;
            }
            sb.append(str.substring(iEnd));
        } else {
            if (!f12121b.matcher(str).find()) {
                while (i10 <= 0) {
                    String str3 = strArr[i10];
                    if (str3 != null) {
                        sb.append(str3);
                    }
                    i10++;
                }
            }
            sb.append(str);
        }
        return sb.toString();
    }
}
