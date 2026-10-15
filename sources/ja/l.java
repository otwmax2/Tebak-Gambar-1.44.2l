package ja;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;
import java.util.regex.Pattern;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Cookie.java */
/* JADX INFO: loaded from: classes.dex */
public final class l {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static final Pattern f31127j = Pattern.compile("(\\d{2,4})[^\\d]*");

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final Pattern f31128k = Pattern.compile("(?i)(jan|feb|mar|apr|may|jun|jul|aug|sep|oct|nov|dec).*");

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final Pattern f31129l = Pattern.compile("(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final Pattern f31130m = Pattern.compile("(\\d{1,2}):(\\d{1,2}):(\\d{1,2})[^\\d]*");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31131a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f31132b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final long f31133c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final String f31134d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f31135e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f31136f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f31137g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f31138h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final boolean f31139i;

    private l(String str, String str2, long j10, String str3, String str4, boolean z10, boolean z11, boolean z12, boolean z13) {
        this.f31131a = str;
        this.f31132b = str2;
        this.f31133c = j10;
        this.f31134d = str3;
        this.f31135e = str4;
        this.f31136f = z10;
        this.f31137g = z11;
        this.f31139i = z12;
        this.f31138h = z13;
    }

    private static int a(String str, int i10, int i11, boolean z10) {
        while (i10 < i11) {
            char cCharAt = str.charAt(i10);
            if (((cCharAt < ' ' && cCharAt != '\t') || cCharAt >= 127 || (cCharAt >= '0' && cCharAt <= '9') || ((cCharAt >= 'a' && cCharAt <= 'z') || ((cCharAt >= 'A' && cCharAt <= 'Z') || cCharAt == ':'))) == (!z10)) {
                return i10;
            }
            i10++;
        }
        return i11;
    }

    private static boolean b(String str, String str2) {
        if (str.equals(str2)) {
            return true;
        }
        return str.endsWith(str2) && str.charAt((str.length() - str2.length()) - 1) == '.' && !ka.c.J(str);
    }

    /* JADX WARN: Removed duplicated region for block: B:43:0x00c0 A[PHI: r0
      0x00c0: PHI (r0v15 long) = (r0v2 long), (r0v5 long) binds: [B:42:0x00be, B:53:0x00e1] A[DONT_GENERATE, DONT_INLINE]] */
    @javax.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    static ja.l d(long r23, ja.t r25, java.lang.String r26) {
        /*
            Method dump skipped, instruction units count: 311
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ja.l.d(long, ja.t, java.lang.String):ja.l");
    }

    @Nullable
    public static l e(t tVar, String str) {
        return d(System.currentTimeMillis(), tVar, str);
    }

    public static List<l> f(t tVar, s sVar) {
        List<String> listJ = sVar.j("Set-Cookie");
        int size = listJ.size();
        ArrayList arrayList = null;
        for (int i10 = 0; i10 < size; i10++) {
            l lVarE = e(tVar, listJ.get(i10));
            if (lVarE != null) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                arrayList.add(lVarE);
            }
        }
        return arrayList != null ? Collections.unmodifiableList(arrayList) : Collections.emptyList();
    }

    private static String g(String str) {
        if (str.endsWith(".")) {
            throw new IllegalArgumentException();
        }
        if (str.startsWith(".")) {
            str = str.substring(1);
        }
        String strD = ka.c.d(str);
        if (strD != null) {
            return strD;
        }
        throw new IllegalArgumentException();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static long h(java.lang.String r12, int r13, int r14) {
        /*
            Method dump skipped, instruction units count: 289
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: ja.l.h(java.lang.String, int, int):long");
    }

    private static long i(String str) {
        try {
            long j10 = Long.parseLong(str);
            if (j10 <= 0) {
                return Long.MIN_VALUE;
            }
            return j10;
        } catch (NumberFormatException e10) {
            if (str.matches("-?\\d+")) {
                return str.startsWith("-") ? Long.MIN_VALUE : Long.MAX_VALUE;
            }
            throw e10;
        }
    }

    public String c() {
        return this.f31131a;
    }

    public boolean equals(@Nullable Object obj) {
        if (!(obj instanceof l)) {
            return false;
        }
        l lVar = (l) obj;
        return lVar.f31131a.equals(this.f31131a) && lVar.f31132b.equals(this.f31132b) && lVar.f31134d.equals(this.f31134d) && lVar.f31135e.equals(this.f31135e) && lVar.f31133c == this.f31133c && lVar.f31136f == this.f31136f && lVar.f31137g == this.f31137g && lVar.f31138h == this.f31138h && lVar.f31139i == this.f31139i;
    }

    public int hashCode() {
        int iHashCode = (((((((527 + this.f31131a.hashCode()) * 31) + this.f31132b.hashCode()) * 31) + this.f31134d.hashCode()) * 31) + this.f31135e.hashCode()) * 31;
        long j10 = this.f31133c;
        return ((((((((iHashCode + ((int) (j10 ^ (j10 >>> 32)))) * 31) + (!this.f31136f ? 1 : 0)) * 31) + (!this.f31137g ? 1 : 0)) * 31) + (!this.f31138h ? 1 : 0)) * 31) + (!this.f31139i ? 1 : 0);
    }

    String j(boolean z10) {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f31131a);
        sb.append('=');
        sb.append(this.f31132b);
        if (this.f31138h) {
            if (this.f31133c == Long.MIN_VALUE) {
                sb.append("; max-age=0");
            } else {
                sb.append("; expires=");
                sb.append(na.d.a(new Date(this.f31133c)));
            }
        }
        if (!this.f31139i) {
            sb.append("; domain=");
            if (z10) {
                sb.append(".");
            }
            sb.append(this.f31134d);
        }
        sb.append("; path=");
        sb.append(this.f31135e);
        if (this.f31136f) {
            sb.append("; secure");
        }
        if (this.f31137g) {
            sb.append("; httponly");
        }
        return sb.toString();
    }

    public String k() {
        return this.f31132b;
    }

    public String toString() {
        return j(false);
    }
}
