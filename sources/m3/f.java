package m3;

import com.google.auto.value.AutoValue;
import m3.a;

/* JADX INFO: compiled from: BackendRequest.java */
/* JADX INFO: loaded from: classes.dex */
@AutoValue
public abstract class f {

    /* JADX INFO: compiled from: BackendRequest.java */
    @AutoValue.Builder
    public static abstract class a {
        public abstract f a();

        public abstract a b(Iterable<l3.i> iterable);

        public abstract a c(byte[] bArr);
    }

    public static a a() {
        return new a.b();
    }

    public abstract Iterable<l3.i> b();

    public abstract byte[] c();
}
