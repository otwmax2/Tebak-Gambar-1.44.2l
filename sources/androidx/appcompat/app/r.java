package androidx.appcompat.app;

import android.content.res.Resources;
import android.os.Build;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;

/* JADX INFO: compiled from: ResourcesFlusher.java */
/* JADX INFO: loaded from: classes.dex */
class r {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Field f453a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static boolean f454b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static Class<?> f455c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f456d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static Field f457e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f458f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static Field f459g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f460h;

    /* JADX INFO: compiled from: ResourcesFlusher.java */
    static class a {
        static void a(LongSparseArray longSparseArray) {
            longSparseArray.clear();
        }
    }

    static void a(Resources resources) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 28) {
            return;
        }
        if (i10 >= 24) {
            d(resources);
        } else if (i10 >= 23) {
            c(resources);
        } else if (i10 >= 21) {
            b(resources);
        }
    }

    private static void b(Resources resources) {
        if (!f454b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f453a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e10);
            }
            f454b = true;
        }
        Field field = f453a;
        if (field != null) {
            Map map = null;
            try {
                map = (Map) field.get(resources);
            } catch (IllegalAccessException e11) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e11);
            }
            if (map != null) {
                map.clear();
            }
        }
    }

    private static void c(Resources resources) {
        if (!f454b) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                f453a = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e10);
            }
            f454b = true;
        }
        Object obj = null;
        Field field = f453a;
        if (field != null) {
            try {
                obj = field.get(resources);
            } catch (IllegalAccessException e11) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", e11);
            }
        }
        if (obj == null) {
            return;
        }
        e(obj);
    }

    private static void d(Resources resources) {
        Object obj;
        if (!f460h) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                f459g = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e10) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e10);
            }
            f460h = true;
        }
        Field field = f459g;
        if (field == null) {
            return;
        }
        Object obj2 = null;
        try {
            obj = field.get(resources);
        } catch (IllegalAccessException e11) {
            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", e11);
            obj = null;
        }
        if (obj == null) {
            return;
        }
        if (!f454b) {
            try {
                Field declaredField2 = obj.getClass().getDeclaredField("mDrawableCache");
                f453a = declaredField2;
                declaredField2.setAccessible(true);
            } catch (NoSuchFieldException e12) {
                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e12);
            }
            f454b = true;
        }
        Field field2 = f453a;
        if (field2 != null) {
            try {
                obj2 = field2.get(obj);
            } catch (IllegalAccessException e13) {
                Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", e13);
            }
        }
        if (obj2 != null) {
            e(obj2);
        }
    }

    private static void e(Object obj) {
        if (!f456d) {
            try {
                f455c = Class.forName("android.content.res.ThemedResourceCache");
            } catch (ClassNotFoundException e10) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e10);
            }
            f456d = true;
        }
        Class<?> cls = f455c;
        if (cls == null) {
            return;
        }
        if (!f458f) {
            try {
                Field declaredField = cls.getDeclaredField("mUnthemedEntries");
                f457e = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException e11) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e11);
            }
            f458f = true;
        }
        Field field = f457e;
        if (field == null) {
            return;
        }
        LongSparseArray longSparseArray = null;
        try {
            longSparseArray = (LongSparseArray) field.get(obj);
        } catch (IllegalAccessException e12) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", e12);
        }
        if (longSparseArray != null) {
            a.a(longSparseArray);
        }
    }
}
