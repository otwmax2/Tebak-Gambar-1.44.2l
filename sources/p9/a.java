package p9;

import w9.c;

/* JADX INFO: compiled from: JDK8PlatformImplementations.kt */
/* JADX INFO: loaded from: classes2.dex */
public class a extends o9.a {

    /* JADX INFO: renamed from: p9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: JDK8PlatformImplementations.kt */
    private static final class C0219a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final C0219a f33552a = new C0219a();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Integer f33553b;

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
            f33553b = num;
        }

        private C0219a() {
        }
    }

    private final boolean c(int i10) {
        Integer num = C0219a.f33553b;
        return num == null || num.intValue() >= i10;
    }

    @Override // n9.a
    public c b() {
        return c(24) ? new x9.a() : super.b();
    }
}
