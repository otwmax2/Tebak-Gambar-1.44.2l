package androidx.core.view;

import android.annotation.SuppressLint;
import android.graphics.Rect;
import android.os.Build;
import android.util.Log;
import android.view.View;
import android.view.WindowInsets;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Objects;

/* JADX INFO: compiled from: WindowInsetsCompat.java */
/* JADX INFO: loaded from: classes.dex */
public class k0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k0 f2503b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final l f2504a;

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    @SuppressLint({"SoonBlockedPrivateApi"})
    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private static Field f2505a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private static Field f2506b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private static Field f2507c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static boolean f2508d;

        static {
            try {
                Field declaredField = View.class.getDeclaredField("mAttachInfo");
                f2505a = declaredField;
                declaredField.setAccessible(true);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                Field declaredField2 = cls.getDeclaredField("mStableInsets");
                f2506b = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = cls.getDeclaredField("mContentInsets");
                f2507c = declaredField3;
                declaredField3.setAccessible(true);
                f2508d = true;
            } catch (ReflectiveOperationException e10) {
                Log.w("WindowInsetsCompat", "Failed to get visible insets from AttachInfo " + e10.getMessage(), e10);
            }
        }

        public static k0 a(View view) {
            if (f2508d && view.isAttachedToWindow()) {
                try {
                    Object obj = f2505a.get(view.getRootView());
                    if (obj != null) {
                        Rect rect = (Rect) f2506b.get(obj);
                        Rect rect2 = (Rect) f2507c.get(obj);
                        if (rect != null && rect2 != null) {
                            k0 k0VarA = new b().b(androidx.core.graphics.b.c(rect)).c(androidx.core.graphics.b.c(rect2)).a();
                            k0VarA.s(k0VarA);
                            k0VarA.d(view.getRootView());
                            return k0VarA;
                        }
                    }
                } catch (IllegalAccessException e10) {
                    Log.w("WindowInsetsCompat", "Failed to get insets from AttachInfo. " + e10.getMessage(), e10);
                }
            }
            return null;
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    private static class e extends d {
        e() {
        }

        e(k0 k0Var) {
            super(k0Var);
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    private static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final k0 f2517a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        androidx.core.graphics.b[] f2518b;

        f() {
            this(new k0((k0) null));
        }

        protected final void a() {
            androidx.core.graphics.b[] bVarArr = this.f2518b;
            if (bVarArr != null) {
                androidx.core.graphics.b bVarF = bVarArr[m.a(1)];
                androidx.core.graphics.b bVarF2 = this.f2518b[m.a(2)];
                if (bVarF2 == null) {
                    bVarF2 = this.f2517a.f(2);
                }
                if (bVarF == null) {
                    bVarF = this.f2517a.f(1);
                }
                f(androidx.core.graphics.b.a(bVarF, bVarF2));
                androidx.core.graphics.b bVar = this.f2518b[m.a(16)];
                if (bVar != null) {
                    e(bVar);
                }
                androidx.core.graphics.b bVar2 = this.f2518b[m.a(32)];
                if (bVar2 != null) {
                    c(bVar2);
                }
                androidx.core.graphics.b bVar3 = this.f2518b[m.a(64)];
                if (bVar3 != null) {
                    g(bVar3);
                }
            }
        }

        k0 b() {
            a();
            return this.f2517a;
        }

        void c(androidx.core.graphics.b bVar) {
        }

        void d(androidx.core.graphics.b bVar) {
        }

        void e(androidx.core.graphics.b bVar) {
        }

        void f(androidx.core.graphics.b bVar) {
        }

        void g(androidx.core.graphics.b bVar) {
        }

        f(k0 k0Var) {
            this.f2517a = k0Var;
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    private static class i extends h {
        i(k0 k0Var, WindowInsets windowInsets) {
            super(k0Var, windowInsets);
        }

        @Override // androidx.core.view.k0.l
        k0 a() {
            return k0.v(this.f2524c.consumeDisplayCutout());
        }

        @Override // androidx.core.view.k0.g, androidx.core.view.k0.l
        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof i)) {
                return false;
            }
            i iVar = (i) obj;
            return Objects.equals(this.f2524c, iVar.f2524c) && Objects.equals(this.f2528g, iVar.f2528g);
        }

        @Override // androidx.core.view.k0.l
        androidx.core.view.d f() {
            return androidx.core.view.d.e(this.f2524c.getDisplayCutout());
        }

        @Override // androidx.core.view.k0.l
        public int hashCode() {
            return this.f2524c.hashCode();
        }

        i(k0 k0Var, i iVar) {
            super(k0Var, iVar);
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    private static class k extends j {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        static final k0 f2533q = k0.v(WindowInsets.CONSUMED);

        k(k0 k0Var, WindowInsets windowInsets) {
            super(k0Var, windowInsets);
        }

        @Override // androidx.core.view.k0.g, androidx.core.view.k0.l
        final void d(View view) {
        }

        @Override // androidx.core.view.k0.g, androidx.core.view.k0.l
        public androidx.core.graphics.b g(int i10) {
            return androidx.core.graphics.b.d(this.f2524c.getInsets(n.a(i10)));
        }

        k(k0 k0Var, k kVar) {
            super(k0Var, kVar);
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    private static class l {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        static final k0 f2534b = new b().a().a().b().c();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final k0 f2535a;

        l(k0 k0Var) {
            this.f2535a = k0Var;
        }

        k0 a() {
            return this.f2535a;
        }

        k0 b() {
            return this.f2535a;
        }

        k0 c() {
            return this.f2535a;
        }

        void d(View view) {
        }

        void e(k0 k0Var) {
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof l)) {
                return false;
            }
            l lVar = (l) obj;
            return o() == lVar.o() && n() == lVar.n() && androidx.core.util.c.a(k(), lVar.k()) && androidx.core.util.c.a(i(), lVar.i()) && androidx.core.util.c.a(f(), lVar.f());
        }

        androidx.core.view.d f() {
            return null;
        }

        androidx.core.graphics.b g(int i10) {
            return androidx.core.graphics.b.f2195e;
        }

        androidx.core.graphics.b h() {
            return k();
        }

        public int hashCode() {
            return androidx.core.util.c.b(Boolean.valueOf(o()), Boolean.valueOf(n()), k(), i(), f());
        }

        androidx.core.graphics.b i() {
            return androidx.core.graphics.b.f2195e;
        }

        androidx.core.graphics.b j() {
            return k();
        }

        androidx.core.graphics.b k() {
            return androidx.core.graphics.b.f2195e;
        }

        androidx.core.graphics.b l() {
            return k();
        }

        k0 m(int i10, int i11, int i12, int i13) {
            return f2534b;
        }

        boolean n() {
            return false;
        }

        boolean o() {
            return false;
        }

        public void p(androidx.core.graphics.b[] bVarArr) {
        }

        void q(androidx.core.graphics.b bVar) {
        }

        void r(k0 k0Var) {
        }

        public void s(androidx.core.graphics.b bVar) {
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static final class m {
        static int a(int i10) {
            if (i10 == 1) {
                return 0;
            }
            if (i10 == 2) {
                return 1;
            }
            if (i10 == 4) {
                return 2;
            }
            if (i10 == 8) {
                return 3;
            }
            if (i10 == 16) {
                return 4;
            }
            if (i10 == 32) {
                return 5;
            }
            if (i10 == 64) {
                return 6;
            }
            if (i10 == 128) {
                return 7;
            }
            if (i10 == 256) {
                return 8;
            }
            throw new IllegalArgumentException("type needs to be >= FIRST and <= LAST, type=" + i10);
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    private static final class n {
        static int a(int i10) {
            int iStatusBars;
            int i11 = 0;
            for (int i12 = 1; i12 <= 256; i12 <<= 1) {
                if ((i10 & i12) != 0) {
                    if (i12 == 1) {
                        iStatusBars = WindowInsets.Type.statusBars();
                    } else if (i12 == 2) {
                        iStatusBars = WindowInsets.Type.navigationBars();
                    } else if (i12 == 4) {
                        iStatusBars = WindowInsets.Type.captionBar();
                    } else if (i12 == 8) {
                        iStatusBars = WindowInsets.Type.ime();
                    } else if (i12 == 16) {
                        iStatusBars = WindowInsets.Type.systemGestures();
                    } else if (i12 == 32) {
                        iStatusBars = WindowInsets.Type.mandatorySystemGestures();
                    } else if (i12 == 64) {
                        iStatusBars = WindowInsets.Type.tappableElement();
                    } else if (i12 == 128) {
                        iStatusBars = WindowInsets.Type.displayCutout();
                    }
                    i11 |= iStatusBars;
                }
            }
            return i11;
        }
    }

    static {
        if (Build.VERSION.SDK_INT >= 30) {
            f2503b = k.f2533q;
        } else {
            f2503b = l.f2534b;
        }
    }

    private k0(WindowInsets windowInsets) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 30) {
            this.f2504a = new k(this, windowInsets);
            return;
        }
        if (i10 >= 29) {
            this.f2504a = new j(this, windowInsets);
            return;
        }
        if (i10 >= 28) {
            this.f2504a = new i(this, windowInsets);
            return;
        }
        if (i10 >= 21) {
            this.f2504a = new h(this, windowInsets);
        } else if (i10 >= 20) {
            this.f2504a = new g(this, windowInsets);
        } else {
            this.f2504a = new l(this);
        }
    }

    static androidx.core.graphics.b n(androidx.core.graphics.b bVar, int i10, int i11, int i12, int i13) {
        int iMax = Math.max(0, bVar.f2196a - i10);
        int iMax2 = Math.max(0, bVar.f2197b - i11);
        int iMax3 = Math.max(0, bVar.f2198c - i12);
        int iMax4 = Math.max(0, bVar.f2199d - i13);
        return (iMax == i10 && iMax2 == i11 && iMax3 == i12 && iMax4 == i13) ? bVar : androidx.core.graphics.b.b(iMax, iMax2, iMax3, iMax4);
    }

    public static k0 v(WindowInsets windowInsets) {
        return w(windowInsets, null);
    }

    public static k0 w(WindowInsets windowInsets, View view) {
        k0 k0Var = new k0((WindowInsets) androidx.core.util.h.f(windowInsets));
        if (view != null && a0.T(view)) {
            k0Var.s(a0.K(view));
            k0Var.d(view.getRootView());
        }
        return k0Var;
    }

    @Deprecated
    public k0 a() {
        return this.f2504a.a();
    }

    @Deprecated
    public k0 b() {
        return this.f2504a.b();
    }

    @Deprecated
    public k0 c() {
        return this.f2504a.c();
    }

    void d(View view) {
        this.f2504a.d(view);
    }

    public androidx.core.view.d e() {
        return this.f2504a.f();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof k0) {
            return androidx.core.util.c.a(this.f2504a, ((k0) obj).f2504a);
        }
        return false;
    }

    public androidx.core.graphics.b f(int i10) {
        return this.f2504a.g(i10);
    }

    @Deprecated
    public androidx.core.graphics.b g() {
        return this.f2504a.h();
    }

    @Deprecated
    public androidx.core.graphics.b h() {
        return this.f2504a.i();
    }

    public int hashCode() {
        l lVar = this.f2504a;
        if (lVar == null) {
            return 0;
        }
        return lVar.hashCode();
    }

    @Deprecated
    public int i() {
        return this.f2504a.k().f2199d;
    }

    @Deprecated
    public int j() {
        return this.f2504a.k().f2196a;
    }

    @Deprecated
    public int k() {
        return this.f2504a.k().f2198c;
    }

    @Deprecated
    public int l() {
        return this.f2504a.k().f2197b;
    }

    public k0 m(int i10, int i11, int i12, int i13) {
        return this.f2504a.m(i10, i11, i12, i13);
    }

    public boolean o() {
        return this.f2504a.n();
    }

    @Deprecated
    public k0 p(int i10, int i11, int i12, int i13) {
        return new b(this).c(androidx.core.graphics.b.b(i10, i11, i12, i13)).a();
    }

    void q(androidx.core.graphics.b[] bVarArr) {
        this.f2504a.p(bVarArr);
    }

    void r(androidx.core.graphics.b bVar) {
        this.f2504a.q(bVar);
    }

    void s(k0 k0Var) {
        this.f2504a.r(k0Var);
    }

    void t(androidx.core.graphics.b bVar) {
        this.f2504a.s(bVar);
    }

    public WindowInsets u() {
        l lVar = this.f2504a;
        if (lVar instanceof g) {
            return ((g) lVar).f2524c;
        }
        return null;
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    private static class c extends f {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private static Field f2510e = null;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static boolean f2511f = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private static Constructor<WindowInsets> f2512g = null;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static boolean f2513h = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private WindowInsets f2514c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.core.graphics.b f2515d;

        c() {
            this.f2514c = h();
        }

        private static WindowInsets h() {
            if (!f2511f) {
                try {
                    f2510e = WindowInsets.class.getDeclaredField("CONSUMED");
                } catch (ReflectiveOperationException e10) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets.CONSUMED field", e10);
                }
                f2511f = true;
            }
            Field field = f2510e;
            if (field != null) {
                try {
                    WindowInsets windowInsets = (WindowInsets) field.get(null);
                    if (windowInsets != null) {
                        return new WindowInsets(windowInsets);
                    }
                } catch (ReflectiveOperationException e11) {
                    Log.i("WindowInsetsCompat", "Could not get value from WindowInsets.CONSUMED field", e11);
                }
            }
            if (!f2513h) {
                try {
                    f2512g = WindowInsets.class.getConstructor(Rect.class);
                } catch (ReflectiveOperationException e12) {
                    Log.i("WindowInsetsCompat", "Could not retrieve WindowInsets(Rect) constructor", e12);
                }
                f2513h = true;
            }
            Constructor<WindowInsets> constructor = f2512g;
            if (constructor != null) {
                try {
                    return constructor.newInstance(new Rect());
                } catch (ReflectiveOperationException e13) {
                    Log.i("WindowInsetsCompat", "Could not invoke WindowInsets(Rect) constructor", e13);
                }
            }
            return null;
        }

        @Override // androidx.core.view.k0.f
        k0 b() {
            a();
            k0 k0VarV = k0.v(this.f2514c);
            k0VarV.q(this.f2518b);
            k0VarV.t(this.f2515d);
            return k0VarV;
        }

        @Override // androidx.core.view.k0.f
        void d(androidx.core.graphics.b bVar) {
            this.f2515d = bVar;
        }

        @Override // androidx.core.view.k0.f
        void f(androidx.core.graphics.b bVar) {
            WindowInsets windowInsets = this.f2514c;
            if (windowInsets != null) {
                this.f2514c = windowInsets.replaceSystemWindowInsets(bVar.f2196a, bVar.f2197b, bVar.f2198c, bVar.f2199d);
            }
        }

        c(k0 k0Var) {
            super(k0Var);
            this.f2514c = k0Var.u();
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    private static class d extends f {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final WindowInsets.Builder f2516c;

        d() {
            this.f2516c = new WindowInsets.Builder();
        }

        @Override // androidx.core.view.k0.f
        k0 b() {
            a();
            k0 k0VarV = k0.v(this.f2516c.build());
            k0VarV.q(this.f2518b);
            return k0VarV;
        }

        @Override // androidx.core.view.k0.f
        void c(androidx.core.graphics.b bVar) {
            this.f2516c.setMandatorySystemGestureInsets(bVar.e());
        }

        @Override // androidx.core.view.k0.f
        void d(androidx.core.graphics.b bVar) {
            this.f2516c.setStableInsets(bVar.e());
        }

        @Override // androidx.core.view.k0.f
        void e(androidx.core.graphics.b bVar) {
            this.f2516c.setSystemGestureInsets(bVar.e());
        }

        @Override // androidx.core.view.k0.f
        void f(androidx.core.graphics.b bVar) {
            this.f2516c.setSystemWindowInsets(bVar.e());
        }

        @Override // androidx.core.view.k0.f
        void g(androidx.core.graphics.b bVar) {
            this.f2516c.setTappableElementInsets(bVar.e());
        }

        d(k0 k0Var) {
            WindowInsets.Builder builder;
            super(k0Var);
            WindowInsets windowInsetsU = k0Var.u();
            if (windowInsetsU != null) {
                builder = new WindowInsets.Builder(windowInsetsU);
            } else {
                builder = new WindowInsets.Builder();
            }
            this.f2516c = builder;
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    private static class h extends g {

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private androidx.core.graphics.b f2529m;

        h(k0 k0Var, WindowInsets windowInsets) {
            super(k0Var, windowInsets);
            this.f2529m = null;
        }

        @Override // androidx.core.view.k0.l
        k0 b() {
            return k0.v(this.f2524c.consumeStableInsets());
        }

        @Override // androidx.core.view.k0.l
        k0 c() {
            return k0.v(this.f2524c.consumeSystemWindowInsets());
        }

        @Override // androidx.core.view.k0.l
        final androidx.core.graphics.b i() {
            if (this.f2529m == null) {
                this.f2529m = androidx.core.graphics.b.b(this.f2524c.getStableInsetLeft(), this.f2524c.getStableInsetTop(), this.f2524c.getStableInsetRight(), this.f2524c.getStableInsetBottom());
            }
            return this.f2529m;
        }

        @Override // androidx.core.view.k0.l
        boolean n() {
            return this.f2524c.isConsumed();
        }

        @Override // androidx.core.view.k0.l
        public void s(androidx.core.graphics.b bVar) {
            this.f2529m = bVar;
        }

        h(k0 k0Var, h hVar) {
            super(k0Var, hVar);
            this.f2529m = null;
            this.f2529m = hVar.f2529m;
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    private static class g extends l {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private static boolean f2519h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private static Method f2520i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private static Class<?> f2521j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private static Field f2522k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private static Field f2523l;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final WindowInsets f2524c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private androidx.core.graphics.b[] f2525d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private androidx.core.graphics.b f2526e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private k0 f2527f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        androidx.core.graphics.b f2528g;

        g(k0 k0Var, WindowInsets windowInsets) {
            super(k0Var);
            this.f2526e = null;
            this.f2524c = windowInsets;
        }

        @SuppressLint({"WrongConstant"})
        private androidx.core.graphics.b t(int i10, boolean z10) {
            androidx.core.graphics.b bVarA = androidx.core.graphics.b.f2195e;
            for (int i11 = 1; i11 <= 256; i11 <<= 1) {
                if ((i10 & i11) != 0) {
                    bVarA = androidx.core.graphics.b.a(bVarA, u(i11, z10));
                }
            }
            return bVarA;
        }

        private androidx.core.graphics.b v() {
            k0 k0Var = this.f2527f;
            return k0Var != null ? k0Var.h() : androidx.core.graphics.b.f2195e;
        }

        private androidx.core.graphics.b w(View view) {
            if (Build.VERSION.SDK_INT >= 30) {
                throw new UnsupportedOperationException("getVisibleInsets() should not be called on API >= 30. Use WindowInsets.isVisible() instead.");
            }
            if (!f2519h) {
                x();
            }
            Method method = f2520i;
            if (method != null && f2521j != null && f2522k != null) {
                try {
                    Object objInvoke = method.invoke(view, new Object[0]);
                    if (objInvoke == null) {
                        Log.w("WindowInsetsCompat", "Failed to get visible insets. getViewRootImpl() returned null from the provided view. This means that the view is either not attached or the method has been overridden", new NullPointerException());
                        return null;
                    }
                    Rect rect = (Rect) f2522k.get(f2523l.get(objInvoke));
                    if (rect != null) {
                        return androidx.core.graphics.b.c(rect);
                    }
                    return null;
                } catch (ReflectiveOperationException e10) {
                    Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e10.getMessage(), e10);
                }
            }
            return null;
        }

        @SuppressLint({"PrivateApi"})
        private static void x() {
            try {
                f2520i = View.class.getDeclaredMethod("getViewRootImpl", new Class[0]);
                Class<?> cls = Class.forName("android.view.View$AttachInfo");
                f2521j = cls;
                f2522k = cls.getDeclaredField("mVisibleInsets");
                f2523l = Class.forName("android.view.ViewRootImpl").getDeclaredField("mAttachInfo");
                f2522k.setAccessible(true);
                f2523l.setAccessible(true);
            } catch (ReflectiveOperationException e10) {
                Log.e("WindowInsetsCompat", "Failed to get visible insets. (Reflection error). " + e10.getMessage(), e10);
            }
            f2519h = true;
        }

        @Override // androidx.core.view.k0.l
        void d(View view) {
            androidx.core.graphics.b bVarW = w(view);
            if (bVarW == null) {
                bVarW = androidx.core.graphics.b.f2195e;
            }
            q(bVarW);
        }

        @Override // androidx.core.view.k0.l
        void e(k0 k0Var) {
            k0Var.s(this.f2527f);
            k0Var.r(this.f2528g);
        }

        @Override // androidx.core.view.k0.l
        public boolean equals(Object obj) {
            if (super.equals(obj)) {
                return Objects.equals(this.f2528g, ((g) obj).f2528g);
            }
            return false;
        }

        @Override // androidx.core.view.k0.l
        public androidx.core.graphics.b g(int i10) {
            return t(i10, false);
        }

        @Override // androidx.core.view.k0.l
        final androidx.core.graphics.b k() {
            if (this.f2526e == null) {
                this.f2526e = androidx.core.graphics.b.b(this.f2524c.getSystemWindowInsetLeft(), this.f2524c.getSystemWindowInsetTop(), this.f2524c.getSystemWindowInsetRight(), this.f2524c.getSystemWindowInsetBottom());
            }
            return this.f2526e;
        }

        @Override // androidx.core.view.k0.l
        k0 m(int i10, int i11, int i12, int i13) {
            b bVar = new b(k0.v(this.f2524c));
            bVar.c(k0.n(k(), i10, i11, i12, i13));
            bVar.b(k0.n(i(), i10, i11, i12, i13));
            return bVar.a();
        }

        @Override // androidx.core.view.k0.l
        boolean o() {
            return this.f2524c.isRound();
        }

        @Override // androidx.core.view.k0.l
        public void p(androidx.core.graphics.b[] bVarArr) {
            this.f2525d = bVarArr;
        }

        @Override // androidx.core.view.k0.l
        void q(androidx.core.graphics.b bVar) {
            this.f2528g = bVar;
        }

        @Override // androidx.core.view.k0.l
        void r(k0 k0Var) {
            this.f2527f = k0Var;
        }

        protected androidx.core.graphics.b u(int i10, boolean z10) {
            androidx.core.graphics.b bVarH;
            int i11;
            if (i10 == 1) {
                return z10 ? androidx.core.graphics.b.b(0, Math.max(v().f2197b, k().f2197b), 0, 0) : androidx.core.graphics.b.b(0, k().f2197b, 0, 0);
            }
            if (i10 == 2) {
                if (z10) {
                    androidx.core.graphics.b bVarV = v();
                    androidx.core.graphics.b bVarI = i();
                    return androidx.core.graphics.b.b(Math.max(bVarV.f2196a, bVarI.f2196a), 0, Math.max(bVarV.f2198c, bVarI.f2198c), Math.max(bVarV.f2199d, bVarI.f2199d));
                }
                androidx.core.graphics.b bVarK = k();
                k0 k0Var = this.f2527f;
                bVarH = k0Var != null ? k0Var.h() : null;
                int iMin = bVarK.f2199d;
                if (bVarH != null) {
                    iMin = Math.min(iMin, bVarH.f2199d);
                }
                return androidx.core.graphics.b.b(bVarK.f2196a, 0, bVarK.f2198c, iMin);
            }
            if (i10 != 8) {
                if (i10 == 16) {
                    return j();
                }
                if (i10 == 32) {
                    return h();
                }
                if (i10 == 64) {
                    return l();
                }
                if (i10 != 128) {
                    return androidx.core.graphics.b.f2195e;
                }
                k0 k0Var2 = this.f2527f;
                androidx.core.view.d dVarE = k0Var2 != null ? k0Var2.e() : f();
                return dVarE != null ? androidx.core.graphics.b.b(dVarE.b(), dVarE.d(), dVarE.c(), dVarE.a()) : androidx.core.graphics.b.f2195e;
            }
            androidx.core.graphics.b[] bVarArr = this.f2525d;
            bVarH = bVarArr != null ? bVarArr[m.a(8)] : null;
            if (bVarH != null) {
                return bVarH;
            }
            androidx.core.graphics.b bVarK2 = k();
            androidx.core.graphics.b bVarV2 = v();
            int i12 = bVarK2.f2199d;
            if (i12 > bVarV2.f2199d) {
                return androidx.core.graphics.b.b(0, 0, 0, i12);
            }
            androidx.core.graphics.b bVar = this.f2528g;
            return (bVar == null || bVar.equals(androidx.core.graphics.b.f2195e) || (i11 = this.f2528g.f2199d) <= bVarV2.f2199d) ? androidx.core.graphics.b.f2195e : androidx.core.graphics.b.b(0, 0, 0, i11);
        }

        g(k0 k0Var, g gVar) {
            this(k0Var, new WindowInsets(gVar.f2524c));
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    private static class j extends i {

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private androidx.core.graphics.b f2530n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private androidx.core.graphics.b f2531o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private androidx.core.graphics.b f2532p;

        j(k0 k0Var, WindowInsets windowInsets) {
            super(k0Var, windowInsets);
            this.f2530n = null;
            this.f2531o = null;
            this.f2532p = null;
        }

        @Override // androidx.core.view.k0.l
        androidx.core.graphics.b h() {
            if (this.f2531o == null) {
                this.f2531o = androidx.core.graphics.b.d(this.f2524c.getMandatorySystemGestureInsets());
            }
            return this.f2531o;
        }

        @Override // androidx.core.view.k0.l
        androidx.core.graphics.b j() {
            if (this.f2530n == null) {
                this.f2530n = androidx.core.graphics.b.d(this.f2524c.getSystemGestureInsets());
            }
            return this.f2530n;
        }

        @Override // androidx.core.view.k0.l
        androidx.core.graphics.b l() {
            if (this.f2532p == null) {
                this.f2532p = androidx.core.graphics.b.d(this.f2524c.getTappableElementInsets());
            }
            return this.f2532p;
        }

        @Override // androidx.core.view.k0.g, androidx.core.view.k0.l
        k0 m(int i10, int i11, int i12, int i13) {
            return k0.v(this.f2524c.inset(i10, i11, i12, i13));
        }

        @Override // androidx.core.view.k0.h, androidx.core.view.k0.l
        public void s(androidx.core.graphics.b bVar) {
        }

        j(k0 k0Var, j jVar) {
            super(k0Var, jVar);
            this.f2530n = null;
            this.f2531o = null;
            this.f2532p = null;
        }
    }

    /* JADX INFO: compiled from: WindowInsetsCompat.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final f f2509a;

        public b() {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30) {
                this.f2509a = new e();
                return;
            }
            if (i10 >= 29) {
                this.f2509a = new d();
            } else if (i10 >= 20) {
                this.f2509a = new c();
            } else {
                this.f2509a = new f();
            }
        }

        public k0 a() {
            return this.f2509a.b();
        }

        @Deprecated
        public b b(androidx.core.graphics.b bVar) {
            this.f2509a.d(bVar);
            return this;
        }

        @Deprecated
        public b c(androidx.core.graphics.b bVar) {
            this.f2509a.f(bVar);
            return this;
        }

        public b(k0 k0Var) {
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30) {
                this.f2509a = new e(k0Var);
                return;
            }
            if (i10 >= 29) {
                this.f2509a = new d(k0Var);
            } else if (i10 >= 20) {
                this.f2509a = new c(k0Var);
            } else {
                this.f2509a = new f(k0Var);
            }
        }
    }

    public k0(k0 k0Var) {
        if (k0Var != null) {
            l lVar = k0Var.f2504a;
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 30 && (lVar instanceof k)) {
                this.f2504a = new k(this, (k) lVar);
            } else if (i10 >= 29 && (lVar instanceof j)) {
                this.f2504a = new j(this, (j) lVar);
            } else if (i10 >= 28 && (lVar instanceof i)) {
                this.f2504a = new i(this, (i) lVar);
            } else if (i10 >= 21 && (lVar instanceof h)) {
                this.f2504a = new h(this, (h) lVar);
            } else if (i10 >= 20 && (lVar instanceof g)) {
                this.f2504a = new g(this, (g) lVar);
            } else {
                this.f2504a = new l(this);
            }
            lVar.e(this);
            return;
        }
        this.f2504a = new l(this);
    }
}
