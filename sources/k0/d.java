package k0;

import i9.d0;
import java.util.Map;
import t9.m;

/* JADX INFO: compiled from: Preferences.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class d {

    /* JADX INFO: compiled from: Preferences.kt */
    public static final class a<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f31284a;

        public a(String str) {
            m.e(str, "name");
            this.f31284a = str;
        }

        public final String a() {
            return this.f31284a;
        }

        public boolean equals(Object obj) {
            if (obj instanceof a) {
                return m.a(this.f31284a, ((a) obj).f31284a);
            }
            return false;
        }

        public int hashCode() {
            return this.f31284a.hashCode();
        }

        public String toString() {
            return this.f31284a;
        }
    }

    /* JADX INFO: compiled from: Preferences.kt */
    public static final class b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a<T> f31285a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final T f31286b;

        public final a<T> a() {
            return this.f31285a;
        }

        public final T b() {
            return this.f31286b;
        }
    }

    public abstract Map<a<?>, Object> a();

    public abstract <T> T b(a<T> aVar);

    public final k0.a c() {
        return new k0.a(d0.n(a()), false);
    }

    public final d d() {
        return new k0.a(d0.n(a()), true);
    }
}
