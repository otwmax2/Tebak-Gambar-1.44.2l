package kotlinx.coroutines.internal;

/* JADX INFO: compiled from: SystemProps.kt */
/* JADX INFO: loaded from: classes2.dex */
final /* synthetic */ class g0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int f31730a = Runtime.getRuntime().availableProcessors();

    public static final int a() {
        return f31730a;
    }

    public static final String b(String str) {
        try {
            return System.getProperty(str);
        } catch (SecurityException unused) {
            return null;
        }
    }
}
