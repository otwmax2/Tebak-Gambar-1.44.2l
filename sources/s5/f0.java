package s5;

import com.google.auto.value.AutoValue;
import java.nio.charset.Charset;
import java.util.List;
import s5.a0;
import s5.b;
import s5.c;
import s5.d;
import s5.e;
import s5.f;
import s5.g;
import s5.h;
import s5.i;
import s5.k;
import s5.l;
import s5.m;
import s5.n;
import s5.o;
import s5.p;
import s5.q;
import s5.r;
import s5.s;
import s5.t;
import s5.u;
import s5.v;
import s5.w;
import s5.x;
import s5.y;
import s5.z;

/* JADX INFO: compiled from: CrashlyticsReport.java */
/* JADX INFO: loaded from: classes2.dex */
@AutoValue
public abstract class f0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Charset f34787a = Charset.forName("UTF-8");

    /* JADX INFO: compiled from: CrashlyticsReport.java */
    @AutoValue
    public static abstract class a {

        /* JADX INFO: renamed from: s5.f0$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: CrashlyticsReport.java */
        @AutoValue
        public static abstract class AbstractC0230a {

            /* JADX INFO: renamed from: s5.f0$a$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: CrashlyticsReport.java */
            @AutoValue.Builder
            public static abstract class AbstractC0231a {
                public abstract AbstractC0230a a();

                public abstract AbstractC0231a b(String str);

                public abstract AbstractC0231a c(String str);

                public abstract AbstractC0231a d(String str);
            }

            public static AbstractC0231a a() {
                return new d.b();
            }

            public abstract String b();

            public abstract String c();

            public abstract String d();
        }

        /* JADX INFO: compiled from: CrashlyticsReport.java */
        @AutoValue.Builder
        public static abstract class b {
            public abstract a a();

            public abstract b b(List<AbstractC0230a> list);

            public abstract b c(int i10);

            public abstract b d(int i10);

            public abstract b e(String str);

            public abstract b f(long j10);

            public abstract b g(int i10);

            public abstract b h(long j10);

            public abstract b i(long j10);

            public abstract b j(String str);
        }

        public static b a() {
            return new c.b();
        }

        public abstract List<AbstractC0230a> b();

        public abstract int c();

        public abstract int d();

        public abstract String e();

        public abstract long f();

        public abstract int g();

        public abstract long h();

        public abstract long i();

        public abstract String j();
    }

    /* JADX INFO: compiled from: CrashlyticsReport.java */
    @AutoValue.Builder
    public static abstract class b {
        public abstract f0 a();

        public abstract b b(a aVar);

        public abstract b c(String str);

        public abstract b d(String str);

        public abstract b e(String str);

        public abstract b f(String str);

        public abstract b g(String str);

        public abstract b h(String str);

        public abstract b i(d dVar);

        public abstract b j(int i10);

        public abstract b k(String str);

        public abstract b l(e eVar);
    }

    /* JADX INFO: compiled from: CrashlyticsReport.java */
    @AutoValue
    public static abstract class c {

        /* JADX INFO: compiled from: CrashlyticsReport.java */
        @AutoValue.Builder
        public static abstract class a {
            public abstract c a();

            public abstract a b(String str);

            public abstract a c(String str);
        }

        public static a a() {
            return new e.b();
        }

        public abstract String b();

        public abstract String c();
    }

    /* JADX INFO: compiled from: CrashlyticsReport.java */
    @AutoValue
    public static abstract class d {

        /* JADX INFO: compiled from: CrashlyticsReport.java */
        @AutoValue.Builder
        public static abstract class a {
            public abstract d a();

            public abstract a b(List<b> list);

            public abstract a c(String str);
        }

        /* JADX INFO: compiled from: CrashlyticsReport.java */
        @AutoValue
        public static abstract class b {

            /* JADX INFO: compiled from: CrashlyticsReport.java */
            @AutoValue.Builder
            public static abstract class a {
                public abstract b a();

                public abstract a b(byte[] bArr);

                public abstract a c(String str);
            }

            public static a a() {
                return new g.b();
            }

            public abstract byte[] b();

            public abstract String c();
        }

        public static a a() {
            return new f.b();
        }

        public abstract List<b> b();

        public abstract String c();
    }

    /* JADX INFO: compiled from: CrashlyticsReport.java */
    @AutoValue
    public static abstract class e {

        /* JADX INFO: compiled from: CrashlyticsReport.java */
        @AutoValue
        public static abstract class a {

            /* JADX INFO: renamed from: s5.f0$e$a$a, reason: collision with other inner class name */
            /* JADX INFO: compiled from: CrashlyticsReport.java */
            @AutoValue.Builder
            public static abstract class AbstractC0232a {
                public abstract a a();

                public abstract AbstractC0232a b(String str);

                public abstract AbstractC0232a c(String str);

                public abstract AbstractC0232a d(String str);

                public abstract AbstractC0232a e(String str);

                public abstract AbstractC0232a f(String str);

                public abstract AbstractC0232a g(String str);
            }

            /* JADX INFO: compiled from: CrashlyticsReport.java */
            @AutoValue
            public static abstract class b {
                public abstract String a();
            }

            public static AbstractC0232a a() {
                return new i.b();
            }

            public abstract String b();

            public abstract String c();

            public abstract String d();

            public abstract String e();

            public abstract String f();

            public abstract b g();

            public abstract String h();
        }

        /* JADX INFO: compiled from: CrashlyticsReport.java */
        @AutoValue.Builder
        public static abstract class b {
            public abstract e a();

            public abstract b b(a aVar);

            public abstract b c(String str);

            public abstract b d(boolean z10);

            public abstract b e(c cVar);

            public abstract b f(Long l10);

            public abstract b g(List<d> list);

            public abstract b h(String str);

            public abstract b i(int i10);

            public abstract b j(String str);

            public b k(byte[] bArr) {
                return j(new String(bArr, f0.f34787a));
            }

            public abstract b l(AbstractC0247e abstractC0247e);

            public abstract b m(long j10);

            public abstract b n(f fVar);
        }

        /* JADX INFO: compiled from: CrashlyticsReport.java */
        @AutoValue
        public static abstract class c {

            /* JADX INFO: compiled from: CrashlyticsReport.java */
            @AutoValue.Builder
            public static abstract class a {
                public abstract c a();

                public abstract a b(int i10);

                public abstract a c(int i10);

                public abstract a d(long j10);

                public abstract a e(String str);

                public abstract a f(String str);

                public abstract a g(String str);

                public abstract a h(long j10);

                public abstract a i(boolean z10);

                public abstract a j(int i10);
            }

            public static a a() {
                return new k.b();
            }

            public abstract int b();

            public abstract int c();

            public abstract long d();

            public abstract String e();

            public abstract String f();

            public abstract String g();

            public abstract long h();

            public abstract int i();

            public abstract boolean j();
        }

        /* JADX INFO: compiled from: CrashlyticsReport.java */
        @AutoValue
        public static abstract class d {

            /* JADX INFO: compiled from: CrashlyticsReport.java */
            @AutoValue
            public static abstract class a {

                /* JADX INFO: renamed from: s5.f0$e$d$a$a, reason: collision with other inner class name */
                /* JADX INFO: compiled from: CrashlyticsReport.java */
                @AutoValue.Builder
                public static abstract class AbstractC0233a {
                    public abstract a a();

                    public abstract AbstractC0233a b(List<c> list);

                    public abstract AbstractC0233a c(Boolean bool);

                    public abstract AbstractC0233a d(c cVar);

                    public abstract AbstractC0233a e(List<c> list);

                    public abstract AbstractC0233a f(b bVar);

                    public abstract AbstractC0233a g(List<c> list);

                    public abstract AbstractC0233a h(int i10);
                }

                /* JADX INFO: compiled from: CrashlyticsReport.java */
                @AutoValue
                public static abstract class b {

                    /* JADX INFO: renamed from: s5.f0$e$d$a$b$a, reason: collision with other inner class name */
                    /* JADX INFO: compiled from: CrashlyticsReport.java */
                    @AutoValue
                    public static abstract class AbstractC0234a {

                        /* JADX INFO: renamed from: s5.f0$e$d$a$b$a$a, reason: collision with other inner class name */
                        /* JADX INFO: compiled from: CrashlyticsReport.java */
                        @AutoValue.Builder
                        public static abstract class AbstractC0235a {
                            public abstract AbstractC0234a a();

                            public abstract AbstractC0235a b(long j10);

                            public abstract AbstractC0235a c(String str);

                            public abstract AbstractC0235a d(long j10);

                            public abstract AbstractC0235a e(String str);

                            public AbstractC0235a f(byte[] bArr) {
                                return e(new String(bArr, f0.f34787a));
                            }
                        }

                        public static AbstractC0235a a() {
                            return new o.b();
                        }

                        public abstract long b();

                        public abstract String c();

                        public abstract long d();

                        public abstract String e();

                        public byte[] f() {
                            String strE = e();
                            if (strE != null) {
                                return strE.getBytes(f0.f34787a);
                            }
                            return null;
                        }
                    }

                    /* JADX INFO: renamed from: s5.f0$e$d$a$b$b, reason: collision with other inner class name */
                    /* JADX INFO: compiled from: CrashlyticsReport.java */
                    @AutoValue.Builder
                    public static abstract class AbstractC0236b {
                        public abstract b a();

                        public abstract AbstractC0236b b(a aVar);

                        public abstract AbstractC0236b c(List<AbstractC0234a> list);

                        public abstract AbstractC0236b d(c cVar);

                        public abstract AbstractC0236b e(AbstractC0238d abstractC0238d);

                        public abstract AbstractC0236b f(List<AbstractC0240e> list);
                    }

                    /* JADX INFO: compiled from: CrashlyticsReport.java */
                    @AutoValue
                    public static abstract class c {

                        /* JADX INFO: renamed from: s5.f0$e$d$a$b$c$a, reason: collision with other inner class name */
                        /* JADX INFO: compiled from: CrashlyticsReport.java */
                        @AutoValue.Builder
                        public static abstract class AbstractC0237a {
                            public abstract c a();

                            public abstract AbstractC0237a b(c cVar);

                            public abstract AbstractC0237a c(List<AbstractC0240e.AbstractC0242b> list);

                            public abstract AbstractC0237a d(int i10);

                            public abstract AbstractC0237a e(String str);

                            public abstract AbstractC0237a f(String str);
                        }

                        public static AbstractC0237a a() {
                            return new p.b();
                        }

                        public abstract c b();

                        public abstract List<AbstractC0240e.AbstractC0242b> c();

                        public abstract int d();

                        public abstract String e();

                        public abstract String f();
                    }

                    /* JADX INFO: renamed from: s5.f0$e$d$a$b$d, reason: collision with other inner class name */
                    /* JADX INFO: compiled from: CrashlyticsReport.java */
                    @AutoValue
                    public static abstract class AbstractC0238d {

                        /* JADX INFO: renamed from: s5.f0$e$d$a$b$d$a, reason: collision with other inner class name */
                        /* JADX INFO: compiled from: CrashlyticsReport.java */
                        @AutoValue.Builder
                        public static abstract class AbstractC0239a {
                            public abstract AbstractC0238d a();

                            public abstract AbstractC0239a b(long j10);

                            public abstract AbstractC0239a c(String str);

                            public abstract AbstractC0239a d(String str);
                        }

                        public static AbstractC0239a a() {
                            return new q.b();
                        }

                        public abstract long b();

                        public abstract String c();

                        public abstract String d();
                    }

                    /* JADX INFO: renamed from: s5.f0$e$d$a$b$e, reason: collision with other inner class name */
                    /* JADX INFO: compiled from: CrashlyticsReport.java */
                    @AutoValue
                    public static abstract class AbstractC0240e {

                        /* JADX INFO: renamed from: s5.f0$e$d$a$b$e$a, reason: collision with other inner class name */
                        /* JADX INFO: compiled from: CrashlyticsReport.java */
                        @AutoValue.Builder
                        public static abstract class AbstractC0241a {
                            public abstract AbstractC0240e a();

                            public abstract AbstractC0241a b(List<AbstractC0242b> list);

                            public abstract AbstractC0241a c(int i10);

                            public abstract AbstractC0241a d(String str);
                        }

                        /* JADX INFO: renamed from: s5.f0$e$d$a$b$e$b, reason: collision with other inner class name */
                        /* JADX INFO: compiled from: CrashlyticsReport.java */
                        @AutoValue
                        public static abstract class AbstractC0242b {

                            /* JADX INFO: renamed from: s5.f0$e$d$a$b$e$b$a, reason: collision with other inner class name */
                            /* JADX INFO: compiled from: CrashlyticsReport.java */
                            @AutoValue.Builder
                            public static abstract class AbstractC0243a {
                                public abstract AbstractC0242b a();

                                public abstract AbstractC0243a b(String str);

                                public abstract AbstractC0243a c(int i10);

                                public abstract AbstractC0243a d(long j10);

                                public abstract AbstractC0243a e(long j10);

                                public abstract AbstractC0243a f(String str);
                            }

                            public static AbstractC0243a a() {
                                return new s.b();
                            }

                            public abstract String b();

                            public abstract int c();

                            public abstract long d();

                            public abstract long e();

                            public abstract String f();
                        }

                        public static AbstractC0241a a() {
                            return new r.b();
                        }

                        public abstract List<AbstractC0242b> b();

                        public abstract int c();

                        public abstract String d();
                    }

                    public static AbstractC0236b a() {
                        return new n.b();
                    }

                    public abstract a b();

                    public abstract List<AbstractC0234a> c();

                    public abstract c d();

                    public abstract AbstractC0238d e();

                    public abstract List<AbstractC0240e> f();
                }

                /* JADX INFO: compiled from: CrashlyticsReport.java */
                @AutoValue
                public static abstract class c {

                    /* JADX INFO: renamed from: s5.f0$e$d$a$c$a, reason: collision with other inner class name */
                    /* JADX INFO: compiled from: CrashlyticsReport.java */
                    @AutoValue.Builder
                    public static abstract class AbstractC0244a {
                        public abstract c a();

                        public abstract AbstractC0244a b(boolean z10);

                        public abstract AbstractC0244a c(int i10);

                        public abstract AbstractC0244a d(int i10);

                        public abstract AbstractC0244a e(String str);
                    }

                    public static AbstractC0244a a() {
                        return new t.b();
                    }

                    public abstract int b();

                    public abstract int c();

                    public abstract String d();

                    public abstract boolean e();
                }

                public static AbstractC0233a a() {
                    return new m.b();
                }

                public abstract List<c> b();

                public abstract Boolean c();

                public abstract c d();

                public abstract List<c> e();

                public abstract b f();

                public abstract List<c> g();

                public abstract int h();

                public abstract AbstractC0233a i();
            }

            /* JADX INFO: compiled from: CrashlyticsReport.java */
            @AutoValue.Builder
            public static abstract class b {
                public abstract d a();

                public abstract b b(a aVar);

                public abstract b c(c cVar);

                public abstract b d(AbstractC0245d abstractC0245d);

                public abstract b e(f fVar);

                public abstract b f(long j10);

                public abstract b g(String str);
            }

            /* JADX INFO: compiled from: CrashlyticsReport.java */
            @AutoValue
            public static abstract class c {

                /* JADX INFO: compiled from: CrashlyticsReport.java */
                @AutoValue.Builder
                public static abstract class a {
                    public abstract c a();

                    public abstract a b(Double d10);

                    public abstract a c(int i10);

                    public abstract a d(long j10);

                    public abstract a e(int i10);

                    public abstract a f(boolean z10);

                    public abstract a g(long j10);
                }

                public static a a() {
                    return new u.b();
                }

                public abstract Double b();

                public abstract int c();

                public abstract long d();

                public abstract int e();

                public abstract long f();

                public abstract boolean g();
            }

            /* JADX INFO: renamed from: s5.f0$e$d$d, reason: collision with other inner class name */
            /* JADX INFO: compiled from: CrashlyticsReport.java */
            @AutoValue
            public static abstract class AbstractC0245d {

                /* JADX INFO: renamed from: s5.f0$e$d$d$a */
                /* JADX INFO: compiled from: CrashlyticsReport.java */
                @AutoValue.Builder
                public static abstract class a {
                    public abstract AbstractC0245d a();

                    public abstract a b(String str);
                }

                public static a a() {
                    return new v.b();
                }

                public abstract String b();
            }

            /* JADX INFO: renamed from: s5.f0$e$d$e, reason: collision with other inner class name */
            /* JADX INFO: compiled from: CrashlyticsReport.java */
            @AutoValue
            public static abstract class AbstractC0246e {

                /* JADX INFO: renamed from: s5.f0$e$d$e$a */
                /* JADX INFO: compiled from: CrashlyticsReport.java */
                @AutoValue.Builder
                public static abstract class a {
                    public abstract AbstractC0246e a();

                    public abstract a b(String str);

                    public abstract a c(String str);

                    public abstract a d(b bVar);

                    public abstract a e(long j10);
                }

                /* JADX INFO: renamed from: s5.f0$e$d$e$b */
                /* JADX INFO: compiled from: CrashlyticsReport.java */
                @AutoValue
                public static abstract class b {

                    /* JADX INFO: renamed from: s5.f0$e$d$e$b$a */
                    /* JADX INFO: compiled from: CrashlyticsReport.java */
                    @AutoValue.Builder
                    public static abstract class a {
                        public abstract b a();

                        public abstract a b(String str);

                        public abstract a c(String str);
                    }

                    public static a a() {
                        return new x.b();
                    }

                    public abstract String b();

                    public abstract String c();
                }

                public static a a() {
                    return new w.b();
                }

                public abstract String b();

                public abstract String c();

                public abstract b d();

                public abstract long e();
            }

            /* JADX INFO: compiled from: CrashlyticsReport.java */
            @AutoValue
            public static abstract class f {

                /* JADX INFO: compiled from: CrashlyticsReport.java */
                @AutoValue.Builder
                public static abstract class a {
                    public abstract f a();

                    public abstract a b(List<AbstractC0246e> list);
                }

                public static a a() {
                    return new y.b();
                }

                public abstract List<AbstractC0246e> b();
            }

            public static b a() {
                return new l.b();
            }

            public abstract a b();

            public abstract c c();

            public abstract AbstractC0245d d();

            public abstract f e();

            public abstract long f();

            public abstract String g();

            public abstract b h();
        }

        /* JADX INFO: renamed from: s5.f0$e$e, reason: collision with other inner class name */
        /* JADX INFO: compiled from: CrashlyticsReport.java */
        @AutoValue
        public static abstract class AbstractC0247e {

            /* JADX INFO: renamed from: s5.f0$e$e$a */
            /* JADX INFO: compiled from: CrashlyticsReport.java */
            @AutoValue.Builder
            public static abstract class a {
                public abstract AbstractC0247e a();

                public abstract a b(String str);

                public abstract a c(boolean z10);

                public abstract a d(int i10);

                public abstract a e(String str);
            }

            public static a a() {
                return new z.b();
            }

            public abstract String b();

            public abstract int c();

            public abstract String d();

            public abstract boolean e();
        }

        /* JADX INFO: compiled from: CrashlyticsReport.java */
        @AutoValue
        public static abstract class f {

            /* JADX INFO: compiled from: CrashlyticsReport.java */
            @AutoValue.Builder
            public static abstract class a {
                public abstract f a();

                public abstract a b(String str);
            }

            public static a a() {
                return new a0.b();
            }

            public abstract String b();
        }

        public static b a() {
            return new h.b().d(false);
        }

        public abstract a b();

        public abstract String c();

        public abstract c d();

        public abstract Long e();

        public abstract List<d> f();

        public abstract String g();

        public abstract int h();

        public abstract String i();

        public byte[] j() {
            return i().getBytes(f0.f34787a);
        }

        public abstract AbstractC0247e k();

        public abstract long l();

        public abstract f m();

        public abstract boolean n();

        public abstract b o();

        e p(String str) {
            return o().c(str).a();
        }

        e q(List<d> list) {
            return o().g(list).a();
        }

        e r(long j10, boolean z10, String str) {
            b bVarO = o();
            bVarO.f(Long.valueOf(j10));
            bVarO.d(z10);
            if (str != null) {
                bVarO.n(f.a().b(str).a());
            }
            return bVarO.a();
        }
    }

    public static b b() {
        return new b.C0229b();
    }

    public abstract a c();

    public abstract String d();

    public abstract String e();

    public abstract String f();

    public abstract String g();

    public abstract String h();

    public abstract String i();

    public abstract d j();

    public abstract int k();

    public abstract String l();

    public abstract e m();

    protected abstract b n();

    public f0 o(String str) {
        b bVarC = n().c(str);
        if (m() != null) {
            bVarC.l(m().p(str));
        }
        return bVarC.a();
    }

    public f0 p(a aVar) {
        return aVar == null ? this : n().b(aVar).a();
    }

    public f0 q(List<e.d> list) {
        if (m() != null) {
            return n().l(m().q(list)).a();
        }
        throw new IllegalStateException("Reports without sessions cannot have events added to them.");
    }

    public f0 r(String str) {
        return n().f(str).a();
    }

    public f0 s(d dVar) {
        return n().l(null).i(dVar).a();
    }

    public f0 t(long j10, boolean z10, String str) {
        b bVarN = n();
        if (m() != null) {
            bVarN.l(m().r(j10, z10, str));
        }
        return bVarN.a();
    }
}
