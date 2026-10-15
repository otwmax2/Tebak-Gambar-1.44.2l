package k5;

import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* JADX INFO: compiled from: Component.java */
/* JADX INFO: loaded from: classes2.dex */
public final class c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f31516a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Set<f0<? super T>> f31517b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Set<r> f31518c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f31519d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f31520e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h<T> f31521f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Set<Class<?>> f31522g;

    public static <T> b<T> c(Class<T> cls) {
        return new b<>(cls, new Class[0]);
    }

    @SafeVarargs
    public static <T> b<T> d(Class<T> cls, Class<? super T>... clsArr) {
        return new b<>(cls, clsArr);
    }

    public static <T> b<T> e(f0<T> f0Var) {
        return new b<>(f0Var, new f0[0]);
    }

    @SafeVarargs
    public static <T> b<T> f(f0<T> f0Var, f0<? super T>... f0VarArr) {
        return new b<>(f0Var, f0VarArr);
    }

    public static <T> c<T> l(final T t10, Class<T> cls) {
        return m(cls).f(new h() { // from class: k5.a
            @Override // k5.h
            public final Object a(e eVar) {
                return c.q(t10, eVar);
            }
        }).d();
    }

    public static <T> b<T> m(Class<T> cls) {
        return c(cls).g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object q(Object obj, e eVar) {
        return obj;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ Object r(Object obj, e eVar) {
        return obj;
    }

    @SafeVarargs
    public static <T> c<T> s(final T t10, Class<T> cls, Class<? super T>... clsArr) {
        return d(cls, clsArr).f(new h() { // from class: k5.b
            @Override // k5.h
            public final Object a(e eVar) {
                return c.r(t10, eVar);
            }
        }).d();
    }

    public Set<r> g() {
        return this.f31518c;
    }

    public h<T> h() {
        return this.f31521f;
    }

    public String i() {
        return this.f31516a;
    }

    public Set<f0<? super T>> j() {
        return this.f31517b;
    }

    public Set<Class<?>> k() {
        return this.f31522g;
    }

    public boolean n() {
        return this.f31519d == 1;
    }

    public boolean o() {
        return this.f31519d == 2;
    }

    public boolean p() {
        return this.f31520e == 0;
    }

    public c<T> t(h<T> hVar) {
        return new c<>(this.f31516a, this.f31517b, this.f31518c, this.f31519d, this.f31520e, hVar, this.f31522g);
    }

    public String toString() {
        return "Component<" + Arrays.toString(this.f31517b.toArray()) + ">{" + this.f31519d + ", type=" + this.f31520e + ", deps=" + Arrays.toString(this.f31518c.toArray()) + "}";
    }

    /* JADX INFO: compiled from: Component.java */
    public static class b<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f31523a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Set<f0<? super T>> f31524b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final Set<r> f31525c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f31526d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f31527e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private h<T> f31528f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final Set<Class<?>> f31529g;

        /* JADX INFO: Access modifiers changed from: private */
        public b<T> g() {
            this.f31527e = 1;
            return this;
        }

        private b<T> i(int i10) {
            e0.d(this.f31526d == 0, "Instantiation type has already been set.");
            this.f31526d = i10;
            return this;
        }

        private void j(f0<?> f0Var) {
            e0.a(!this.f31524b.contains(f0Var), "Components are not allowed to depend on interfaces they themselves provide.");
        }

        public b<T> b(r rVar) {
            e0.c(rVar, "Null dependency");
            j(rVar.c());
            this.f31525c.add(rVar);
            return this;
        }

        public b<T> c() {
            return i(1);
        }

        public c<T> d() {
            e0.d(this.f31528f != null, "Missing required property: factory.");
            return new c<>(this.f31523a, new HashSet(this.f31524b), new HashSet(this.f31525c), this.f31526d, this.f31527e, this.f31528f, this.f31529g);
        }

        public b<T> e() {
            return i(2);
        }

        public b<T> f(h<T> hVar) {
            this.f31528f = (h) e0.c(hVar, "Null factory");
            return this;
        }

        public b<T> h(String str) {
            this.f31523a = str;
            return this;
        }

        @SafeVarargs
        private b(Class<T> cls, Class<? super T>... clsArr) {
            this.f31523a = null;
            HashSet hashSet = new HashSet();
            this.f31524b = hashSet;
            this.f31525c = new HashSet();
            this.f31526d = 0;
            this.f31527e = 0;
            this.f31529g = new HashSet();
            e0.c(cls, "Null interface");
            hashSet.add(f0.b(cls));
            for (Class<? super T> cls2 : clsArr) {
                e0.c(cls2, "Null interface");
                this.f31524b.add(f0.b(cls2));
            }
        }

        @SafeVarargs
        private b(f0<T> f0Var, f0<? super T>... f0VarArr) {
            this.f31523a = null;
            HashSet hashSet = new HashSet();
            this.f31524b = hashSet;
            this.f31525c = new HashSet();
            this.f31526d = 0;
            this.f31527e = 0;
            this.f31529g = new HashSet();
            e0.c(f0Var, "Null interface");
            hashSet.add(f0Var);
            for (f0<? super T> f0Var2 : f0VarArr) {
                e0.c(f0Var2, "Null interface");
            }
            Collections.addAll(this.f31524b, f0VarArr);
        }
    }

    private c(String str, Set<f0<? super T>> set, Set<r> set2, int i10, int i11, h<T> hVar, Set<Class<?>> set3) {
        this.f31516a = str;
        this.f31517b = Collections.unmodifiableSet(set);
        this.f31518c = Collections.unmodifiableSet(set2);
        this.f31519d = i10;
        this.f31520e = i11;
        this.f31521f = hVar;
        this.f31522g = Collections.unmodifiableSet(set3);
    }
}
