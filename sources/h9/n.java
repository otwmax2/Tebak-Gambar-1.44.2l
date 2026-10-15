package h9;

import java.io.Serializable;

/* JADX INFO: compiled from: Result.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class n<T> implements Serializable {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final a f30295o = new a(null);

    /* JADX INFO: compiled from: Result.kt */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(t9.g gVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: Result.kt */
    public static final class b implements Serializable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final Throwable f30296o;

        public b(Throwable th) {
            t9.m.e(th, "exception");
            this.f30296o = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof b) && t9.m.a(this.f30296o, ((b) obj).f30296o);
        }

        public int hashCode() {
            return this.f30296o.hashCode();
        }

        public String toString() {
            return "Failure(" + this.f30296o + ')';
        }
    }

    public static <T> Object a(Object obj) {
        return obj;
    }

    public static final Throwable b(Object obj) {
        if (obj instanceof b) {
            return ((b) obj).f30296o;
        }
        return null;
    }

    public static final boolean c(Object obj) {
        return obj instanceof b;
    }

    public static final boolean d(Object obj) {
        return !(obj instanceof b);
    }
}
