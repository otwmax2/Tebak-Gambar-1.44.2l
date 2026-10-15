package ja;

import com.facebook.gamingservices.internal.TournamentShareDialogURIBuilder;
import com.vungle.mediation.BuildConfig;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: HttpUrl.java */
/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final char[] f31163j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final String f31164a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31165b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final String f31166c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final String f31167d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final int f31168e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<String> f31169f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    @Nullable
    private final List<String> f31170g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    @Nullable
    private final String f31171h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final String f31172i;

    /* JADX INFO: compiled from: HttpUrl.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        String f31173a;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        String f31176d;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final List<String> f31178f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        @Nullable
        List<String> f31179g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        @Nullable
        String f31180h;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f31174b = BuildConfig.FLAVOR;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        String f31175c = BuildConfig.FLAVOR;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f31177e = -1;

        public a() {
            ArrayList arrayList = new ArrayList();
            this.f31178f = arrayList;
            arrayList.add(BuildConfig.FLAVOR);
        }

        private static String d(String str, int i10, int i11) {
            return ka.c.d(t.u(str, i10, i11, false));
        }

        private boolean h(String str) {
            return str.equals(".") || str.equalsIgnoreCase("%2e");
        }

        private boolean i(String str) {
            return str.equals("..") || str.equalsIgnoreCase("%2e.") || str.equalsIgnoreCase(".%2e") || str.equalsIgnoreCase("%2e%2e");
        }

        private static int k(String str, int i10, int i11) {
            int i12;
            try {
                i12 = Integer.parseInt(t.a(str, i10, i11, BuildConfig.FLAVOR, false, false, false, true, null));
            } catch (NumberFormatException unused) {
            }
            if (i12 <= 0 || i12 > 65535) {
                return -1;
            }
            return i12;
        }

        private void m() {
            if (!this.f31178f.remove(r0.size() - 1).isEmpty() || this.f31178f.isEmpty()) {
                this.f31178f.add(BuildConfig.FLAVOR);
            } else {
                this.f31178f.set(r0.size() - 1, BuildConfig.FLAVOR);
            }
        }

        private static int o(String str, int i10, int i11) {
            while (i10 < i11) {
                char cCharAt = str.charAt(i10);
                if (cCharAt == ':') {
                    return i10;
                }
                if (cCharAt == '[') {
                    do {
                        i10++;
                        if (i10 < i11) {
                        }
                    } while (str.charAt(i10) != ']');
                }
                i10++;
            }
            return i11;
        }

        private void p(String str, int i10, int i11, boolean z10, boolean z11) {
            String strA = t.a(str, i10, i11, " \"<>^`{}|/\\?#", z11, false, false, true, null);
            if (h(strA)) {
                return;
            }
            if (i(strA)) {
                m();
                return;
            }
            if (this.f31178f.get(r11.size() - 1).isEmpty()) {
                this.f31178f.set(r11.size() - 1, strA);
            } else {
                this.f31178f.add(strA);
            }
            if (z10) {
                this.f31178f.add(BuildConfig.FLAVOR);
            }
        }

        private void s(String str, int i10, int i11) {
            if (i10 == i11) {
                return;
            }
            char cCharAt = str.charAt(i10);
            if (cCharAt == '/' || cCharAt == '\\') {
                this.f31178f.clear();
                this.f31178f.add(BuildConfig.FLAVOR);
                i10++;
            } else {
                List<String> list = this.f31178f;
                list.set(list.size() - 1, BuildConfig.FLAVOR);
            }
            while (true) {
                int i12 = i10;
                if (i12 >= i11) {
                    return;
                }
                i10 = ka.c.o(str, i12, i11, "/\\");
                boolean z10 = i10 < i11;
                p(str, i12, i10, z10, true);
                if (z10) {
                    i10++;
                }
            }
        }

        private static int u(String str, int i10, int i11) {
            if (i11 - i10 < 2) {
                return -1;
            }
            char cCharAt = str.charAt(i10);
            if ((cCharAt >= 'a' && cCharAt <= 'z') || (cCharAt >= 'A' && cCharAt <= 'Z')) {
                while (true) {
                    i10++;
                    if (i10 >= i11) {
                        break;
                    }
                    char cCharAt2 = str.charAt(i10);
                    if (cCharAt2 < 'a' || cCharAt2 > 'z') {
                        if (cCharAt2 < 'A' || cCharAt2 > 'Z') {
                            if (cCharAt2 < '0' || cCharAt2 > '9') {
                                if (cCharAt2 != '+' && cCharAt2 != '-' && cCharAt2 != '.') {
                                    if (cCharAt2 == ':') {
                                        return i10;
                                    }
                                }
                            }
                        }
                    }
                }
            }
            return -1;
        }

        private static int v(String str, int i10, int i11) {
            int i12 = 0;
            while (i10 < i11) {
                char cCharAt = str.charAt(i10);
                if (cCharAt != '\\' && cCharAt != '/') {
                    break;
                }
                i12++;
                i10++;
            }
            return i12;
        }

        public a a(String str, @Nullable String str2) {
            Objects.requireNonNull(str, "encodedName == null");
            if (this.f31179g == null) {
                this.f31179g = new ArrayList();
            }
            this.f31179g.add(t.b(str, " \"'<>#&=", true, false, true, true));
            this.f31179g.add(str2 != null ? t.b(str2, " \"'<>#&=", true, false, true, true) : null);
            return this;
        }

        public a b(String str, @Nullable String str2) {
            Objects.requireNonNull(str, "name == null");
            if (this.f31179g == null) {
                this.f31179g = new ArrayList();
            }
            this.f31179g.add(t.b(str, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true));
            this.f31179g.add(str2 != null ? t.b(str2, " !\"#$&'(),/:;<=>?@[]\\^`{|}~", false, false, true, true) : null);
            return this;
        }

        public t c() {
            if (this.f31173a == null) {
                throw new IllegalStateException("scheme == null");
            }
            if (this.f31176d != null) {
                return new t(this);
            }
            throw new IllegalStateException("host == null");
        }

        int e() {
            int i10 = this.f31177e;
            return i10 != -1 ? i10 : t.e(this.f31173a);
        }

        public a f(@Nullable String str) {
            this.f31179g = str != null ? t.E(t.b(str, " \"'<>#", true, false, true, true)) : null;
            return this;
        }

        public a g(String str) {
            Objects.requireNonNull(str, "host == null");
            String strD = d(str, 0, str.length());
            if (strD != null) {
                this.f31176d = strD;
                return this;
            }
            throw new IllegalArgumentException("unexpected host: " + str);
        }

        a j(@Nullable t tVar, String str) {
            int iO;
            int i10;
            int iE = ka.c.E(str, 0, str.length());
            int iF = ka.c.F(str, iE, str.length());
            int iU = u(str, iE, iF);
            if (iU != -1) {
                if (str.regionMatches(true, iE, "https:", 0, 6)) {
                    this.f31173a = TournamentShareDialogURIBuilder.scheme;
                    iE += 6;
                } else {
                    if (!str.regionMatches(true, iE, "http:", 0, 5)) {
                        throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str.substring(0, iU) + "'");
                    }
                    this.f31173a = "http";
                    iE += 5;
                }
            } else {
                if (tVar == null) {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but no colon was found");
                }
                this.f31173a = tVar.f31164a;
            }
            int iV = v(str, iE, iF);
            char c10 = '?';
            char c11 = '#';
            if (iV >= 2 || tVar == null || !tVar.f31164a.equals(this.f31173a)) {
                int i11 = iE + iV;
                boolean z10 = false;
                boolean z11 = false;
                while (true) {
                    iO = ka.c.o(str, i11, iF, "@/\\?#");
                    byte bCharAt = iO != iF ? str.charAt(iO) : (byte) -1;
                    if (bCharAt == -1 || bCharAt == c11 || bCharAt == 47 || bCharAt == 92 || bCharAt == c10) {
                        break;
                    }
                    if (bCharAt == 64) {
                        if (z10) {
                            i10 = iO;
                            this.f31175c += "%40" + t.a(str, i11, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                        } else {
                            int iN = ka.c.n(str, i11, iO, ':');
                            i10 = iO;
                            String strA = t.a(str, i11, iN, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                            if (z11) {
                                strA = this.f31174b + "%40" + strA;
                            }
                            this.f31174b = strA;
                            if (iN != i10) {
                                this.f31175c = t.a(str, iN + 1, i10, " \"':;<=>@[]^`{}|/\\?#", true, false, false, true, null);
                                z10 = true;
                            }
                            z11 = true;
                        }
                        i11 = i10 + 1;
                    }
                    c10 = '?';
                    c11 = '#';
                }
                int iO2 = o(str, i11, iO);
                int i12 = iO2 + 1;
                if (i12 < iO) {
                    this.f31176d = d(str, i11, iO2);
                    int iK = k(str, i12, iO);
                    this.f31177e = iK;
                    if (iK == -1) {
                        throw new IllegalArgumentException("Invalid URL port: \"" + str.substring(i12, iO) + '\"');
                    }
                } else {
                    this.f31176d = d(str, i11, iO2);
                    this.f31177e = t.e(this.f31173a);
                }
                if (this.f31176d == null) {
                    throw new IllegalArgumentException("Invalid URL host: \"" + str.substring(i11, iO2) + '\"');
                }
                iE = iO;
            } else {
                this.f31174b = tVar.k();
                this.f31175c = tVar.g();
                this.f31176d = tVar.f31167d;
                this.f31177e = tVar.f31168e;
                this.f31178f.clear();
                this.f31178f.addAll(tVar.i());
                if (iE == iF || str.charAt(iE) == '#') {
                    f(tVar.j());
                }
            }
            int iO3 = ka.c.o(str, iE, iF, "?#");
            s(str, iE, iO3);
            if (iO3 < iF && str.charAt(iO3) == '?') {
                int iN2 = ka.c.n(str, iO3, iF, '#');
                this.f31179g = t.E(t.a(str, iO3 + 1, iN2, " \"'<>#", true, false, true, true, null));
                iO3 = iN2;
            }
            if (iO3 < iF && str.charAt(iO3) == '#') {
                this.f31180h = t.a(str, 1 + iO3, iF, BuildConfig.FLAVOR, true, false, false, false, null);
            }
            return this;
        }

        public a l(String str) {
            Objects.requireNonNull(str, "password == null");
            this.f31175c = t.b(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }

        public a n(int i10) {
            if (i10 > 0 && i10 <= 65535) {
                this.f31177e = i10;
                return this;
            }
            throw new IllegalArgumentException("unexpected port: " + i10);
        }

        public a q(@Nullable String str) {
            this.f31179g = str != null ? t.E(t.b(str, " \"'<>#", false, false, true, true)) : null;
            return this;
        }

        a r() {
            int size = this.f31178f.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f31178f.set(i10, t.b(this.f31178f.get(i10), "[]", true, true, false, true));
            }
            List<String> list = this.f31179g;
            if (list != null) {
                int size2 = list.size();
                for (int i11 = 0; i11 < size2; i11++) {
                    String str = this.f31179g.get(i11);
                    if (str != null) {
                        this.f31179g.set(i11, t.b(str, "\\^`{|}", true, true, true, true));
                    }
                }
            }
            String str2 = this.f31180h;
            if (str2 != null) {
                this.f31180h = t.b(str2, " \"#<>\\^`{|}", true, true, false, false);
            }
            return this;
        }

        public a t(String str) {
            Objects.requireNonNull(str, "scheme == null");
            if (str.equalsIgnoreCase("http")) {
                this.f31173a = "http";
            } else {
                if (!str.equalsIgnoreCase(TournamentShareDialogURIBuilder.scheme)) {
                    throw new IllegalArgumentException("unexpected scheme: " + str);
                }
                this.f31173a = TournamentShareDialogURIBuilder.scheme;
            }
            return this;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.f31173a;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (!this.f31174b.isEmpty() || !this.f31175c.isEmpty()) {
                sb.append(this.f31174b);
                if (!this.f31175c.isEmpty()) {
                    sb.append(':');
                    sb.append(this.f31175c);
                }
                sb.append('@');
            }
            String str2 = this.f31176d;
            if (str2 != null) {
                if (str2.indexOf(58) != -1) {
                    sb.append('[');
                    sb.append(this.f31176d);
                    sb.append(']');
                } else {
                    sb.append(this.f31176d);
                }
            }
            if (this.f31177e != -1 || this.f31173a != null) {
                int iE = e();
                String str3 = this.f31173a;
                if (str3 == null || iE != t.e(str3)) {
                    sb.append(':');
                    sb.append(iE);
                }
            }
            t.t(sb, this.f31178f);
            if (this.f31179g != null) {
                sb.append('?');
                t.o(sb, this.f31179g);
            }
            if (this.f31180h != null) {
                sb.append('#');
                sb.append(this.f31180h);
            }
            return sb.toString();
        }

        public a w(String str) {
            Objects.requireNonNull(str, "username == null");
            this.f31174b = t.b(str, " \"':;<=>@[]^`{}|/\\?#", false, false, false, true);
            return this;
        }
    }

    t(a aVar) {
        this.f31164a = aVar.f31173a;
        this.f31165b = v(aVar.f31174b, false);
        this.f31166c = v(aVar.f31175c, false);
        this.f31167d = aVar.f31176d;
        this.f31168e = aVar.e();
        this.f31169f = w(aVar.f31178f, false);
        List<String> list = aVar.f31179g;
        this.f31170g = list != null ? w(list, true) : null;
        String str = aVar.f31180h;
        this.f31171h = str != null ? v(str, false) : null;
        this.f31172i = aVar.toString();
    }

    static List<String> E(String str) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        while (i10 <= str.length()) {
            int iIndexOf = str.indexOf(38, i10);
            if (iIndexOf == -1) {
                iIndexOf = str.length();
            }
            int iIndexOf2 = str.indexOf(61, i10);
            if (iIndexOf2 == -1 || iIndexOf2 > iIndexOf) {
                arrayList.add(str.substring(i10, iIndexOf));
                arrayList.add(null);
            } else {
                arrayList.add(str.substring(i10, iIndexOf2));
                arrayList.add(str.substring(iIndexOf2 + 1, iIndexOf));
            }
            i10 = iIndexOf + 1;
        }
        return arrayList;
    }

    static String a(String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        int iCharCount = i10;
        while (iCharCount < i11) {
            int iCodePointAt = str.codePointAt(iCharCount);
            if (iCodePointAt < 32 || iCodePointAt == 127 || (iCodePointAt >= 128 && z13)) {
                okio.c cVar = new okio.c();
                cVar.K(str, i10, iCharCount);
                d(cVar, str, iCharCount, i11, str2, z10, z11, z12, z13, charset);
                return cVar.o();
            }
            if (str2.indexOf(iCodePointAt) != -1 || ((iCodePointAt == 37 && (!z10 || (z11 && !y(str, iCharCount, i11)))) || (iCodePointAt == 43 && z12))) {
                okio.c cVar2 = new okio.c();
                cVar2.K(str, i10, iCharCount);
                d(cVar2, str, iCharCount, i11, str2, z10, z11, z12, z13, charset);
                return cVar2.o();
            }
            iCharCount += Character.charCount(iCodePointAt);
        }
        return str.substring(i10, i11);
    }

    static String b(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13) {
        return a(str, 0, str.length(), str2, z10, z11, z12, z13, null);
    }

    static String c(String str, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        return a(str, 0, str.length(), str2, z10, z11, z12, z13, charset);
    }

    static void d(okio.c cVar, String str, int i10, int i11, String str2, boolean z10, boolean z11, boolean z12, boolean z13, Charset charset) {
        okio.c cVar2 = null;
        while (i10 < i11) {
            int iCodePointAt = str.codePointAt(i10);
            if (!z10 || (iCodePointAt != 9 && iCodePointAt != 10 && iCodePointAt != 12 && iCodePointAt != 13)) {
                if (iCodePointAt == 43 && z12) {
                    cVar.H1(z10 ? "+" : "%2B");
                } else if (iCodePointAt < 32 || iCodePointAt == 127 || ((iCodePointAt >= 128 && z13) || str2.indexOf(iCodePointAt) != -1 || (iCodePointAt == 37 && (!z10 || (z11 && !y(str, i10, i11)))))) {
                    if (cVar2 == null) {
                        cVar2 = new okio.c();
                    }
                    if (charset == null || charset.equals(ka.c.f31647j)) {
                        cVar2.M(iCodePointAt);
                    } else {
                        cVar2.H(str, i10, Character.charCount(iCodePointAt) + i10, charset);
                    }
                    while (!cVar2.S0()) {
                        int i12 = cVar2.readByte() & 255;
                        cVar.T0(37);
                        char[] cArr = f31163j;
                        cVar.T0(cArr[(i12 >> 4) & 15]);
                        cVar.T0(cArr[i12 & 15]);
                    }
                } else {
                    cVar.M(iCodePointAt);
                }
            }
            i10 += Character.charCount(iCodePointAt);
        }
    }

    public static int e(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals(TournamentShareDialogURIBuilder.scheme) ? 443 : -1;
    }

    public static t l(String str) {
        return new a().j(null, str).c();
    }

    static void o(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10 += 2) {
            String str = list.get(i10);
            String str2 = list.get(i10 + 1);
            if (i10 > 0) {
                sb.append('&');
            }
            sb.append(str);
            if (str2 != null) {
                sb.append('=');
                sb.append(str2);
            }
        }
    }

    @Nullable
    public static t r(String str) {
        try {
            return l(str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    static void t(StringBuilder sb, List<String> list) {
        int size = list.size();
        for (int i10 = 0; i10 < size; i10++) {
            sb.append('/');
            sb.append(list.get(i10));
        }
    }

    static String u(String str, int i10, int i11, boolean z10) {
        for (int i12 = i10; i12 < i11; i12++) {
            char cCharAt = str.charAt(i12);
            if (cCharAt == '%' || (cCharAt == '+' && z10)) {
                okio.c cVar = new okio.c();
                cVar.K(str, i10, i12);
                x(cVar, str, i12, i11, z10);
                return cVar.o();
            }
        }
        return str.substring(i10, i11);
    }

    static String v(String str, boolean z10) {
        return u(str, 0, str.length(), z10);
    }

    private List<String> w(List<String> list, boolean z10) {
        int size = list.size();
        ArrayList arrayList = new ArrayList(size);
        for (int i10 = 0; i10 < size; i10++) {
            String str = list.get(i10);
            arrayList.add(str != null ? v(str, z10) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static void x(okio.c r5, java.lang.String r6, int r7, int r8, boolean r9) {
        /*
        L0:
            if (r7 >= r8) goto L42
            int r0 = r6.codePointAt(r7)
            r1 = 37
            if (r0 != r1) goto L2d
            int r1 = r7 + 2
            if (r1 >= r8) goto L2d
            int r2 = r7 + 1
            char r2 = r6.charAt(r2)
            int r2 = ka.c.k(r2)
            char r3 = r6.charAt(r1)
            int r3 = ka.c.k(r3)
            r4 = -1
            if (r2 == r4) goto L39
            if (r3 == r4) goto L39
            int r7 = r2 << 4
            int r7 = r7 + r3
            r5.T0(r7)
            r7 = r1
            goto L3c
        L2d:
            r1 = 43
            if (r0 != r1) goto L39
            if (r9 == 0) goto L39
            r1 = 32
            r5.T0(r1)
            goto L3c
        L39:
            r5.M(r0)
        L3c:
            int r0 = java.lang.Character.charCount(r0)
            int r7 = r7 + r0
            goto L0
        L42:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: ja.t.x(okio.c, java.lang.String, int, int, boolean):void");
    }

    static boolean y(String str, int i10, int i11) {
        int i12 = i10 + 2;
        return i12 < i11 && str.charAt(i10) == '%' && ka.c.k(str.charAt(i10 + 1)) != -1 && ka.c.k(str.charAt(i12)) != -1;
    }

    @Nullable
    public String A() {
        if (this.f31170g == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        o(sb, this.f31170g);
        return sb.toString();
    }

    public String B(int i10) {
        List<String> list = this.f31170g;
        if (list != null) {
            return list.get(i10 * 2);
        }
        throw new IndexOutOfBoundsException();
    }

    public String C(int i10) {
        List<String> list = this.f31170g;
        if (list != null) {
            return list.get((i10 * 2) + 1);
        }
        throw new IndexOutOfBoundsException();
    }

    public int D() {
        List<String> list = this.f31170g;
        if (list != null) {
            return list.size() / 2;
        }
        return 0;
    }

    public String F() {
        return q("/...").w(BuildConfig.FLAVOR).l(BuildConfig.FLAVOR).c().toString();
    }

    @Nullable
    public t G(String str) {
        a aVarQ = q(str);
        if (aVarQ != null) {
            return aVarQ.c();
        }
        return null;
    }

    public String H() {
        return this.f31164a;
    }

    public URI I() {
        String string = p().r().toString();
        try {
            return new URI(string);
        } catch (URISyntaxException e10) {
            try {
                return URI.create(string.replaceAll("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]", BuildConfig.FLAVOR));
            } catch (Exception unused) {
                throw new RuntimeException(e10);
            }
        }
    }

    public boolean equals(@Nullable Object obj) {
        return (obj instanceof t) && ((t) obj).f31172i.equals(this.f31172i);
    }

    @Nullable
    public String f() {
        if (this.f31171h == null) {
            return null;
        }
        return this.f31172i.substring(this.f31172i.indexOf(35) + 1);
    }

    public String g() {
        if (this.f31166c.isEmpty()) {
            return BuildConfig.FLAVOR;
        }
        return this.f31172i.substring(this.f31172i.indexOf(58, this.f31164a.length() + 3) + 1, this.f31172i.indexOf(64));
    }

    public String h() {
        int iIndexOf = this.f31172i.indexOf(47, this.f31164a.length() + 3);
        String str = this.f31172i;
        return this.f31172i.substring(iIndexOf, ka.c.o(str, iIndexOf, str.length(), "?#"));
    }

    public int hashCode() {
        return this.f31172i.hashCode();
    }

    public List<String> i() {
        int iIndexOf = this.f31172i.indexOf(47, this.f31164a.length() + 3);
        String str = this.f31172i;
        int iO = ka.c.o(str, iIndexOf, str.length(), "?#");
        ArrayList arrayList = new ArrayList();
        while (iIndexOf < iO) {
            int i10 = iIndexOf + 1;
            int iN = ka.c.n(this.f31172i, i10, iO, '/');
            arrayList.add(this.f31172i.substring(i10, iN));
            iIndexOf = iN;
        }
        return arrayList;
    }

    @Nullable
    public String j() {
        if (this.f31170g == null) {
            return null;
        }
        int iIndexOf = this.f31172i.indexOf(63) + 1;
        String str = this.f31172i;
        return this.f31172i.substring(iIndexOf, ka.c.n(str, iIndexOf, str.length(), '#'));
    }

    public String k() {
        if (this.f31165b.isEmpty()) {
            return BuildConfig.FLAVOR;
        }
        int length = this.f31164a.length() + 3;
        String str = this.f31172i;
        return this.f31172i.substring(length, ka.c.o(str, length, str.length(), ":@"));
    }

    public String m() {
        return this.f31167d;
    }

    public boolean n() {
        return this.f31164a.equals(TournamentShareDialogURIBuilder.scheme);
    }

    public a p() {
        a aVar = new a();
        aVar.f31173a = this.f31164a;
        aVar.f31174b = k();
        aVar.f31175c = g();
        aVar.f31176d = this.f31167d;
        aVar.f31177e = this.f31168e != e(this.f31164a) ? this.f31168e : -1;
        aVar.f31178f.clear();
        aVar.f31178f.addAll(i());
        aVar.f(j());
        aVar.f31180h = f();
        return aVar;
    }

    @Nullable
    public a q(String str) {
        try {
            return new a().j(this, str);
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }

    public List<String> s() {
        return this.f31169f;
    }

    public String toString() {
        return this.f31172i;
    }

    public int z() {
        return this.f31168e;
    }
}
