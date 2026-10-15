package y6;

import t9.m;

/* JADX INFO: compiled from: SessionSubscriber.kt */
/* JADX INFO: loaded from: classes2.dex */
public interface b {

    /* JADX INFO: compiled from: SessionSubscriber.kt */
    public enum a {
        CRASHLYTICS,
        PERFORMANCE,
        MATT_SAYS_HI
    }

    /* JADX INFO: renamed from: y6.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: SessionSubscriber.kt */
    public static final class C0304b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f37014a;

        public C0304b(String str) {
            m.e(str, "sessionId");
            this.f37014a = str;
        }

        public final String a() {
            return this.f37014a;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof C0304b) && m.a(this.f37014a, ((C0304b) obj).f37014a);
        }

        public int hashCode() {
            return this.f37014a.hashCode();
        }

        public String toString() {
            return "SessionDetails(sessionId=" + this.f37014a + ')';
        }
    }

    void a(C0304b c0304b);

    boolean b();

    a c();
}
