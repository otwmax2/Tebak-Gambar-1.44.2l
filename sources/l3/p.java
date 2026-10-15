package l3;

import android.util.Base64;
import com.google.auto.value.AutoValue;
import com.vungle.mediation.BuildConfig;
import l3.d;

/* JADX INFO: compiled from: TransportContext.java */
/* JADX INFO: loaded from: classes.dex */
@AutoValue
public abstract class p {

    /* JADX INFO: compiled from: TransportContext.java */
    @AutoValue.Builder
    public static abstract class a {
        public abstract p a();

        public abstract a b(String str);

        public abstract a c(byte[] bArr);

        public abstract a d(j3.d dVar);
    }

    public static a a() {
        return new d.b().d(j3.d.DEFAULT);
    }

    public abstract String b();

    public abstract byte[] c();

    public abstract j3.d d();

    public boolean e() {
        return c() != null;
    }

    public p f(j3.d dVar) {
        return a().b(b()).d(dVar).c(c()).a();
    }

    public final String toString() {
        Object[] objArr = new Object[3];
        objArr[0] = b();
        objArr[1] = d();
        objArr[2] = c() == null ? BuildConfig.FLAVOR : Base64.encodeToString(c(), 2);
        return String.format("TransportContext(%s, %s, %s)", objArr);
    }
}
