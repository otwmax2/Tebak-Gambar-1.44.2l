package ba;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: StringsJVM.kt */
/* JADX INFO: loaded from: classes2.dex */
public class p extends o {
    public static byte[] j(String str) {
        t9.m.e(str, "<this>");
        byte[] bytes = str.getBytes(d.f4713b);
        t9.m.d(bytes, "this as java.lang.String).getBytes(charset)");
        return bytes;
    }

    public static final boolean k(String str, String str2, boolean z10) {
        t9.m.e(str, "<this>");
        t9.m.e(str2, "suffix");
        return !z10 ? str.endsWith(str2) : o(str, str.length() - str2.length(), str2, 0, str2.length(), true);
    }

    public static /* synthetic */ boolean l(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return k(str, str2, z10);
    }

    public static boolean m(String str, String str2, boolean z10) {
        return str == null ? str2 == null : !z10 ? str.equals(str2) : str.equalsIgnoreCase(str2);
    }

    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean n(java.lang.CharSequence r4) {
        /*
            java.lang.String r0 = "<this>"
            t9.m.e(r4, r0)
            int r0 = r4.length()
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L3e
            y9.f r0 = ba.q.z(r4)
            boolean r3 = r0 instanceof java.util.Collection
            if (r3 == 0) goto L20
            r3 = r0
            java.util.Collection r3 = (java.util.Collection) r3
            boolean r3 = r3.isEmpty()
            if (r3 == 0) goto L20
        L1e:
            r4 = 1
            goto L3c
        L20:
            java.util.Iterator r0 = r0.iterator()
        L24:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L1e
            r3 = r0
            i9.y r3 = (i9.y) r3
            int r3 = r3.a()
            char r3 = r4.charAt(r3)
            boolean r3 = ba.b.c(r3)
            if (r3 != 0) goto L24
            r4 = 0
        L3c:
            if (r4 == 0) goto L3f
        L3e:
            r1 = 1
        L3f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: ba.p.n(java.lang.CharSequence):boolean");
    }

    public static final boolean o(String str, int i10, String str2, int i11, int i12, boolean z10) {
        t9.m.e(str, "<this>");
        t9.m.e(str2, "other");
        return !z10 ? str.regionMatches(i10, str2, i11, i12) : str.regionMatches(z10, i10, str2, i11, i12);
    }

    public static final String p(String str, char c10, char c11, boolean z10) {
        t9.m.e(str, "<this>");
        if (!z10) {
            String strReplace = str.replace(c10, c11);
            t9.m.d(strReplace, "this as java.lang.String…replace(oldChar, newChar)");
            return strReplace;
        }
        StringBuilder sb = new StringBuilder(str.length());
        for (int i10 = 0; i10 < str.length(); i10++) {
            char cCharAt = str.charAt(i10);
            if (c.e(cCharAt, c10, z10)) {
                cCharAt = c11;
            }
            sb.append(cCharAt);
        }
        String string = sb.toString();
        t9.m.d(string, "StringBuilder(capacity).…builderAction).toString()");
        return string;
    }

    public static final String q(String str, String str2, String str3, boolean z10) {
        t9.m.e(str, "<this>");
        t9.m.e(str2, "oldValue");
        t9.m.e(str3, "newValue");
        int i10 = 0;
        int iC = q.C(str, str2, 0, z10);
        if (iC < 0) {
            return str;
        }
        int length = str2.length();
        int iA = y9.l.a(length, 1);
        int length2 = (str.length() - length) + str3.length();
        if (length2 < 0) {
            throw new OutOfMemoryError();
        }
        StringBuilder sb = new StringBuilder(length2);
        do {
            sb.append((CharSequence) str, i10, iC);
            sb.append(str3);
            i10 = iC + length;
            if (iC >= str.length()) {
                break;
            }
            iC = q.C(str, str2, iC + iA, z10);
        } while (iC > 0);
        sb.append((CharSequence) str, i10, str.length());
        String string = sb.toString();
        t9.m.d(string, "stringBuilder.append(this, i, length).toString()");
        return string;
    }

    public static /* synthetic */ String r(String str, char c10, char c11, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return p(str, c10, c11, z10);
    }

    public static /* synthetic */ String s(String str, String str2, String str3, boolean z10, int i10, Object obj) {
        if ((i10 & 4) != 0) {
            z10 = false;
        }
        return q(str, str2, str3, z10);
    }

    public static final boolean t(String str, String str2, boolean z10) {
        t9.m.e(str, "<this>");
        t9.m.e(str2, "prefix");
        return !z10 ? str.startsWith(str2) : o(str, 0, str2, 0, str2.length(), z10);
    }

    public static /* synthetic */ boolean u(String str, String str2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return t(str, str2, z10);
    }
}
