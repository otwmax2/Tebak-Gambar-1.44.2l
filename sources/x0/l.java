package x0;

import androidx.room.h0;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: SharedSQLiteStatement.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final AtomicBoolean f36192a = new AtomicBoolean(false);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final h0 f36193b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private volatile b1.k f36194c;

    public l(h0 h0Var) {
        this.f36193b = h0Var;
    }

    private b1.k c() {
        return this.f36193b.f(d());
    }

    private b1.k e(boolean z10) {
        if (!z10) {
            return c();
        }
        if (this.f36194c == null) {
            this.f36194c = c();
        }
        return this.f36194c;
    }

    public b1.k a() {
        b();
        return e(this.f36192a.compareAndSet(false, true));
    }

    protected void b() {
        this.f36193b.c();
    }

    protected abstract String d();

    public void f(b1.k kVar) {
        if (kVar == this.f36194c) {
            this.f36192a.set(false);
        }
    }
}
