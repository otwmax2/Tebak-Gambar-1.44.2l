package com.google.android.gms.internal.firebase_auth;

import com.facebook.gamingservices.cloudgaming.internal.SDKConstants;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: com.google.firebase:firebase-auth@@19.3.1 */
/* JADX INFO: loaded from: classes2.dex */
final class zzjs {
    static String a(zzjn zzjnVar, String str) {
        StringBuilder sb = new StringBuilder();
        sb.append("# ");
        sb.append(str);
        c(zzjnVar, sb, 0);
        return sb.toString();
    }

    private static final String b(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (Character.isUpperCase(cCharAt)) {
                sb.append("_");
            }
            sb.append(Character.toLowerCase(cCharAt));
        }
        return sb.toString();
    }

    /* JADX WARN: Removed duplicated region for block: B:84:0x01e7  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static void c(com.google.android.gms.internal.firebase_auth.zzjn r13, java.lang.StringBuilder r14, int r15) {
        /*
            Method dump skipped, instruction units count: 668
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_auth.zzjs.c(com.google.android.gms.internal.firebase_auth.zzjn, java.lang.StringBuilder, int):void");
    }

    static final void d(StringBuilder sb, int i10, String str, Object obj) {
        if (obj instanceof List) {
            Iterator it = ((List) obj).iterator();
            while (it.hasNext()) {
                d(sb, i10, str, it.next());
            }
            return;
        }
        if (obj instanceof Map) {
            Iterator it2 = ((Map) obj).entrySet().iterator();
            while (it2.hasNext()) {
                d(sb, i10, str, (Map.Entry) it2.next());
            }
            return;
        }
        sb.append('\n');
        int i11 = 0;
        for (int i12 = 0; i12 < i10; i12++) {
            sb.append(' ');
        }
        sb.append(str);
        if (obj instanceof String) {
            sb.append(": \"");
            sb.append(zzkr.a(zzgv.l((String) obj)));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzgv) {
            sb.append(": \"");
            sb.append(zzkr.a((zzgv) obj));
            sb.append('\"');
            return;
        }
        if (obj instanceof zzif) {
            sb.append(" {");
            c((zzif) obj, sb, i10 + 2);
            sb.append("\n");
            while (i11 < i10) {
                sb.append(' ');
                i11++;
            }
            sb.append("}");
            return;
        }
        if (!(obj instanceof Map.Entry)) {
            sb.append(": ");
            sb.append(obj.toString());
            return;
        }
        sb.append(" {");
        Map.Entry entry = (Map.Entry) obj;
        int i13 = i10 + 2;
        d(sb, i13, SDKConstants.PARAM_KEY, entry.getKey());
        d(sb, i13, SDKConstants.PARAM_VALUE, entry.getValue());
        sb.append("\n");
        while (i11 < i10) {
            sb.append(' ');
            i11++;
        }
        sb.append("}");
    }
}
