package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: compiled from: ActivityRecreator.java */
/* JADX INFO: loaded from: classes.dex */
final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static final Class<?> f1975a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    protected static final Field f1976b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    protected static final Field f1977c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected static final Method f1978d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    protected static final Method f1979e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    protected static final Method f1980f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Handler f1981g = new Handler(Looper.getMainLooper());

    /* JADX INFO: compiled from: ActivityRecreator.java */
    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ C0024d f1982o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Object f1983p;

        a(C0024d c0024d, Object obj) {
            this.f1982o = c0024d;
            this.f1983p = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1982o.f1988o = this.f1983p;
        }
    }

    /* JADX INFO: compiled from: ActivityRecreator.java */
    class b implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Application f1984o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ C0024d f1985p;

        b(Application application, C0024d c0024d) {
            this.f1984o = application;
            this.f1985p = c0024d;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1984o.unregisterActivityLifecycleCallbacks(this.f1985p);
        }
    }

    /* JADX INFO: compiled from: ActivityRecreator.java */
    class c implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ Object f1986o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ Object f1987p;

        c(Object obj, Object obj2) {
            this.f1986o = obj;
            this.f1987p = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Method method = d.f1978d;
                if (method != null) {
                    method.invoke(this.f1986o, this.f1987p, Boolean.FALSE, "AppCompat recreation");
                } else {
                    d.f1979e.invoke(this.f1986o, this.f1987p, Boolean.FALSE);
                }
            } catch (RuntimeException e10) {
                if (e10.getClass() == RuntimeException.class && e10.getMessage() != null && e10.getMessage().startsWith("Unable to stop")) {
                    throw e10;
                }
            } catch (Throwable th) {
                Log.e("ActivityRecreator", "Exception while invoking performStopActivity", th);
            }
        }
    }

    /* JADX INFO: renamed from: androidx.core.app.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ActivityRecreator.java */
    private static final class C0024d implements Application.ActivityLifecycleCallbacks {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        Object f1988o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private Activity f1989p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final int f1990q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private boolean f1991r = false;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f1992s = false;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private boolean f1993t = false;

        C0024d(Activity activity) {
            this.f1989p = activity;
            this.f1990q = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f1989p == activity) {
                this.f1989p = null;
                this.f1992s = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.f1992s || this.f1993t || this.f1991r || !d.h(this.f1988o, this.f1990q, activity)) {
                return;
            }
            this.f1993t = true;
            this.f1988o = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f1989p == activity) {
                this.f1991r = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class<?> clsA = a();
        f1975a = clsA;
        f1976b = b();
        f1977c = f();
        f1978d = d(clsA);
        f1979e = c(clsA);
        f1980f = e(clsA);
    }

    private static Class<?> a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Field b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method c(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method d(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method e(Class<?> cls) {
        if (g() && cls != null) {
            try {
                Class<?> cls2 = Boolean.TYPE;
                Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls2, Configuration.class, Configuration.class, cls2, cls2);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static Field f() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static boolean g() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 == 26 || i10 == 27;
    }

    protected static boolean h(Object obj, int i10, Activity activity) {
        try {
            Object obj2 = f1977c.get(activity);
            if (obj2 == obj && activity.hashCode() == i10) {
                f1981g.postAtFrontOfQueue(new c(f1976b.get(activity), obj2));
                return true;
            }
            return false;
        } catch (Throwable th) {
            Log.e("ActivityRecreator", "Exception while fetching field values", th);
            return false;
        }
    }

    static boolean i(Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        }
        if (g() && f1980f == null) {
            return false;
        }
        if (f1979e == null && f1978d == null) {
            return false;
        }
        try {
            Object obj2 = f1977c.get(activity);
            if (obj2 == null || (obj = f1976b.get(activity)) == null) {
                return false;
            }
            Application application = activity.getApplication();
            C0024d c0024d = new C0024d(activity);
            application.registerActivityLifecycleCallbacks(c0024d);
            Handler handler = f1981g;
            handler.post(new a(c0024d, obj2));
            try {
                if (g()) {
                    Method method = f1980f;
                    Boolean bool = Boolean.FALSE;
                    method.invoke(obj, obj2, null, null, 0, bool, null, null, bool, bool);
                } else {
                    activity.recreate();
                }
                handler.post(new b(application, c0024d));
                return true;
            } catch (Throwable th) {
                f1981g.post(new b(application, c0024d));
                throw th;
            }
        } catch (Throwable unused) {
            return false;
        }
    }
}
