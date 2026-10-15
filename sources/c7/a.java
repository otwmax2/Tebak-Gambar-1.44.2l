package c7;

import java.util.Objects;

/* JADX INFO: compiled from: $Gson$Preconditions.java */
/* JADX INFO: loaded from: classes2.dex */
public final class a {
    public static void a(boolean z10) {
        if (!z10) {
            throw new IllegalArgumentException();
        }
    }

    public static <T> T b(T t10) {
        Objects.requireNonNull(t10);
        return t10;
    }
}
