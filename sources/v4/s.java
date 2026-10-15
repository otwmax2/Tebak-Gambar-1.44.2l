package v4;

/* JADX INFO: compiled from: com.google.android.play:core@@1.10.2 */
/* JADX INFO: loaded from: classes2.dex */
public final class s {
    public static <T> T a(T t10, Object obj) {
        if (t10 != null) {
            return t10;
        }
        throw new NullPointerException((String) obj);
    }

    public static void b(boolean z10, Object obj) {
        if (!z10) {
            throw new IllegalStateException(String.valueOf(obj));
        }
    }
}
