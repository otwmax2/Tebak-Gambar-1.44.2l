package androidx.lifecycle;

import androidx.lifecycle.j;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: ClassesInfoCache.java */
/* JADX INFO: loaded from: classes.dex */
@Deprecated
final class b {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    static b f3495c = new b();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Map<Class<?>, a> f3496a = new HashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final Map<Class<?>, Boolean> f3497b = new HashMap();

    /* JADX INFO: compiled from: ClassesInfoCache.java */
    @Deprecated
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Map<j.b, List<C0054b>> f3498a = new HashMap();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Map<C0054b, j.b> f3499b;

        a(Map<C0054b, j.b> map) {
            this.f3499b = map;
            for (Map.Entry<C0054b, j.b> entry : map.entrySet()) {
                j.b value = entry.getValue();
                List<C0054b> arrayList = this.f3498a.get(value);
                if (arrayList == null) {
                    arrayList = new ArrayList<>();
                    this.f3498a.put(value, arrayList);
                }
                arrayList.add(entry.getKey());
            }
        }

        private static void b(List<C0054b> list, n nVar, j.b bVar, Object obj) {
            if (list != null) {
                for (int size = list.size() - 1; size >= 0; size--) {
                    list.get(size).a(nVar, bVar, obj);
                }
            }
        }

        void a(n nVar, j.b bVar, Object obj) {
            b(this.f3498a.get(bVar), nVar, bVar, obj);
            b(this.f3498a.get(j.b.ON_ANY), nVar, bVar, obj);
        }
    }

    /* JADX INFO: renamed from: androidx.lifecycle.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ClassesInfoCache.java */
    @Deprecated
    static final class C0054b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final int f3500a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Method f3501b;

        C0054b(int i10, Method method) {
            this.f3500a = i10;
            this.f3501b = method;
            method.setAccessible(true);
        }

        void a(n nVar, j.b bVar, Object obj) {
            try {
                int i10 = this.f3500a;
                if (i10 == 0) {
                    this.f3501b.invoke(obj, new Object[0]);
                } else if (i10 == 1) {
                    this.f3501b.invoke(obj, nVar);
                } else {
                    if (i10 != 2) {
                        return;
                    }
                    this.f3501b.invoke(obj, nVar, bVar);
                }
            } catch (IllegalAccessException e10) {
                throw new RuntimeException(e10);
            } catch (InvocationTargetException e11) {
                throw new RuntimeException("Failed to call observer method", e11.getCause());
            }
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof C0054b)) {
                return false;
            }
            C0054b c0054b = (C0054b) obj;
            return this.f3500a == c0054b.f3500a && this.f3501b.getName().equals(c0054b.f3501b.getName());
        }

        public int hashCode() {
            return (this.f3500a * 31) + this.f3501b.getName().hashCode();
        }
    }

    b() {
    }

    private a a(Class<?> cls, Method[] methodArr) {
        int i10;
        a aVarC;
        Class<? super Object> superclass = cls.getSuperclass();
        HashMap map = new HashMap();
        if (superclass != null && (aVarC = c(superclass)) != null) {
            map.putAll(aVarC.f3499b);
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            for (Map.Entry<C0054b, j.b> entry : c(cls2).f3499b.entrySet()) {
                e(map, entry.getKey(), entry.getValue(), cls);
            }
        }
        if (methodArr == null) {
            methodArr = b(cls);
        }
        boolean z10 = false;
        for (Method method : methodArr) {
            v vVar = (v) method.getAnnotation(v.class);
            if (vVar != null) {
                Class<?>[] parameterTypes = method.getParameterTypes();
                if (parameterTypes.length <= 0) {
                    i10 = 0;
                } else {
                    if (!parameterTypes[0].isAssignableFrom(n.class)) {
                        throw new IllegalArgumentException("invalid parameter type. Must be one and instanceof LifecycleOwner");
                    }
                    i10 = 1;
                }
                j.b bVarValue = vVar.value();
                if (parameterTypes.length > 1) {
                    if (!parameterTypes[1].isAssignableFrom(j.b.class)) {
                        throw new IllegalArgumentException("invalid parameter type. second arg must be an event");
                    }
                    if (bVarValue != j.b.ON_ANY) {
                        throw new IllegalArgumentException("Second arg is supported only for ON_ANY value");
                    }
                    i10 = 2;
                }
                if (parameterTypes.length > 2) {
                    throw new IllegalArgumentException("cannot have more than 2 params");
                }
                e(map, new C0054b(i10, method), bVarValue, cls);
                z10 = true;
            }
        }
        a aVar = new a(map);
        this.f3496a.put(cls, aVar);
        this.f3497b.put(cls, Boolean.valueOf(z10));
        return aVar;
    }

    private Method[] b(Class<?> cls) {
        try {
            return cls.getDeclaredMethods();
        } catch (NoClassDefFoundError e10) {
            throw new IllegalArgumentException("The observer class has some methods that use newer APIs which are not available in the current OS version. Lifecycles cannot access even other methods so you should make sure that your observer classes only access framework classes that are available in your min API level OR use lifecycle:compiler annotation processor.", e10);
        }
    }

    private void e(Map<C0054b, j.b> map, C0054b c0054b, j.b bVar, Class<?> cls) {
        j.b bVar2 = map.get(c0054b);
        if (bVar2 == null || bVar == bVar2) {
            if (bVar2 == null) {
                map.put(c0054b, bVar);
                return;
            }
            return;
        }
        throw new IllegalArgumentException("Method " + c0054b.f3501b.getName() + " in " + cls.getName() + " already declared with different @OnLifecycleEvent value: previous value " + bVar2 + ", new value " + bVar);
    }

    a c(Class<?> cls) {
        a aVar = this.f3496a.get(cls);
        return aVar != null ? aVar : a(cls, null);
    }

    boolean d(Class<?> cls) {
        Boolean bool = this.f3497b.get(cls);
        if (bool != null) {
            return bool.booleanValue();
        }
        Method[] methodArrB = b(cls);
        for (Method method : methodArrB) {
            if (((v) method.getAnnotation(v.class)) != null) {
                a(cls, methodArrB);
                return true;
            }
        }
        this.f3497b.put(cls, Boolean.FALSE);
        return false;
    }
}
