package androidx.core.content.res;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.util.SparseArray;
import android.util.TypedValue;
import java.lang.reflect.Method;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: ResourcesCompat.java */
/* JADX INFO: loaded from: classes.dex */
public final class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final ThreadLocal<TypedValue> f2168a = new ThreadLocal<>();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static final WeakHashMap<e, SparseArray<d>> f2169b = new WeakHashMap<>(0);

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static final Object f2170c = new Object();

    /* JADX INFO: compiled from: ResourcesCompat.java */
    static class a {
        static Drawable a(Resources resources, int i10, int i11) {
            return resources.getDrawableForDensity(i10, i11);
        }
    }

    /* JADX INFO: compiled from: ResourcesCompat.java */
    static class b {
        static Drawable a(Resources resources, int i10, Resources.Theme theme) {
            return resources.getDrawable(i10, theme);
        }

        static Drawable b(Resources resources, int i10, int i11, Resources.Theme theme) {
            return resources.getDrawableForDensity(i10, i11, theme);
        }
    }

    /* JADX INFO: compiled from: ResourcesCompat.java */
    static class c {
        static int a(Resources resources, int i10, Resources.Theme theme) {
            return resources.getColor(i10, theme);
        }

        static ColorStateList b(Resources resources, int i10, Resources.Theme theme) {
            return resources.getColorStateList(i10, theme);
        }
    }

    /* JADX INFO: compiled from: ResourcesCompat.java */
    private static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ColorStateList f2171a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Configuration f2172b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final int f2173c;

        d(ColorStateList colorStateList, Configuration configuration, Resources.Theme theme) {
            this.f2171a = colorStateList;
            this.f2172b = configuration;
            this.f2173c = theme == null ? 0 : theme.hashCode();
        }
    }

    /* JADX INFO: compiled from: ResourcesCompat.java */
    private static final class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final Resources f2174a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Resources.Theme f2175b;

        e(Resources resources, Resources.Theme theme) {
            this.f2174a = resources;
            this.f2175b = theme;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || e.class != obj.getClass()) {
                return false;
            }
            e eVar = (e) obj;
            return this.f2174a.equals(eVar.f2174a) && androidx.core.util.c.a(this.f2175b, eVar.f2175b);
        }

        public int hashCode() {
            return androidx.core.util.c.b(this.f2174a, this.f2175b);
        }
    }

    /* JADX INFO: compiled from: ResourcesCompat.java */
    public static abstract class f {
        public static Handler e(Handler handler) {
            return handler == null ? new Handler(Looper.getMainLooper()) : handler;
        }

        public final void c(final int i10, Handler handler) {
            e(handler).post(new Runnable() { // from class: androidx.core.content.res.i
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2179o.f(i10);
                }
            });
        }

        public final void d(final Typeface typeface, Handler handler) {
            e(handler).post(new Runnable() { // from class: androidx.core.content.res.j
                @Override // java.lang.Runnable
                public final void run() {
                    this.f2181o.g(typeface);
                }
            });
        }

        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public abstract void f(int i10);

        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public abstract void g(Typeface typeface);
    }

    /* JADX INFO: compiled from: ResourcesCompat.java */
    public static final class g {

        /* JADX INFO: compiled from: ResourcesCompat.java */
        static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private static final Object f2176a = new Object();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private static Method f2177b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private static boolean f2178c;

            /* JADX WARN: Removed duplicated region for block: B:30:0x0027 A[EXC_TOP_SPLITTER, SYNTHETIC] */
            @android.annotation.SuppressLint({"BanUncheckedReflection"})
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct code enable 'Show inconsistent code' option in preferences
            */
            static void a(android.content.res.Resources.Theme r6) {
                /*
                    java.lang.Object r0 = androidx.core.content.res.h.g.a.f2176a
                    monitor-enter(r0)
                    boolean r1 = androidx.core.content.res.h.g.a.f2178c     // Catch: java.lang.Throwable -> L3c
                    r2 = 0
                    if (r1 != 0) goto L23
                    r1 = 1
                    java.lang.Class<android.content.res.Resources$Theme> r3 = android.content.res.Resources.Theme.class
                    java.lang.String r4 = "rebase"
                    java.lang.Class[] r5 = new java.lang.Class[r2]     // Catch: java.lang.NoSuchMethodException -> L19 java.lang.Throwable -> L3c
                    java.lang.reflect.Method r3 = r3.getDeclaredMethod(r4, r5)     // Catch: java.lang.NoSuchMethodException -> L19 java.lang.Throwable -> L3c
                    androidx.core.content.res.h.g.a.f2177b = r3     // Catch: java.lang.NoSuchMethodException -> L19 java.lang.Throwable -> L3c
                    r3.setAccessible(r1)     // Catch: java.lang.NoSuchMethodException -> L19 java.lang.Throwable -> L3c
                    goto L21
                L19:
                    r3 = move-exception
                    java.lang.String r4 = "ResourcesCompat"
                    java.lang.String r5 = "Failed to retrieve rebase() method"
                    android.util.Log.i(r4, r5, r3)     // Catch: java.lang.Throwable -> L3c
                L21:
                    androidx.core.content.res.h.g.a.f2178c = r1     // Catch: java.lang.Throwable -> L3c
                L23:
                    java.lang.reflect.Method r1 = androidx.core.content.res.h.g.a.f2177b     // Catch: java.lang.Throwable -> L3c
                    if (r1 == 0) goto L3a
                    java.lang.Object[] r2 = new java.lang.Object[r2]     // Catch: java.lang.reflect.InvocationTargetException -> L2d java.lang.IllegalAccessException -> L2f java.lang.Throwable -> L3c
                    r1.invoke(r6, r2)     // Catch: java.lang.reflect.InvocationTargetException -> L2d java.lang.IllegalAccessException -> L2f java.lang.Throwable -> L3c
                    goto L3a
                L2d:
                    r6 = move-exception
                    goto L30
                L2f:
                    r6 = move-exception
                L30:
                    java.lang.String r1 = "ResourcesCompat"
                    java.lang.String r2 = "Failed to invoke rebase() method via reflection"
                    android.util.Log.i(r1, r2, r6)     // Catch: java.lang.Throwable -> L3c
                    r6 = 0
                    androidx.core.content.res.h.g.a.f2177b = r6     // Catch: java.lang.Throwable -> L3c
                L3a:
                    monitor-exit(r0)     // Catch: java.lang.Throwable -> L3c
                    return
                L3c:
                    r6 = move-exception
                    monitor-exit(r0)     // Catch: java.lang.Throwable -> L3c
                    throw r6
                */
                throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.h.g.a.a(android.content.res.Resources$Theme):void");
            }
        }

        /* JADX INFO: compiled from: ResourcesCompat.java */
        static class b {
            static void a(Resources.Theme theme) {
                theme.rebase();
            }
        }

        public static void a(Resources.Theme theme) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 29) {
                b.a(theme);
            } else if (i10 >= 23) {
                a.a(theme);
            }
        }
    }

    private static void a(e eVar, int i10, ColorStateList colorStateList, Resources.Theme theme) {
        synchronized (f2170c) {
            WeakHashMap<e, SparseArray<d>> weakHashMap = f2169b;
            SparseArray<d> sparseArray = weakHashMap.get(eVar);
            if (sparseArray == null) {
                sparseArray = new SparseArray<>();
                weakHashMap.put(eVar, sparseArray);
            }
            sparseArray.append(i10, new d(colorStateList, eVar.f2174a.getConfiguration(), theme));
        }
    }

    private static ColorStateList b(e eVar, int i10) {
        d dVar;
        Resources.Theme theme;
        synchronized (f2170c) {
            SparseArray<d> sparseArray = f2169b.get(eVar);
            if (sparseArray != null && sparseArray.size() > 0 && (dVar = sparseArray.get(i10)) != null) {
                if (dVar.f2172b.equals(eVar.f2174a.getConfiguration()) && (((theme = eVar.f2175b) == null && dVar.f2173c == 0) || (theme != null && dVar.f2173c == theme.hashCode()))) {
                    return dVar.f2171a;
                }
                sparseArray.remove(i10);
            }
            return null;
        }
    }

    public static ColorStateList c(Resources resources, int i10, Resources.Theme theme) throws Resources.NotFoundException {
        e eVar = new e(resources, theme);
        ColorStateList colorStateListB = b(eVar, i10);
        if (colorStateListB != null) {
            return colorStateListB;
        }
        ColorStateList colorStateListJ = j(resources, i10, theme);
        if (colorStateListJ == null) {
            return Build.VERSION.SDK_INT >= 23 ? c.b(resources, i10, theme) : resources.getColorStateList(i10);
        }
        a(eVar, i10, colorStateListJ, theme);
        return colorStateListJ;
    }

    public static Drawable d(Resources resources, int i10, Resources.Theme theme) throws Resources.NotFoundException {
        return Build.VERSION.SDK_INT >= 21 ? b.a(resources, i10, theme) : resources.getDrawable(i10);
    }

    public static Drawable e(Resources resources, int i10, int i11, Resources.Theme theme) throws Resources.NotFoundException {
        int i12 = Build.VERSION.SDK_INT;
        return i12 >= 21 ? b.b(resources, i10, i11, theme) : i12 >= 15 ? a.a(resources, i10, i11) : resources.getDrawable(i10);
    }

    public static Typeface f(Context context, int i10) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return l(context, i10, new TypedValue(), 0, null, null, false, false);
    }

    public static Typeface g(Context context, int i10, TypedValue typedValue, int i11, f fVar) throws Resources.NotFoundException {
        if (context.isRestricted()) {
            return null;
        }
        return l(context, i10, typedValue, i11, fVar, null, true, false);
    }

    public static void h(Context context, int i10, f fVar, Handler handler) throws Resources.NotFoundException {
        androidx.core.util.h.f(fVar);
        if (context.isRestricted()) {
            fVar.c(-4, handler);
        } else {
            l(context, i10, new TypedValue(), 0, fVar, handler, false, false);
        }
    }

    private static TypedValue i() {
        ThreadLocal<TypedValue> threadLocal = f2168a;
        TypedValue typedValue = threadLocal.get();
        if (typedValue != null) {
            return typedValue;
        }
        TypedValue typedValue2 = new TypedValue();
        threadLocal.set(typedValue2);
        return typedValue2;
    }

    private static ColorStateList j(Resources resources, int i10, Resources.Theme theme) {
        if (k(resources, i10)) {
            return null;
        }
        try {
            return androidx.core.content.res.c.a(resources, resources.getXml(i10), theme);
        } catch (Exception e10) {
            Log.w("ResourcesCompat", "Failed to inflate ColorStateList, leaving it to the framework", e10);
            return null;
        }
    }

    private static boolean k(Resources resources, int i10) {
        TypedValue typedValueI = i();
        resources.getValue(i10, typedValueI, true);
        int i11 = typedValueI.type;
        return i11 >= 28 && i11 <= 31;
    }

    private static Typeface l(Context context, int i10, TypedValue typedValue, int i11, f fVar, Handler handler, boolean z10, boolean z11) {
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        Typeface typefaceM = m(context, resources, typedValue, i10, i11, fVar, handler, z10, z11);
        if (typefaceM != null || fVar != null || z11) {
            return typefaceM;
        }
        throw new Resources.NotFoundException("Font resource ID #0x" + Integer.toHexString(i10) + " could not be retrieved.");
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private static android.graphics.Typeface m(android.content.Context r17, android.content.res.Resources r18, android.util.TypedValue r19, int r20, int r21, androidx.core.content.res.h.f r22, android.os.Handler r23, boolean r24, boolean r25) {
        /*
            Method dump skipped, instruction units count: 234
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.content.res.h.m(android.content.Context, android.content.res.Resources, android.util.TypedValue, int, int, androidx.core.content.res.h$f, android.os.Handler, boolean, boolean):android.graphics.Typeface");
    }
}
