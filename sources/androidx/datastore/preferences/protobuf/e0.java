package androidx.datastore.preferences.protobuf;

/* JADX INFO: compiled from: LazyFieldLite.java */
/* JADX INFO: loaded from: classes.dex */
public class e0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final p f2689e = p.b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private h f2690a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private p f2691b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected volatile r0 f2692c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private volatile h f2693d;

    protected void a(r0 r0Var) {
        if (this.f2692c != null) {
            return;
        }
        synchronized (this) {
            if (this.f2692c != null) {
                return;
            }
            try {
                if (this.f2690a != null) {
                    this.f2692c = r0Var.i().a(this.f2690a, this.f2691b);
                    this.f2693d = this.f2690a;
                } else {
                    this.f2692c = r0Var;
                    this.f2693d = h.f2704p;
                }
            } catch (b0 unused) {
                this.f2692c = r0Var;
                this.f2693d = h.f2704p;
            }
        }
    }

    public int b() {
        if (this.f2693d != null) {
            return this.f2693d.size();
        }
        h hVar = this.f2690a;
        if (hVar != null) {
            return hVar.size();
        }
        if (this.f2692c != null) {
            return this.f2692c.f();
        }
        return 0;
    }

    public r0 c(r0 r0Var) {
        a(r0Var);
        return this.f2692c;
    }

    public r0 d(r0 r0Var) {
        r0 r0Var2 = this.f2692c;
        this.f2690a = null;
        this.f2693d = null;
        this.f2692c = r0Var;
        return r0Var2;
    }

    public h e() {
        if (this.f2693d != null) {
            return this.f2693d;
        }
        h hVar = this.f2690a;
        if (hVar != null) {
            return hVar;
        }
        synchronized (this) {
            if (this.f2693d != null) {
                return this.f2693d;
            }
            if (this.f2692c == null) {
                this.f2693d = h.f2704p;
            } else {
                this.f2693d = this.f2692c.d();
            }
            return this.f2693d;
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof e0)) {
            return false;
        }
        e0 e0Var = (e0) obj;
        r0 r0Var = this.f2692c;
        r0 r0Var2 = e0Var.f2692c;
        return (r0Var == null && r0Var2 == null) ? e().equals(e0Var.e()) : (r0Var == null || r0Var2 == null) ? r0Var != null ? r0Var.equals(e0Var.c(r0Var.a())) : c(r0Var2.a()).equals(r0Var2) : r0Var.equals(r0Var2);
    }

    public int hashCode() {
        return 1;
    }
}
