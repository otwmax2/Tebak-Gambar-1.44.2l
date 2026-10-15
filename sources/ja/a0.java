package ja;

import ja.s;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Objects;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Request.java */
/* JADX INFO: loaded from: classes.dex */
public final class a0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final t f30942a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final String f30943b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final s f30944c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    @Nullable
    final b0 f30945d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Map<Class<?>, Object> f30946e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    @Nullable
    private volatile d f30947f;

    a0(a aVar) {
        this.f30942a = aVar.f30948a;
        this.f30943b = aVar.f30949b;
        this.f30944c = aVar.f30950c.d();
        this.f30945d = aVar.f30951d;
        this.f30946e = ka.c.v(aVar.f30952e);
    }

    @Nullable
    public b0 a() {
        return this.f30945d;
    }

    public d b() {
        d dVar = this.f30947f;
        if (dVar != null) {
            return dVar;
        }
        d dVarK = d.k(this.f30944c);
        this.f30947f = dVarK;
        return dVarK;
    }

    @Nullable
    public String c(String str) {
        return this.f30944c.c(str);
    }

    public s d() {
        return this.f30944c;
    }

    public boolean e() {
        return this.f30942a.n();
    }

    public String f() {
        return this.f30943b;
    }

    public a g() {
        return new a(this);
    }

    public t h() {
        return this.f30942a;
    }

    public String toString() {
        return "Request{method=" + this.f30943b + ", url=" + this.f30942a + ", tags=" + this.f30946e + '}';
    }

    /* JADX INFO: compiled from: Request.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        @Nullable
        t f30948a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        String f30949b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        s.a f30950c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        @Nullable
        b0 f30951d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        Map<Class<?>, Object> f30952e;

        public a() {
            this.f30952e = Collections.emptyMap();
            this.f30949b = "GET";
            this.f30950c = new s.a();
        }

        public a a(String str, String str2) {
            this.f30950c.a(str, str2);
            return this;
        }

        public a0 b() {
            if (this.f30948a != null) {
                return new a0(this);
            }
            throw new IllegalStateException("url == null");
        }

        public a c() {
            return f("GET", null);
        }

        public a d(String str, String str2) {
            this.f30950c.f(str, str2);
            return this;
        }

        public a e(s sVar) {
            this.f30950c = sVar.f();
            return this;
        }

        public a f(String str, @Nullable b0 b0Var) {
            Objects.requireNonNull(str, "method == null");
            if (str.length() == 0) {
                throw new IllegalArgumentException("method.length() == 0");
            }
            if (b0Var != null && !na.f.b(str)) {
                throw new IllegalArgumentException("method " + str + " must not have a request body.");
            }
            if (b0Var != null || !na.f.e(str)) {
                this.f30949b = str;
                this.f30951d = b0Var;
                return this;
            }
            throw new IllegalArgumentException("method " + str + " must have a request body.");
        }

        public a g(b0 b0Var) {
            return f("POST", b0Var);
        }

        public a h(String str) {
            this.f30950c.e(str);
            return this;
        }

        public a i(t tVar) {
            Objects.requireNonNull(tVar, "url == null");
            this.f30948a = tVar;
            return this;
        }

        public a j(String str) {
            Objects.requireNonNull(str, "url == null");
            if (str.regionMatches(true, 0, "ws:", 0, 3)) {
                str = "http:" + str.substring(3);
            } else if (str.regionMatches(true, 0, "wss:", 0, 4)) {
                str = "https:" + str.substring(4);
            }
            return i(t.l(str));
        }

        a(a0 a0Var) {
            Map<Class<?>, Object> linkedHashMap;
            this.f30952e = Collections.emptyMap();
            this.f30948a = a0Var.f30942a;
            this.f30949b = a0Var.f30943b;
            this.f30951d = a0Var.f30945d;
            if (a0Var.f30946e.isEmpty()) {
                linkedHashMap = Collections.emptyMap();
            } else {
                linkedHashMap = new LinkedHashMap<>(a0Var.f30946e);
            }
            this.f30952e = linkedHashMap;
            this.f30950c = a0Var.f30944c.f();
        }
    }
}
