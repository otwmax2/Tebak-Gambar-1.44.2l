package t6;

import com.google.auto.value.AutoValue;
import javax.annotation.Nonnull;

/* JADX INFO: compiled from: LibraryVersion.java */
/* JADX INFO: loaded from: classes.dex */
@AutoValue
abstract class f {
    f() {
    }

    static f a(String str, String str2) {
        return new a(str, str2);
    }

    @Nonnull
    public abstract String b();

    @Nonnull
    public abstract String c();
}
