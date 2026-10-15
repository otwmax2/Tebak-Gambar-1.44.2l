package androidx.lifecycle;

import android.app.Application;
import com.facebook.internal.NativeProtocol;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: SavedStateViewModelFactory.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final List<Class<?>> f3513a = i9.l.g(Application.class, z.class);

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final List<Class<?>> f3514b = i9.k.b(z.class);

    public static final <T> Constructor<T> c(Class<T> cls, List<? extends Class<?>> list) {
        t9.m.e(cls, "modelClass");
        t9.m.e(list, "signature");
        Object[] constructors = cls.getConstructors();
        t9.m.d(constructors, "modelClass.constructors");
        for (Object obj : constructors) {
            Constructor<T> constructor = (Constructor<T>) obj;
            Class<?>[] parameterTypes = constructor.getParameterTypes();
            t9.m.d(parameterTypes, "constructor.parameterTypes");
            List listS = i9.g.s(parameterTypes);
            if (t9.m.a(list, listS)) {
                return constructor;
            }
            if (list.size() == listS.size() && listS.containsAll(list)) {
                throw new UnsupportedOperationException("Class " + cls.getSimpleName() + " must have parameters in the proper order: " + list);
            }
        }
        return null;
    }

    public static final <T extends g0> T d(Class<T> cls, Constructor<T> constructor, Object... objArr) {
        t9.m.e(cls, "modelClass");
        t9.m.e(constructor, "constructor");
        t9.m.e(objArr, NativeProtocol.WEB_DIALOG_PARAMS);
        try {
            return constructor.newInstance(Arrays.copyOf(objArr, objArr.length));
        } catch (IllegalAccessException e10) {
            throw new RuntimeException("Failed to access " + cls, e10);
        } catch (InstantiationException e11) {
            throw new RuntimeException("A " + cls + " cannot be instantiated.", e11);
        } catch (InvocationTargetException e12) {
            throw new RuntimeException("An exception happened in constructor of " + cls, e12.getCause());
        }
    }
}
