package wa;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import java.lang.invoke.MethodHandles;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.concurrent.Executor;
import javax.annotation.Nullable;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;
import wa.c;

/* JADX INFO: compiled from: Platform.java */
/* JADX INFO: loaded from: classes.dex */
class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final j f36097a = c();

    /* JADX INFO: compiled from: Platform.java */
    static class a extends j {

        /* JADX INFO: renamed from: wa.j$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Platform.java */
        /* JADX INFO: loaded from: classes2.dex */
        static class ExecutorC0292a implements Executor {

            /* JADX INFO: renamed from: o, reason: collision with root package name */
            private final Handler f36098o = new Handler(Looper.getMainLooper());

            ExecutorC0292a() {
            }

            @Override // java.util.concurrent.Executor
            public void execute(Runnable runnable) {
                this.f36098o.post(runnable);
            }
        }

        a() {
        }

        @Override // wa.j
        c.a a(@Nullable Executor executor) {
            if (executor != null) {
                return new g(executor);
            }
            throw new AssertionError();
        }

        @Override // wa.j
        public Executor b() {
            return new ExecutorC0292a();
        }
    }

    /* JADX INFO: compiled from: Platform.java */
    @IgnoreJRERequirement
    static class b extends j {
        b() {
        }

        @Override // wa.j
        Object e(Method method, Class<?> cls, Object obj, @Nullable Object... objArr) throws Throwable {
            Constructor declaredConstructor = MethodHandles.Lookup.class.getDeclaredConstructor(Class.class, Integer.TYPE);
            declaredConstructor.setAccessible(true);
            return ((MethodHandles.Lookup) declaredConstructor.newInstance(cls, -1)).unreflectSpecial(method, cls).bindTo(obj).invokeWithArguments(objArr);
        }

        @Override // wa.j
        boolean f(Method method) {
            return method.isDefault();
        }
    }

    j() {
    }

    private static j c() {
        try {
            Class.forName("android.os.Build");
            if (Build.VERSION.SDK_INT != 0) {
                return new a();
            }
        } catch (ClassNotFoundException unused) {
        }
        try {
            Class.forName("java.util.Optional");
            return new b();
        } catch (ClassNotFoundException unused2) {
            return new j();
        }
    }

    static j d() {
        return f36097a;
    }

    c.a a(@Nullable Executor executor) {
        return executor != null ? new g(executor) : f.f36044a;
    }

    @Nullable
    Executor b() {
        return null;
    }

    @Nullable
    Object e(Method method, Class<?> cls, Object obj, @Nullable Object... objArr) throws Throwable {
        throw new UnsupportedOperationException();
    }

    boolean f(Method method) {
        return false;
    }
}
