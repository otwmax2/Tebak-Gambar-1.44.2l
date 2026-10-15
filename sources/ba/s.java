package ba;

/* JADX INFO: compiled from: _Strings.kt */
/* JADX INFO: loaded from: classes2.dex */
class s extends r {
    public static final String q0(String str, int i10) {
        t9.m.e(str, "<this>");
        if (i10 >= 0) {
            String strSubstring = str.substring(y9.l.c(i10, str.length()));
            t9.m.d(strSubstring, "this as java.lang.String).substring(startIndex)");
            return strSubstring;
        }
        throw new IllegalArgumentException(("Requested character count " + i10 + " is less than zero.").toString());
    }
}
