package j3;

import com.google.auto.value.AutoValue;

/* JADX INFO: compiled from: Event.java */
/* JADX INFO: loaded from: classes.dex */
@AutoValue
public abstract class c<T> {
    public static <T> c<T> d(T t10) {
        return new a(null, t10, d.DEFAULT);
    }

    public static <T> c<T> e(T t10) {
        return new a(null, t10, d.VERY_LOW);
    }

    public static <T> c<T> f(T t10) {
        return new a(null, t10, d.HIGHEST);
    }

    public abstract Integer a();

    public abstract T b();

    public abstract d c();
}
