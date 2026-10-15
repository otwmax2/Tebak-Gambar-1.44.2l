package d6;

import java.lang.annotation.Annotation;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: FieldDescriptor.java */
/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f28633a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class<?>, Object> f28634b;

    /* JADX INFO: compiled from: FieldDescriptor.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final String f28635a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private Map<Class<?>, Object> f28636b = null;

        b(String str) {
            this.f28635a = str;
        }

        public c a() {
            return new c(this.f28635a, this.f28636b == null ? Collections.emptyMap() : Collections.unmodifiableMap(new HashMap(this.f28636b)));
        }

        public <T extends Annotation> b b(T t10) {
            if (this.f28636b == null) {
                this.f28636b = new HashMap();
            }
            this.f28636b.put(t10.annotationType(), t10);
            return this;
        }
    }

    public static b a(String str) {
        return new b(str);
    }

    public static c d(String str) {
        return new c(str, Collections.emptyMap());
    }

    public String b() {
        return this.f28633a;
    }

    public <T extends Annotation> T c(Class<T> cls) {
        return (T) this.f28634b.get(cls);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f28633a.equals(cVar.f28633a) && this.f28634b.equals(cVar.f28634b);
    }

    public int hashCode() {
        return (this.f28633a.hashCode() * 31) + this.f28634b.hashCode();
    }

    public String toString() {
        return "FieldDescriptor{name=" + this.f28633a + ", properties=" + this.f28634b.values() + "}";
    }

    private c(String str, Map<Class<?>, Object> map) {
        this.f28633a = str;
        this.f28634b = map;
    }
}
