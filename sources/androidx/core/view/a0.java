package androidx.core.view;

import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.ContentInfo;
import android.view.Display;
import android.view.KeyEvent;
import android.view.OnReceiveContentListener;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import android.view.WindowInsets;
import android.view.WindowManager;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.accessibility.AccessibilityNodeProvider;
import androidx.core.view.a;
import androidx.core.view.accessibility.c;
import androidx.core.view.k0;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: compiled from: ViewCompat.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"PrivateConstructorForUtilityClass"})
public class a0 {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private static Field f2393b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private static boolean f2394c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Field f2395d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f2396e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static WeakHashMap<View, String> f2397f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static Field f2399h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private static ThreadLocal<Rect> f2401j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final AtomicInteger f2392a = new AtomicInteger(1);

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static WeakHashMap<View, g0> f2398g = null;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private static boolean f2400i = false;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private static final int[] f2402k = {w.c.f35870b, w.c.f35871c, w.c.f35882n, w.c.f35893y, w.c.B, w.c.C, w.c.D, w.c.E, w.c.F, w.c.G, w.c.f35872d, w.c.f35873e, w.c.f35874f, w.c.f35875g, w.c.f35876h, w.c.f35877i, w.c.f35878j, w.c.f35879k, w.c.f35880l, w.c.f35881m, w.c.f35883o, w.c.f35884p, w.c.f35885q, w.c.f35886r, w.c.f35887s, w.c.f35888t, w.c.f35889u, w.c.f35890v, w.c.f35891w, w.c.f35892x, w.c.f35894z, w.c.A};

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private static final w f2403l = new w() { // from class: androidx.core.view.z
        @Override // androidx.core.view.w
        public final c a(c cVar) {
            return a0.Y(cVar);
        }
    };

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private static final e f2404m = new e();

