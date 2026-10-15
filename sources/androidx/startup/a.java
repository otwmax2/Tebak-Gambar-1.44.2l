package androidx.startup;

import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import d1.b;
import d1.c;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* JADX INFO: compiled from: AppInitializer.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static volatile a f4217d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final Object f4218e = new Object();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final Context f4221c;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    final Set<Class<? extends d1.a<?>>> f4220b = new HashSet();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final Map<Class<?>, Object> f4219a = new HashMap();

    a(Context context) {
        this.f4221c = context.getApplicationContext();
    }

    private <T> T d(Class<? extends d1.a<?>> cls, Set<Class<?>> set) {
        T t10;
        if (f1.a.d()) {
            try {
                f1.a.a(cls.getSimpleName());
            } finally {
                f1.a.b();
            }
        }
        if (set.contains(cls)) {
            throw new IllegalStateException(String.format("Cannot initialize %s. Cycle detected.", cls.getName()));
        }
        if (this.f4219a.containsKey(cls)) {
            t10 = (T) this.f4219a.get(cls);
        } else {
            set.add(cls);
            try {
                d1.a<?> aVarNewInstance = cls.getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                List<Class<? extends d1.a<?>>> listA = aVarNewInstance.a();
                if (!listA.isEmpty()) {
                    for (Class<? extends d1.a<?>> cls2 : listA) {
                        if (!this.f4219a.containsKey(cls2)) {
                            d(cls2, set);
                        }
                    }
                }
                t10 = (T) aVarNewInstance.b(this.f4221c);
                set.remove(cls);
                this.f4219a.put(cls, t10);
            } catch (Throwable th) {
                throw new c(th);
            }
        }
        return t10;
    }

    public static a e(Context context) {
        if (f4217d == null) {
            synchronized (f4218e) {
                if (f4217d == null) {
                    f4217d = new a(context);
                }
            }
        }
        return f4217d;
    }

    void a() {
        try {
            try {
                f1.a.a("Startup");
                b(this.f4221c.getPackageManager().getProviderInfo(new ComponentName(this.f4221c.getPackageName(), InitializationProvider.class.getName()), 128).metaData);
            } catch (PackageManager.NameNotFoundException e10) {
                throw new c(e10);
            }
        } finally {
            f1.a.b();
        }
    }

    void b(Bundle bundle) {
        String string = this.f4221c.getString(b.f28603a);
        if (bundle != null) {
            try {
                HashSet hashSet = new HashSet();
                for (String str : bundle.keySet()) {
                    if (string.equals(bundle.getString(str, null))) {
                        Class<?> cls = Class.forName(str);
                        if (d1.a.class.isAssignableFrom(cls)) {
                            this.f4220b.add((Class<? extends d1.a<?>>) cls);
                        }
                    }
                }
                Iterator<Class<? extends d1.a<?>>> it = this.f4220b.iterator();
                while (it.hasNext()) {
                    d(it.next(), hashSet);
                }
            } catch (ClassNotFoundException e10) {
                throw new c(e10);
            }
        }
    }

    <T> T c(Class<? extends d1.a<?>> cls) {
        T t10;
        synchronized (f4218e) {
            t10 = (T) this.f4219a.get(cls);
            if (t10 == null) {
                t10 = (T) d(cls, new HashSet());
            }
        }
        return t10;
    }

    public <T> T f(Class<? extends d1.a<T>> cls) {
        return (T) c(cls);
    }

    public boolean g(Class<? extends d1.a<?>> cls) {
        return this.f4220b.contains(cls);
    }
}
