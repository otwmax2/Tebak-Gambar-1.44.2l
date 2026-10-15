package o6;

import com.google.auto.value.AutoValue;
import o6.b;

/* JADX INFO: compiled from: TokenResult.java */
/* JADX INFO: loaded from: classes2.dex */
@AutoValue
public abstract class f {

    /* JADX INFO: compiled from: TokenResult.java */
    @AutoValue.Builder
    public static abstract class a {
        public abstract f a();

        public abstract a b(b bVar);

        public abstract a c(String str);

        public abstract a d(long j10);
    }

    /* JADX INFO: compiled from: TokenResult.java */
    public enum b {
        OK,
        BAD_CONFIG,
        AUTH_ERROR
    }

    public static a a() {
        return new b.C0212b().d(0L);
    }

    public abstract b b();

    public abstract String c();

    public abstract long d();
}
