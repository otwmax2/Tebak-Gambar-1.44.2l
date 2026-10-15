package wa;

import ja.c0;
import ja.d0;
import ja.s;
import javax.annotation.Nullable;

/* JADX INFO: compiled from: Response.java */
/* JADX INFO: loaded from: classes.dex */
public final class l<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final c0 f36112a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    @Nullable
    private final T f36113b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    @Nullable
    private final d0 f36114c;

    private l(c0 c0Var, @Nullable T t10, @Nullable d0 d0Var) {
        this.f36112a = c0Var;
        this.f36113b = t10;
        this.f36114c = d0Var;
    }

    public static <T> l<T> c(d0 d0Var, c0 c0Var) {
        o.b(d0Var, "body == null");
        o.b(c0Var, "rawResponse == null");
        if (c0Var.i()) {
            throw new IllegalArgumentException("rawResponse should not be successful response");
        }
        return new l<>(c0Var, null, d0Var);
    }

    public static <T> l<T> h(@Nullable T t10, c0 c0Var) {
        o.b(c0Var, "rawResponse == null");
        if (c0Var.i()) {
            return new l<>(c0Var, t10, null);
        }
        throw new IllegalArgumentException("rawResponse must be successful response");
    }

    @Nullable
    public T a() {
        return this.f36113b;
    }

    public int b() {
        return this.f36112a.d();
    }

    @Nullable
    public d0 d() {
        return this.f36114c;
    }

    public s e() {
        return this.f36112a.h();
    }

    public boolean f() {
        return this.f36112a.i();
    }

    public String g() {
        return this.f36112a.j();
    }

    public String toString() {
        return this.f36112a.toString();
    }
}
