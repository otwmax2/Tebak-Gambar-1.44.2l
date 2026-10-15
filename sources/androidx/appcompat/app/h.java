package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.app.UiModeManager;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.os.PowerManager;
import android.text.TextUtils;
import android.util.AndroidRuntimeException;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.view.ActionMode;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.KeyboardShortcutGroup;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.b;
import androidx.appcompat.view.f;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ContentFrameLayout;
import androidx.appcompat.widget.ViewStubCompat;
import androidx.appcompat.widget.d0;
import androidx.appcompat.widget.e1;
import androidx.appcompat.widget.f1;
import androidx.appcompat.widget.h0;
import androidx.appcompat.widget.w0;
import androidx.core.content.res.h;
import androidx.core.view.a0;
import androidx.core.view.f;
import androidx.core.view.g0;
import androidx.core.view.i0;
import androidx.core.view.k0;
import androidx.lifecycle.j;
import com.facebook.internal.Utility;
import java.lang.Thread;
import java.util.List;
import java.util.Locale;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: AppCompatDelegateImpl.java */
/* JADX INFO: loaded from: classes.dex */
class h extends androidx.appcompat.app.g implements g.a, LayoutInflater.Factory2 {
    private static final boolean A0;
    private static final boolean B0;
    private static boolean C0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private static final o.g<String, Integer> f359x0 = new o.g<>();

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private static final boolean f360y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    private static final int[] f361z0;
    final Context A;
    Window B;
    private o C;
    final androidx.appcompat.app.d D;
    androidx.appcompat.app.a E;
    MenuInflater F;
    private CharSequence G;
    private d0 H;
    private i I;
    private v J;
    androidx.appcompat.view.b K;
    ActionBarContextView L;
    PopupWindow M;
    Runnable N;
    g0 O;
    private boolean P;
    private boolean Q;
    ViewGroup R;
    private TextView S;
    private View T;
    private boolean U;
    private boolean V;
    boolean W;
    boolean X;
    boolean Y;
    boolean Z;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    boolean f362a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private boolean f363b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private u[] f364c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private u f365d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private boolean f366e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private boolean f367f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private boolean f368g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    boolean f369h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private Configuration f370i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private int f371j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private int f372k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private int f373l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private boolean f374m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private q f375n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private q f376o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    boolean f377p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    int f378q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private final Runnable f379r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private boolean f380s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private Rect f381t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private Rect f382u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private androidx.appcompat.app.l f383v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private androidx.appcompat.app.p f384w0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    final Object f385z;

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    class a implements Thread.UncaughtExceptionHandler {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Thread.UncaughtExceptionHandler f386a;

        a(Thread.UncaughtExceptionHandler uncaughtExceptionHandler) {
            this.f386a = uncaughtExceptionHandler;
        }

        private boolean a(Throwable th) {
            String message;
            if (!(th instanceof Resources.NotFoundException) || (message = th.getMessage()) == null) {
                return false;
            }
            return message.contains("drawable") || message.contains("Drawable");
        }

        @Override // java.lang.Thread.UncaughtExceptionHandler
        public void uncaughtException(Thread thread, Throwable th) {
            if (!a(th)) {
                this.f386a.uncaughtException(thread, th);
                return;
            }
            Resources.NotFoundException notFoundException = new Resources.NotFoundException(th.getMessage() + ". If the resource you are trying to use is a vector resource, you may be referencing it in an unsupported way. See AppCompatDelegate.setCompatVectorFromResourcesEnabled() for more info.");
            notFoundException.initCause(th.getCause());
            notFoundException.setStackTrace(th.getStackTrace());
            this.f386a.uncaughtException(thread, notFoundException);
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = h.this;
            if ((hVar.f378q0 & 1) != 0) {
                hVar.l0(0);
            }
            h hVar2 = h.this;
            if ((hVar2.f378q0 & 4096) != 0) {
                hVar2.l0(108);
            }
            h hVar3 = h.this;
            hVar3.f377p0 = false;
            hVar3.f378q0 = 0;
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    class c implements androidx.core.view.u {
        c() {
        }

        @Override // androidx.core.view.u
        public k0 a(View view, k0 k0Var) {
            int iL = k0Var.l();
            int iG1 = h.this.g1(k0Var, null);
            if (iL != iG1) {
                k0Var = k0Var.p(k0Var.j(), iG1, k0Var.k(), k0Var.i());
            }
            return a0.c0(view, k0Var);
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    class d implements h0.a {
        d() {
        }

        @Override // androidx.appcompat.widget.h0.a
        public void a(Rect rect) {
            rect.top = h.this.g1(null, rect);
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    class e implements ContentFrameLayout.a {
        e() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void a() {
        }

        @Override // androidx.appcompat.widget.ContentFrameLayout.a
        public void onDetachedFromWindow() {
            h.this.j0();
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    class f implements Runnable {

        /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
        class a extends i0 {
            a() {
            }

            @Override // androidx.core.view.h0
            public void b(View view) {
                h.this.L.setAlpha(1.0f);
                h.this.O.h(null);
                h.this.O = null;
            }

            @Override // androidx.core.view.i0, androidx.core.view.h0
            public void c(View view) {
                h.this.L.setVisibility(0);
            }
        }

        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            h hVar = h.this;
            hVar.M.showAtLocation(hVar.L, 55, 0, 0);
            h.this.m0();
            if (!h.this.X0()) {
                h.this.L.setAlpha(1.0f);
                h.this.L.setVisibility(0);
            } else {
                h.this.L.setAlpha(0.0f);
                h hVar2 = h.this;
                hVar2.O = a0.e(hVar2.L).b(1.0f);
                h.this.O.h(new a());
            }
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    class g extends i0 {
        g() {
        }

        @Override // androidx.core.view.h0
        public void b(View view) {
            h.this.L.setAlpha(1.0f);
            h.this.O.h(null);
            h.this.O = null;
        }

        @Override // androidx.core.view.i0, androidx.core.view.h0
        public void c(View view) {
            h.this.L.setVisibility(0);
            if (h.this.L.getParent() instanceof View) {
                a0.n0((View) h.this.L.getParent());
            }
        }
    }

    /* JADX INFO: renamed from: androidx.appcompat.app.h$h, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    interface InterfaceC0012h {
        boolean a(int i10);

        View onCreatePanelView(int i10);
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    private final class i implements m.a {
        i() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void b(androidx.appcompat.view.menu.g gVar, boolean z10) {
            h.this.c0(gVar);
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean c(androidx.appcompat.view.menu.g gVar) {
            Window.Callback callbackY0 = h.this.y0();
            if (callbackY0 == null) {
                return true;
            }
            callbackY0.onMenuOpened(108, gVar);
            return true;
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    class j implements b.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private b.a f395a;

        /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
        class a extends i0 {
            a() {
            }

            @Override // androidx.core.view.h0
            public void b(View view) {
                h.this.L.setVisibility(8);
                h hVar = h.this;
                PopupWindow popupWindow = hVar.M;
                if (popupWindow != null) {
                    popupWindow.dismiss();
                } else if (hVar.L.getParent() instanceof View) {
                    a0.n0((View) h.this.L.getParent());
                }
                h.this.L.k();
                h.this.O.h(null);
                h hVar2 = h.this;
                hVar2.O = null;
                a0.n0(hVar2.R);
            }
        }

        public j(b.a aVar) {
            this.f395a = aVar;
        }

        @Override // androidx.appcompat.view.b.a
        public void a(androidx.appcompat.view.b bVar) {
            this.f395a.a(bVar);
            h hVar = h.this;
            if (hVar.M != null) {
                hVar.B.getDecorView().removeCallbacks(h.this.N);
            }
            h hVar2 = h.this;
            if (hVar2.L != null) {
                hVar2.m0();
                h hVar3 = h.this;
                hVar3.O = a0.e(hVar3.L).b(0.0f);
                h.this.O.h(new a());
            }
            h hVar4 = h.this;
            androidx.appcompat.app.d dVar = hVar4.D;
            if (dVar != null) {
                dVar.q(hVar4.K);
            }
            h hVar5 = h.this;
            hVar5.K = null;
            a0.n0(hVar5.R);
        }

        @Override // androidx.appcompat.view.b.a
        public boolean b(androidx.appcompat.view.b bVar, Menu menu) {
            return this.f395a.b(bVar, menu);
        }

        @Override // androidx.appcompat.view.b.a
        public boolean c(androidx.appcompat.view.b bVar, Menu menu) {
            a0.n0(h.this.R);
            return this.f395a.c(bVar, menu);
        }

        @Override // androidx.appcompat.view.b.a
        public boolean d(androidx.appcompat.view.b bVar, MenuItem menuItem) {
            return this.f395a.d(bVar, menuItem);
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    static class k {
        static Context a(Context context, Configuration configuration) {
            return context.createConfigurationContext(configuration);
        }

        static void b(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i10 = configuration.densityDpi;
            int i11 = configuration2.densityDpi;
            if (i10 != i11) {
                configuration3.densityDpi = i11;
            }
        }

        static void c(Configuration configuration, Locale locale) {
            configuration.setLayoutDirection(locale);
        }

        static void d(Configuration configuration, Locale locale) {
            configuration.setLocale(locale);
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    static class l {
        static boolean a(PowerManager powerManager) {
            return powerManager.isPowerSaveMode();
        }

        static String b(Locale locale) {
            return locale.toLanguageTag();
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    static class m {
        static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            LocaleList locales = configuration.getLocales();
            LocaleList locales2 = configuration2.getLocales();
            if (locales.equals(locales2)) {
                return;
            }
            configuration3.setLocales(locales2);
            configuration3.locale = configuration2.locale;
        }

        static androidx.core.os.h b(Configuration configuration) {
            return androidx.core.os.h.c(configuration.getLocales().toLanguageTags());
        }

        public static void c(androidx.core.os.h hVar) {
            LocaleList.setDefault(LocaleList.forLanguageTags(hVar.h()));
        }

        static void d(Configuration configuration, androidx.core.os.h hVar) {
            configuration.setLocales(LocaleList.forLanguageTags(hVar.h()));
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    static class n {
        static void a(Configuration configuration, Configuration configuration2, Configuration configuration3) {
            int i10 = configuration.colorMode & 3;
            int i11 = configuration2.colorMode;
            if (i10 != (i11 & 3)) {
                configuration3.colorMode |= i11 & 3;
            }
            int i12 = configuration.colorMode & 12;
            int i13 = configuration2.colorMode;
            if (i12 != (i13 & 12)) {
                configuration3.colorMode |= i13 & 12;
            }
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    private class p extends q {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final PowerManager f403c;

        p(Context context) {
            super();
            this.f403c = (PowerManager) context.getApplicationContext().getSystemService("power");
        }

        @Override // androidx.appcompat.app.h.q
        IntentFilter b() {
            if (Build.VERSION.SDK_INT < 21) {
                return null;
            }
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.os.action.POWER_SAVE_MODE_CHANGED");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.h.q
        public int c() {
            return (Build.VERSION.SDK_INT < 21 || !l.a(this.f403c)) ? 1 : 2;
        }

        @Override // androidx.appcompat.app.h.q
        public void d() {
            h.this.W();
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    abstract class q {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private BroadcastReceiver f405a;

        /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
        class a extends BroadcastReceiver {
            a() {
            }

            @Override // android.content.BroadcastReceiver
            public void onReceive(Context context, Intent intent) {
                q.this.d();
            }
        }

        q() {
        }

        void a() {
            BroadcastReceiver broadcastReceiver = this.f405a;
            if (broadcastReceiver != null) {
                try {
                    h.this.A.unregisterReceiver(broadcastReceiver);
                } catch (IllegalArgumentException unused) {
                }
                this.f405a = null;
            }
        }

        abstract IntentFilter b();

        abstract int c();

        abstract void d();

        void e() {
            a();
            IntentFilter intentFilterB = b();
            if (intentFilterB == null || intentFilterB.countActions() == 0) {
                return;
            }
            if (this.f405a == null) {
                this.f405a = new a();
            }
            h.this.A.registerReceiver(this.f405a, intentFilterB);
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    private class r extends q {

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final androidx.appcompat.app.t f408c;

        r(androidx.appcompat.app.t tVar) {
            super();
            this.f408c = tVar;
        }

        @Override // androidx.appcompat.app.h.q
        IntentFilter b() {
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.TIME_SET");
            intentFilter.addAction("android.intent.action.TIMEZONE_CHANGED");
            intentFilter.addAction("android.intent.action.TIME_TICK");
            return intentFilter;
        }

        @Override // androidx.appcompat.app.h.q
        public int c() {
            return this.f408c.d() ? 2 : 1;
        }

        @Override // androidx.appcompat.app.h.q
        public void d() {
            h.this.W();
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    private static class s {
        static void a(ContextThemeWrapper contextThemeWrapper, Configuration configuration) {
            contextThemeWrapper.applyOverrideConfiguration(configuration);
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    private class t extends ContentFrameLayout {
        public t(Context context) {
            super(context);
        }

        private boolean c(int i10, int i11) {
            return i10 < -5 || i11 < -5 || i10 > getWidth() + 5 || i11 > getHeight() + 5;
        }

        @Override // android.view.ViewGroup, android.view.View
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return h.this.k0(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // android.view.ViewGroup
        public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
            if (motionEvent.getAction() != 0 || !c((int) motionEvent.getX(), (int) motionEvent.getY())) {
                return super.onInterceptTouchEvent(motionEvent);
            }
            h.this.e0(0);
            return true;
        }

        @Override // android.view.View
        public void setBackgroundResource(int i10) {
            setBackgroundDrawable(g.a.b(getContext(), i10));
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    protected static final class u {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f411a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f412b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f413c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f414d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f415e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f416f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        ViewGroup f417g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        View f418h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        View f419i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        androidx.appcompat.view.menu.g f420j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        androidx.appcompat.view.menu.e f421k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        Context f422l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        boolean f423m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        boolean f424n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        boolean f425o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public boolean f426p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        boolean f427q = false;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        boolean f428r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        Bundle f429s;

        u(int i10) {
            this.f411a = i10;
        }

        androidx.appcompat.view.menu.n a(m.a aVar) {
            if (this.f420j == null) {
                return null;
            }
            if (this.f421k == null) {
                androidx.appcompat.view.menu.e eVar = new androidx.appcompat.view.menu.e(this.f422l, f.g.f29088j);
                this.f421k = eVar;
                eVar.g(aVar);
                this.f420j.b(this.f421k);
            }
            return this.f421k.h(this.f417g);
        }

        public boolean b() {
            if (this.f418h == null) {
                return false;
            }
            return this.f419i != null || this.f421k.a().getCount() > 0;
        }

        void c(androidx.appcompat.view.menu.g gVar) {
            androidx.appcompat.view.menu.e eVar;
            androidx.appcompat.view.menu.g gVar2 = this.f420j;
            if (gVar == gVar2) {
                return;
            }
            if (gVar2 != null) {
                gVar2.O(this.f421k);
            }
            this.f420j = gVar;
            if (gVar == null || (eVar = this.f421k) == null) {
                return;
            }
            gVar.b(eVar);
        }

        void d(Context context) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme themeNewTheme = context.getResources().newTheme();
            themeNewTheme.setTo(context.getTheme());
            themeNewTheme.resolveAttribute(f.a.f28977a, typedValue, true);
            int i10 = typedValue.resourceId;
            if (i10 != 0) {
                themeNewTheme.applyStyle(i10, true);
            }
            themeNewTheme.resolveAttribute(f.a.F, typedValue, true);
            int i11 = typedValue.resourceId;
            if (i11 != 0) {
                themeNewTheme.applyStyle(i11, true);
            } else {
                themeNewTheme.applyStyle(f.i.f29112b, true);
            }
            androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
            dVar.getTheme().setTo(themeNewTheme);
            this.f422l = dVar;
            TypedArray typedArrayObtainStyledAttributes = dVar.obtainStyledAttributes(f.j.f29236y0);
            this.f412b = typedArrayObtainStyledAttributes.getResourceId(f.j.B0, 0);
            this.f416f = typedArrayObtainStyledAttributes.getResourceId(f.j.A0, 0);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    private final class v implements m.a {
        v() {
        }

        @Override // androidx.appcompat.view.menu.m.a
        public void b(androidx.appcompat.view.menu.g gVar, boolean z10) {
            androidx.appcompat.view.menu.g gVarD = gVar.D();
            boolean z11 = gVarD != gVar;
            h hVar = h.this;
            if (z11) {
                gVar = gVarD;
            }
            u uVarP0 = hVar.p0(gVar);
            if (uVarP0 != null) {
                if (!z11) {
                    h.this.f0(uVarP0, z10);
                } else {
                    h.this.b0(uVarP0.f411a, uVarP0, gVarD);
                    h.this.f0(uVarP0, true);
                }
            }
        }

        @Override // androidx.appcompat.view.menu.m.a
        public boolean c(androidx.appcompat.view.menu.g gVar) {
            Window.Callback callbackY0;
            if (gVar != gVar.D()) {
                return true;
            }
            h hVar = h.this;
            if (!hVar.W || (callbackY0 = hVar.y0()) == null || h.this.f369h0) {
                return true;
            }
            callbackY0.onMenuOpened(108, gVar);
            return true;
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        boolean z10 = i10 < 21;
        f360y0 = z10;
        f361z0 = new int[]{R.attr.windowBackground};
        A0 = !"robolectric".equals(Build.FINGERPRINT);
        B0 = i10 >= 17;
        if (!z10 || C0) {
            return;
        }
        Thread.setDefaultUncaughtExceptionHandler(new a(Thread.getDefaultUncaughtExceptionHandler()));
        C0 = true;
    }

    h(Activity activity, androidx.appcompat.app.d dVar) {
        this(activity, null, dVar, activity);
    }

    private boolean A0(u uVar) {
        View view = uVar.f419i;
        if (view != null) {
            uVar.f418h = view;
            return true;
        }
        if (uVar.f420j == null) {
            return false;
        }
        if (this.J == null) {
            this.J = new v();
        }
        View view2 = (View) uVar.a(this.J);
        uVar.f418h = view2;
        return view2 != null;
    }

    private boolean B0(u uVar) {
        uVar.d(r0());
        uVar.f417g = new t(uVar.f422l);
        uVar.f413c = 81;
        return true;
    }

    private boolean C0(u uVar) {
        Context context = this.A;
        int i10 = uVar.f411a;
        if ((i10 == 0 || i10 == 108) && this.H != null) {
            TypedValue typedValue = new TypedValue();
            Resources.Theme theme = context.getTheme();
            theme.resolveAttribute(f.a.f28982f, typedValue, true);
            Resources.Theme themeNewTheme = null;
            if (typedValue.resourceId != 0) {
                themeNewTheme = context.getResources().newTheme();
                themeNewTheme.setTo(theme);
                themeNewTheme.applyStyle(typedValue.resourceId, true);
                themeNewTheme.resolveAttribute(f.a.f28983g, typedValue, true);
            } else {
                theme.resolveAttribute(f.a.f28983g, typedValue, true);
            }
            if (typedValue.resourceId != 0) {
                if (themeNewTheme == null) {
                    themeNewTheme = context.getResources().newTheme();
                    themeNewTheme.setTo(theme);
                }
                themeNewTheme.applyStyle(typedValue.resourceId, true);
            }
            if (themeNewTheme != null) {
                androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, 0);
                dVar.getTheme().setTo(themeNewTheme);
                context = dVar;
            }
        }
        androidx.appcompat.view.menu.g gVar = new androidx.appcompat.view.menu.g(context);
        gVar.R(this);
        uVar.c(gVar);
        return true;
    }

    private void D0(int i10) {
        this.f378q0 = (1 << i10) | this.f378q0;
        if (this.f377p0) {
            return;
        }
        a0.i0(this.B.getDecorView(), this.f379r0);
        this.f377p0 = true;
    }

    private boolean I0(int i10, KeyEvent keyEvent) {
        if (keyEvent.getRepeatCount() != 0) {
            return false;
        }
        u uVarW0 = w0(i10, true);
        if (uVarW0.f425o) {
            return false;
        }
        return S0(uVarW0, keyEvent);
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean L0(int r5, android.view.KeyEvent r6) {
        /*
            r4 = this;
            androidx.appcompat.view.b r0 = r4.K
            r1 = 0
            if (r0 == 0) goto L6
            return r1
        L6:
            r0 = 1
            androidx.appcompat.app.h$u r2 = r4.w0(r5, r0)
            if (r5 != 0) goto L43
            androidx.appcompat.widget.d0 r5 = r4.H
            if (r5 == 0) goto L43
            boolean r5 = r5.d()
            if (r5 == 0) goto L43
            android.content.Context r5 = r4.A
            android.view.ViewConfiguration r5 = android.view.ViewConfiguration.get(r5)
            boolean r5 = r5.hasPermanentMenuKey()
            if (r5 != 0) goto L43
            androidx.appcompat.widget.d0 r5 = r4.H
            boolean r5 = r5.b()
            if (r5 != 0) goto L3c
            boolean r5 = r4.f369h0
            if (r5 != 0) goto L62
            boolean r5 = r4.S0(r2, r6)
            if (r5 == 0) goto L62
            androidx.appcompat.widget.d0 r5 = r4.H
            boolean r0 = r5.g()
            goto L68
        L3c:
            androidx.appcompat.widget.d0 r5 = r4.H
            boolean r0 = r5.f()
            goto L68
        L43:
            boolean r5 = r2.f425o
            if (r5 != 0) goto L64
            boolean r3 = r2.f424n
            if (r3 == 0) goto L4c
            goto L64
        L4c:
            boolean r5 = r2.f423m
            if (r5 == 0) goto L62
            boolean r5 = r2.f428r
            if (r5 == 0) goto L5b
            r2.f423m = r1
            boolean r5 = r4.S0(r2, r6)
            goto L5c
        L5b:
            r5 = 1
        L5c:
            if (r5 == 0) goto L62
            r4.P0(r2, r6)
            goto L68
        L62:
            r0 = 0
            goto L68
        L64:
            r4.f0(r2, r0)
            r0 = r5
        L68:
            if (r0 == 0) goto L85
            android.content.Context r5 = r4.A
            android.content.Context r5 = r5.getApplicationContext()
            java.lang.String r6 = "audio"
            java.lang.Object r5 = r5.getSystemService(r6)
            android.media.AudioManager r5 = (android.media.AudioManager) r5
            if (r5 == 0) goto L7e
            r5.playSoundEffect(r1)
            goto L85
        L7e:
            java.lang.String r5 = "AppCompatDelegate"
            java.lang.String r6 = "Couldn't get audio manager"
            android.util.Log.w(r5, r6)
        L85:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.h.L0(int, android.view.KeyEvent):boolean");
    }

    private void P0(u uVar, KeyEvent keyEvent) {
        int i10;
        ViewGroup.LayoutParams layoutParams;
        if (uVar.f425o || this.f369h0) {
            return;
        }
        if (uVar.f411a == 0) {
            if ((this.A.getResources().getConfiguration().screenLayout & 15) == 4) {
                return;
            }
        }
        Window.Callback callbackY0 = y0();
        if (callbackY0 != null && !callbackY0.onMenuOpened(uVar.f411a, uVar.f420j)) {
            f0(uVar, true);
            return;
        }
        WindowManager windowManager = (WindowManager) this.A.getSystemService("window");
        if (windowManager != null && S0(uVar, keyEvent)) {
            ViewGroup viewGroup = uVar.f417g;
            if (viewGroup != null && !uVar.f427q) {
                View view = uVar.f419i;
                if (view != null && (layoutParams = view.getLayoutParams()) != null && layoutParams.width == -1) {
                    i10 = -1;
                }
                uVar.f424n = false;
                WindowManager.LayoutParams layoutParams2 = new WindowManager.LayoutParams(i10, -2, uVar.f414d, uVar.f415e, 1002, 8519680, -3);
                layoutParams2.gravity = uVar.f413c;
                layoutParams2.windowAnimations = uVar.f416f;
                windowManager.addView(uVar.f417g, layoutParams2);
                uVar.f425o = true;
            }
            if (viewGroup == null) {
                if (!B0(uVar) || uVar.f417g == null) {
                    return;
                }
            } else if (uVar.f427q && viewGroup.getChildCount() > 0) {
                uVar.f417g.removeAllViews();
            }
            if (!A0(uVar) || !uVar.b()) {
                uVar.f427q = true;
                return;
            }
            ViewGroup.LayoutParams layoutParams3 = uVar.f418h.getLayoutParams();
            if (layoutParams3 == null) {
                layoutParams3 = new ViewGroup.LayoutParams(-2, -2);
            }
            uVar.f417g.setBackgroundResource(uVar.f412b);
            ViewParent parent = uVar.f418h.getParent();
            if (parent instanceof ViewGroup) {
                ((ViewGroup) parent).removeView(uVar.f418h);
            }
            uVar.f417g.addView(uVar.f418h, layoutParams3);
            if (!uVar.f418h.hasFocus()) {
                uVar.f418h.requestFocus();
            }
            i10 = -2;
            uVar.f424n = false;
            WindowManager.LayoutParams layoutParams22 = new WindowManager.LayoutParams(i10, -2, uVar.f414d, uVar.f415e, 1002, 8519680, -3);
            layoutParams22.gravity = uVar.f413c;
            layoutParams22.windowAnimations = uVar.f416f;
            windowManager.addView(uVar.f417g, layoutParams22);
            uVar.f425o = true;
        }
    }

    private boolean R0(u uVar, int i10, KeyEvent keyEvent, int i11) {
        androidx.appcompat.view.menu.g gVar;
        boolean zPerformShortcut = false;
        if (keyEvent.isSystem()) {
            return false;
        }
        if ((uVar.f423m || S0(uVar, keyEvent)) && (gVar = uVar.f420j) != null) {
            zPerformShortcut = gVar.performShortcut(i10, keyEvent, i11);
        }
        if (zPerformShortcut && (i11 & 1) == 0 && this.H == null) {
            f0(uVar, true);
        }
        return zPerformShortcut;
    }

    private boolean S0(u uVar, KeyEvent keyEvent) {
        d0 d0Var;
        d0 d0Var2;
        d0 d0Var3;
        if (this.f369h0) {
            return false;
        }
        if (uVar.f423m) {
            return true;
        }
        u uVar2 = this.f365d0;
        if (uVar2 != null && uVar2 != uVar) {
            f0(uVar2, false);
        }
        Window.Callback callbackY0 = y0();
        if (callbackY0 != null) {
            uVar.f419i = callbackY0.onCreatePanelView(uVar.f411a);
        }
        int i10 = uVar.f411a;
        boolean z10 = i10 == 0 || i10 == 108;
        if (z10 && (d0Var3 = this.H) != null) {
            d0Var3.c();
        }
        if (uVar.f419i == null) {
            if (z10) {
                Q0();
            }
            androidx.appcompat.view.menu.g gVar = uVar.f420j;
            if (gVar == null || uVar.f428r) {
                if (gVar == null && (!C0(uVar) || uVar.f420j == null)) {
                    return false;
                }
                if (z10 && this.H != null) {
                    if (this.I == null) {
                        this.I = new i();
                    }
                    this.H.a(uVar.f420j, this.I);
                }
                uVar.f420j.d0();
                if (!callbackY0.onCreatePanelMenu(uVar.f411a, uVar.f420j)) {
                    uVar.c(null);
                    if (z10 && (d0Var = this.H) != null) {
                        d0Var.a(null, this.I);
                    }
                    return false;
                }
                uVar.f428r = false;
            }
            uVar.f420j.d0();
            Bundle bundle = uVar.f429s;
            if (bundle != null) {
                uVar.f420j.P(bundle);
                uVar.f429s = null;
            }
            if (!callbackY0.onPreparePanel(0, uVar.f419i, uVar.f420j)) {
                if (z10 && (d0Var2 = this.H) != null) {
                    d0Var2.a(null, this.I);
                }
                uVar.f420j.c0();
                return false;
            }
            boolean z11 = KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1;
            uVar.f426p = z11;
            uVar.f420j.setQwertyMode(z11);
            uVar.f420j.c0();
        }
        uVar.f423m = true;
        uVar.f424n = false;
        this.f365d0 = uVar;
        return true;
    }

    private void T0(boolean z10) {
        d0 d0Var = this.H;
        if (d0Var == null || !d0Var.d() || (ViewConfiguration.get(this.A).hasPermanentMenuKey() && !this.H.e())) {
            u uVarW0 = w0(0, true);
            uVarW0.f427q = true;
            f0(uVarW0, false);
            P0(uVarW0, null);
            return;
        }
        Window.Callback callbackY0 = y0();
        if (this.H.b() && z10) {
            this.H.f();
            if (this.f369h0) {
                return;
            }
            callbackY0.onPanelClosed(108, w0(0, true).f420j);
            return;
        }
        if (callbackY0 == null || this.f369h0) {
            return;
        }
        if (this.f377p0 && (this.f378q0 & 1) != 0) {
            this.B.getDecorView().removeCallbacks(this.f379r0);
            this.f379r0.run();
        }
        u uVarW02 = w0(0, true);
        androidx.appcompat.view.menu.g gVar = uVarW02.f420j;
        if (gVar == null || uVarW02.f428r || !callbackY0.onPreparePanel(0, uVarW02.f419i, gVar)) {
            return;
        }
        callbackY0.onMenuOpened(108, uVarW02.f420j);
        this.H.g();
    }

    private int U0(int i10) {
        if (i10 == 8) {
            Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR id when requesting this feature.");
            return 108;
        }
        if (i10 != 9) {
            return i10;
        }
        Log.i("AppCompatDelegate", "You should now use the AppCompatDelegate.FEATURE_SUPPORT_ACTION_BAR_OVERLAY id when requesting this feature.");
        return 109;
    }

    private boolean V(boolean z10) {
        if (this.f369h0) {
            return false;
        }
        int iA0 = a0();
        boolean zE1 = e1(F0(this.A, iA0), Build.VERSION.SDK_INT < 33 ? Z(this.A) : null, z10);
        if (iA0 == 0) {
            u0(this.A).e();
        } else {
            q qVar = this.f375n0;
            if (qVar != null) {
                qVar.a();
            }
        }
        if (iA0 == 3) {
            t0(this.A).e();
        } else {
            q qVar2 = this.f376o0;
            if (qVar2 != null) {
                qVar2.a();
            }
        }
        return zE1;
    }

    private void X() {
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) this.R.findViewById(R.id.content);
        View decorView = this.B.getDecorView();
        contentFrameLayout.b(decorView.getPaddingLeft(), decorView.getPaddingTop(), decorView.getPaddingRight(), decorView.getPaddingBottom());
        TypedArray typedArrayObtainStyledAttributes = this.A.obtainStyledAttributes(f.j.f29236y0);
        typedArrayObtainStyledAttributes.getValue(f.j.K0, contentFrameLayout.getMinWidthMajor());
        typedArrayObtainStyledAttributes.getValue(f.j.L0, contentFrameLayout.getMinWidthMinor());
        int i10 = f.j.I0;
        if (typedArrayObtainStyledAttributes.hasValue(i10)) {
            typedArrayObtainStyledAttributes.getValue(i10, contentFrameLayout.getFixedWidthMajor());
        }
        int i11 = f.j.J0;
        if (typedArrayObtainStyledAttributes.hasValue(i11)) {
            typedArrayObtainStyledAttributes.getValue(i11, contentFrameLayout.getFixedWidthMinor());
        }
        int i12 = f.j.G0;
        if (typedArrayObtainStyledAttributes.hasValue(i12)) {
            typedArrayObtainStyledAttributes.getValue(i12, contentFrameLayout.getFixedHeightMajor());
        }
        int i13 = f.j.H0;
        if (typedArrayObtainStyledAttributes.hasValue(i13)) {
            typedArrayObtainStyledAttributes.getValue(i13, contentFrameLayout.getFixedHeightMinor());
        }
        typedArrayObtainStyledAttributes.recycle();
        contentFrameLayout.requestLayout();
    }

    private void Y(Window window) {
        if (this.B != null) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        Window.Callback callback = window.getCallback();
        if (callback instanceof o) {
            throw new IllegalStateException("AppCompat has already installed itself into the Window");
        }
        o oVar = new o(callback);
        this.C = oVar;
        window.setCallback(oVar);
        w0 w0VarU = w0.u(this.A, null, f361z0);
        Drawable drawableH = w0VarU.h(0);
        if (drawableH != null) {
            window.setBackgroundDrawable(drawableH);
        }
        w0VarU.w();
        this.B = window;
    }

    private boolean Y0(ViewParent viewParent) {
        if (viewParent == null) {
            return false;
        }
        View decorView = this.B.getDecorView();
        while (viewParent != null) {
            if (viewParent == decorView || !(viewParent instanceof View) || a0.T((View) viewParent)) {
                return false;
            }
            viewParent = viewParent.getParent();
        }
        return true;
    }

    private int a0() {
        int i10 = this.f371j0;
        return i10 != -100 ? i10 : androidx.appcompat.app.g.q();
    }

    private void b1() {
        if (this.Q) {
            throw new AndroidRuntimeException("Window feature must be requested before adding content");
        }
    }

    private androidx.appcompat.app.c c1() {
        for (Context baseContext = this.A; baseContext != null; baseContext = ((ContextWrapper) baseContext).getBaseContext()) {
            if (baseContext instanceof androidx.appcompat.app.c) {
                return (androidx.appcompat.app.c) baseContext;
            }
            if (!(baseContext instanceof ContextWrapper)) {
                break;
            }
        }
        return null;
    }

    private void d0() {
        q qVar = this.f375n0;
        if (qVar != null) {
            qVar.a();
        }
        q qVar2 = this.f376o0;
        if (qVar2 != null) {
            qVar2.a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void d1(Configuration configuration) {
        Activity activity = (Activity) this.f385z;
        if (activity instanceof androidx.lifecycle.n) {
            if (((androidx.lifecycle.n) activity).getLifecycle().b().c(j.c.CREATED)) {
                activity.onConfigurationChanged(configuration);
            }
        } else {
            if (!this.f368g0 || this.f369h0) {
                return;
            }
            activity.onConfigurationChanged(configuration);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0078  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean e1(int r9, androidx.core.os.h r10, boolean r11) {
        /*
            r8 = this;
            android.content.Context r1 = r8.A
            r4 = 0
            r5 = 0
            r0 = r8
            r2 = r9
            r3 = r10
            android.content.res.Configuration r0 = r0.g0(r1, r2, r3, r4, r5)
            android.content.Context r1 = r8.A
            int r1 = r8.s0(r1)
            android.content.res.Configuration r2 = r8.f370i0
            if (r2 != 0) goto L1f
            android.content.Context r2 = r8.A
            android.content.res.Resources r2 = r2.getResources()
            android.content.res.Configuration r2 = r2.getConfiguration()
        L1f:
            int r3 = r2.uiMode
            r3 = r3 & 48
            int r4 = r0.uiMode
            r4 = r4 & 48
            androidx.core.os.h r2 = r8.v0(r2)
            r5 = 0
            if (r10 != 0) goto L30
            r0 = r5
            goto L34
        L30:
            androidx.core.os.h r0 = r8.v0(r0)
        L34:
            r6 = 0
            if (r3 == r4) goto L3a
            r3 = 512(0x200, float:7.17E-43)
            goto L3b
        L3a:
            r3 = 0
        L3b:
            if (r0 == 0) goto L4d
            boolean r2 = r2.equals(r0)
            if (r2 != 0) goto L4d
            r3 = r3 | 4
            int r2 = android.os.Build.VERSION.SDK_INT
            r7 = 17
            if (r2 < r7) goto L4d
            r3 = r3 | 8192(0x2000, float:1.148E-41)
        L4d:
            r2 = r1 ^ (-1)
            r2 = r2 & r3
            r7 = 1
            if (r2 == 0) goto L78
            if (r11 == 0) goto L78
            boolean r11 = r8.f367f0
            if (r11 == 0) goto L78
            boolean r11 = androidx.appcompat.app.h.A0
            if (r11 != 0) goto L61
            boolean r11 = r8.f368g0
            if (r11 == 0) goto L78
        L61:
            java.lang.Object r11 = r8.f385z
            boolean r2 = r11 instanceof android.app.Activity
            if (r2 == 0) goto L78
            android.app.Activity r11 = (android.app.Activity) r11
            boolean r11 = r11.isChild()
            if (r11 != 0) goto L78
            java.lang.Object r11 = r8.f385z
            android.app.Activity r11 = (android.app.Activity) r11
            androidx.core.app.b.s(r11)
            r11 = 1
            goto L79
        L78:
            r11 = 0
        L79:
            if (r11 != 0) goto L86
            if (r3 == 0) goto L86
            r11 = r3 & r1
            if (r11 != r3) goto L82
            r6 = 1
        L82:
            r8.f1(r4, r0, r6, r5)
            goto L87
        L86:
            r7 = r11
        L87:
            if (r7 == 0) goto La3
            java.lang.Object r11 = r8.f385z
            boolean r1 = r11 instanceof androidx.appcompat.app.c
            if (r1 == 0) goto La3
            r1 = r3 & 512(0x200, float:7.17E-43)
            if (r1 == 0) goto L98
            androidx.appcompat.app.c r11 = (androidx.appcompat.app.c) r11
            r11.H(r9)
        L98:
            r9 = r3 & 4
            if (r9 == 0) goto La3
            java.lang.Object r9 = r8.f385z
            androidx.appcompat.app.c r9 = (androidx.appcompat.app.c) r9
            r9.G(r10)
        La3:
            if (r7 == 0) goto Laa
            if (r0 == 0) goto Laa
            r8.W0(r0)
        Laa:
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.h.e1(int, androidx.core.os.h, boolean):boolean");
    }

    private void f1(int i10, androidx.core.os.h hVar, boolean z10, Configuration configuration) {
        Resources resources = this.A.getResources();
        Configuration configuration2 = new Configuration(resources.getConfiguration());
        if (configuration != null) {
            configuration2.updateFrom(configuration);
        }
        configuration2.uiMode = i10 | (resources.getConfiguration().uiMode & (-49));
        if (hVar != null) {
            V0(configuration2, hVar);
        }
        resources.updateConfiguration(configuration2, null);
        int i11 = Build.VERSION.SDK_INT;
        if (i11 < 26) {
            androidx.appcompat.app.r.a(resources);
        }
        int i12 = this.f372k0;
        if (i12 != 0) {
            this.A.setTheme(i12);
            if (i11 >= 23) {
                this.A.getTheme().applyStyle(this.f372k0, true);
            }
        }
        if (z10 && (this.f385z instanceof Activity)) {
            d1(configuration2);
        }
    }

    private Configuration g0(Context context, int i10, androidx.core.os.h hVar, Configuration configuration, boolean z10) {
        int i11 = i10 != 1 ? i10 != 2 ? z10 ? 0 : context.getApplicationContext().getResources().getConfiguration().uiMode & 48 : 32 : 16;
        Configuration configuration2 = new Configuration();
        configuration2.fontScale = 0.0f;
        if (configuration != null) {
            configuration2.setTo(configuration);
        }
        configuration2.uiMode = i11 | (configuration2.uiMode & (-49));
        if (hVar != null) {
            V0(configuration2, hVar);
        }
        return configuration2;
    }

    private ViewGroup h0() {
        ViewGroup viewGroup;
        TypedArray typedArrayObtainStyledAttributes = this.A.obtainStyledAttributes(f.j.f29236y0);
        int i10 = f.j.D0;
        if (!typedArrayObtainStyledAttributes.hasValue(i10)) {
            typedArrayObtainStyledAttributes.recycle();
            throw new IllegalStateException("You need to use a Theme.AppCompat theme (or descendant) with this activity.");
        }
        if (typedArrayObtainStyledAttributes.getBoolean(f.j.M0, false)) {
            M(1);
        } else if (typedArrayObtainStyledAttributes.getBoolean(i10, false)) {
            M(108);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(f.j.E0, false)) {
            M(109);
        }
        if (typedArrayObtainStyledAttributes.getBoolean(f.j.F0, false)) {
            M(10);
        }
        this.Z = typedArrayObtainStyledAttributes.getBoolean(f.j.f29241z0, false);
        typedArrayObtainStyledAttributes.recycle();
        o0();
        this.B.getDecorView();
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.A);
        if (this.f362a0) {
            viewGroup = this.Y ? (ViewGroup) layoutInflaterFrom.inflate(f.g.f29093o, (ViewGroup) null) : (ViewGroup) layoutInflaterFrom.inflate(f.g.f29092n, (ViewGroup) null);
        } else if (this.Z) {
            viewGroup = (ViewGroup) layoutInflaterFrom.inflate(f.g.f29084f, (ViewGroup) null);
            this.X = false;
            this.W = false;
        } else if (this.W) {
            TypedValue typedValue = new TypedValue();
            this.A.getTheme().resolveAttribute(f.a.f28982f, typedValue, true);
            viewGroup = (ViewGroup) LayoutInflater.from(typedValue.resourceId != 0 ? new androidx.appcompat.view.d(this.A, typedValue.resourceId) : this.A).inflate(f.g.f29094p, (ViewGroup) null);
            d0 d0Var = (d0) viewGroup.findViewById(f.f.f29068p);
            this.H = d0Var;
            d0Var.setWindowCallback(y0());
            if (this.X) {
                this.H.h(109);
            }
            if (this.U) {
                this.H.h(2);
            }
            if (this.V) {
                this.H.h(5);
            }
        } else {
            viewGroup = null;
        }
        if (viewGroup == null) {
            throw new IllegalArgumentException("AppCompat does not support the current theme features: { windowActionBar: " + this.W + ", windowActionBarOverlay: " + this.X + ", android:windowIsFloating: " + this.Z + ", windowActionModeOverlay: " + this.Y + ", windowNoTitle: " + this.f362a0 + " }");
        }
        if (Build.VERSION.SDK_INT >= 21) {
            a0.C0(viewGroup, new c());
        } else if (viewGroup instanceof h0) {
            ((h0) viewGroup).setOnFitSystemWindowsListener(new d());
        }
        if (this.H == null) {
            this.S = (TextView) viewGroup.findViewById(f.f.M);
        }
        f1.c(viewGroup);
        ContentFrameLayout contentFrameLayout = (ContentFrameLayout) viewGroup.findViewById(f.f.f29054b);
        ViewGroup viewGroup2 = (ViewGroup) this.B.findViewById(R.id.content);
        if (viewGroup2 != null) {
            while (viewGroup2.getChildCount() > 0) {
                View childAt = viewGroup2.getChildAt(0);
                viewGroup2.removeViewAt(0);
                contentFrameLayout.addView(childAt);
            }
            viewGroup2.setId(-1);
            contentFrameLayout.setId(R.id.content);
            if (viewGroup2 instanceof FrameLayout) {
                ((FrameLayout) viewGroup2).setForeground(null);
            }
        }
        this.B.setContentView(viewGroup);
        contentFrameLayout.setAttachListener(new e());
        return viewGroup;
    }

    private void h1(View view) {
        view.setBackgroundColor((a0.N(view) & Utility.DEFAULT_STREAM_BUFFER_SIZE) != 0 ? androidx.core.content.a.d(this.A, f.c.f29005b) : androidx.core.content.a.d(this.A, f.c.f29004a));
    }

    private void n0() {
        if (this.Q) {
            return;
        }
        this.R = h0();
        CharSequence charSequenceX0 = x0();
        if (!TextUtils.isEmpty(charSequenceX0)) {
            d0 d0Var = this.H;
            if (d0Var != null) {
                d0Var.setWindowTitle(charSequenceX0);
            } else if (Q0() != null) {
                Q0().u(charSequenceX0);
            } else {
                TextView textView = this.S;
                if (textView != null) {
                    textView.setText(charSequenceX0);
                }
            }
        }
        X();
        O0(this.R);
        this.Q = true;
        u uVarW0 = w0(0, false);
        if (this.f369h0) {
            return;
        }
        if (uVarW0 == null || uVarW0.f420j == null) {
            D0(108);
        }
    }

    private void o0() {
        if (this.B == null) {
            Object obj = this.f385z;
            if (obj instanceof Activity) {
                Y(((Activity) obj).getWindow());
            }
        }
        if (this.B == null) {
            throw new IllegalStateException("We have not been given a Window");
        }
    }

    private static Configuration q0(Configuration configuration, Configuration configuration2) {
        Configuration configuration3 = new Configuration();
        configuration3.fontScale = 0.0f;
        if (configuration2 != null && configuration.diff(configuration2) != 0) {
            float f10 = configuration.fontScale;
            float f11 = configuration2.fontScale;
            if (f10 != f11) {
                configuration3.fontScale = f11;
            }
            int i10 = configuration.mcc;
            int i11 = configuration2.mcc;
            if (i10 != i11) {
                configuration3.mcc = i11;
            }
            int i12 = configuration.mnc;
            int i13 = configuration2.mnc;
            if (i12 != i13) {
                configuration3.mnc = i13;
            }
            int i14 = Build.VERSION.SDK_INT;
            if (i14 >= 24) {
                m.a(configuration, configuration2, configuration3);
            } else if (!androidx.core.util.c.a(configuration.locale, configuration2.locale)) {
                configuration3.locale = configuration2.locale;
            }
            int i15 = configuration.touchscreen;
            int i16 = configuration2.touchscreen;
            if (i15 != i16) {
                configuration3.touchscreen = i16;
            }
            int i17 = configuration.keyboard;
            int i18 = configuration2.keyboard;
            if (i17 != i18) {
                configuration3.keyboard = i18;
            }
            int i19 = configuration.keyboardHidden;
            int i20 = configuration2.keyboardHidden;
            if (i19 != i20) {
                configuration3.keyboardHidden = i20;
            }
            int i21 = configuration.navigation;
            int i22 = configuration2.navigation;
            if (i21 != i22) {
                configuration3.navigation = i22;
            }
            int i23 = configuration.navigationHidden;
            int i24 = configuration2.navigationHidden;
            if (i23 != i24) {
                configuration3.navigationHidden = i24;
            }
            int i25 = configuration.orientation;
            int i26 = configuration2.orientation;
            if (i25 != i26) {
                configuration3.orientation = i26;
            }
            int i27 = configuration.screenLayout & 15;
            int i28 = configuration2.screenLayout;
            if (i27 != (i28 & 15)) {
                configuration3.screenLayout |= i28 & 15;
            }
            int i29 = configuration.screenLayout & 192;
            int i30 = configuration2.screenLayout;
            if (i29 != (i30 & 192)) {
                configuration3.screenLayout |= i30 & 192;
            }
            int i31 = configuration.screenLayout & 48;
            int i32 = configuration2.screenLayout;
            if (i31 != (i32 & 48)) {
                configuration3.screenLayout |= i32 & 48;
            }
            int i33 = configuration.screenLayout & 768;
            int i34 = configuration2.screenLayout;
            if (i33 != (i34 & 768)) {
                configuration3.screenLayout |= i34 & 768;
            }
            if (i14 >= 26) {
                n.a(configuration, configuration2, configuration3);
            }
            int i35 = configuration.uiMode & 15;
            int i36 = configuration2.uiMode;
            if (i35 != (i36 & 15)) {
                configuration3.uiMode |= i36 & 15;
            }
            int i37 = configuration.uiMode & 48;
            int i38 = configuration2.uiMode;
            if (i37 != (i38 & 48)) {
                configuration3.uiMode |= i38 & 48;
            }
            int i39 = configuration.screenWidthDp;
            int i40 = configuration2.screenWidthDp;
            if (i39 != i40) {
                configuration3.screenWidthDp = i40;
            }
            int i41 = configuration.screenHeightDp;
            int i42 = configuration2.screenHeightDp;
            if (i41 != i42) {
                configuration3.screenHeightDp = i42;
            }
            int i43 = configuration.smallestScreenWidthDp;
            int i44 = configuration2.smallestScreenWidthDp;
            if (i43 != i44) {
                configuration3.smallestScreenWidthDp = i44;
            }
            if (i14 >= 17) {
                k.b(configuration, configuration2, configuration3);
            }
        }
        return configuration3;
    }

    private int s0(Context context) {
        if (!this.f374m0 && (this.f385z instanceof Activity)) {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null) {
                return 0;
            }
            try {
                int i10 = Build.VERSION.SDK_INT;
                ActivityInfo activityInfo = packageManager.getActivityInfo(new ComponentName(context, this.f385z.getClass()), i10 >= 29 ? 269221888 : i10 >= 24 ? 786432 : 0);
                if (activityInfo != null) {
                    this.f373l0 = activityInfo.configChanges;
                }
            } catch (PackageManager.NameNotFoundException e10) {
                Log.d("AppCompatDelegate", "Exception while getting ActivityInfo", e10);
                this.f373l0 = 0;
            }
        }
        this.f374m0 = true;
        return this.f373l0;
    }

    private q t0(Context context) {
        if (this.f376o0 == null) {
            this.f376o0 = new p(context);
        }
        return this.f376o0;
    }

    private q u0(Context context) {
        if (this.f375n0 == null) {
            this.f375n0 = new r(androidx.appcompat.app.t.a(context));
        }
        return this.f375n0;
    }

    private void z0() {
        n0();
        if (this.W && this.E == null) {
            Object obj = this.f385z;
            if (obj instanceof Activity) {
                this.E = new androidx.appcompat.app.u((Activity) this.f385z, this.X);
            } else if (obj instanceof Dialog) {
                this.E = new androidx.appcompat.app.u((Dialog) this.f385z);
            }
            androidx.appcompat.app.a aVar = this.E;
            if (aVar != null) {
                aVar.q(this.f380s0);
            }
        }
    }

    @Override // androidx.appcompat.app.g
    public void C(Configuration configuration) {
        androidx.appcompat.app.a aVarW;
        if (this.W && this.Q && (aVarW = w()) != null) {
            aVarW.l(configuration);
        }
        androidx.appcompat.widget.j.b().g(this.A);
        this.f370i0 = new Configuration(this.A.getResources().getConfiguration());
        V(false);
    }

    @Override // androidx.appcompat.app.g
    public void D(Bundle bundle) {
        this.f367f0 = true;
        V(false);
        o0();
        Object obj = this.f385z;
        if (obj instanceof Activity) {
            String strC = null;
            try {
                strC = androidx.core.app.j.c((Activity) obj);
            } catch (IllegalArgumentException unused) {
            }
            if (strC != null) {
                androidx.appcompat.app.a aVarQ0 = Q0();
                if (aVarQ0 == null) {
                    this.f380s0 = true;
                } else {
                    aVarQ0.q(true);
                }
            }
            androidx.appcompat.app.g.e(this);
        }
        this.f370i0 = new Configuration(this.A.getResources().getConfiguration());
        this.f368g0 = true;
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0045  */
    @Override // androidx.appcompat.app.g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public void E() {
        /*
            r3 = this;
            java.lang.Object r0 = r3.f385z
            boolean r0 = r0 instanceof android.app.Activity
            if (r0 == 0) goto L9
            androidx.appcompat.app.g.K(r3)
        L9:
            boolean r0 = r3.f377p0
            if (r0 == 0) goto L18
            android.view.Window r0 = r3.B
            android.view.View r0 = r0.getDecorView()
            java.lang.Runnable r1 = r3.f379r0
            r0.removeCallbacks(r1)
        L18:
            r0 = 1
            r3.f369h0 = r0
            int r0 = r3.f371j0
            r1 = -100
            if (r0 == r1) goto L45
            java.lang.Object r0 = r3.f385z
            boolean r1 = r0 instanceof android.app.Activity
            if (r1 == 0) goto L45
            android.app.Activity r0 = (android.app.Activity) r0
            boolean r0 = r0.isChangingConfigurations()
            if (r0 == 0) goto L45
            o.g<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.h.f359x0
            java.lang.Object r1 = r3.f385z
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            int r2 = r3.f371j0
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            r0.put(r1, r2)
            goto L54
        L45:
            o.g<java.lang.String, java.lang.Integer> r0 = androidx.appcompat.app.h.f359x0
            java.lang.Object r1 = r3.f385z
            java.lang.Class r1 = r1.getClass()
            java.lang.String r1 = r1.getName()
            r0.remove(r1)
        L54:
            androidx.appcompat.app.a r0 = r3.E
            if (r0 == 0) goto L5b
            r0.m()
        L5b:
            r3.d0()
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.app.h.E():void");
    }

    public boolean E0() {
        return this.P;
    }

    @Override // androidx.appcompat.app.g
    public void F(Bundle bundle) {
        n0();
    }

    int F0(Context context, int i10) {
        if (i10 == -100) {
            return -1;
        }
        if (i10 != -1) {
            if (i10 == 0) {
                if (Build.VERSION.SDK_INT < 23 || ((UiModeManager) context.getApplicationContext().getSystemService("uimode")).getNightMode() != 0) {
                    return u0(context).c();
                }
                return -1;
            }
            if (i10 != 1 && i10 != 2) {
                if (i10 == 3) {
                    return t0(context).c();
                }
                throw new IllegalStateException("Unknown value set for night mode. Please use one of the MODE_NIGHT values from AppCompatDelegate.");
            }
        }
        return i10;
    }

    @Override // androidx.appcompat.app.g
    public void G() {
        androidx.appcompat.app.a aVarW = w();
        if (aVarW != null) {
            aVarW.s(true);
        }
    }

    boolean G0() {
        androidx.appcompat.view.b bVar = this.K;
        if (bVar != null) {
            bVar.c();
            return true;
        }
        androidx.appcompat.app.a aVarW = w();
        return aVarW != null && aVarW.g();
    }

    @Override // androidx.appcompat.app.g
    public void H(Bundle bundle) {
    }

    boolean H0(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            this.f366e0 = (keyEvent.getFlags() & 128) != 0;
        } else if (i10 == 82) {
            I0(0, keyEvent);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.g
    public void I() {
        V(true);
    }

    @Override // androidx.appcompat.app.g
    public void J() {
        androidx.appcompat.app.a aVarW = w();
        if (aVarW != null) {
            aVarW.s(false);
        }
    }

    boolean J0(int i10, KeyEvent keyEvent) {
        androidx.appcompat.app.a aVarW = w();
        if (aVarW != null && aVarW.n(i10, keyEvent)) {
            return true;
        }
        u uVar = this.f365d0;
        if (uVar != null && R0(uVar, keyEvent.getKeyCode(), keyEvent, 1)) {
            u uVar2 = this.f365d0;
            if (uVar2 != null) {
                uVar2.f424n = true;
            }
            return true;
        }
        if (this.f365d0 == null) {
            u uVarW0 = w0(0, true);
            S0(uVarW0, keyEvent);
            boolean zR0 = R0(uVarW0, keyEvent.getKeyCode(), keyEvent, 1);
            uVarW0.f423m = false;
            if (zR0) {
                return true;
            }
        }
        return false;
    }

    boolean K0(int i10, KeyEvent keyEvent) {
        if (i10 == 4) {
            boolean z10 = this.f366e0;
            this.f366e0 = false;
            u uVarW0 = w0(0, false);
            if (uVarW0 != null && uVarW0.f425o) {
                if (!z10) {
                    f0(uVarW0, true);
                }
                return true;
            }
            if (G0()) {
                return true;
            }
        } else if (i10 == 82) {
            L0(0, keyEvent);
            return true;
        }
        return false;
    }

    @Override // androidx.appcompat.app.g
    public boolean M(int i10) {
        int iU0 = U0(i10);
        if (this.f362a0 && iU0 == 108) {
            return false;
        }
        if (this.W && iU0 == 1) {
            this.W = false;
        }
        if (iU0 == 1) {
            b1();
            this.f362a0 = true;
            return true;
        }
        if (iU0 == 2) {
            b1();
            this.U = true;
            return true;
        }
        if (iU0 == 5) {
            b1();
            this.V = true;
            return true;
        }
        if (iU0 == 10) {
            b1();
            this.Y = true;
            return true;
        }
        if (iU0 == 108) {
            b1();
            this.W = true;
            return true;
        }
        if (iU0 != 109) {
            return this.B.requestFeature(iU0);
        }
        b1();
        this.X = true;
        return true;
    }

    void M0(int i10) {
        androidx.appcompat.app.a aVarW;
        if (i10 != 108 || (aVarW = w()) == null) {
            return;
        }
        aVarW.h(true);
    }

    void N0(int i10) {
        if (i10 == 108) {
            androidx.appcompat.app.a aVarW = w();
            if (aVarW != null) {
                aVarW.h(false);
                return;
            }
            return;
        }
        if (i10 == 0) {
            u uVarW0 = w0(i10, true);
            if (uVarW0.f425o) {
                f0(uVarW0, false);
            }
        }
    }

    void O0(ViewGroup viewGroup) {
    }

    @Override // androidx.appcompat.app.g
    public void P(int i10) {
        n0();
        ViewGroup viewGroup = (ViewGroup) this.R.findViewById(R.id.content);
        viewGroup.removeAllViews();
        LayoutInflater.from(this.A).inflate(i10, viewGroup);
        this.C.c(this.B.getCallback());
    }

    @Override // androidx.appcompat.app.g
    public void Q(View view) {
        n0();
        ViewGroup viewGroup = (ViewGroup) this.R.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view);
        this.C.c(this.B.getCallback());
    }

    final androidx.appcompat.app.a Q0() {
        return this.E;
    }

    @Override // androidx.appcompat.app.g
    public void R(View view, ViewGroup.LayoutParams layoutParams) {
        n0();
        ViewGroup viewGroup = (ViewGroup) this.R.findViewById(R.id.content);
        viewGroup.removeAllViews();
        viewGroup.addView(view, layoutParams);
        this.C.c(this.B.getCallback());
    }

    @Override // androidx.appcompat.app.g
    public void S(int i10) {
        this.f372k0 = i10;
    }

    @Override // androidx.appcompat.app.g
    public final void T(CharSequence charSequence) {
        this.G = charSequence;
        d0 d0Var = this.H;
        if (d0Var != null) {
            d0Var.setWindowTitle(charSequence);
            return;
        }
        if (Q0() != null) {
            Q0().u(charSequence);
            return;
        }
        TextView textView = this.S;
        if (textView != null) {
            textView.setText(charSequence);
        }
    }

    void V0(Configuration configuration, androidx.core.os.h hVar) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 24) {
            m.d(configuration, hVar);
        } else if (i10 < 17) {
            configuration.locale = hVar.d(0);
        } else {
            k.d(configuration, hVar.d(0));
            k.c(configuration, hVar.d(0));
        }
    }

    public boolean W() {
        return V(true);
    }

    void W0(androidx.core.os.h hVar) {
        if (Build.VERSION.SDK_INT >= 24) {
            m.c(hVar);
        } else {
            Locale.setDefault(hVar.d(0));
        }
    }

    final boolean X0() {
        ViewGroup viewGroup;
        return this.Q && (viewGroup = this.R) != null && a0.U(viewGroup);
    }

    androidx.core.os.h Z(Context context) {
        androidx.core.os.h hVarU;
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 33 || (hVarU = androidx.appcompat.app.g.u()) == null) {
            return null;
        }
        androidx.core.os.h hVarV0 = v0(context.getApplicationContext().getResources().getConfiguration());
        androidx.core.os.h hVarB = i10 >= 24 ? androidx.appcompat.app.q.b(hVarU, hVarV0) : hVarU.f() ? androidx.core.os.h.e() : androidx.core.os.h.c(hVarU.d(0).toString());
        return hVarB.f() ? hVarV0 : hVarB;
    }

    public androidx.appcompat.view.b Z0(b.a aVar) {
        androidx.appcompat.app.d dVar;
        if (aVar == null) {
            throw new IllegalArgumentException("ActionMode callback can not be null.");
        }
        androidx.appcompat.view.b bVar = this.K;
        if (bVar != null) {
            bVar.c();
        }
        j jVar = new j(aVar);
        androidx.appcompat.app.a aVarW = w();
        if (aVarW != null) {
            androidx.appcompat.view.b bVarV = aVarW.v(jVar);
            this.K = bVarV;
            if (bVarV != null && (dVar = this.D) != null) {
                dVar.e(bVarV);
            }
        }
        if (this.K == null) {
            this.K = a1(jVar);
        }
        return this.K;
    }

    @Override // androidx.appcompat.view.menu.g.a
    public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
        u uVarP0;
        Window.Callback callbackY0 = y0();
        if (callbackY0 == null || this.f369h0 || (uVarP0 = p0(gVar.D())) == null) {
            return false;
        }
        return callbackY0.onMenuItemSelected(uVarP0.f411a, menuItem);
    }

    androidx.appcompat.view.b a1(b.a aVar) {
        androidx.appcompat.view.b bVarV;
        Context dVar;
        androidx.appcompat.app.d dVar2;
        m0();
        androidx.appcompat.view.b bVar = this.K;
        if (bVar != null) {
            bVar.c();
        }
        if (!(aVar instanceof j)) {
            aVar = new j(aVar);
        }
        androidx.appcompat.app.d dVar3 = this.D;
        if (dVar3 == null || this.f369h0) {
            bVarV = null;
        } else {
            try {
                bVarV = dVar3.v(aVar);
            } catch (AbstractMethodError unused) {
                bVarV = null;
            }
        }
        if (bVarV != null) {
            this.K = bVarV;
        } else {
            if (this.L == null) {
                if (this.Z) {
                    TypedValue typedValue = new TypedValue();
                    Resources.Theme theme = this.A.getTheme();
                    theme.resolveAttribute(f.a.f28982f, typedValue, true);
                    if (typedValue.resourceId != 0) {
                        Resources.Theme themeNewTheme = this.A.getResources().newTheme();
                        themeNewTheme.setTo(theme);
                        themeNewTheme.applyStyle(typedValue.resourceId, true);
                        dVar = new androidx.appcompat.view.d(this.A, 0);
                        dVar.getTheme().setTo(themeNewTheme);
                    } else {
                        dVar = this.A;
                    }
                    this.L = new ActionBarContextView(dVar);
                    PopupWindow popupWindow = new PopupWindow(dVar, (AttributeSet) null, f.a.f28985i);
                    this.M = popupWindow;
                    androidx.core.widget.i.b(popupWindow, 2);
                    this.M.setContentView(this.L);
                    this.M.setWidth(-1);
                    dVar.getTheme().resolveAttribute(f.a.f28978b, typedValue, true);
                    this.L.setContentHeight(TypedValue.complexToDimensionPixelSize(typedValue.data, dVar.getResources().getDisplayMetrics()));
                    this.M.setHeight(-2);
                    this.N = new f();
                } else {
                    ViewStubCompat viewStubCompat = (ViewStubCompat) this.R.findViewById(f.f.f29060h);
                    if (viewStubCompat != null) {
                        viewStubCompat.setLayoutInflater(LayoutInflater.from(r0()));
                        this.L = (ActionBarContextView) viewStubCompat.a();
                    }
                }
            }
            if (this.L != null) {
                m0();
                this.L.k();
                androidx.appcompat.view.e eVar = new androidx.appcompat.view.e(this.L.getContext(), this.L, aVar, this.M == null);
                if (aVar.b(eVar, eVar.e())) {
                    eVar.k();
                    this.L.h(eVar);
                    this.K = eVar;
                    if (X0()) {
                        this.L.setAlpha(0.0f);
                        g0 g0VarB = a0.e(this.L).b(1.0f);
                        this.O = g0VarB;
                        g0VarB.h(new g());
                    } else {
                        this.L.setAlpha(1.0f);
                        this.L.setVisibility(0);
                        if (this.L.getParent() instanceof View) {
                            a0.n0((View) this.L.getParent());
                        }
                    }
                    if (this.M != null) {
                        this.B.getDecorView().post(this.N);
                    }
                } else {
                    this.K = null;
                }
            }
        }
        androidx.appcompat.view.b bVar2 = this.K;
        if (bVar2 != null && (dVar2 = this.D) != null) {
            dVar2.e(bVar2);
        }
        return this.K;
    }

    @Override // androidx.appcompat.view.menu.g.a
    public void b(androidx.appcompat.view.menu.g gVar) {
        T0(true);
    }

    void b0(int i10, u uVar, Menu menu) {
        if (menu == null) {
            if (uVar == null && i10 >= 0) {
                u[] uVarArr = this.f364c0;
                if (i10 < uVarArr.length) {
                    uVar = uVarArr[i10];
                }
            }
            if (uVar != null) {
                menu = uVar.f420j;
            }
        }
        if ((uVar == null || uVar.f425o) && !this.f369h0) {
            this.C.d(this.B.getCallback(), i10, menu);
        }
    }

    void c0(androidx.appcompat.view.menu.g gVar) {
        if (this.f363b0) {
            return;
        }
        this.f363b0 = true;
        this.H.i();
        Window.Callback callbackY0 = y0();
        if (callbackY0 != null && !this.f369h0) {
            callbackY0.onPanelClosed(108, gVar);
        }
        this.f363b0 = false;
    }

    void e0(int i10) {
        f0(w0(i10, true), true);
    }

    @Override // androidx.appcompat.app.g
    public void f(View view, ViewGroup.LayoutParams layoutParams) {
        n0();
        ((ViewGroup) this.R.findViewById(R.id.content)).addView(view, layoutParams);
        this.C.c(this.B.getCallback());
    }

    void f0(u uVar, boolean z10) {
        ViewGroup viewGroup;
        d0 d0Var;
        if (z10 && uVar.f411a == 0 && (d0Var = this.H) != null && d0Var.b()) {
            c0(uVar.f420j);
            return;
        }
        WindowManager windowManager = (WindowManager) this.A.getSystemService("window");
        if (windowManager != null && uVar.f425o && (viewGroup = uVar.f417g) != null) {
            windowManager.removeView(viewGroup);
            if (z10) {
                b0(uVar.f411a, uVar, null);
            }
        }
        uVar.f423m = false;
        uVar.f424n = false;
        uVar.f425o = false;
        uVar.f418h = null;
        uVar.f427q = true;
        if (this.f365d0 == uVar) {
            this.f365d0 = null;
        }
    }

    @Override // androidx.appcompat.app.g
    boolean g() {
        if (androidx.appcompat.app.g.z(this.A) && androidx.appcompat.app.g.u() != null && !androidx.appcompat.app.g.u().equals(androidx.appcompat.app.g.v())) {
            i(this.A);
        }
        return V(true);
    }

    final int g1(k0 k0Var, Rect rect) {
        boolean z10;
        boolean z11;
        int iL = k0Var != null ? k0Var.l() : rect != null ? rect.top : 0;
        ActionBarContextView actionBarContextView = this.L;
        if (actionBarContextView == null || !(actionBarContextView.getLayoutParams() instanceof ViewGroup.MarginLayoutParams)) {
            z10 = false;
        } else {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.L.getLayoutParams();
            if (this.L.isShown()) {
                if (this.f381t0 == null) {
                    this.f381t0 = new Rect();
                    this.f382u0 = new Rect();
                }
                Rect rect2 = this.f381t0;
                Rect rect3 = this.f382u0;
                if (k0Var == null) {
                    rect2.set(rect);
                } else {
                    rect2.set(k0Var.j(), k0Var.l(), k0Var.k(), k0Var.i());
                }
                f1.a(this.R, rect2, rect3);
                int i10 = rect2.top;
                int i11 = rect2.left;
                int i12 = rect2.right;
                k0 k0VarK = a0.K(this.R);
                int iJ = k0VarK == null ? 0 : k0VarK.j();
                int iK = k0VarK == null ? 0 : k0VarK.k();
                if (marginLayoutParams.topMargin == i10 && marginLayoutParams.leftMargin == i11 && marginLayoutParams.rightMargin == i12) {
                    z11 = false;
                } else {
                    marginLayoutParams.topMargin = i10;
                    marginLayoutParams.leftMargin = i11;
                    marginLayoutParams.rightMargin = i12;
                    z11 = true;
                }
                if (i10 <= 0 || this.T != null) {
                    View view = this.T;
                    if (view != null) {
                        ViewGroup.MarginLayoutParams marginLayoutParams2 = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                        int i13 = marginLayoutParams2.height;
                        int i14 = marginLayoutParams.topMargin;
                        if (i13 != i14 || marginLayoutParams2.leftMargin != iJ || marginLayoutParams2.rightMargin != iK) {
                            marginLayoutParams2.height = i14;
                            marginLayoutParams2.leftMargin = iJ;
                            marginLayoutParams2.rightMargin = iK;
                            this.T.setLayoutParams(marginLayoutParams2);
                        }
                    }
                } else {
                    View view2 = new View(this.A);
                    this.T = view2;
                    view2.setVisibility(8);
                    FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, marginLayoutParams.topMargin, 51);
                    layoutParams.leftMargin = iJ;
                    layoutParams.rightMargin = iK;
                    this.R.addView(this.T, -1, layoutParams);
                }
                View view3 = this.T;
                z = view3 != null;
                if (z && view3.getVisibility() != 0) {
                    h1(this.T);
                }
                if (!this.Y && z) {
                    iL = 0;
                }
                z10 = z;
                z = z11;
            } else if (marginLayoutParams.topMargin != 0) {
                marginLayoutParams.topMargin = 0;
                z10 = false;
            } else {
                z10 = false;
                z = false;
            }
            if (z) {
                this.L.setLayoutParams(marginLayoutParams);
            }
        }
        View view4 = this.T;
        if (view4 != null) {
            view4.setVisibility(z10 ? 0 : 8);
        }
        return iL;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public View i0(View view, String str, Context context, AttributeSet attributeSet) {
        boolean z10;
        boolean zY0 = false;
        if (this.f383v0 == null) {
            String string = this.A.obtainStyledAttributes(f.j.f29236y0).getString(f.j.C0);
            if (string == null) {
                this.f383v0 = new androidx.appcompat.app.l();
            } else {
                try {
                    this.f383v0 = (androidx.appcompat.app.l) this.A.getClassLoader().loadClass(string).getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
                } catch (Throwable th) {
                    Log.i("AppCompatDelegate", "Failed to instantiate custom view inflater " + string + ". Falling back to default.", th);
                    this.f383v0 = new androidx.appcompat.app.l();
                }
            }
        }
        boolean z11 = f360y0;
        if (z11) {
            if (this.f384w0 == null) {
                this.f384w0 = new androidx.appcompat.app.p();
            }
            if (this.f384w0.a(attributeSet)) {
                z10 = true;
            } else {
                if (!(attributeSet instanceof XmlPullParser)) {
                    zY0 = Y0((ViewParent) view);
                } else if (((XmlPullParser) attributeSet).getDepth() > 1) {
                    zY0 = true;
                }
                z10 = zY0;
            }
        } else {
            z10 = false;
        }
        return this.f383v0.r(view, str, context, attributeSet, z10, z11, true, e1.c());
    }

    void j0() {
        androidx.appcompat.view.menu.g gVar;
        d0 d0Var = this.H;
        if (d0Var != null) {
            d0Var.i();
        }
        if (this.M != null) {
            this.B.getDecorView().removeCallbacks(this.N);
            if (this.M.isShowing()) {
                try {
                    this.M.dismiss();
                } catch (IllegalArgumentException unused) {
                }
            }
            this.M = null;
        }
        m0();
        u uVarW0 = w0(0, false);
        if (uVarW0 == null || (gVar = uVarW0.f420j) == null) {
            return;
        }
        gVar.close();
    }

    @Override // androidx.appcompat.app.g
    public Context k(Context context) {
        this.f367f0 = true;
        int iF0 = F0(context, a0());
        if (androidx.appcompat.app.g.z(context)) {
            androidx.appcompat.app.g.U(context);
        }
        androidx.core.os.h hVarZ = Z(context);
        if (B0 && (context instanceof ContextThemeWrapper)) {
            try {
                s.a((ContextThemeWrapper) context, g0(context, iF0, hVarZ, null, false));
                return context;
            } catch (IllegalStateException unused) {
            }
        }
        if (context instanceof androidx.appcompat.view.d) {
            try {
                ((androidx.appcompat.view.d) context).a(g0(context, iF0, hVarZ, null, false));
                return context;
            } catch (IllegalStateException unused2) {
            }
        }
        if (!A0) {
            return super.k(context);
        }
        Configuration configurationQ0 = null;
        if (Build.VERSION.SDK_INT >= 17) {
            Configuration configuration = new Configuration();
            configuration.uiMode = -1;
            configuration.fontScale = 0.0f;
            Configuration configuration2 = k.a(context, configuration).getResources().getConfiguration();
            Configuration configuration3 = context.getResources().getConfiguration();
            configuration2.uiMode = configuration3.uiMode;
            if (!configuration2.equals(configuration3)) {
                configurationQ0 = q0(configuration2, configuration3);
            }
        }
        Configuration configurationG0 = g0(context, iF0, hVarZ, configurationQ0, true);
        boolean z10 = false;
        androidx.appcompat.view.d dVar = new androidx.appcompat.view.d(context, f.i.f29113c, s0(context) != 0);
        dVar.a(configurationG0);
        try {
            z10 = context.getTheme() != null;
        } catch (NullPointerException unused3) {
        }
        if (z10) {
            h.g.a(dVar.getTheme());
        }
        return super.k(dVar);
    }

    boolean k0(KeyEvent keyEvent) {
        View decorView;
        Object obj = this.f385z;
        if (((obj instanceof f.a) || (obj instanceof androidx.appcompat.app.j)) && (decorView = this.B.getDecorView()) != null && androidx.core.view.f.d(decorView, keyEvent)) {
            return true;
        }
        if (keyEvent.getKeyCode() == 82 && this.C.b(this.B.getCallback(), keyEvent)) {
            return true;
        }
        int keyCode = keyEvent.getKeyCode();
        return keyEvent.getAction() == 0 ? H0(keyCode, keyEvent) : K0(keyCode, keyEvent);
    }

    void l0(int i10) {
        u uVarW0;
        u uVarW02 = w0(i10, true);
        if (uVarW02.f420j != null) {
            Bundle bundle = new Bundle();
            uVarW02.f420j.Q(bundle);
            if (bundle.size() > 0) {
                uVarW02.f429s = bundle;
            }
            uVarW02.f420j.d0();
            uVarW02.f420j.clear();
        }
        uVarW02.f428r = true;
        uVarW02.f427q = true;
        if ((i10 != 108 && i10 != 0) || this.H == null || (uVarW0 = w0(0, false)) == null) {
            return;
        }
        uVarW0.f423m = false;
        S0(uVarW0, null);
    }

    void m0() {
        g0 g0Var = this.O;
        if (g0Var != null) {
            g0Var.c();
        }
    }

    @Override // androidx.appcompat.app.g
    public <T extends View> T n(int i10) {
        n0();
        return (T) this.B.findViewById(i10);
    }

    @Override // android.view.LayoutInflater.Factory2
    public final View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
        return i0(view, str, context, attributeSet);
    }

    @Override // androidx.appcompat.app.g
    public Context p() {
        return this.A;
    }

    u p0(Menu menu) {
        u[] uVarArr = this.f364c0;
        int length = uVarArr != null ? uVarArr.length : 0;
        for (int i10 = 0; i10 < length; i10++) {
            u uVar = uVarArr[i10];
            if (uVar != null && uVar.f420j == menu) {
                return uVar;
            }
        }
        return null;
    }

    @Override // androidx.appcompat.app.g
    public int r() {
        return this.f371j0;
    }

    final Context r0() {
        androidx.appcompat.app.a aVarW = w();
        Context contextJ = aVarW != null ? aVarW.j() : null;
        return contextJ == null ? this.A : contextJ;
    }

    @Override // androidx.appcompat.app.g
    public MenuInflater t() {
        if (this.F == null) {
            z0();
            androidx.appcompat.app.a aVar = this.E;
            this.F = new androidx.appcompat.view.g(aVar != null ? aVar.j() : this.A);
        }
        return this.F;
    }

    androidx.core.os.h v0(Configuration configuration) {
        int i10 = Build.VERSION.SDK_INT;
        return i10 >= 24 ? m.b(configuration) : i10 >= 21 ? androidx.core.os.h.c(l.b(configuration.locale)) : androidx.core.os.h.a(configuration.locale);
    }

    @Override // androidx.appcompat.app.g
    public androidx.appcompat.app.a w() {
        z0();
        return this.E;
    }

    protected u w0(int i10, boolean z10) {
        u[] uVarArr = this.f364c0;
        if (uVarArr == null || uVarArr.length <= i10) {
            u[] uVarArr2 = new u[i10 + 1];
            if (uVarArr != null) {
                System.arraycopy(uVarArr, 0, uVarArr2, 0, uVarArr.length);
            }
            this.f364c0 = uVarArr2;
            uVarArr = uVarArr2;
        }
        u uVar = uVarArr[i10];
        if (uVar != null) {
            return uVar;
        }
        u uVar2 = new u(i10);
        uVarArr[i10] = uVar2;
        return uVar2;
    }

    @Override // androidx.appcompat.app.g
    public void x() {
        LayoutInflater layoutInflaterFrom = LayoutInflater.from(this.A);
        if (layoutInflaterFrom.getFactory() == null) {
            androidx.core.view.g.b(layoutInflaterFrom, this);
        } else {
            if (layoutInflaterFrom.getFactory2() instanceof h) {
                return;
            }
            Log.i("AppCompatDelegate", "The Activity's LayoutInflater already has a Factory installed so we can not install AppCompat's");
        }
    }

    final CharSequence x0() {
        Object obj = this.f385z;
        return obj instanceof Activity ? ((Activity) obj).getTitle() : this.G;
    }

    @Override // androidx.appcompat.app.g
    public void y() {
        if (Q0() == null || w().k()) {
            return;
        }
        D0(0);
    }

    final Window.Callback y0() {
        return this.B.getCallback();
    }

    h(Dialog dialog, androidx.appcompat.app.d dVar) {
        this(dialog.getContext(), dialog.getWindow(), dVar, dialog);
    }

    @Override // android.view.LayoutInflater.Factory
    public View onCreateView(String str, Context context, AttributeSet attributeSet) {
        return onCreateView(null, str, context, attributeSet);
    }

    private h(Context context, Window window, androidx.appcompat.app.d dVar, Object obj) {
        o.g<String, Integer> gVar;
        Integer num;
        androidx.appcompat.app.c cVarC1;
        this.O = null;
        this.P = true;
        this.f371j0 = -100;
        this.f379r0 = new b();
        this.A = context;
        this.D = dVar;
        this.f385z = obj;
        if (this.f371j0 == -100 && (obj instanceof Dialog) && (cVarC1 = c1()) != null) {
            this.f371j0 = cVarC1.C().r();
        }
        if (this.f371j0 == -100 && (num = (gVar = f359x0).get(obj.getClass().getName())) != null) {
            this.f371j0 = num.intValue();
            gVar.remove(obj.getClass().getName());
        }
        if (window != null) {
            Y(window);
        }
        androidx.appcompat.widget.j.h();
    }

    /* JADX INFO: compiled from: AppCompatDelegateImpl.java */
    class o extends androidx.appcompat.view.i {

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private InterfaceC0012h f398p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private boolean f399q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private boolean f400r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f401s;

        o(Window.Callback callback) {
            super(callback);
        }

        public boolean b(Window.Callback callback, KeyEvent keyEvent) {
            try {
                this.f400r = true;
                return callback.dispatchKeyEvent(keyEvent);
            } finally {
                this.f400r = false;
            }
        }

        public void c(Window.Callback callback) {
            try {
                this.f399q = true;
                callback.onContentChanged();
            } finally {
                this.f399q = false;
            }
        }

        public void d(Window.Callback callback, int i10, Menu menu) {
            try {
                this.f401s = true;
                callback.onPanelClosed(i10, menu);
            } finally {
                this.f401s = false;
            }
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean dispatchKeyEvent(KeyEvent keyEvent) {
            return this.f400r ? a().dispatchKeyEvent(keyEvent) : h.this.k0(keyEvent) || super.dispatchKeyEvent(keyEvent);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean dispatchKeyShortcutEvent(KeyEvent keyEvent) {
            return super.dispatchKeyShortcutEvent(keyEvent) || h.this.J0(keyEvent.getKeyCode(), keyEvent);
        }

        final ActionMode e(ActionMode.Callback callback) {
            f.a aVar = new f.a(h.this.A, callback);
            androidx.appcompat.view.b bVarZ0 = h.this.Z0(aVar);
            if (bVarZ0 != null) {
                return aVar.e(bVarZ0);
            }
            return null;
        }

        @Override // android.view.Window.Callback
        public void onContentChanged() {
            if (this.f399q) {
                a().onContentChanged();
            }
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onCreatePanelMenu(int i10, Menu menu) {
            if (i10 != 0 || (menu instanceof androidx.appcompat.view.menu.g)) {
                return super.onCreatePanelMenu(i10, menu);
            }
            return false;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public View onCreatePanelView(int i10) {
            View viewOnCreatePanelView;
            InterfaceC0012h interfaceC0012h = this.f398p;
            return (interfaceC0012h == null || (viewOnCreatePanelView = interfaceC0012h.onCreatePanelView(i10)) == null) ? super.onCreatePanelView(i10) : viewOnCreatePanelView;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onMenuOpened(int i10, Menu menu) {
            super.onMenuOpened(i10, menu);
            h.this.M0(i10);
            return true;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public void onPanelClosed(int i10, Menu menu) {
            if (this.f401s) {
                a().onPanelClosed(i10, menu);
            } else {
                super.onPanelClosed(i10, menu);
                h.this.N0(i10);
            }
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public boolean onPreparePanel(int i10, View view, Menu menu) {
            androidx.appcompat.view.menu.g gVar = menu instanceof androidx.appcompat.view.menu.g ? (androidx.appcompat.view.menu.g) menu : null;
            if (i10 == 0 && gVar == null) {
                return false;
            }
            if (gVar != null) {
                gVar.a0(true);
            }
            InterfaceC0012h interfaceC0012h = this.f398p;
            boolean zOnPreparePanel = interfaceC0012h != null && interfaceC0012h.a(i10);
            if (!zOnPreparePanel) {
                zOnPreparePanel = super.onPreparePanel(i10, view, menu);
            }
            if (gVar != null) {
                gVar.a0(false);
            }
            return zOnPreparePanel;
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public void onProvideKeyboardShortcuts(List<KeyboardShortcutGroup> list, Menu menu, int i10) {
            androidx.appcompat.view.menu.g gVar;
            u uVarW0 = h.this.w0(0, true);
            if (uVarW0 == null || (gVar = uVarW0.f420j) == null) {
                super.onProvideKeyboardShortcuts(list, menu, i10);
            } else {
                super.onProvideKeyboardShortcuts(list, gVar, i10);
            }
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback) {
            if (Build.VERSION.SDK_INT >= 23) {
                return null;
            }
            return h.this.E0() ? e(callback) : super.onWindowStartingActionMode(callback);
        }

        @Override // androidx.appcompat.view.i, android.view.Window.Callback
        public ActionMode onWindowStartingActionMode(ActionMode.Callback callback, int i10) {
            if (h.this.E0() && i10 == 0) {
                return e(callback);
            }
            return super.onWindowStartingActionMode(callback, i10);
        }
    }
}
