package k3;

import com.google.auto.value.AutoValue;
import k3.e;

/* JADX INFO: compiled from: ClientInfo.java */
/* JADX INFO: loaded from: classes.dex */
@AutoValue
public abstract class k {

    /* JADX INFO: compiled from: ClientInfo.java */
    @AutoValue.Builder
    public static abstract class a {
        public abstract k a();

        public abstract a b(k3.a aVar);

        public abstract a c(b bVar);
    }

    /* JADX INFO: compiled from: ClientInfo.java */
    public enum b {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);


        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final int f31473o;

        b(int i10) {
            this.f31473o = i10;
        }
    }

    public static a a() {
        return new e.b();
    }

    public abstract k3.a b();

    public abstract b c();
}
