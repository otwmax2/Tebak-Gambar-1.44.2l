package ba;

import i9.t;
import i9.y;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* JADX INFO: compiled from: Strings.kt */
/* JADX INFO: loaded from: classes2.dex */
public class q extends p {

    /* JADX INFO: compiled from: Strings.kt */
    static final class a extends t9.n implements s9.p<CharSequence, Integer, h9.m<? extends Integer, ? extends Integer>> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ char[] f4736o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ boolean f4737p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(char[] cArr, boolean z10) {
            super(2);
            this.f4736o = cArr;
            this.f4737p = z10;
        }

        public final h9.m<Integer, Integer> c(CharSequence charSequence, int i10) {
            t9.m.e(charSequence, "$this$$receiver");
            int iH = q.H(charSequence, this.f4736o, i10, this.f4737p);
            if (iH < 0) {
                return null;
            }
            return h9.q.a(Integer.valueOf(iH), 1);
        }

        @Override // s9.p
        public /* bridge */ /* synthetic */ h9.m<? extends Integer, ? extends Integer> invoke(CharSequence charSequence, Integer num) {
            return c(charSequence, num.intValue());
        }
    }

    /* JADX INFO: compiled from: Strings.kt */
    static final class b extends t9.n implements s9.p<CharSequence, Integer, h9.m<? extends Integer, ? extends Integer>> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ List<String> f4738o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ boolean f4739p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(List<String> list, boolean z10) {
            super(2);
            this.f4738o = list;
            this.f4739p = z10;
        }

        public final h9.m<Integer, Integer> c(CharSequence charSequence, int i10) {
            t9.m.e(charSequence, "$this$$receiver");
            h9.m mVarY = q.y(charSequence, this.f4738o, i10, this.f4739p, false);
            if (mVarY != null) {
                return h9.q.a(mVarY.c(), Integer.valueOf(((String) mVarY.d()).length()));
            }
            return null;
        }

        @Override // s9.p
        public /* bridge */ /* synthetic */ h9.m<? extends Integer, ? extends Integer> invoke(CharSequence charSequence, Integer num) {
            return c(charSequence, num.intValue());
        }
    }

    /* JADX INFO: compiled from: Strings.kt */
    static final class c extends t9.n implements s9.l<y9.f, String> {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ CharSequence f4740o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        c(CharSequence charSequence) {
            super(1);
            this.f4740o = charSequence;
        }

        @Override // s9.l
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public final String invoke(y9.f fVar) {
            t9.m.e(fVar, "it");
            return q.e0(this.f4740o, fVar);
        }
    }

    public static final int A(CharSequence charSequence) {
        t9.m.e(charSequence, "<this>");
        return charSequence.length() - 1;
    }

    public static final int B(CharSequence charSequence, char c10, int i10, boolean z10) {
        t9.m.e(charSequence, "<this>");
        return (z10 || !(charSequence instanceof String)) ? H(charSequence, new char[]{c10}, i10, z10) : ((String) charSequence).indexOf(c10, i10);
    }

    public static final int C(CharSequence charSequence, String str, int i10, boolean z10) {
        t9.m.e(charSequence, "<this>");
        t9.m.e(str, "string");
        return (z10 || !(charSequence instanceof String)) ? E(charSequence, str, i10, charSequence.length(), z10, false, 16, null) : ((String) charSequence).indexOf(str, i10);
    }

    private static final int D(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11) {
        y9.d fVar = !z11 ? new y9.f(y9.l.a(i10, 0), y9.l.c(i11, charSequence.length())) : y9.l.g(y9.l.c(i10, A(charSequence)), y9.l.a(i11, 0));
        if ((charSequence instanceof String) && (charSequence2 instanceof String)) {
            int iC = fVar.c();
            int iG = fVar.g();
            int i12 = fVar.i();
            if ((i12 <= 0 || iC > iG) && (i12 >= 0 || iG > iC)) {
                return -1;
            }
            while (!p.o((String) charSequence2, 0, (String) charSequence, iC, charSequence2.length(), z10)) {
                if (iC == iG) {
                    return -1;
                }
                iC += i12;
            }
            return iC;
        }
        int iC2 = fVar.c();
        int iG2 = fVar.g();
        int i13 = fVar.i();
        if ((i13 <= 0 || iC2 > iG2) && (i13 >= 0 || iG2 > iC2)) {
            return -1;
        }
        while (!V(charSequence2, 0, charSequence, iC2, charSequence2.length(), z10)) {
            if (iC2 == iG2) {
                return -1;
            }
            iC2 += i13;
        }
        return iC2;
    }

    static /* synthetic */ int E(CharSequence charSequence, CharSequence charSequence2, int i10, int i11, boolean z10, boolean z11, int i12, Object obj) {
        return D(charSequence, charSequence2, i10, i11, z10, (i12 & 16) != 0 ? false : z11);
    }

    public static /* synthetic */ int F(CharSequence charSequence, char c10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return B(charSequence, c10, i10, z10);
    }

    public static /* synthetic */ int G(CharSequence charSequence, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = 0;
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return C(charSequence, str, i10, z10);
    }

    public static final int H(CharSequence charSequence, char[] cArr, int i10, boolean z10) {
        boolean z11;
        t9.m.e(charSequence, "<this>");
        t9.m.e(cArr, "chars");
        if (!z10 && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).indexOf(i9.g.m(cArr), i10);
        }
        y yVarJ = new y9.f(y9.l.a(i10, 0), A(charSequence)).iterator();
        while (yVarJ.hasNext()) {
            int iA = yVarJ.a();
            char cCharAt = charSequence.charAt(iA);
            int length = cArr.length;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    z11 = false;
                    break;
                }
                if (ba.c.e(cArr[i11], cCharAt, z10)) {
                    z11 = true;
                    break;
                }
                i11++;
            }
            if (z11) {
                return iA;
            }
        }
        return -1;
    }

    public static final int I(CharSequence charSequence, char c10, int i10, boolean z10) {
        t9.m.e(charSequence, "<this>");
        return (z10 || !(charSequence instanceof String)) ? M(charSequence, new char[]{c10}, i10, z10) : ((String) charSequence).lastIndexOf(c10, i10);
    }

    public static final int J(CharSequence charSequence, String str, int i10, boolean z10) {
        t9.m.e(charSequence, "<this>");
        t9.m.e(str, "string");
        return (z10 || !(charSequence instanceof String)) ? D(charSequence, str, i10, 0, z10, true) : ((String) charSequence).lastIndexOf(str, i10);
    }

    public static /* synthetic */ int K(CharSequence charSequence, char c10, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = A(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return I(charSequence, c10, i10, z10);
    }

    public static /* synthetic */ int L(CharSequence charSequence, String str, int i10, boolean z10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            i10 = A(charSequence);
        }
        if ((i11 & 4) != 0) {
            z10 = false;
        }
        return J(charSequence, str, i10, z10);
    }

    public static final int M(CharSequence charSequence, char[] cArr, int i10, boolean z10) {
        t9.m.e(charSequence, "<this>");
        t9.m.e(cArr, "chars");
        if (!z10 && cArr.length == 1 && (charSequence instanceof String)) {
            return ((String) charSequence).lastIndexOf(i9.g.m(cArr), i10);
        }
        for (int iC = y9.l.c(i10, A(charSequence)); -1 < iC; iC--) {
            char cCharAt = charSequence.charAt(iC);
            int length = cArr.length;
            boolean z11 = false;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    break;
                }
                if (ba.c.e(cArr[i11], cCharAt, z10)) {
                    z11 = true;
                    break;
                }
                i11++;
            }
            if (z11) {
                return iC;
            }
        }
        return -1;
    }

    public static final aa.b<String> N(CharSequence charSequence) {
        t9.m.e(charSequence, "<this>");
        return d0(charSequence, new String[]{"\r\n", "\n", "\r"}, false, 0, 6, null);
    }

    public static final List<String> O(CharSequence charSequence) {
        t9.m.e(charSequence, "<this>");
        return aa.h.f(N(charSequence));
    }

    public static final CharSequence P(CharSequence charSequence, int i10, char c10) {
        t9.m.e(charSequence, "<this>");
        if (i10 < 0) {
            throw new IllegalArgumentException("Desired length " + i10 + " is less than zero.");
        }
        if (i10 <= charSequence.length()) {
            return charSequence.subSequence(0, charSequence.length());
        }
        StringBuilder sb = new StringBuilder(i10);
        y yVarJ = new y9.f(1, i10 - charSequence.length()).iterator();
        while (yVarJ.hasNext()) {
            yVarJ.a();
            sb.append(c10);
        }
        sb.append(charSequence);
        return sb;
    }

    public static String Q(String str, int i10, char c10) {
        t9.m.e(str, "<this>");
        return P(str, i10, c10).toString();
    }

    private static final aa.b<y9.f> R(CharSequence charSequence, char[] cArr, int i10, boolean z10, int i11) {
        W(i11);
        return new e(charSequence, i10, i11, new a(cArr, z10));
    }

    private static final aa.b<y9.f> S(CharSequence charSequence, String[] strArr, int i10, boolean z10, int i11) {
        W(i11);
        return new e(charSequence, i10, i11, new b(i9.f.a(strArr), z10));
    }

    static /* synthetic */ aa.b T(CharSequence charSequence, char[] cArr, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return R(charSequence, cArr, i10, z10, i11);
    }

    static /* synthetic */ aa.b U(CharSequence charSequence, String[] strArr, int i10, boolean z10, int i11, int i12, Object obj) {
        if ((i12 & 2) != 0) {
            i10 = 0;
        }
        if ((i12 & 4) != 0) {
            z10 = false;
        }
        if ((i12 & 8) != 0) {
            i11 = 0;
        }
        return S(charSequence, strArr, i10, z10, i11);
    }

    public static final boolean V(CharSequence charSequence, int i10, CharSequence charSequence2, int i11, int i12, boolean z10) {
        t9.m.e(charSequence, "<this>");
        t9.m.e(charSequence2, "other");
        if (i11 < 0 || i10 < 0 || i10 > charSequence.length() - i12 || i11 > charSequence2.length() - i12) {
            return false;
        }
        for (int i13 = 0; i13 < i12; i13++) {
            if (!ba.c.e(charSequence.charAt(i10 + i13), charSequence2.charAt(i11 + i13), z10)) {
                return false;
            }
        }
        return true;
    }

    public static final void W(int i10) {
        if (i10 >= 0) {
            return;
        }
        throw new IllegalArgumentException(("Limit must be non-negative, but was " + i10).toString());
    }

    public static final List<String> X(CharSequence charSequence, char[] cArr, boolean z10, int i10) {
        t9.m.e(charSequence, "<this>");
        t9.m.e(cArr, "delimiters");
        if (cArr.length == 1) {
            return Z(charSequence, String.valueOf(cArr[0]), z10, i10);
        }
        Iterable iterableC = aa.h.c(T(charSequence, cArr, 0, z10, i10, 2, null));
        ArrayList arrayList = new ArrayList(i9.m.l(iterableC, 10));
        Iterator it = iterableC.iterator();
        while (it.hasNext()) {
            arrayList.add(e0(charSequence, (y9.f) it.next()));
        }
        return arrayList;
    }

    public static final List<String> Y(CharSequence charSequence, String[] strArr, boolean z10, int i10) {
        t9.m.e(charSequence, "<this>");
        t9.m.e(strArr, "delimiters");
        if (strArr.length == 1) {
            String str = strArr[0];
            if (!(str.length() == 0)) {
                return Z(charSequence, str, z10, i10);
            }
        }
        Iterable iterableC = aa.h.c(U(charSequence, strArr, 0, z10, i10, 2, null));
        ArrayList arrayList = new ArrayList(i9.m.l(iterableC, 10));
        Iterator it = iterableC.iterator();
        while (it.hasNext()) {
            arrayList.add(e0(charSequence, (y9.f) it.next()));
        }
        return arrayList;
    }

    private static final List<String> Z(CharSequence charSequence, String str, boolean z10, int i10) {
        W(i10);
        int length = 0;
        int iC = C(charSequence, str, 0, z10);
        if (iC == -1 || i10 == 1) {
            return i9.k.b(charSequence.toString());
        }
        boolean z11 = i10 > 0;
        ArrayList arrayList = new ArrayList(z11 ? y9.l.c(i10, 10) : 10);
        do {
            arrayList.add(charSequence.subSequence(length, iC).toString());
            length = str.length() + iC;
            if (z11 && arrayList.size() == i10 - 1) {
                break;
            }
            iC = C(charSequence, str, length, z10);
        } while (iC != -1);
        arrayList.add(charSequence.subSequence(length, charSequence.length()).toString());
        return arrayList;
    }

    public static /* synthetic */ List a0(CharSequence charSequence, char[] cArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return X(charSequence, cArr, z10, i10);
    }

    public static /* synthetic */ List b0(CharSequence charSequence, String[] strArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return Y(charSequence, strArr, z10, i10);
    }

    public static final aa.b<String> c0(CharSequence charSequence, String[] strArr, boolean z10, int i10) {
        t9.m.e(charSequence, "<this>");
        t9.m.e(strArr, "delimiters");
        return aa.h.d(U(charSequence, strArr, 0, z10, i10, 2, null), new c(charSequence));
    }

    public static /* synthetic */ aa.b d0(CharSequence charSequence, String[] strArr, boolean z10, int i10, int i11, Object obj) {
        if ((i11 & 2) != 0) {
            z10 = false;
        }
        if ((i11 & 4) != 0) {
            i10 = 0;
        }
        return c0(charSequence, strArr, z10, i10);
    }

    public static final String e0(CharSequence charSequence, y9.f fVar) {
        t9.m.e(charSequence, "<this>");
        t9.m.e(fVar, "range");
        return charSequence.subSequence(fVar.n().intValue(), fVar.m().intValue() + 1).toString();
    }

    public static final String f0(String str, char c10, String str2) {
        t9.m.e(str, "<this>");
        t9.m.e(str2, "missingDelimiterValue");
        int iF = F(str, c10, 0, false, 6, null);
        if (iF == -1) {
            return str2;
        }
        String strSubstring = str.substring(iF + 1, str.length());
        t9.m.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final String g0(String str, String str2, String str3) {
        t9.m.e(str, "<this>");
        t9.m.e(str2, "delimiter");
        t9.m.e(str3, "missingDelimiterValue");
        int iG = G(str, str2, 0, false, 6, null);
        if (iG == -1) {
            return str3;
        }
        String strSubstring = str.substring(iG + str2.length(), str.length());
        t9.m.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ String h0(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return f0(str, c10, str2);
    }

    public static /* synthetic */ String i0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return g0(str, str2, str3);
    }

    public static String j0(String str, char c10, String str2) {
        t9.m.e(str, "<this>");
        t9.m.e(str2, "missingDelimiterValue");
        int iK = K(str, c10, 0, false, 6, null);
        if (iK == -1) {
            return str2;
        }
        String strSubstring = str.substring(iK + 1, str.length());
        t9.m.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ String k0(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return j0(str, c10, str2);
    }

    public static final String l0(String str, char c10, String str2) {
        t9.m.e(str, "<this>");
        t9.m.e(str2, "missingDelimiterValue");
        int iF = F(str, c10, 0, false, 6, null);
        if (iF == -1) {
            return str2;
        }
        String strSubstring = str.substring(0, iF);
        t9.m.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static final String m0(String str, String str2, String str3) {
        t9.m.e(str, "<this>");
        t9.m.e(str2, "delimiter");
        t9.m.e(str3, "missingDelimiterValue");
        int iG = G(str, str2, 0, false, 6, null);
        if (iG == -1) {
            return str3;
        }
        String strSubstring = str.substring(0, iG);
        t9.m.d(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ String n0(String str, char c10, String str2, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str2 = str;
        }
        return l0(str, c10, str2);
    }

    public static /* synthetic */ String o0(String str, String str2, String str3, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            str3 = str;
        }
        return m0(str, str2, str3);
    }

    public static CharSequence p0(CharSequence charSequence) {
        t9.m.e(charSequence, "<this>");
        int length = charSequence.length() - 1;
        int i10 = 0;
        boolean z10 = false;
        while (i10 <= length) {
            boolean zC = ba.b.c(charSequence.charAt(!z10 ? i10 : length));
            if (z10) {
                if (!zC) {
                    break;
                }
                length--;
            } else if (zC) {
                i10++;
            } else {
                z10 = true;
            }
        }
        return charSequence.subSequence(i10, length + 1);
    }

    public static final boolean w(CharSequence charSequence, CharSequence charSequence2, boolean z10) {
        t9.m.e(charSequence, "<this>");
        t9.m.e(charSequence2, "other");
        if (charSequence2 instanceof String) {
            if (G(charSequence, (String) charSequence2, 0, z10, 2, null) >= 0) {
                return true;
            }
        } else if (E(charSequence, charSequence2, 0, charSequence.length(), z10, false, 16, null) >= 0) {
            return true;
        }
        return false;
    }

    public static /* synthetic */ boolean x(CharSequence charSequence, CharSequence charSequence2, boolean z10, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            z10 = false;
        }
        return w(charSequence, charSequence2, z10);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final h9.m<Integer, String> y(CharSequence charSequence, Collection<String> collection, int i10, boolean z10, boolean z11) {
        Object next;
        Object next2;
        if (!z10 && collection.size() == 1) {
            String str = (String) t.J(collection);
            int iG = !z11 ? G(charSequence, str, i10, false, 4, null) : L(charSequence, str, i10, false, 4, null);
            if (iG < 0) {
                return null;
            }
            return h9.q.a(Integer.valueOf(iG), str);
        }
        y9.d fVar = !z11 ? new y9.f(y9.l.a(i10, 0), charSequence.length()) : y9.l.g(y9.l.c(i10, A(charSequence)), 0);
        if (charSequence instanceof String) {
            int iC = fVar.c();
            int iG2 = fVar.g();
            int i11 = fVar.i();
            if ((i11 > 0 && iC <= iG2) || (i11 < 0 && iG2 <= iC)) {
                while (true) {
                    Iterator<T> it = collection.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            next2 = null;
                            break;
                        }
                        next2 = it.next();
                        String str2 = (String) next2;
                        if (p.o(str2, 0, (String) charSequence, iC, str2.length(), z10)) {
                            break;
                        }
                    }
                    String str3 = (String) next2;
                    if (str3 == null) {
                        if (iC == iG2) {
                            break;
                        }
                        iC += i11;
                    } else {
                        return h9.q.a(Integer.valueOf(iC), str3);
                    }
                }
            }
        } else {
            int iC2 = fVar.c();
            int iG3 = fVar.g();
            int i12 = fVar.i();
            if ((i12 > 0 && iC2 <= iG3) || (i12 < 0 && iG3 <= iC2)) {
                while (true) {
                    Iterator<T> it2 = collection.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            next = null;
                            break;
                        }
                        next = it2.next();
                        String str4 = (String) next;
                        if (V(str4, 0, charSequence, iC2, str4.length(), z10)) {
                            break;
                        }
                    }
                    String str5 = (String) next;
                    if (str5 == null) {
                        if (iC2 == iG3) {
                            break;
                        }
                        iC2 += i12;
                    } else {
                        return h9.q.a(Integer.valueOf(iC2), str5);
                    }
                }
            }
        }
        return null;
    }

    public static final y9.f z(CharSequence charSequence) {
        t9.m.e(charSequence, "<this>");
        return new y9.f(0, charSequence.length() - 1);
    }
}
