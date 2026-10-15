package o9;

import t9.m;

/* JADX INFO: compiled from: JDK7PlatformImplementations.kt */
/* JADX INFO: loaded from: classes2.dex */
public class a extends n9.a {

    /* JADX INFO: renamed from: o9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: JDK7PlatformImplementations.kt */
    private static final class C0214a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0214a f33305a = new C0214a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Integer f33306b;

        static {
            Object obj;
            Integer num = null;
            try {
                obj = Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
            } catch (Throwable unused) {
            }
            Integer num2 = obj instanceof Integer ? (Integer) obj : null;
            if (num2 != null) {
                if (num2.intValue() > 0) {
                    num = num2;
                }
            }
            f33306b = num;
        }

        private C0214a() {
        }
    }

    private final boolean c(int i10) {
        Integer num = C0214a.f33306b;
        return num == null || num.intValue() >= i10;
    }

    @Override // n9.a
    public void a(Throwable th, Throwable th2) {
        m.e(th, "cause");
        m.e(th2, "exception");
        if (c(19)) {
            th.addSuppressed(th2);
        } else {
            super.a(th, th2);
        }
    }
}
