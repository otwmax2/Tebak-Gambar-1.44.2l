package c7;

import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.ConcurrentNavigableMap;
import java.util.concurrent.ConcurrentSkipListMap;

/* JADX INFO: compiled from: ConstructorConstructor.java */
/* JADX INFO: loaded from: classes2.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Type, com.google.gson.h<?>> f4882a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final f7.b f4883b = f7.b.a();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class a<T> implements c7.i<T> {
        a() {
        }

        @Override // c7.i
        public T a() {
            return (T) new ConcurrentHashMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class b<T> implements c7.i<T> {
        b() {
        }

        @Override // c7.i
        public T a() {
            return (T) new TreeMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: c7.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class C0094c<T> implements c7.i<T> {
        C0094c() {
        }

        @Override // c7.i
        public T a() {
            return (T) new LinkedHashMap();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class d<T> implements c7.i<T> {
        d() {
        }

        @Override // c7.i
        public T a() {
            return (T) new c7.h();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class e<T> implements c7.i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c7.m f4888a = c7.m.b();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Class f4889b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ Type f4890c;

        e(Class cls, Type type) {
            this.f4889b = cls;
            this.f4890c = type;
        }

        @Override // c7.i
        public T a() {
            try {
                return (T) this.f4888a.c(this.f4889b);
            } catch (Exception e10) {
                throw new RuntimeException("Unable to invoke no-args constructor for " + this.f4890c + ". Registering an InstanceCreator with Gson for this type may fix this problem.", e10);
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class f<T> implements c7.i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.google.gson.h f4892a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Type f4893b;

        f(com.google.gson.h hVar, Type type) {
            this.f4892a = hVar;
            this.f4893b = type;
        }

        @Override // c7.i
        public T a() {
            return (T) this.f4892a.a(this.f4893b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class g<T> implements c7.i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ com.google.gson.h f4895a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Type f4896b;

        g(com.google.gson.h hVar, Type type) {
            this.f4895a = hVar;
            this.f4896b = type;
        }

        @Override // c7.i
        public T a() {
            return (T) this.f4895a.a(this.f4896b);
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class h<T> implements c7.i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Constructor f4898a;

        h(Constructor constructor) {
            this.f4898a = constructor;
        }

        @Override // c7.i
        public T a() {
            try {
                return (T) this.f4898a.newInstance(null);
            } catch (IllegalAccessException e10) {
                throw new AssertionError(e10);
            } catch (InstantiationException e11) {
                throw new RuntimeException("Failed to invoke " + this.f4898a + " with no args", e11);
            } catch (InvocationTargetException e12) {
                throw new RuntimeException("Failed to invoke " + this.f4898a + " with no args", e12.getTargetException());
            }
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class i<T> implements c7.i<T> {
        i() {
        }

        @Override // c7.i
        public T a() {
            return (T) new TreeSet();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class j<T> implements c7.i<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Type f4901a;

        j(Type type) {
            this.f4901a = type;
        }

        @Override // c7.i
        public T a() {
            Type type = this.f4901a;
            if (!(type instanceof ParameterizedType)) {
                throw new com.google.gson.m("Invalid EnumSet type: " + this.f4901a.toString());
            }
            Type type2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            if (type2 instanceof Class) {
                return (T) EnumSet.noneOf((Class) type2);
            }
            throw new com.google.gson.m("Invalid EnumSet type: " + this.f4901a.toString());
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class k<T> implements c7.i<T> {
        k() {
        }

        @Override // c7.i
        public T a() {
            return (T) new LinkedHashSet();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class l<T> implements c7.i<T> {
        l() {
        }

        @Override // c7.i
        public T a() {
            return (T) new ArrayDeque();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class m<T> implements c7.i<T> {
        m() {
        }

        @Override // c7.i
        public T a() {
            return (T) new ArrayList();
        }
    }

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: compiled from: ConstructorConstructor.java */
    class n<T> implements c7.i<T> {
        n() {
        }

        @Override // c7.i
        public T a() {
            return (T) new ConcurrentSkipListMap();
        }
    }

    public c(Map<Type, com.google.gson.h<?>> map) {
        this.f4882a = map;
    }

    private <T> c7.i<T> b(Class<? super T> cls) {
        try {
            Constructor<? super T> declaredConstructor = cls.getDeclaredConstructor(new Class[0]);
            if (!declaredConstructor.isAccessible()) {
                this.f4883b.b(declaredConstructor);
            }
            return new h(declaredConstructor);
        } catch (NoSuchMethodException unused) {
            return null;
        }
    }

    private <T> c7.i<T> c(Type type, Class<? super T> cls) {
        if (Collection.class.isAssignableFrom(cls)) {
            return SortedSet.class.isAssignableFrom(cls) ? new i() : EnumSet.class.isAssignableFrom(cls) ? new j(type) : Set.class.isAssignableFrom(cls) ? new k() : Queue.class.isAssignableFrom(cls) ? new l() : new m();
        }
        if (Map.class.isAssignableFrom(cls)) {
            return ConcurrentNavigableMap.class.isAssignableFrom(cls) ? new n() : ConcurrentMap.class.isAssignableFrom(cls) ? new a() : SortedMap.class.isAssignableFrom(cls) ? new b() : (!(type instanceof ParameterizedType) || String.class.isAssignableFrom(g7.a.get(((ParameterizedType) type).getActualTypeArguments()[0]).getRawType())) ? new d() : new C0094c();
        }
        return null;
    }

    private <T> c7.i<T> d(Type type, Class<? super T> cls) {
        return new e(cls, type);
    }

    public <T> c7.i<T> a(g7.a<T> aVar) {
        Type type = aVar.getType();
        Class<? super T> rawType = aVar.getRawType();
        com.google.gson.h<?> hVar = this.f4882a.get(type);
        if (hVar != null) {
            return new f(hVar, type);
        }
        com.google.gson.h<?> hVar2 = this.f4882a.get(rawType);
        if (hVar2 != null) {
            return new g(hVar2, type);
        }
        c7.i<T> iVarB = b(rawType);
        if (iVarB != null) {
            return iVarB;
        }
        c7.i<T> iVarC = c(type, rawType);
        return iVarC != null ? iVarC : d(type, rawType);
    }

    public String toString() {
        return this.f4882a.toString();
    }
}
