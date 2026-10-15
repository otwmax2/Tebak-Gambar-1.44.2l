package na;

import ja.c0;
import ja.l;
import ja.m;
import ja.s;
import ja.t;
import java.util.List;

/* JADX INFO: compiled from: HttpHeaders.java */
/* JADX INFO: loaded from: classes2.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final okio.f f32519a = okio.f.l("\"\\");

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final okio.f f32520b = okio.f.l("\t ,=");

    public static long a(s sVar) {
        return h(sVar.c("Content-Length"));
    }

    public static long b(c0 c0Var) {
        return a(c0Var.h());
    }

    public static boolean c(c0 c0Var) {
        if (c0Var.n().f().equals("HEAD")) {
            return false;
        }
        int iD = c0Var.d();
        return (((iD >= 100 && iD < 200) || iD == 204 || iD == 304) && b(c0Var) == -1 && !"chunked".equalsIgnoreCase(c0Var.f("Transfer-Encoding"))) ? false : true;
    }

    public static int d(String str, int i10) {
        try {
            long j10 = Long.parseLong(str);
            if (j10 > 2147483647L) {
                return Integer.MAX_VALUE;
            }
            if (j10 < 0) {
                return 0;
            }
            return (int) j10;
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    public static void e(m mVar, t tVar, s sVar) {
        if (mVar == m.f31140a) {
            return;
        }
        List<l> listF = l.f(tVar, sVar);
        if (listF.isEmpty()) {
            return;
        }
        mVar.b(tVar, listF);
    }

    public static int f(String str, int i10, String str2) {
        while (i10 < str.length() && str2.indexOf(str.charAt(i10)) == -1) {
            i10++;
        }
        return i10;
    }

    public static int g(String str, int i10) {
        char cCharAt;
        while (i10 < str.length() && ((cCharAt = str.charAt(i10)) == ' ' || cCharAt == '\t')) {
            i10++;
        }
        return i10;
    }

    private static long h(String str) {
        if (str == null) {
            return -1L;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return -1L;
        }
    }
}
