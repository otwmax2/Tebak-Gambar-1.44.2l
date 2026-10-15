package fa;

import com.facebook.internal.AnalyticsEvents;

/* JADX INFO: compiled from: Channel.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class h<T> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f29634b = new b(null);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final c f29635c = new c();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Object f29636a;

    /* JADX INFO: compiled from: Channel.kt */
    public static final class a extends c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Throwable f29637a;

        public a(Throwable th) {
            this.f29637a = th;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && t9.m.a(this.f29637a, ((a) obj).f29637a);
        }

        public int hashCode() {
            Throwable th = this.f29637a;
            if (th != null) {
                return th.hashCode();
            }
            return 0;
        }

        @Override // fa.h.c
        public String toString() {
            return "Closed(" + this.f29637a + ')';
        }
    }

    /* JADX INFO: compiled from: Channel.kt */
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(t9.g gVar) {
            this();
        }

        public final <E> Object a(Throwable th) {
            return h.c(new a(th));
        }

        public final <E> Object b() {
            return h.c(h.f29635c);
        }

        public final <E> Object c(E e10) {
            return h.c(e10);
        }
    }

    /* JADX INFO: compiled from: Channel.kt */
    public static class c {
        public String toString() {
            return AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_FAILED;
        }
    }

    private /* synthetic */ h(Object obj) {
        this.f29636a = obj;
    }

    public static final /* synthetic */ h b(Object obj) {
        return new h(obj);
    }

    public static <T> Object c(Object obj) {
        return obj;
    }

    public static boolean d(Object obj, Object obj2) {
        return (obj2 instanceof h) && t9.m.a(obj, ((h) obj2).j());
    }

    public static final Throwable e(Object obj) {
        a aVar = obj instanceof a ? (a) obj : null;
        if (aVar != null) {
            return aVar.f29637a;
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final T f(Object obj) {
        if (obj instanceof c) {
            return null;
        }
        return obj;
    }

    public static int g(Object obj) {
        if (obj == null) {
            return 0;
        }
        return obj.hashCode();
    }

    public static final boolean h(Object obj) {
        return !(obj instanceof c);
    }

    public static String i(Object obj) {
        if (obj instanceof a) {
            return ((a) obj).toString();
        }
        return "Value(" + obj + ')';
    }

    public boolean equals(Object obj) {
        return d(this.f29636a, obj);
    }

    public int hashCode() {
        return g(this.f29636a);
    }

    public final /* synthetic */ Object j() {
        return this.f29636a;
    }

    public String toString() {
        return i(this.f29636a);
    }
}