    /* JADX INFO: compiled from: ViewCompat.java */
    class a extends f<Boolean> {
        a(int i10, Class cls, int i11) {
            super(i10, cls, i11);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.a0.f
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Boolean d(View view) {
            return Boolean.valueOf(p.d(view));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.a0.f
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void e(View view, Boolean bool) {
            p.i(view, bool.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.a0.f
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean h(Boolean bool, Boolean bool2) {
            return !a(bool, bool2);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    class b extends f<CharSequence> {
        b(int i10, Class cls, int i11, int i12) {
            super(i10, cls, i11, i12);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.a0.f
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public CharSequence d(View view) {
            return p.b(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.a0.f
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void e(View view, CharSequence charSequence) {
            p.h(view, charSequence);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.a0.f
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean h(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    class c extends f<CharSequence> {
        c(int i10, Class cls, int i11, int i12) {
            super(i10, cls, i11, i12);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.a0.f
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public CharSequence d(View view) {
            return r.a(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.a0.f
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void e(View view, CharSequence charSequence) {
            r.b(view, charSequence);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.a0.f
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean h(CharSequence charSequence, CharSequence charSequence2) {
            return !TextUtils.equals(charSequence, charSequence2);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    class d extends f<Boolean> {
        d(int i10, Class cls, int i11) {
            super(i10, cls, i11);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.a0.f
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Boolean d(View view) {
            return Boolean.valueOf(p.c(view));
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.a0.f
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void e(View view, Boolean bool) {
            p.g(view, bool.booleanValue());
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // androidx.core.view.a0.f
        /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
        public boolean h(Boolean bool, Boolean bool2) {
            return !a(bool, bool2);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    static class e implements ViewTreeObserver.OnGlobalLayoutListener, View.OnAttachStateChangeListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final WeakHashMap<View, Boolean> f2405o = new WeakHashMap<>();

        e() {
        }

        private void b(View view, boolean z10) {
            boolean z11 = view.isShown() && view.getWindowVisibility() == 0;
            if (z10 != z11) {
                a0.Z(view, z11 ? 16 : 32);
                this.f2405o.put(view, Boolean.valueOf(z11));
            }
        }

        private void c(View view) {
            view.getViewTreeObserver().addOnGlobalLayoutListener(this);
        }

        private void e(View view) {
            h.o(view.getViewTreeObserver(), this);
        }

        void a(View view) {
            this.f2405o.put(view, Boolean.valueOf(view.isShown() && view.getWindowVisibility() == 0));
            view.addOnAttachStateChangeListener(this);
            if (k.b(view)) {
                c(view);
            }
        }

        void d(View view) {
            this.f2405o.remove(view);
            view.removeOnAttachStateChangeListener(this);
            e(view);
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (Build.VERSION.SDK_INT < 28) {
                for (Map.Entry<View, Boolean> entry : this.f2405o.entrySet()) {
                    b(entry.getKey(), entry.getValue().booleanValue());
                }
            }
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
            c(view);
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    static abstract class f<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f2406a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final Class<T> f2407b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final int f2408c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final int f2409d;

        f(int i10, Class<T> cls, int i11) {
            this(i10, cls, 0, i11);
        }

        private boolean b() {
            return Build.VERSION.SDK_INT >= 19;
        }

        private boolean c() {
            return Build.VERSION.SDK_INT >= this.f2408c;
        }

        boolean a(Boolean bool, Boolean bool2) {
            return (bool != null && bool.booleanValue()) == (bool2 != null && bool2.booleanValue());
        }

        abstract T d(View view);

        abstract void e(View view, T t10);

        T f(View view) {
            if (c()) {
                return d(view);
            }
            if (!b()) {
                return null;
            }
            T t10 = (T) view.getTag(this.f2406a);
            if (this.f2407b.isInstance(t10)) {
                return t10;
            }
            return null;
        }

        void g(View view, T t10) {
            if (c()) {
                e(view, t10);
            } else if (b() && h(f(view), t10)) {
                a0.l(view);
                view.setTag(this.f2406a, t10);
                a0.Z(view, this.f2409d);
            }
        }

        abstract boolean h(T t10, T t11);

        f(int i10, Class<T> cls, int i11, int i12) {
            this.f2406a = i10;
            this.f2407b = cls;
            this.f2409d = i11;
            this.f2408c = i12;
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    static class g {
        static boolean a(View view) {
            return view.hasOnClickListeners();
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    static class h {
        static AccessibilityNodeProvider a(View view) {
            return view.getAccessibilityNodeProvider();
        }

        static boolean b(View view) {
            return view.getFitsSystemWindows();
        }

        static int c(View view) {
            return view.getImportantForAccessibility();
        }

        static int d(View view) {
            return view.getMinimumHeight();
        }

        static int e(View view) {
            return view.getMinimumWidth();
        }

        static ViewParent f(View view) {
            return view.getParentForAccessibility();
        }

        static int g(View view) {
            return view.getWindowSystemUiVisibility();
        }

        static boolean h(View view) {
            return view.hasOverlappingRendering();
        }

        static boolean i(View view) {
            return view.hasTransientState();
        }

        static boolean j(View view, int i10, Bundle bundle) {
            return view.performAccessibilityAction(i10, bundle);
        }

        static void k(View view) {
            view.postInvalidateOnAnimation();
        }

        static void l(View view, int i10, int i11, int i12, int i13) {
            view.postInvalidateOnAnimation(i10, i11, i12, i13);
        }

        static void m(View view, Runnable runnable) {
            view.postOnAnimation(runnable);
        }

        static void n(View view, Runnable runnable, long j10) {
            view.postOnAnimationDelayed(runnable, j10);
        }

        static void o(ViewTreeObserver viewTreeObserver, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
            viewTreeObserver.removeOnGlobalLayoutListener(onGlobalLayoutListener);
        }

        static void p(View view) {
            view.requestFitSystemWindows();
        }

        static void q(View view, Drawable drawable) {
            view.setBackground(drawable);
        }

        static void r(View view, boolean z10) {
            view.setHasTransientState(z10);
        }

        static void s(View view, int i10) {
            view.setImportantForAccessibility(i10);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    static class i {
        static int a() {
            return View.generateViewId();
        }

        static Display b(View view) {
            return view.getDisplay();
        }

        static int c(View view) {
            return view.getLabelFor();
        }

        static int d(View view) {
            return view.getLayoutDirection();
        }

        static int e(View view) {
            return view.getPaddingEnd();
        }

        static int f(View view) {
            return view.getPaddingStart();
        }

        static boolean g(View view) {
            return view.isPaddingRelative();
        }

        static void h(View view, int i10) {
            view.setLabelFor(i10);
        }

        static void i(View view, Paint paint) {
            view.setLayerPaint(paint);
        }

        static void j(View view, int i10) {
            view.setLayoutDirection(i10);
        }

        static void k(View view, int i10, int i11, int i12, int i13) {
            view.setPaddingRelative(i10, i11, i12, i13);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    static class j {
        static Rect a(View view) {
            return view.getClipBounds();
        }

        static boolean b(View view) {
            return view.isInLayout();
        }

        static void c(View view, Rect rect) {
            view.setClipBounds(rect);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    static class k {
        static int a(View view) {
            return view.getAccessibilityLiveRegion();
        }

        static boolean b(View view) {
            return view.isAttachedToWindow();
        }

        static boolean c(View view) {
            return view.isLaidOut();
        }

        static boolean d(View view) {
            return view.isLayoutDirectionResolved();
        }

        static void e(ViewParent viewParent, View view, View view2, int i10) {
            viewParent.notifySubtreeAccessibilityStateChanged(view, view2, i10);
        }

        static void f(View view, int i10) {
            view.setAccessibilityLiveRegion(i10);
        }

        static void g(AccessibilityEvent accessibilityEvent, int i10) {
            accessibilityEvent.setContentChangeTypes(i10);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    static class l {
        static WindowInsets a(View view, WindowInsets windowInsets) {
            return view.dispatchApplyWindowInsets(windowInsets);
        }

        static WindowInsets b(View view, WindowInsets windowInsets) {
            return view.onApplyWindowInsets(windowInsets);
        }

        static void c(View view) {
            view.requestApplyInsets();
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    private static class m {

        /* JADX INFO: compiled from: ViewCompat.java */
        class a implements View.OnApplyWindowInsetsListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            k0 f2410a = null;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ View f2411b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ androidx.core.view.u f2412c;

            a(View view, androidx.core.view.u uVar) {
                this.f2411b = view;
                this.f2412c = uVar;
            }

            @Override // android.view.View.OnApplyWindowInsetsListener
            public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
                k0 k0VarW = k0.w(windowInsets, view);
                int i10 = Build.VERSION.SDK_INT;
                if (i10 < 30) {
                    m.a(windowInsets, this.f2411b);
                    if (k0VarW.equals(this.f2410a)) {
                        return this.f2412c.a(view, k0VarW).u();
                    }
                }
                this.f2410a = k0VarW;
                k0 k0VarA = this.f2412c.a(view, k0VarW);
                if (i10 >= 30) {
                    return k0VarA.u();
                }
                a0.n0(view);
                return k0VarA.u();
            }
        }

        static void a(WindowInsets windowInsets, View view) {
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view.getTag(w.c.T);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view, windowInsets);
            }
        }

        static k0 b(View view, k0 k0Var, Rect rect) {
            WindowInsets windowInsetsU = k0Var.u();
            if (windowInsetsU != null) {
                return k0.w(view.computeSystemWindowInsets(windowInsetsU, rect), view);
            }
            rect.setEmpty();
            return k0Var;
        }

        static boolean c(View view, float f10, float f11, boolean z10) {
            return view.dispatchNestedFling(f10, f11, z10);
        }

        static boolean d(View view, float f10, float f11) {
            return view.dispatchNestedPreFling(f10, f11);
        }

        static boolean e(View view, int i10, int i11, int[] iArr, int[] iArr2) {
            return view.dispatchNestedPreScroll(i10, i11, iArr, iArr2);
        }

        static boolean f(View view, int i10, int i11, int i12, int i13, int[] iArr) {
            return view.dispatchNestedScroll(i10, i11, i12, i13, iArr);
        }

        static ColorStateList g(View view) {
            return view.getBackgroundTintList();
        }

        static PorterDuff.Mode h(View view) {
            return view.getBackgroundTintMode();
        }

        static float i(View view) {
            return view.getElevation();
        }

        public static k0 j(View view) {
            return k0.a.a(view);
        }

        static String k(View view) {
            return view.getTransitionName();
        }

        static float l(View view) {
            return view.getTranslationZ();
        }

        static float m(View view) {
            return view.getZ();
        }

        static boolean n(View view) {
            return view.hasNestedScrollingParent();
        }

        static boolean o(View view) {
            return view.isImportantForAccessibility();
        }

        static boolean p(View view) {
            return view.isNestedScrollingEnabled();
        }

        static void q(View view, ColorStateList colorStateList) {
            view.setBackgroundTintList(colorStateList);
        }

        static void r(View view, PorterDuff.Mode mode) {
            view.setBackgroundTintMode(mode);
        }

        static void s(View view, float f10) {
            view.setElevation(f10);
        }

        static void t(View view, boolean z10) {
            view.setNestedScrollingEnabled(z10);
        }

        static void u(View view, androidx.core.view.u uVar) {
            if (Build.VERSION.SDK_INT < 30) {
                view.setTag(w.c.L, uVar);
            }
            if (uVar == null) {
                view.setOnApplyWindowInsetsListener((View.OnApplyWindowInsetsListener) view.getTag(w.c.T));
            } else {
                view.setOnApplyWindowInsetsListener(new a(view, uVar));
            }
        }

        static void v(View view, String str) {
            view.setTransitionName(str);
        }

        static void w(View view, float f10) {
            view.setTranslationZ(f10);
        }

        static void x(View view, float f10) {
            view.setZ(f10);
        }

        static boolean y(View view, int i10) {
            return view.startNestedScroll(i10);
        }

        static void z(View view) {
            view.stopNestedScroll();
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    private static class n {
        public static k0 a(View view) {
            WindowInsets rootWindowInsets = view.getRootWindowInsets();
            if (rootWindowInsets == null) {
                return null;
            }
            k0 k0VarV = k0.v(rootWindowInsets);
            k0VarV.s(k0VarV);
            k0VarV.d(view.getRootView());
            return k0VarV;
        }

        static int b(View view) {
            return view.getScrollIndicators();
        }

        static void c(View view, int i10) {
            view.setScrollIndicators(i10);
        }

        static void d(View view, int i10, int i11) {
            view.setScrollIndicators(i10, i11);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    static class o {
        static void a(View view, Collection<View> collection, int i10) {
            view.addKeyboardNavigationClusters(collection, i10);
        }

        static int b(View view) {
            return view.getImportantForAutofill();
        }

        static int c(View view) {
            return view.getNextClusterForwardId();
        }

        static boolean d(View view) {
            return view.hasExplicitFocusable();
        }

        static boolean e(View view) {
            return view.isFocusedByDefault();
        }

        static boolean f(View view) {
            return view.isImportantForAutofill();
        }

        static boolean g(View view) {
            return view.isKeyboardNavigationCluster();
        }

        static View h(View view, View view2, int i10) {
            return view.keyboardNavigationClusterSearch(view2, i10);
        }

        static boolean i(View view) {
            return view.restoreDefaultFocus();
        }

        static void j(View view, String... strArr) {
            view.setAutofillHints(strArr);
        }

        static void k(View view, boolean z10) {
            view.setFocusedByDefault(z10);
        }

        static void l(View view, int i10) {
            view.setImportantForAutofill(i10);
        }

        static void m(View view, boolean z10) {
            view.setKeyboardNavigationCluster(z10);
        }

        static void n(View view, int i10) {
            view.setNextClusterForwardId(i10);
        }

        static void o(View view, CharSequence charSequence) {
            view.setTooltipText(charSequence);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    static class p {
        static void a(View view, final u uVar) {
            int i10 = w.c.S;
            o.g gVar = (o.g) view.getTag(i10);
            if (gVar == null) {
                gVar = new o.g();
                view.setTag(i10, gVar);
            }
            Objects.requireNonNull(uVar);
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener = new View.OnUnhandledKeyEventListener() { // from class: androidx.core.view.b0
                @Override // android.view.View.OnUnhandledKeyEventListener
                public final boolean onUnhandledKeyEvent(View view2, KeyEvent keyEvent) {
                    return uVar.onUnhandledKeyEvent(view2, keyEvent);
                }
            };
            gVar.put(uVar, onUnhandledKeyEventListener);
            view.addOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        static CharSequence b(View view) {
            return view.getAccessibilityPaneTitle();
        }

        static boolean c(View view) {
            return view.isAccessibilityHeading();
        }

        static boolean d(View view) {
            return view.isScreenReaderFocusable();
        }

        static void e(View view, u uVar) {
            View.OnUnhandledKeyEventListener onUnhandledKeyEventListener;
            o.g gVar = (o.g) view.getTag(w.c.S);
            if (gVar == null || (onUnhandledKeyEventListener = (View.OnUnhandledKeyEventListener) gVar.get(uVar)) == null) {
                return;
            }
            view.removeOnUnhandledKeyEventListener(onUnhandledKeyEventListener);
        }

        static <T> T f(View view, int i10) {
            return (T) view.requireViewById(i10);
        }

        static void g(View view, boolean z10) {
            view.setAccessibilityHeading(z10);
        }

        static void h(View view, CharSequence charSequence) {
            view.setAccessibilityPaneTitle(charSequence);
        }

        static void i(View view, boolean z10) {
            view.setScreenReaderFocusable(z10);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    private static class q {
        static View.AccessibilityDelegate a(View view) {
            return view.getAccessibilityDelegate();
        }

        static List<Rect> b(View view) {
            return view.getSystemGestureExclusionRects();
        }

        static void c(View view, Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i10, int i11) {
            view.saveAttributeDataForStyleable(context, iArr, attributeSet, typedArray, i10, i11);
        }

        static void d(View view, List<Rect> list) {
            view.setSystemGestureExclusionRects(list);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    private static class r {
        static CharSequence a(View view) {
            return view.getStateDescription();
        }

        static void b(View view, CharSequence charSequence) {
            view.setStateDescription(charSequence);
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    private static final class s {
        public static String[] a(View view) {
            return view.getReceiveContentMimeTypes();
        }

        public static androidx.core.view.c b(View view, androidx.core.view.c cVar) {
            ContentInfo contentInfoF = cVar.f();
            ContentInfo contentInfoPerformReceiveContent = view.performReceiveContent(contentInfoF);
            if (contentInfoPerformReceiveContent == null) {
                return null;
            }
            return contentInfoPerformReceiveContent == contentInfoF ? cVar : androidx.core.view.c.g(contentInfoPerformReceiveContent);
        }

        public static void c(View view, String[] strArr, androidx.core.view.v vVar) {
            if (vVar == null) {
                view.setOnReceiveContentListener(strArr, null);
            } else {
                view.setOnReceiveContentListener(strArr, new t(vVar));
            }
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    private static final class t implements OnReceiveContentListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final androidx.core.view.v f2413a;

        t(androidx.core.view.v vVar) {
            this.f2413a = vVar;
        }

        @Override // android.view.OnReceiveContentListener
        public ContentInfo onReceiveContent(View view, ContentInfo contentInfo) {
            androidx.core.view.c cVarG = androidx.core.view.c.g(contentInfo);
            androidx.core.view.c cVarA = this.f2413a.a(view, cVarG);
            if (cVarA == null) {
                return null;
            }
            return cVarA == cVarG ? contentInfo : cVarA.f();
        }
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    public interface u {
        boolean onUnhandledKeyEvent(View view, KeyEvent keyEvent);
    }

    /* JADX INFO: compiled from: ViewCompat.java */
    static class v {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final ArrayList<WeakReference<View>> f2414d = new ArrayList<>();

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private WeakHashMap<View, Boolean> f2415a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SparseArray<WeakReference<View>> f2416b = null;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private WeakReference<KeyEvent> f2417c = null;

        v() {
        }

        static v a(View view) {
            int i10 = w.c.R;
            v vVar = (v) view.getTag(i10);
            if (vVar != null) {
                return vVar;
            }
            v vVar2 = new v();
            view.setTag(i10, vVar2);
            return vVar2;
        }

        private View c(View view, KeyEvent keyEvent) {
            WeakHashMap<View, Boolean> weakHashMap = this.f2415a;
            if (weakHashMap != null && weakHashMap.containsKey(view)) {
                if (view instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) view;
                    for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                        View viewC = c(viewGroup.getChildAt(childCount), keyEvent);
                        if (viewC != null) {
                            return viewC;
                        }
                    }
                }
                if (e(view, keyEvent)) {
                    return view;
                }
            }
            return null;
        }

        private SparseArray<WeakReference<View>> d() {
            if (this.f2416b == null) {
                this.f2416b = new SparseArray<>();
            }
            return this.f2416b;
        }

        private boolean e(View view, KeyEvent keyEvent) {
            ArrayList arrayList = (ArrayList) view.getTag(w.c.S);
            if (arrayList == null) {
                return false;
            }
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (((u) arrayList.get(size)).onUnhandledKeyEvent(view, keyEvent)) {
                    return true;
                }
            }
            return false;
        }

        private void g() {
            WeakHashMap<View, Boolean> weakHashMap = this.f2415a;
            if (weakHashMap != null) {
                weakHashMap.clear();
            }
            ArrayList<WeakReference<View>> arrayList = f2414d;
            if (arrayList.isEmpty()) {
                return;
            }
            synchronized (arrayList) {
                if (this.f2415a == null) {
                    this.f2415a = new WeakHashMap<>();
                }
                for (int size = arrayList.size() - 1; size >= 0; size--) {
                    ArrayList<WeakReference<View>> arrayList2 = f2414d;
                    View view = arrayList2.get(size).get();
                    if (view == null) {
                        arrayList2.remove(size);
                    } else {
                        this.f2415a.put(view, Boolean.TRUE);
                        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
                            this.f2415a.put((View) parent, Boolean.TRUE);
                        }
                    }
                }
            }
        }

        boolean b(View view, KeyEvent keyEvent) {
            if (keyEvent.getAction() == 0) {
                g();
            }
            View viewC = c(view, keyEvent);
            if (keyEvent.getAction() == 0) {
                int keyCode = keyEvent.getKeyCode();
                if (viewC != null && !KeyEvent.isModifierKey(keyCode)) {
                    d().put(keyCode, new WeakReference<>(viewC));
                }
            }
            return viewC != null;
        }

        boolean f(KeyEvent keyEvent) {
            int iIndexOfKey;
            WeakReference<KeyEvent> weakReference = this.f2417c;
            if (weakReference != null && weakReference.get() == keyEvent) {
                return false;
            }
            this.f2417c = new WeakReference<>(keyEvent);
            WeakReference<View> weakReferenceValueAt = null;
            SparseArray<WeakReference<View>> sparseArrayD = d();
            if (keyEvent.getAction() == 1 && (iIndexOfKey = sparseArrayD.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                weakReferenceValueAt = sparseArrayD.valueAt(iIndexOfKey);
                sparseArrayD.removeAt(iIndexOfKey);
            }
            if (weakReferenceValueAt == null) {
                weakReferenceValueAt = sparseArrayD.get(keyEvent.getKeyCode());
            }
            if (weakReferenceValueAt == null) {
                return false;
            }
            View view = weakReferenceValueAt.get();
            if (view != null && a0.T(view)) {
                e(view, keyEvent);
            }
            return true;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static w A(View view) {
        return view instanceof w ? (w) view : f2403l;
    }

    public static void A0(View view, int i10) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 19) {
            h.s(view, i10);
        } else if (i11 >= 16) {
            if (i10 == 4) {
                i10 = 2;
            }
            h.s(view, i10);
        }
    }

    public static boolean B(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.b(view);
        }
        return false;
    }

    public static void B0(View view, int i10) {
        if (Build.VERSION.SDK_INT >= 26) {
            o.l(view, i10);
        }
    }

    public static int C(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.c(view);
        }
        return 0;
    }

    public static void C0(View view, androidx.core.view.u uVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            m.u(view, uVar);
        }
    }

    @SuppressLint({"InlinedApi"})
    public static int D(View view) {
        if (Build.VERSION.SDK_INT >= 26) {
            return o.b(view);
        }
        return 0;
    }

    public static void D0(View view, int i10, int i11, int i12, int i13) {
        if (Build.VERSION.SDK_INT >= 17) {
            i.k(view, i10, i11, i12, i13);
        } else {
            view.setPadding(i10, i11, i12, i13);
        }
    }

    public static int E(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return i.d(view);
        }
        return 0;
    }

    public static void E0(View view, boolean z10) {
        p0().g(view, Boolean.valueOf(z10));
    }

    public static int F(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.d(view);
        }
        if (!f2396e) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinHeight");
                f2395d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f2396e = true;
        }
        Field field = f2395d;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception unused2) {
            return 0;
        }
    }

    public static void F0(View view, int i10, int i11) {
        if (Build.VERSION.SDK_INT >= 23) {
            n.d(view, i10, i11);
        }
    }

    public static int G(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.e(view);
        }
        if (!f2394c) {
            try {
                Field declaredField = View.class.getDeclaredField("mMinWidth");
                f2393b = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused) {
            }
            f2394c = true;
        }
        Field field = f2393b;
        if (field == null) {
            return 0;
        }
        try {
            return ((Integer) field.get(view)).intValue();
        } catch (Exception unused2) {
            return 0;
        }
    }

    public static void G0(View view, String str) {
        if (Build.VERSION.SDK_INT >= 21) {
            m.v(view, str);
            return;
        }
        if (f2397f == null) {
            f2397f = new WeakHashMap<>();
        }
        f2397f.put(view, str);
    }

    public static String[] H(View view) {
        return Build.VERSION.SDK_INT >= 31 ? s.a(view) : (String[]) view.getTag(w.c.N);
    }

    private static void H0(View view) {
        if (C(view) == 0) {
            A0(view, 1);
        }
        for (ViewParent parent = view.getParent(); parent instanceof View; parent = parent.getParent()) {
            if (C((View) parent) == 4) {
                A0(view, 2);
                return;
            }
        }
    }

    public static int I(View view) {
        return Build.VERSION.SDK_INT >= 17 ? i.e(view) : view.getPaddingRight();
    }

    private static f<CharSequence> I0() {
        return new c(w.c.P, CharSequence.class, 64, 30);
    }

    public static int J(View view) {
        return Build.VERSION.SDK_INT >= 17 ? i.f(view) : view.getPaddingLeft();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void J0(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            m.z(view);
        } else if (view instanceof androidx.core.view.o) {
            ((androidx.core.view.o) view).stopNestedScroll();
        }
    }

    public static k0 K(View view) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 23) {
            return n.a(view);
        }
        if (i10 >= 21) {
            return m.j(view);
        }
        return null;
    }

    private static void K0(View view) {
        float translationY = view.getTranslationY();
        view.setTranslationY(1.0f + translationY);
        view.setTranslationY(translationY);
    }

    public static CharSequence L(View view) {
        return I0().f(view);
    }

    public static String M(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m.k(view);
        }
        WeakHashMap<View, String> weakHashMap = f2397f;
        if (weakHashMap == null) {
            return null;
        }
        return weakHashMap.get(view);
    }

    @Deprecated
    public static int N(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.g(view);
        }
        return 0;
    }

    public static float O(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m.m(view);
        }
        return 0.0f;
    }

    public static boolean P(View view) {
        if (Build.VERSION.SDK_INT >= 15) {
            return g.a(view);
        }
        return false;
    }

    public static boolean Q(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.h(view);
        }
        return true;
    }

    public static boolean R(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.i(view);
        }
        return false;
    }

    public static boolean S(View view) {
        Boolean boolF = b().f(view);
        return boolF != null && boolF.booleanValue();
    }

    public static boolean T(View view) {
        return Build.VERSION.SDK_INT >= 19 ? k.b(view) : view.getWindowToken() != null;
    }

    public static boolean U(View view) {
        return Build.VERSION.SDK_INT >= 19 ? k.c(view) : view.getWidth() > 0 && view.getHeight() > 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static boolean V(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m.p(view);
        }
        if (view instanceof androidx.core.view.o) {
            return ((androidx.core.view.o) view).isNestedScrollingEnabled();
        }
        return false;
    }

    public static boolean W(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return i.g(view);
        }
        return false;
    }

    public static boolean X(View view) {
        Boolean boolF = p0().f(view);
        return boolF != null && boolF.booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ androidx.core.view.c Y(androidx.core.view.c cVar) {
        return cVar;
    }

    static void Z(View view, int i10) {
        AccessibilityManager accessibilityManager = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled()) {
            boolean z10 = r(view) != null && view.isShown() && view.getWindowVisibility() == 0;
            if (q(view) != 0 || z10) {
                AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
                accessibilityEventObtain.setEventType(z10 ? 32 : 2048);
                k.g(accessibilityEventObtain, i10);
                if (z10) {
                    accessibilityEventObtain.getText().add(r(view));
                    H0(view);
                }
                view.sendAccessibilityEventUnchecked(accessibilityEventObtain);
                return;
            }
            if (i10 == 32) {
                AccessibilityEvent accessibilityEventObtain2 = AccessibilityEvent.obtain();
                view.onInitializeAccessibilityEvent(accessibilityEventObtain2);
                accessibilityEventObtain2.setEventType(32);
                k.g(accessibilityEventObtain2, i10);
                accessibilityEventObtain2.setSource(view);
                view.onPopulateAccessibilityEvent(accessibilityEventObtain2);
                accessibilityEventObtain2.getText().add(r(view));
                accessibilityManager.sendAccessibilityEvent(accessibilityEventObtain2);
                return;
            }
            if (view.getParent() != null) {
                try {
                    k.e(view.getParent(), view, view, i10);
                } catch (AbstractMethodError e10) {
                    Log.e("ViewCompat", view.getParent().getClass().getSimpleName() + " does not fully implement ViewParent", e10);
                }
            }
        }
    }

    public static void a0(View view, int i10) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 23) {
            view.offsetLeftAndRight(i10);
            return;
        }
        if (i11 < 21) {
            f(view, i10);
            return;
        }
        Rect rectZ = z();
        boolean z10 = false;
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectZ.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z10 = !rectZ.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        f(view, i10);
        if (z10 && rectZ.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectZ);
        }
    }

    private static f<Boolean> b() {
        return new d(w.c.J, Boolean.class, 28);
    }

    public static void b0(View view, int i10) {
        int i11 = Build.VERSION.SDK_INT;
        if (i11 >= 23) {
            view.offsetTopAndBottom(i10);
            return;
        }
        if (i11 < 21) {
            g(view, i10);
            return;
        }
        Rect rectZ = z();
        boolean z10 = false;
        Object parent = view.getParent();
        if (parent instanceof View) {
            View view2 = (View) parent;
            rectZ.set(view2.getLeft(), view2.getTop(), view2.getRight(), view2.getBottom());
            z10 = !rectZ.intersects(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
        }
        g(view, i10);
        if (z10 && rectZ.intersect(view.getLeft(), view.getTop(), view.getRight(), view.getBottom())) {
            ((View) parent).invalidate(rectZ);
        }
    }

    public static int c(View view, CharSequence charSequence, androidx.core.view.accessibility.f fVar) {
        int iT = t(view, charSequence);
        if (iT != -1) {
            d(view, new c.a(iT, charSequence, fVar));
        }
        return iT;
    }

    public static k0 c0(View view, k0 k0Var) {
        WindowInsets windowInsetsU;
        if (Build.VERSION.SDK_INT >= 21 && (windowInsetsU = k0Var.u()) != null) {
            WindowInsets windowInsetsB = l.b(view, windowInsetsU);
            if (!windowInsetsB.equals(windowInsetsU)) {
                return k0.w(windowInsetsB, view);
            }
        }
        return k0Var;
    }

    private static void d(View view, c.a aVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            l(view);
            l0(aVar.b(), view);
            s(view).add(aVar);
            Z(view, 0);
        }
    }

    public static void d0(View view, androidx.core.view.accessibility.c cVar) {
        view.onInitializeAccessibilityNodeInfo(cVar.w0());
    }

    public static g0 e(View view) {
        if (f2398g == null) {
            f2398g = new WeakHashMap<>();
        }
        g0 g0Var = f2398g.get(view);
        if (g0Var != null) {
            return g0Var;
        }
        g0 g0Var2 = new g0(view);
        f2398g.put(view, g0Var2);
        return g0Var2;
    }

    private static f<CharSequence> e0() {
        return new b(w.c.K, CharSequence.class, 8, 28);
    }

    private static void f(View view, int i10) {
        view.offsetLeftAndRight(i10);
        if (view.getVisibility() == 0) {
            K0(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                K0((View) parent);
            }
        }
    }

    public static boolean f0(View view, int i10, Bundle bundle) {
        if (Build.VERSION.SDK_INT >= 16) {
            return h.j(view, i10, bundle);
        }
        return false;
    }

    private static void g(View view, int i10) {
        view.offsetTopAndBottom(i10);
        if (view.getVisibility() == 0) {
            K0(view);
            Object parent = view.getParent();
            if (parent instanceof View) {
                K0((View) parent);
            }
        }
    }

    public static androidx.core.view.c g0(View view, androidx.core.view.c cVar) {
        if (Log.isLoggable("ViewCompat", 3)) {
            Log.d("ViewCompat", "performReceiveContent: " + cVar + ", view=" + view.getClass().getSimpleName() + "[" + view.getId() + "]");
        }
        if (Build.VERSION.SDK_INT >= 31) {
            return s.b(view, cVar);
        }
        androidx.core.view.v vVar = (androidx.core.view.v) view.getTag(w.c.M);
        if (vVar == null) {
            return A(view).a(cVar);
        }
        androidx.core.view.c cVarA = vVar.a(view, cVar);
        if (cVarA == null) {
            return null;
        }
        return A(view).a(cVarA);
    }

    public static k0 h(View view, k0 k0Var, Rect rect) {
        return Build.VERSION.SDK_INT >= 21 ? m.b(view, k0Var, rect) : k0Var;
    }

    public static void h0(View view) {
        if (Build.VERSION.SDK_INT >= 16) {
            h.k(view);
        } else {
            view.postInvalidate();
        }
    }

    public static k0 i(View view, k0 k0Var) {
        WindowInsets windowInsetsU;
        if (Build.VERSION.SDK_INT >= 21 && (windowInsetsU = k0Var.u()) != null) {
            WindowInsets windowInsetsA = l.a(view, windowInsetsU);
            if (!windowInsetsA.equals(windowInsetsU)) {
                return k0.w(windowInsetsA, view);
            }
        }
        return k0Var;
    }

    public static void i0(View view, Runnable runnable) {
        if (Build.VERSION.SDK_INT >= 16) {
            h.m(view, runnable);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay());
        }
    }

    static boolean j(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return v.a(view).b(view, keyEvent);
    }

    @SuppressLint({"LambdaLast"})
    public static void j0(View view, Runnable runnable, long j10) {
        if (Build.VERSION.SDK_INT >= 16) {
            h.n(view, runnable, j10);
        } else {
            view.postDelayed(runnable, ValueAnimator.getFrameDelay() + j10);
        }
    }

    static boolean k(View view, KeyEvent keyEvent) {
        if (Build.VERSION.SDK_INT >= 28) {
            return false;
        }
        return v.a(view).f(keyEvent);
    }

    public static void k0(View view, int i10) {
        if (Build.VERSION.SDK_INT >= 21) {
            l0(i10, view);
            Z(view, 0);
        }
    }

    static void l(View view) {
        androidx.core.view.a aVarN = n(view);
        if (aVarN == null) {
            aVarN = new androidx.core.view.a();
        }
        q0(view, aVarN);
    }

    private static void l0(int i10, View view) {
        List<c.a> listS = s(view);
        for (int i11 = 0; i11 < listS.size(); i11++) {
            if (listS.get(i11).b() == i10) {
                listS.remove(i11);
                return;
            }
        }
    }

    public static int m() {
        AtomicInteger atomicInteger;
        int i10;
        int i11;
        if (Build.VERSION.SDK_INT >= 17) {
            return i.a();
        }
        do {
            atomicInteger = f2392a;
            i10 = atomicInteger.get();
            i11 = i10 + 1;
            if (i11 > 16777215) {
                i11 = 1;
            }
        } while (!atomicInteger.compareAndSet(i10, i11));
        return i10;
    }

    public static void m0(View view, c.a aVar, CharSequence charSequence, androidx.core.view.accessibility.f fVar) {
        if (fVar == null && charSequence == null) {
            k0(view, aVar.b());
        } else {
            d(view, aVar.a(charSequence, fVar));
        }
    }

    public static androidx.core.view.a n(View view) {
        View.AccessibilityDelegate accessibilityDelegateO = o(view);
        if (accessibilityDelegateO == null) {
            return null;
        }
        return accessibilityDelegateO instanceof a.C0038a ? ((a.C0038a) accessibilityDelegateO).f2391a : new androidx.core.view.a(accessibilityDelegateO);
    }

    public static void n0(View view) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 20) {
            l.c(view);
        } else if (i10 >= 16) {
            h.p(view);
        }
    }

    private static View.AccessibilityDelegate o(View view) {
        return Build.VERSION.SDK_INT >= 29 ? q.a(view) : p(view);
    }

    public static void o0(View view, @SuppressLint({"ContextFirst"}) Context context, int[] iArr, AttributeSet attributeSet, TypedArray typedArray, int i10, int i11) {
        if (Build.VERSION.SDK_INT >= 29) {
            q.c(view, context, iArr, attributeSet, typedArray, i10, i11);
        }
    }

    private static View.AccessibilityDelegate p(View view) {
        if (f2400i) {
            return null;
        }
        if (f2399h == null) {
            try {
                Field declaredField = View.class.getDeclaredField("mAccessibilityDelegate");
                f2399h = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable unused) {
                f2400i = true;
                return null;
            }
        }
        try {
            Object obj = f2399h.get(view);
            if (obj instanceof View.AccessibilityDelegate) {
                return (View.AccessibilityDelegate) obj;
            }
            return null;
        } catch (Throwable unused2) {
            f2400i = true;
            return null;
        }
    }

    private static f<Boolean> p0() {
        return new a(w.c.O, Boolean.class, 28);
    }

    public static int q(View view) {
        if (Build.VERSION.SDK_INT >= 19) {
            return k.a(view);
        }
        return 0;
    }

    public static void q0(View view, androidx.core.view.a aVar) {
        if (aVar == null && (o(view) instanceof a.C0038a)) {
            aVar = new androidx.core.view.a();
        }
        view.setAccessibilityDelegate(aVar == null ? null : aVar.d());
    }

    public static CharSequence r(View view) {
        return e0().f(view);
    }

    public static void r0(View view, boolean z10) {
        b().g(view, Boolean.valueOf(z10));
    }

    private static List<c.a> s(View view) {
        int i10 = w.c.H;
        ArrayList arrayList = (ArrayList) view.getTag(i10);
        if (arrayList != null) {
            return arrayList;
        }
        ArrayList arrayList2 = new ArrayList();
        view.setTag(i10, arrayList2);
        return arrayList2;
    }

    public static void s0(View view, int i10) {
        if (Build.VERSION.SDK_INT >= 19) {
            k.f(view, i10);
        }
    }

    private static int t(View view, CharSequence charSequence) {
        List<c.a> listS = s(view);
        for (int i10 = 0; i10 < listS.size(); i10++) {
            if (TextUtils.equals(charSequence, listS.get(i10).c())) {
                return listS.get(i10).b();
            }
        }
        int i11 = 0;
        int i12 = -1;
        while (true) {
            int[] iArr = f2402k;
            if (i11 >= iArr.length || i12 != -1) {
                break;
            }
            int i13 = iArr[i11];
            boolean z10 = true;
            for (int i14 = 0; i14 < listS.size(); i14++) {
                z10 &= listS.get(i14).b() != i13;
            }
            if (z10) {
                i12 = i13;
            }
            i11++;
        }
        return i12;
    }

    public static void t0(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 19) {
            e0().g(view, charSequence);
            if (charSequence != null) {
                f2404m.a(view);
            } else {
                f2404m.d(view);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static ColorStateList u(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m.g(view);
        }
        if (view instanceof y) {
            return ((y) view).getSupportBackgroundTintList();
        }
        return null;
    }

    public static void u0(View view, Drawable drawable) {
        if (Build.VERSION.SDK_INT >= 16) {
            h.q(view, drawable);
        } else {
            view.setBackgroundDrawable(drawable);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static PorterDuff.Mode v(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m.h(view);
        }
        if (view instanceof y) {
            return ((y) view).getSupportBackgroundTintMode();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void v0(View view, ColorStateList colorStateList) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 21) {
            if (view instanceof y) {
                ((y) view).setSupportBackgroundTintList(colorStateList);
                return;
            }
            return;
        }
        m.q(view, colorStateList);
        if (i10 == 21) {
            Drawable background = view.getBackground();
            boolean z10 = (m.g(view) == null && m.h(view) == null) ? false : true;
            if (background == null || !z10) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            h.q(view, background);
        }
    }

    public static Rect w(View view) {
        if (Build.VERSION.SDK_INT >= 18) {
            return j.a(view);
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static void w0(View view, PorterDuff.Mode mode) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 21) {
            if (view instanceof y) {
                ((y) view).setSupportBackgroundTintMode(mode);
                return;
            }
            return;
        }
        m.r(view, mode);
        if (i10 == 21) {
            Drawable background = view.getBackground();
            boolean z10 = (m.g(view) == null && m.h(view) == null) ? false : true;
            if (background == null || !z10) {
                return;
            }
            if (background.isStateful()) {
                background.setState(view.getDrawableState());
            }
            h.q(view, background);
        }
    }

    public static Display x(View view) {
        if (Build.VERSION.SDK_INT >= 17) {
            return i.b(view);
        }
        if (T(view)) {
            return ((WindowManager) view.getContext().getSystemService("window")).getDefaultDisplay();
        }
        return null;
    }

    public static void x0(View view, Rect rect) {
        if (Build.VERSION.SDK_INT >= 18) {
            j.c(view, rect);
        }
    }

    public static float y(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            return m.i(view);
        }
        return 0.0f;
    }

    public static void y0(View view, float f10) {
        if (Build.VERSION.SDK_INT >= 21) {
            m.s(view, f10);
        }
    }

    private static Rect z() {
        if (f2401j == null) {
            f2401j = new ThreadLocal<>();
        }
        Rect rect = f2401j.get();
        if (rect == null) {
            rect = new Rect();
            f2401j.set(rect);
        }
        rect.setEmpty();
        return rect;
    }

    public static void z0(View view, boolean z10) {
        if (Build.VERSION.SDK_INT >= 16) {
            h.r(view, z10);
        }
    }
}
