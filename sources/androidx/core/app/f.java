package androidx.core.app;

import android.annotation.SuppressLint;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: BundleCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: compiled from: BundleCompat.java */
    static class a {
        static IBinder a(Bundle bundle, String str) {
            return bundle.getBinder(str);
        }

        static void b(Bundle bundle, String str, IBinder iBinder) {
            bundle.putBinder(str, iBinder);
        }
    }

    /* JADX INFO: compiled from: BundleCompat.java */
    @SuppressLint({"BanUncheckedReflection"})
    static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Method f1994a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static boolean f1995b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static Method f1996c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f1997d;

        public static IBinder a(Bundle bundle, String str) {
            if (!f1995b) {
                try {
                    Method method = Bundle.class.getMethod("getIBinder", String.class);
                    f1994a = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e10) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve getIBinder method", e10);
                }
                f1995b = true;
            }
            Method method2 = f1994a;
            if (method2 != null) {
                try {
                    return (IBinder) method2.invoke(bundle, str);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e11) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke getIBinder via reflection", e11);
                    f1994a = null;
                }
            }
            return null;
        }

        public static void b(Bundle bundle, String str, IBinder iBinder) {
            if (!f1997d) {
                try {
                    Method method = Bundle.class.getMethod("putIBinder", String.class, IBinder.class);
                    f1996c = method;
                    method.setAccessible(true);
                } catch (NoSuchMethodException e10) {
                    Log.i("BundleCompatBaseImpl", "Failed to retrieve putIBinder method", e10);
                }
                f1997d = true;
            }
            Method method2 = f1996c;
            if (method2 != null) {
                try {
                    method2.invoke(bundle, str, iBinder);
                } catch (IllegalAccessException | IllegalArgumentException | InvocationTargetException e11) {
                    Log.i("BundleCompatBaseImpl", "Failed to invoke putIBinder via reflection", e11);
                    f1996c = null;
                }
            }
        }
    }

    public static IBinder a(Bundle bundle, String str) {
        return Build.VERSION.SDK_INT >= 18 ? a.a(bundle, str) : b.a(bundle, str);
    }

    public static void b(Bundle bundle, String str, IBinder iBinder) {
        if (Build.VERSION.SDK_INT >= 18) {
            a.b(bundle, str, iBinder);
        } else {
            b.b(bundle, str, iBinder);
        }
    }
}
