package la;

import ja.a0;
import ja.c0;
import ja.s;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import javax.annotation.Nullable;
import na.e;

/* JADX INFO: compiled from: CacheStrategy.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    @Nullable
    public final a0 f32068a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    public final c0 f32069b;

    /* JADX INFO: compiled from: CacheStrategy.java */
    /* JADX INFO: loaded from: classes2.dex */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final long f32070a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final a0 f32071b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final c0 f32072c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private Date f32073d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f32074e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private Date f32075f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private String f32076g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private Date f32077h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f32078i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private long f32079j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private String f32080k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f32081l;

        public a(long j10, a0 a0Var, c0 c0Var) {
            this.f32081l = -1;
            this.f32070a = j10;
            this.f32071b = a0Var;
            this.f32072c = c0Var;
            if (c0Var != null) {
                this.f32078i = c0Var.o();
                this.f32079j = c0Var.m();
                s sVarH = c0Var.h();
                int iH = sVarH.h();
                for (int i10 = 0; i10 < iH; i10++) {
                    String strE = sVarH.e(i10);
                    String strI = sVarH.i(i10);
                    if ("Date".equalsIgnoreCase(strE)) {
                        this.f32073d = na.d.b(strI);
                        this.f32074e = strI;
                    } else if ("Expires".equalsIgnoreCase(strE)) {
                        this.f32077h = na.d.b(strI);
                    } else if ("Last-Modified".equalsIgnoreCase(strE)) {
                        this.f32075f = na.d.b(strI);
                        this.f32076g = strI;
                    } else if ("ETag".equalsIgnoreCase(strE)) {
                        this.f32080k = strI;
                    } else if ("Age".equalsIgnoreCase(strE)) {
                        this.f32081l = e.d(strI, -1);
                    }
                }
            }
        }

        private long a() {
            Date date = this.f32073d;
            long jMax = date != null ? Math.max(0L, this.f32079j - date.getTime()) : 0L;
            int i10 = this.f32081l;
            if (i10 != -1) {
                jMax = Math.max(jMax, TimeUnit.SECONDS.toMillis(i10));
            }
            long j10 = this.f32079j;
            return jMax + (j10 - this.f32078i) + (this.f32070a - j10);
        }

        private long b() {
            if (this.f32072c.c().d() != -1) {
                return TimeUnit.SECONDS.toMillis(r0.d());
            }
            if (this.f32077h != null) {
                Date date = this.f32073d;
                long time = this.f32077h.getTime() - (date != null ? date.getTime() : this.f32079j);
                if (time > 0) {
                    return time;
                }
                return 0L;
            }
            if (this.f32075f == null || this.f32072c.n().h().A() != null) {
                return 0L;
            }
            Date date2 = this.f32073d;
            long time2 = (date2 != null ? date2.getTime() : this.f32078i) - this.f32075f.getTime();
            if (time2 > 0) {
                return time2 / 10;
            }
            return 0L;
        }

        private c d() {
            if (this.f32072c == null) {
                return new c(this.f32071b, null);
            }
            if (this.f32071b.e() && this.f32072c.e() == null) {
                return new c(this.f32071b, null);
            }
            if (!c.a(this.f32072c, this.f32071b)) {
                return new c(this.f32071b, null);
            }
            ja.d dVarB = this.f32071b.b();
            if (dVarB.h() || e(this.f32071b)) {
                return new c(this.f32071b, null);
            }
            ja.d dVarC = this.f32072c.c();
            long jA = a();
            long jB = b();
            if (dVarB.d() != -1) {
                jB = Math.min(jB, TimeUnit.SECONDS.toMillis(dVarB.d()));
            }
            long millis = 0;
            long millis2 = dVarB.f() != -1 ? TimeUnit.SECONDS.toMillis(dVarB.f()) : 0L;
            if (!dVarC.g() && dVarB.e() != -1) {
                millis = TimeUnit.SECONDS.toMillis(dVarB.e());
            }
            if (!dVarC.h()) {
                long j10 = millis2 + jA;
                if (j10 < millis + jB) {
                    c0.a aVarK = this.f32072c.k();
                    if (j10 >= jB) {
                        aVarK.a("Warning", "110 HttpURLConnection \"Response is stale\"");
                    }
                    if (jA > 86400000 && f()) {
                        aVarK.a("Warning", "113 HttpURLConnection \"Heuristic expiration\"");
                    }
                    return new c(null, aVarK.c());
                }
            }
            String str = this.f32080k;
            String str2 = "If-Modified-Since";
            if (str != null) {
                str2 = "If-None-Match";
            } else if (this.f32075f != null) {
                str = this.f32076g;
            } else {
                if (this.f32073d == null) {
                    return new c(this.f32071b, null);
                }
                str = this.f32074e;
            }
            s.a aVarF = this.f32071b.d().f();
            ka.a.f31636a.b(aVarF, str2, str);
            return new c(this.f32071b.g().e(aVarF.d()).b(), this.f32072c);
        }

        private static boolean e(a0 a0Var) {
            return (a0Var.c("If-Modified-Since") == null && a0Var.c("If-None-Match") == null) ? false : true;
        }

        private boolean f() {
            return this.f32072c.c().d() == -1 && this.f32077h == null;
        }

        public c c() {
            c cVarD = d();
            return (cVarD.f32068a == null || !this.f32071b.b().j()) ? cVarD : new c(null, null);
        }
    }

    c(a0 a0Var, c0 c0Var) {
        this.f32068a = a0Var;
        this.f32069b = c0Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0056, code lost:
    
        if (r3.c().b() == false) goto L33;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public static boolean a(ja.c0 r3, ja.a0 r4) {
        /*
            int r0 = r3.d()
            r1 = 200(0xc8, float:2.8E-43)
            r2 = 0
            if (r0 == r1) goto L5a
            r1 = 410(0x19a, float:5.75E-43)
            if (r0 == r1) goto L5a
            r1 = 414(0x19e, float:5.8E-43)
            if (r0 == r1) goto L5a
            r1 = 501(0x1f5, float:7.02E-43)
            if (r0 == r1) goto L5a
            r1 = 203(0xcb, float:2.84E-43)
            if (r0 == r1) goto L5a
            r1 = 204(0xcc, float:2.86E-43)
            if (r0 == r1) goto L5a
            r1 = 307(0x133, float:4.3E-43)
            if (r0 == r1) goto L31
            r1 = 308(0x134, float:4.32E-43)
            if (r0 == r1) goto L5a
            r1 = 404(0x194, float:5.66E-43)
            if (r0 == r1) goto L5a
            r1 = 405(0x195, float:5.68E-43)
            if (r0 == r1) goto L5a
            switch(r0) {
                case 300: goto L5a;
                case 301: goto L5a;
                case 302: goto L31;
                default: goto L30;
            }
        L30:
            goto L59
        L31:
            java.lang.String r0 = "Expires"
            java.lang.String r0 = r3.f(r0)
            if (r0 != 0) goto L5a
            ja.d r0 = r3.c()
            int r0 = r0.d()
            r1 = -1
            if (r0 != r1) goto L5a
            ja.d r0 = r3.c()
            boolean r0 = r0.c()
            if (r0 != 0) goto L5a
            ja.d r0 = r3.c()
            boolean r0 = r0.b()
            if (r0 == 0) goto L59
            goto L5a
        L59:
            return r2
        L5a:
            ja.d r3 = r3.c()
            boolean r3 = r3.i()
            if (r3 != 0) goto L6f
            ja.d r3 = r4.b()
            boolean r3 = r3.i()
            if (r3 != 0) goto L6f
            r2 = 1
        L6f:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: la.c.a(ja.c0, ja.a0):boolean");
    }
}
