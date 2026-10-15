package ta;

import com.vungle.mediation.BuildConfig;
import ja.a0;
import ja.b0;
import ja.c0;
import ja.d0;
import ja.i;
import ja.s;
import ja.u;
import ja.v;
import java.io.EOFException;
import java.nio.charset.Charset;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import na.e;
import okio.c;
import okio.l;
import qa.g;

/* JADX INFO: compiled from: HttpLoggingInterceptor.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a implements u {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Charset f35555c = Charset.forName("UTF-8");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final b f35556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private volatile EnumC0257a f35557b;

    /* JADX INFO: renamed from: ta.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: HttpLoggingInterceptor.java */
    public enum EnumC0257a {
        NONE,
        BASIC,
        HEADERS,
        BODY
    }

    /* JADX INFO: compiled from: HttpLoggingInterceptor.java */
    public interface b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final b f35563a = new C0258a();

        /* JADX INFO: renamed from: ta.a$b$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: HttpLoggingInterceptor.java */
        final class C0258a implements b {
            C0258a() {
            }

            @Override // ta.a.b
            public void a(String str) {
                g.l().s(4, str, null);
            }
        }

        void a(String str);
    }

    public a() {
        this(b.f35563a);
    }

    private boolean a(s sVar) {
        String strC = sVar.c("Content-Encoding");
        return (strC == null || strC.equalsIgnoreCase("identity") || strC.equalsIgnoreCase("gzip")) ? false : true;
    }

    static boolean b(c cVar) {
        try {
            c cVar2 = new c();
            cVar.g(cVar2, 0L, cVar.s() < 64 ? cVar.s() : 64L);
            for (int i10 = 0; i10 < 16; i10++) {
                if (cVar2.S0()) {
                    return true;
                }
                int iQ = cVar2.q();
                if (Character.isISOControl(iQ) && !Character.isWhitespace(iQ)) {
                    return false;
                }
            }
            return true;
        } catch (EOFException unused) {
            return false;
        }
    }

    public a c(EnumC0257a enumC0257a) {
        Objects.requireNonNull(enumC0257a, "level == null. Use Level.NONE instead.");
        this.f35557b = enumC0257a;
        return this;
    }

    @Override // ja.u
    public c0 intercept(u.a aVar) throws Exception {
        boolean z10;
        long j10;
        char c10;
        String string;
        l lVar;
        boolean z11;
        EnumC0257a enumC0257a = this.f35557b;
        a0 a0VarF = aVar.f();
        if (enumC0257a == EnumC0257a.NONE) {
            return aVar.e(a0VarF);
        }
        boolean z12 = enumC0257a == EnumC0257a.BODY;
        boolean z13 = z12 || enumC0257a == EnumC0257a.HEADERS;
        b0 b0VarA = a0VarF.a();
        boolean z14 = b0VarA != null;
        i iVarC = aVar.c();
        StringBuilder sb = new StringBuilder();
        sb.append("--> ");
        sb.append(a0VarF.f());
        sb.append(' ');
        sb.append(a0VarF.h());
        sb.append(iVarC != null ? " " + iVarC.a() : BuildConfig.FLAVOR);
        String string2 = sb.toString();
        if (!z13 && z14) {
            string2 = string2 + " (" + b0VarA.contentLength() + "-byte body)";
        }
        this.f35556a.a(string2);
        if (z13) {
            if (z14) {
                if (b0VarA.contentType() != null) {
                    this.f35556a.a("Content-Type: " + b0VarA.contentType());
                }
                if (b0VarA.contentLength() != -1) {
                    this.f35556a.a("Content-Length: " + b0VarA.contentLength());
                }
            }
            s sVarD = a0VarF.d();
            int iH = sVarD.h();
            int i10 = 0;
            while (i10 < iH) {
                String strE = sVarD.e(i10);
                int i11 = iH;
                if ("Content-Type".equalsIgnoreCase(strE) || "Content-Length".equalsIgnoreCase(strE)) {
                    z11 = z13;
                } else {
                    z11 = z13;
                    this.f35556a.a(strE + ": " + sVarD.i(i10));
                }
                i10++;
                iH = i11;
                z13 = z11;
            }
            z10 = z13;
            if (!z12 || !z14) {
                this.f35556a.a("--> END " + a0VarF.f());
            } else if (a(a0VarF.d())) {
                this.f35556a.a("--> END " + a0VarF.f() + " (encoded body omitted)");
            } else {
                c cVar = new c();
                b0VarA.writeTo(cVar);
                Charset charsetB = f35555c;
                v vVarContentType = b0VarA.contentType();
                if (vVarContentType != null) {
                    charsetB = vVarContentType.b(charsetB);
                }
                this.f35556a.a(BuildConfig.FLAVOR);
                if (b(cVar)) {
                    this.f35556a.a(cVar.T1(charsetB));
                    this.f35556a.a("--> END " + a0VarF.f() + " (" + b0VarA.contentLength() + "-byte body)");
                } else {
                    this.f35556a.a("--> END " + a0VarF.f() + " (binary " + b0VarA.contentLength() + "-byte body omitted)");
                }
            }
        } else {
            z10 = z13;
        }
        long jNanoTime = System.nanoTime();
        try {
            c0 c0VarE = aVar.e(a0VarF);
            long millis = TimeUnit.NANOSECONDS.toMillis(System.nanoTime() - jNanoTime);
            d0 d0VarB = c0VarE.b();
            long jContentLength = d0VarB.contentLength();
            String str = jContentLength != -1 ? jContentLength + "-byte" : "unknown-length";
            b bVar = this.f35556a;
            StringBuilder sb2 = new StringBuilder();
            sb2.append("<-- ");
            sb2.append(c0VarE.d());
            if (c0VarE.j().isEmpty()) {
                j10 = jContentLength;
                string = BuildConfig.FLAVOR;
                c10 = ' ';
            } else {
                StringBuilder sb3 = new StringBuilder();
                j10 = jContentLength;
                c10 = ' ';
                sb3.append(' ');
                sb3.append(c0VarE.j());
                string = sb3.toString();
            }
            sb2.append(string);
            sb2.append(c10);
            sb2.append(c0VarE.n().h());
            sb2.append(" (");
            sb2.append(millis);
            sb2.append("ms");
            sb2.append(z10 ? BuildConfig.FLAVOR : ", " + str + " body");
            sb2.append(')');
            bVar.a(sb2.toString());
            if (z10) {
                s sVarH = c0VarE.h();
                int iH2 = sVarH.h();
                for (int i12 = 0; i12 < iH2; i12++) {
                    this.f35556a.a(sVarH.e(i12) + ": " + sVarH.i(i12));
                }
                if (!z12 || !e.c(c0VarE)) {
                    this.f35556a.a("<-- END HTTP");
                } else if (a(c0VarE.h())) {
                    this.f35556a.a("<-- END HTTP (encoded body omitted)");
                } else {
                    okio.e eVarSource = d0VarB.source();
                    eVarSource.t2(Long.MAX_VALUE);
                    c cVarB = eVarSource.B();
                    Long l10 = null;
                    l lVar2 = null;
                    if ("gzip".equalsIgnoreCase(sVarH.c("Content-Encoding"))) {
                        Long lValueOf = Long.valueOf(cVarB.s());
                        try {
                            lVar = new l(cVarB.clone());
                        } catch (Throwable th) {
                            th = th;
                        }
                        try {
                            cVarB = new c();
                            cVarB.h2(lVar);
                            lVar.close();
                            l10 = lValueOf;
                        } catch (Throwable th2) {
                            th = th2;
                            lVar2 = lVar;
                            if (lVar2 != null) {
                                lVar2.close();
                            }
                            throw th;
                        }
                    }
                    Charset charsetB2 = f35555c;
                    v vVarContentType2 = d0VarB.contentType();
                    if (vVarContentType2 != null) {
                        charsetB2 = vVarContentType2.b(charsetB2);
                    }
                    if (!b(cVarB)) {
                        this.f35556a.a(BuildConfig.FLAVOR);
                        this.f35556a.a("<-- END HTTP (binary " + cVarB.s() + "-byte body omitted)");
                        return c0VarE;
                    }
                    if (j10 != 0) {
                        this.f35556a.a(BuildConfig.FLAVOR);
                        this.f35556a.a(cVarB.clone().T1(charsetB2));
                    }
                    if (l10 != null) {
                        this.f35556a.a("<-- END HTTP (" + cVarB.s() + "-byte, " + l10 + "-gzipped-byte body)");
                    } else {
                        this.f35556a.a("<-- END HTTP (" + cVarB.s() + "-byte body)");
                    }
                }
            }
            return c0VarE;
        } catch (Exception e10) {
            this.f35556a.a("<-- HTTP FAILED: " + e10);
            throw e10;
        }
    }

    public a(b bVar) {
        this.f35557b = EnumC0257a.NONE;
        this.f35556a = bVar;
    }
}
