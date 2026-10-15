package c7;

import java.io.ObjectInputStream;
import java.io.ObjectStreamClass;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;

/* JADX INFO: compiled from: UnsafeAllocator.java */
/* JADX INFO: loaded from: classes2.dex */
public abstract class m {

    /* JADX INFO: compiled from: UnsafeAllocator.java */
    class a extends m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Method f4950a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ Object f4951b;

        a(Method method, Object obj) {
            this.f4950a = method;
            this.f4951b = obj;
        }

        @Override // c7.m
        public <T> T c(Class<T> cls) throws Exception {
            m.a(cls);
            return (T) this.f4950a.invoke(this.f4951b, cls);
        }
    }

    /* JADX INFO: compiled from: UnsafeAllocator.java */
    class b extends m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Method f4952a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f4953b;

        b(Method method, int i10) {
            this.f4952a = method;
            this.f4953b = i10;
        }

        @Override // c7.m
        public <T> T c(Class<T> cls) throws Exception {
            m.a(cls);
            return (T) this.f4952a.invoke(null, cls, Integer.valueOf(this.f4953b));
        }
    }

    /* JADX INFO: compiled from: UnsafeAllocator.java */
    class c extends m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Method f4954a;

        c(Method method) {
            this.f4954a = method;
        }

        @Override // c7.m
        public <T> T c(Class<T> cls) throws Exception {
            m.a(cls);
            return (T) this.f4954a.invoke(null, cls, Object.class);
        }
    }

    /* JADX INFO: compiled from: UnsafeAllocator.java */
    class d extends m {
        d() {
        }

        @Override // c7.m
        public <T> T c(Class<T> cls) {
            throw new UnsupportedOperationException("Cannot allocate " + cls);
        }
    }

    static void a(Class<?> cls) {
        int modifiers = cls.getModifiers();
        if (Modifier.isInterface(modifiers)) {
            throw new UnsupportedOperationException("Interface can't be instantiated! Interface name: " + cls.getName());
        }
        if (Modifier.isAbstract(modifiers)) {
            throw new UnsupportedOperationException("Abstract class can't be instantiated! Class name: " + cls.getName());
        }
    }

    public static m b() {
        try {
            Class<?> cls = Class.forName("sun.misc.Unsafe");
            Field declaredField = cls.getDeclaredField("theUnsafe");
            declaredField.setAccessible(true);
            return new a(cls.getMethod("allocateInstance", Class.class), declaredField.get(null));
        } catch (Exception unused) {
            try {
                try {
                    Method declaredMethod = ObjectStreamClass.class.getDeclaredMethod("getConstructorId", Class.class);
                    declaredMethod.setAccessible(true);
                    int iIntValue = ((Integer) declaredMethod.invoke(null, Object.class)).intValue();
                    Method declaredMethod2 = ObjectStreamClass.class.getDeclaredMethod("newInstance", Class.class, Integer.TYPE);
                    declaredMethod2.setAccessible(true);
                    return new b(declaredMethod2, iIntValue);
                } catch (Exception unused2) {
                    return new d();
                }
            } catch (Exception unused3) {
                Method declaredMethod3 = ObjectInputStream.class.getDeclaredMethod("newInstance", Class.class, Class.class);
                declaredMethod3.setAccessible(true);
                return new c(declaredMethod3);
            }
        }
    }

    public abstract <T> T c(Class<T> cls) throws Exception;
}
