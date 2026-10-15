package da;

import java.util.concurrent.CancellationException;

/* JADX INFO: compiled from: Exceptions.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class y1 extends CancellationException implements g0<y1> {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final transient x1 f28878o;

    public y1(String str, Throwable th, x1 x1Var) {
        super(str);
        this.f28878o = x1Var;
        if (th != null) {
            initCause(th);
        }
    }

    @Override // da.g0
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public y1 a() {
        if (!s0.c()) {
            return null;
        }
        String message = getMessage();
        t9.m.b(message);
        return new y1(message, this, this.f28878o);
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof y1) {
                y1 y1Var = (y1) obj;
                if (!t9.m.a(y1Var.getMessage(), getMessage()) || !t9.m.a(y1Var.f28878o, this.f28878o) || !t9.m.a(y1Var.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        if (s0.c()) {
            return super.fillInStackTrace();
        }
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public int hashCode() {
        String message = getMessage();
        t9.m.b(message);
        int iHashCode = ((message.hashCode() * 31) + this.f28878o.hashCode()) * 31;
        Throwable cause = getCause();
        return iHashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + "; job=" + this.f28878o;
    }
}
