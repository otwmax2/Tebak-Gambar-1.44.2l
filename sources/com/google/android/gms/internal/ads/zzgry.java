package com.google.android.gms.internal.ads;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.android.gms:play-services-ads@@22.0.0 */
/* JADX INFO: loaded from: classes2.dex */
final class zzgry {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f19543a;

    static {
        char[] cArr = new char[80];
        f19543a = cArr;
        Arrays.fill(cArr, ' ');
    }

    static String a(zzgrw zzgrwVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        d(zzgrwVar, sb, 0);
        return sb.toString();
    }

    static void b(StringBuilder sb, int i10, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                b(sb, i10, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                b(sb, i10, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        c(i10, sb);
        if (!str.isEmpty()) {
            StringBuilder sb2 = new StringBuilder();
            sb2.append(Character.toLowerCase(str.charAt(0)));
            for (int i11 = 1; i11 < str.length(); i11++) {
                char cCharAt = str.charAt(i11);
                if (Character.isUpperCase(cCharAt)) {
                    sb2.append("_");
                }
                sb2.append(Character.toLowerCase(cCharAt));
            }
            str = sb2.toString();
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(zzgte.a(zzgpe.M((String) obj)));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzgpe) {
            sb.append(": \"");
            sb.append(zzgte.a((zzgpe) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzgqm) {
            sb.append(" {");
            d((zzgqm) obj, sb, i10 + 2);
            sb.append("\n");
            c(i10, sb);
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj);
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i12 = i10 + 2;
        b(sb, i12, SDKConstants.PARAM_KEY, entry.getKey());
        b(sb, i12, SDKConstants.PARAM_VALUE, entry.getValue());
        sb.append("\n");
        c(i10, sb);
        sb.append("}");
    }

    private static void c(int i10, StringBuilder sb) {
        while (i10 > 0) {
            int i11 = 80;
            if (i10 <= 80) {
                i11 = i10;
            }
            sb.append(f19543a, 0, i11);
            i10 -= i11;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x01fb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void d(com.google.android.gms.internal.ads.zzgrw r18, java.lang.StringBuilder r19, int r20) {
        /*
            Method dump skipped, instruction units count: 533
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgry.d(com.google.android.gms.internal.ads.zzgrw, java.lang.StringBuilder, int):void");
    }
}
