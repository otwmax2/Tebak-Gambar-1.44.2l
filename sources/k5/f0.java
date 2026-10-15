package k5;

import java.lang.annotation.Annotation;

/* JADX INFO: compiled from: Qualified.java */
/* JADX INFO: loaded from: classes2.dex */
public final class f0<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<? extends Annotation> f31536a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Class<T> f31537b;

    /* JADX INFO: compiled from: Qualified.java */
    private @interface a {
    }

    public f0(Class<? extends Annotation> cls, Class<T> cls2) {
        this.f31536a = cls;
        this.f31537b = cls2;
    }

    public static <T> f0<T> a(Class<? extends Annotation> cls, Class<T> cls2) {
        return new f0<>(cls, cls2);
    }

    public static <T> f0<T> b(Class<T> cls) {
        return new f0<>(a.class, cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f0.class != obj.getClass()) {
            return false;
        }
        f0 f0Var = (f0) obj;
        if (this.f31537b.equals(f0Var.f31537b)) {
            return this.f31536a.equals(f0Var.f31536a);
        }
        return false;
    }

    public int hashCode() {
        return (this.f31537b.hashCode() * 31) + this.f31536a.hashCode();
    }

    public String toString() {
        if (this.f31536a == a.class) {
            return this.f31537b.getName();
        }
        return "@" + this.f31536a.getName() + " " + this.f31537b.getName();
    }
}
