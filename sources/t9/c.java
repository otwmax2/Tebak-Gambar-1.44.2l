package t9;

import java.io.ObjectStreamException;
import java.io.Serializable;

/* JADX INFO: compiled from: CallableReference.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class c implements z9.a, Serializable {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public static final Object f35529u = a.f35536o;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private transient z9.a f35530o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected final Object f35531p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final Class f35532q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final String f35533r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final String f35534s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final boolean f35535t;

    /* JADX INFO: compiled from: CallableReference.java */
    private static class a implements Serializable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private static final a f35536o = new a();

        private a() {
        }

        private Object readResolve() throws ObjectStreamException {
            return f35536o;
        }
    }

    public c() {
        this(f35529u);
    }

    public z9.a d() {
        z9.a aVar = this.f35530o;
        if (aVar != null) {
            return aVar;
        }
        z9.a aVarE = e();
        this.f35530o = aVarE;
        return aVarE;
    }

    protected abstract z9.a e();

    public Object f() {
        return this.f35531p;
    }

    public String g() {
        return this.f35533r;
    }

    public z9.c i() {
        Class cls = this.f35532q;
        if (cls == null) {
            return null;
        }
        return this.f35535t ? z.c(cls) : z.b(cls);
    }

    protected z9.a j() {
        z9.a aVarD = d();
        if (aVarD != this) {
            return aVarD;
        }
        throw new r9.b();
    }

    public String k() {
        return this.f35534s;
    }

    protected c(Object obj) {
        this(obj, null, null, null, false);
    }

    protected c(Object obj, Class cls, String str, String str2, boolean z10) {
        this.f35531p = obj;
        this.f35532q = cls;
        this.f35533r = str;
        this.f35534s = str2;
        this.f35535t = z10;
    }
}
