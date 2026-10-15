package i7;

/* JADX INFO: compiled from: ReaderException.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class f extends Exception {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected static final boolean f30528o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected static final StackTraceElement[] f30529p;

    static {
        f30528o = System.getProperty("surefire.test.class.path") != null;
        f30529p = new StackTraceElement[0];
    }

    f() {
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        return null;
    }
}
