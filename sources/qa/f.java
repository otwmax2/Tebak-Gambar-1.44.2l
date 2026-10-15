package qa;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: OptionalMethod.java */
/* JADX INFO: loaded from: classes2.dex */
class f<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Class<?> f34128a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final String f34129b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final Class[] f34130c;

    f(Class<?> cls, String str, Class... clsArr) {
        this.f34128a = cls;
        this.f34129b = str;
        this.f34130c = clsArr;
    }

    private Method a(Class<?> cls) {
        Class<?> cls2;
        String str = this.f34129b;
        if (str == null) {
            return null;
        }
        Method methodB = b(cls, str, this.f34130c);
        if (methodB == null || (cls2 = this.f34128a) == null || cls2.isAssignableFrom(methodB.getReturnType())) {
            return methodB;
        }
        return null;
    }

    private static Method b(Class<?> cls, String str, Class[] clsArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
            } catch (NoSuchMethodException unused) {
            }
            return method;
        } catch (NoSuchMethodException unused2) {
            return null;
        }
    }

    public Object c(T t10, Object... objArr) throws InvocationTargetException {
        Method methodA = a(t10.getClass());
        if (methodA == null) {
            throw new AssertionError("Method " + this.f34129b + " not supported for object " + t10);
        }
        try {
            return methodA.invoke(t10, objArr);
        } catch (IllegalAccessException e10) {
            AssertionError assertionError = new AssertionError("Unexpectedly could not call: " + methodA);
            assertionError.initCause(e10);
            throw assertionError;
        }
    }

    public Object d(T t10, Object... objArr) throws InvocationTargetException {
        Method methodA = a(t10.getClass());
        if (methodA == null) {
            return null;
        }
        try {
            return methodA.invoke(t10, objArr);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    public Object e(T t10, Object... objArr) {
        try {
            return d(t10, objArr);
        } catch (InvocationTargetException e10) {
            Throwable targetException = e10.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object f(T t10, Object... objArr) {
        try {
            return c(t10, objArr);
        } catch (InvocationTargetException e10) {
            Throwable targetException = e10.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError("Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public boolean g(T t10) {
        return a(t10.getClass()) != null;
    }
}
