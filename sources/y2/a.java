package y2;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import java.lang.reflect.Method;
import java.util.LinkedHashMap;
import java.util.Map;

/* JADX INFO: compiled from: Dart.java */
/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final Map<Class<?>, Method> f36620a = new LinkedHashMap();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    static final Method f36621b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f36622c = false;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* JADX INFO: compiled from: Dart.java */
    public static abstract class b {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public static final b f36623o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public static final b f36624p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public static final b f36625q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private static final /* synthetic */ b[] f36626r;

        /* JADX INFO: renamed from: y2.a$b$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Dart.java */
        enum C0301a extends b {
            C0301a(String str, int i10) {
                super(str, i10);
            }

            @Override // y2.a.b
            public Object c(Object obj, String str) {
                Intent intent = ((Activity) obj).getIntent();
                if (intent == null) {
                    return null;
                }
                return b.f36625q.c(intent.getExtras(), str);
            }
        }

        /* JADX INFO: renamed from: y2.a$b$b, reason: collision with other inner class name */
        /* JADX INFO: compiled from: Dart.java */
        enum C0302b extends b {
            C0302b(String str, int i10) {
                super(str, i10);
            }

            @Override // y2.a.b
            public Object c(Object obj, String str) {
                return b.f36625q.c(((Fragment) obj).getArguments(), str);
            }
        }

        /* JADX INFO: compiled from: Dart.java */
        enum c extends b {
            c(String str, int i10) {
                super(str, i10);
            }

            @Override // y2.a.b
            public Object c(Object obj, String str) {
                if (obj == null) {
                    return null;
                }
                return ((Bundle) obj).get(str);
            }
        }

        static {
            C0301a c0301a = new C0301a("ACTIVITY", 0);
            f36623o = c0301a;
            C0302b c0302b = new C0302b("FRAGMENT", 1);
            f36624p = c0302b;
            c cVar = new c("BUNDLE", 2);
            f36625q = cVar;
            f36626r = new b[]{c0301a, c0302b, cVar};
        }

        private b(String str, int i10) {
        }

        public static b valueOf(String str) {
            return (b) Enum.valueOf(b.class, str);
        }

        public static b[] values() {
            return (b[]) f36626r.clone();
        }

        public abstract Object c(Object obj, String str);
    }

    /* JADX INFO: compiled from: Dart.java */
    public static class c extends RuntimeException {
        c(String str, Throwable th) {
            super(str, th);
        }
    }

    private static Method a(Class<?> cls) throws NoSuchMethodException {
        Method methodA;
        Method method = f36620a.get(cls);
        if (method != null) {
            if (f36622c) {
                Log.d("Dart", "HIT: Cached in injector map.");
            }
            return method;
        }
        String name = cls.getName();
        if (name.startsWith("android.") || name.startsWith("java.")) {
            if (f36622c) {
                Log.d("Dart", "MISS: Reached framework class. Abandoning search.");
            }
            return f36621b;
        }
        try {
            methodA = Class.forName(name + "$$ExtraInjector").getMethod("inject", b.class, cls, Object.class);
            if (f36622c) {
                Log.d("Dart", "HIT: Class loaded injection class.");
            }
        } catch (ClassNotFoundException unused) {
            if (f36622c) {
                Log.d("Dart", "Not found. Trying superclass " + cls.getSuperclass().getName());
            }
            methodA = a(cls.getSuperclass());
        }
        f36620a.put(cls, methodA);
        return methodA;
    }

    public static void b(Activity activity) {
        d(activity, activity, b.f36623o);
    }

    public static void c(Object obj, Bundle bundle) {
        d(obj, bundle, b.f36625q);
    }

    static void d(Object obj, Object obj2, b bVar) {
        Class<?> cls = obj.getClass();
        try {
            if (f36622c) {
                Log.d("Dart", "Looking up extra injector for " + cls.getName());
            }
            Method methodA = a(cls);
            if (methodA != null) {
                methodA.invoke(null, bVar, obj, obj2);
            }
        } catch (RuntimeException e10) {
            throw e10;
        } catch (Exception e11) {
            throw new c("Unable to inject extras for " + obj, e11);
        }
    }
}
