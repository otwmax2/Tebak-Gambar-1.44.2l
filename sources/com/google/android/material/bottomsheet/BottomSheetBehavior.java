package com.google.android.material.bottomsheet;

import android.R;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a0;
import androidx.core.view.accessibility.c;
import androidx.core.view.accessibility.f;
import androidx.core.view.k0;
import c0.c;
import com.google.android.material.internal.k;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import o4.k;
import y3.i;
import y3.j;

/* JADX INFO: loaded from: classes2.dex */
public class BottomSheetBehavior<V extends View> extends CoordinatorLayout.c<V> {
    private static final int R = j.f36762e;
    c0.c A;
    private boolean B;
    private int C;
    private boolean D;
    private int E;
    int F;
    int G;
    WeakReference<V> H;
    WeakReference<View> I;
    private final ArrayList<f> J;
    private VelocityTracker K;
    int L;
    private int M;
    boolean N;
    private Map<View, Integer> O;
    private int P;
    private final c.AbstractC0087c Q;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f25146a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private boolean f25147b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f25148c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f25149d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f25150e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f25151f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f25152g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f25153h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f25154i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private o4.g f25155j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f25156k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f25157l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private k f25158m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private boolean f25159n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private BottomSheetBehavior<V>.h f25160o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ValueAnimator f25161p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    int f25162q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    int f25163r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    int f25164s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    float f25165t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    int f25166u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    float f25167v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    boolean f25168w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f25169x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f25170y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    int f25171z;

    class a implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ View f25172o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ int f25173p;

        a(View view, int i10) {
            this.f25172o = view;
            this.f25173p = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            BottomSheetBehavior.this.t0(this.f25172o, this.f25173p);
        }
    }

    class b implements ValueAnimator.AnimatorUpdateListener {
        b() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            if (BottomSheetBehavior.this.f25155j != null) {
                BottomSheetBehavior.this.f25155j.X(fFloatValue);
            }
        }
    }

    class c implements k.c {
        c() {
        }

        @Override // com.google.android.material.internal.k.c
        public k0 a(View view, k0 k0Var, k.d dVar) {
            BottomSheetBehavior.this.f25156k = k0Var.g().f2199d;
            BottomSheetBehavior.this.A0(false);
            return k0Var;
        }
    }

    class d extends c.AbstractC0087c {
        d() {
        }

        private boolean n(View view) {
            int top = view.getTop();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return top > (bottomSheetBehavior.G + bottomSheetBehavior.X()) / 2;
        }

        @Override // c0.c.AbstractC0087c
        public int a(View view, int i10, int i11) {
            return view.getLeft();
        }

        @Override // c0.c.AbstractC0087c
        public int b(View view, int i10, int i11) {
            int iX = BottomSheetBehavior.this.X();
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return y.a.b(i10, iX, bottomSheetBehavior.f25168w ? bottomSheetBehavior.G : bottomSheetBehavior.f25166u);
        }

        @Override // c0.c.AbstractC0087c
        public int e(View view) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            return bottomSheetBehavior.f25168w ? bottomSheetBehavior.G : bottomSheetBehavior.f25166u;
        }

        @Override // c0.c.AbstractC0087c
        public void j(int i10) {
            if (i10 == 1 && BottomSheetBehavior.this.f25170y) {
                BottomSheetBehavior.this.r0(1);
            }
        }

        @Override // c0.c.AbstractC0087c
        public void k(View view, int i10, int i11, int i12, int i13) {
            BottomSheetBehavior.this.U(i11);
        }

        @Override // c0.c.AbstractC0087c
        public void l(View view, float f10, float f11) {
            int i10;
            int i11 = 4;
            if (f11 < 0.0f) {
                if (BottomSheetBehavior.this.f25147b) {
                    i10 = BottomSheetBehavior.this.f25163r;
                } else {
                    int top = view.getTop();
                    BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
                    int i12 = bottomSheetBehavior.f25164s;
                    if (top > i12) {
                        i10 = i12;
                        i11 = 6;
                    } else {
                        i10 = bottomSheetBehavior.f25162q;
                    }
                }
                i11 = 3;
            } else {
                BottomSheetBehavior bottomSheetBehavior2 = BottomSheetBehavior.this;
                if (bottomSheetBehavior2.f25168w && bottomSheetBehavior2.v0(view, f11)) {
                    if ((Math.abs(f10) >= Math.abs(f11) || f11 <= 500.0f) && !n(view)) {
                        if (BottomSheetBehavior.this.f25147b) {
                            i10 = BottomSheetBehavior.this.f25163r;
                        } else if (Math.abs(view.getTop() - BottomSheetBehavior.this.f25162q) < Math.abs(view.getTop() - BottomSheetBehavior.this.f25164s)) {
                            i10 = BottomSheetBehavior.this.f25162q;
                        } else {
                            i10 = BottomSheetBehavior.this.f25164s;
                            i11 = 6;
                        }
                        i11 = 3;
                    } else {
                        i10 = BottomSheetBehavior.this.G;
                        i11 = 5;
                    }
                } else if (f11 == 0.0f || Math.abs(f10) > Math.abs(f11)) {
                    int top2 = view.getTop();
                    if (!BottomSheetBehavior.this.f25147b) {
                        BottomSheetBehavior bottomSheetBehavior3 = BottomSheetBehavior.this;
                        int i13 = bottomSheetBehavior3.f25164s;
                        if (top2 < i13) {
                            if (top2 < Math.abs(top2 - bottomSheetBehavior3.f25166u)) {
                                i10 = BottomSheetBehavior.this.f25162q;
                                i11 = 3;
                            } else {
                                i10 = BottomSheetBehavior.this.f25164s;
                            }
                        } else if (Math.abs(top2 - i13) < Math.abs(top2 - BottomSheetBehavior.this.f25166u)) {
                            i10 = BottomSheetBehavior.this.f25164s;
                        } else {
                            i10 = BottomSheetBehavior.this.f25166u;
                        }
                        i11 = 6;
                    } else if (Math.abs(top2 - BottomSheetBehavior.this.f25163r) < Math.abs(top2 - BottomSheetBehavior.this.f25166u)) {
                        i10 = BottomSheetBehavior.this.f25163r;
                        i11 = 3;
                    } else {
                        i10 = BottomSheetBehavior.this.f25166u;
                    }
                } else if (BottomSheetBehavior.this.f25147b) {
                    i10 = BottomSheetBehavior.this.f25166u;
                } else {
                    int top3 = view.getTop();
                    if (Math.abs(top3 - BottomSheetBehavior.this.f25164s) < Math.abs(top3 - BottomSheetBehavior.this.f25166u)) {
                        i10 = BottomSheetBehavior.this.f25164s;
                        i11 = 6;
                    } else {
                        i10 = BottomSheetBehavior.this.f25166u;
                    }
                }
            }
            BottomSheetBehavior.this.w0(view, i11, i10, true);
        }

        @Override // c0.c.AbstractC0087c
        public boolean m(View view, int i10) {
            BottomSheetBehavior bottomSheetBehavior = BottomSheetBehavior.this;
            int i11 = bottomSheetBehavior.f25171z;
            if (i11 == 1 || bottomSheetBehavior.N) {
                return false;
            }
            if (i11 == 3 && bottomSheetBehavior.L == i10) {
                WeakReference<View> weakReference = bottomSheetBehavior.I;
                View view2 = weakReference != null ? weakReference.get() : null;
                if (view2 != null && view2.canScrollVertically(-1)) {
                    return false;
                }
            }
            WeakReference<V> weakReference2 = BottomSheetBehavior.this.H;
            return weakReference2 != null && weakReference2.get() == view;
        }
    }

    class e implements androidx.core.view.accessibility.f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f25178a;

        e(int i10) {
            this.f25178a = i10;
        }

        @Override // androidx.core.view.accessibility.f
        public boolean a(View view, f.a aVar) {
            BottomSheetBehavior.this.q0(this.f25178a);
            return true;
        }
    }

    public static abstract class f {
        public abstract void a(View view, float f10);

        public abstract void b(View view, int i10);
    }

    private class h implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final View f25185o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private boolean f25186p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        int f25187q;

        h(View view, int i10) {
            this.f25185o = view;
            this.f25187q = i10;
        }

        @Override // java.lang.Runnable
        public void run() {
            c0.c cVar = BottomSheetBehavior.this.A;
            if (cVar == null || !cVar.k(true)) {
                BottomSheetBehavior.this.r0(this.f25187q);
            } else {
                a0.i0(this.f25185o, this);
            }
            this.f25186p = false;
        }
    }

    public BottomSheetBehavior() {
        this.f25146a = 0;
        this.f25147b = true;
        this.f25148c = false;
        this.f25160o = null;
        this.f25165t = 0.5f;
        this.f25167v = -1.0f;
        this.f25170y = true;
        this.f25171z = 4;
        this.J = new ArrayList<>();
        this.P = -1;
        this.Q = new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A0(boolean z10) {
        V v10;
        if (this.H != null) {
            N();
            if (this.f25171z != 4 || (v10 = this.H.get()) == null) {
                return;
            }
            if (z10) {
                u0(this.f25171z);
            } else {
                v10.requestLayout();
            }
        }
    }

    private int L(V v10, int i10, int i11) {
        return a0.c(v10, v10.getResources().getString(i10), Q(i11));
    }

    private void N() {
        int iP = P();
        if (this.f25147b) {
            this.f25166u = Math.max(this.G - iP, this.f25163r);
        } else {
            this.f25166u = this.G - iP;
        }
    }

    private void O() {
        this.f25164s = (int) (this.G * (1.0f - this.f25165t));
    }

    private int P() {
        int i10;
        return this.f25151f ? Math.min(Math.max(this.f25152g, this.G - ((this.F * 9) / 16)), this.E) : (this.f25157l || (i10 = this.f25156k) <= 0) ? this.f25150e : Math.max(this.f25150e, i10 + this.f25153h);
    }

    private androidx.core.view.accessibility.f Q(int i10) {
        return new e(i10);
    }

    private void R(Context context, AttributeSet attributeSet, boolean z10) {
        S(context, attributeSet, z10, null);
    }

    private void S(Context context, AttributeSet attributeSet, boolean z10, ColorStateList colorStateList) {
        if (this.f25154i) {
            this.f25158m = o4.k.e(context, attributeSet, y3.b.f36633c, R).m();
            o4.g gVar = new o4.g(this.f25158m);
            this.f25155j = gVar;
            gVar.M(context);
            if (z10 && colorStateList != null) {
                this.f25155j.W(colorStateList);
                return;
            }
            TypedValue typedValue = new TypedValue();
            context.getTheme().resolveAttribute(R.attr.colorBackground, typedValue, true);
            this.f25155j.setTint(typedValue.data);
        }
    }

    private void T() {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f25161p = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(500L);
        this.f25161p.addUpdateListener(new b());
    }

    public static <V extends View> BottomSheetBehavior<V> W(V v10) {
        ViewGroup.LayoutParams layoutParams = v10.getLayoutParams();
        if (!(layoutParams instanceof CoordinatorLayout.f)) {
            throw new IllegalArgumentException("The view is not a child of CoordinatorLayout");
        }
        CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) layoutParams).f();
        if (cVarF instanceof BottomSheetBehavior) {
            return (BottomSheetBehavior) cVarF;
        }
        throw new IllegalArgumentException("The view is not associated with BottomSheetBehavior");
    }

    private float Z() {
        VelocityTracker velocityTracker = this.K;
        if (velocityTracker == null) {
            return 0.0f;
        }
        velocityTracker.computeCurrentVelocity(1000, this.f25149d);
        return this.K.getYVelocity(this.L);
    }

    private void d0(V v10, c.a aVar, int i10) {
        a0.m0(v10, aVar, null, Q(i10));
    }

    private void e0() {
        this.L = -1;
        VelocityTracker velocityTracker = this.K;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.K = null;
        }
    }

    private void f0(g gVar) {
        int i10 = this.f25146a;
        if (i10 == 0) {
            return;
        }
        if (i10 == -1 || (i10 & 1) == 1) {
            this.f25150e = gVar.f25181r;
        }
        if (i10 == -1 || (i10 & 2) == 2) {
            this.f25147b = gVar.f25182s;
        }
        if (i10 == -1 || (i10 & 4) == 4) {
            this.f25168w = gVar.f25183t;
        }
        if (i10 == -1 || (i10 & 8) == 8) {
            this.f25169x = gVar.f25184u;
        }
    }

    private void s0(View view) {
        if (Build.VERSION.SDK_INT < 29 || a0() || this.f25151f) {
            return;
        }
        com.google.android.material.internal.k.a(view, new c());
    }

    private void u0(int i10) {
        V v10 = this.H.get();
        if (v10 == null) {
            return;
        }
        ViewParent parent = v10.getParent();
        if (parent != null && parent.isLayoutRequested() && a0.T(v10)) {
            v10.post(new a(v10, i10));
        } else {
            t0(v10, i10);
        }
    }

    private void x0() {
        V v10;
        WeakReference<V> weakReference = this.H;
        if (weakReference == null || (v10 = weakReference.get()) == null) {
            return;
        }
        a0.k0(v10, 524288);
        a0.k0(v10, 262144);
        a0.k0(v10, 1048576);
        int i10 = this.P;
        if (i10 != -1) {
            a0.k0(v10, i10);
        }
        if (this.f25171z != 6) {
            this.P = L(v10, i.f36742a, 6);
        }
        if (this.f25168w && this.f25171z != 5) {
            d0(v10, c.a.f2445y, 5);
        }
        int i11 = this.f25171z;
        if (i11 == 3) {
            d0(v10, c.a.f2444x, this.f25147b ? 4 : 6);
            return;
        }
        if (i11 == 4) {
            d0(v10, c.a.f2443w, this.f25147b ? 3 : 6);
        } else {
            if (i11 != 6) {
                return;
            }
            d0(v10, c.a.f2444x, 4);
            d0(v10, c.a.f2443w, 3);
        }
    }

    private void y0(int i10) {
        ValueAnimator valueAnimator;
        if (i10 == 2) {
            return;
        }
        boolean z10 = i10 == 3;
        if (this.f25159n != z10) {
            this.f25159n = z10;
            if (this.f25155j == null || (valueAnimator = this.f25161p) == null) {
                return;
            }
            if (valueAnimator.isRunning()) {
                this.f25161p.reverse();
                return;
            }
            float f10 = z10 ? 0.0f : 1.0f;
            this.f25161p.setFloatValues(1.0f - f10, f10);
            this.f25161p.start();
        }
    }

    private void z0(boolean z10) {
        Map<View, Integer> map;
        WeakReference<V> weakReference = this.H;
        if (weakReference == null) {
            return;
        }
        ViewParent parent = weakReference.get().getParent();
        if (parent instanceof CoordinatorLayout) {
            CoordinatorLayout coordinatorLayout = (CoordinatorLayout) parent;
            int childCount = coordinatorLayout.getChildCount();
            if (Build.VERSION.SDK_INT >= 16 && z10) {
                if (this.O != null) {
                    return;
                } else {
                    this.O = new HashMap(childCount);
                }
            }
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if (childAt != this.H.get()) {
                    if (z10) {
                        if (Build.VERSION.SDK_INT >= 16) {
                            this.O.put(childAt, Integer.valueOf(childAt.getImportantForAccessibility()));
                        }
                        if (this.f25148c) {
                            a0.A0(childAt, 4);
                        }
                    } else if (this.f25148c && (map = this.O) != null && map.containsKey(childAt)) {
                        a0.A0(childAt, this.O.get(childAt).intValue());
                    }
                }
            }
            if (!z10) {
                this.O = null;
            } else if (this.f25148c) {
                this.H.get().sendAccessibilityEvent(8);
            }
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean A(CoordinatorLayout coordinatorLayout, V v10, View view, View view2, int i10, int i11) {
        this.C = 0;
        this.D = false;
        return (i10 & 2) != 0;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void C(CoordinatorLayout coordinatorLayout, V v10, View view, int i10) {
        int i11;
        int i12 = 3;
        if (v10.getTop() == X()) {
            r0(3);
            return;
        }
        WeakReference<View> weakReference = this.I;
        if (weakReference != null && view == weakReference.get() && this.D) {
            if (this.C > 0) {
                if (this.f25147b) {
                    i11 = this.f25163r;
                } else {
                    int top = v10.getTop();
                    int i13 = this.f25164s;
                    if (top > i13) {
                        i11 = i13;
                        i12 = 6;
                    } else {
                        i11 = this.f25162q;
                    }
                }
            } else if (this.f25168w && v0(v10, Z())) {
                i11 = this.G;
                i12 = 5;
            } else if (this.C == 0) {
                int top2 = v10.getTop();
                if (!this.f25147b) {
                    int i14 = this.f25164s;
                    if (top2 < i14) {
                        if (top2 < Math.abs(top2 - this.f25166u)) {
                            i11 = this.f25162q;
                        } else {
                            i11 = this.f25164s;
                        }
                    } else if (Math.abs(top2 - i14) < Math.abs(top2 - this.f25166u)) {
                        i11 = this.f25164s;
                    } else {
                        i11 = this.f25166u;
                        i12 = 4;
                    }
                    i12 = 6;
                } else if (Math.abs(top2 - this.f25163r) < Math.abs(top2 - this.f25166u)) {
                    i11 = this.f25163r;
                } else {
                    i11 = this.f25166u;
                    i12 = 4;
                }
            } else {
                if (this.f25147b) {
                    i11 = this.f25166u;
                } else {
                    int top3 = v10.getTop();
                    if (Math.abs(top3 - this.f25164s) < Math.abs(top3 - this.f25166u)) {
                        i11 = this.f25164s;
                        i12 = 6;
                    } else {
                        i11 = this.f25166u;
                    }
                }
                i12 = 4;
            }
            w0(v10, i12, i11, false);
            this.D = false;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean D(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        if (!v10.isShown()) {
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (this.f25171z == 1 && actionMasked == 0) {
            return true;
        }
        c0.c cVar = this.A;
        if (cVar != null) {
            cVar.z(motionEvent);
        }
        if (actionMasked == 0) {
            e0();
        }
        if (this.K == null) {
            this.K = VelocityTracker.obtain();
        }
        this.K.addMovement(motionEvent);
        if (this.A != null && actionMasked == 2 && !this.B && Math.abs(this.M - motionEvent.getY()) > this.A.u()) {
            this.A.b(v10, motionEvent.getPointerId(motionEvent.getActionIndex()));
        }
        return !this.B;
    }

    public void M(f fVar) {
        if (this.J.contains(fVar)) {
            return;
        }
        this.J.add(fVar);
    }

    void U(int i10) {
        float f10;
        float fX;
        V v10 = this.H.get();
        if (v10 == null || this.J.isEmpty()) {
            return;
        }
        int i11 = this.f25166u;
        if (i10 > i11 || i11 == X()) {
            int i12 = this.f25166u;
            f10 = i12 - i10;
            fX = this.G - i12;
        } else {
            int i13 = this.f25166u;
            f10 = i13 - i10;
            fX = i13 - X();
        }
        float f11 = f10 / fX;
        for (int i14 = 0; i14 < this.J.size(); i14++) {
            this.J.get(i14).a(v10, f11);
        }
    }

    View V(View view) {
        if (a0.V(view)) {
            return view;
        }
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            View viewV = V(viewGroup.getChildAt(i10));
            if (viewV != null) {
                return viewV;
            }
        }
        return null;
    }

    public int X() {
        return this.f25147b ? this.f25163r : this.f25162q;
    }

    public int Y() {
        return this.f25171z;
    }

    public boolean a0() {
        return this.f25157l;
    }

    public boolean b0() {
        return this.f25168w;
    }

    public void c0(f fVar) {
        this.J.remove(fVar);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void g(CoordinatorLayout.f fVar) {
        super.g(fVar);
        this.H = null;
        this.A = null;
    }

    public void g0(boolean z10) {
        this.f25170y = z10;
    }

    public void h0(int i10) {
        if (i10 < 0) {
            throw new IllegalArgumentException("offset must be greater than or equal to 0");
        }
        this.f25162q = i10;
    }

    public void i0(boolean z10) {
        if (this.f25147b == z10) {
            return;
        }
        this.f25147b = z10;
        if (this.H != null) {
            N();
        }
        r0((this.f25147b && this.f25171z == 6) ? 3 : this.f25171z);
        x0();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void j() {
        super.j();
        this.H = null;
        this.A = null;
    }

    public void j0(boolean z10) {
        this.f25157l = z10;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean k(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        c0.c cVar;
        if (!v10.isShown() || !this.f25170y) {
            this.B = true;
            return false;
        }
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            e0();
        }
        if (this.K == null) {
            this.K = VelocityTracker.obtain();
        }
        this.K.addMovement(motionEvent);
        if (actionMasked == 0) {
            int x10 = (int) motionEvent.getX();
            this.M = (int) motionEvent.getY();
            if (this.f25171z != 2) {
                WeakReference<View> weakReference = this.I;
                View view = weakReference != null ? weakReference.get() : null;
                if (view != null && coordinatorLayout.B(view, x10, this.M)) {
                    this.L = motionEvent.getPointerId(motionEvent.getActionIndex());
                    this.N = true;
                }
            }
            this.B = this.L == -1 && !coordinatorLayout.B(v10, x10, this.M);
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.N = false;
            this.L = -1;
            if (this.B) {
                this.B = false;
                return false;
            }
        }
        if (!this.B && (cVar = this.A) != null && cVar.G(motionEvent)) {
            return true;
        }
        WeakReference<View> weakReference2 = this.I;
        View view2 = weakReference2 != null ? weakReference2.get() : null;
        return (actionMasked != 2 || view2 == null || this.B || this.f25171z == 1 || coordinatorLayout.B(view2, (int) motionEvent.getX(), (int) motionEvent.getY()) || this.A == null || Math.abs(((float) this.M) - motionEvent.getY()) <= ((float) this.A.u())) ? false : true;
    }

    public void k0(float f10) {
        if (f10 <= 0.0f || f10 >= 1.0f) {
            throw new IllegalArgumentException("ratio must be a float value between 0 and 1");
        }
        this.f25165t = f10;
        if (this.H != null) {
            O();
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, V v10, int i10) {
        o4.g gVar;
        if (a0.B(coordinatorLayout) && !a0.B(v10)) {
            v10.setFitsSystemWindows(true);
        }
        if (this.H == null) {
            this.f25152g = coordinatorLayout.getResources().getDimensionPixelSize(y3.d.f36664b);
            s0(v10);
            this.H = new WeakReference<>(v10);
            if (this.f25154i && (gVar = this.f25155j) != null) {
                a0.u0(v10, gVar);
            }
            o4.g gVar2 = this.f25155j;
            if (gVar2 != null) {
                float fY = this.f25167v;
                if (fY == -1.0f) {
                    fY = a0.y(v10);
                }
                gVar2.V(fY);
                boolean z10 = this.f25171z == 3;
                this.f25159n = z10;
                this.f25155j.X(z10 ? 0.0f : 1.0f);
            }
            x0();
            if (a0.C(v10) == 0) {
                a0.A0(v10, 1);
            }
        }
        if (this.A == null) {
            this.A = c0.c.m(coordinatorLayout, this.Q);
        }
        int top = v10.getTop();
        coordinatorLayout.I(v10, i10);
        this.F = coordinatorLayout.getWidth();
        this.G = coordinatorLayout.getHeight();
        int height = v10.getHeight();
        this.E = height;
        this.f25163r = Math.max(0, this.G - height);
        O();
        N();
        int i11 = this.f25171z;
        if (i11 == 3) {
            a0.b0(v10, X());
        } else if (i11 == 6) {
            a0.b0(v10, this.f25164s);
        } else if (this.f25168w && i11 == 5) {
            a0.b0(v10, this.G);
        } else if (i11 == 4) {
            a0.b0(v10, this.f25166u);
        } else if (i11 == 1 || i11 == 2) {
            a0.b0(v10, top - v10.getTop());
        }
        this.I = new WeakReference<>(V(v10));
        return true;
    }

    public void l0(boolean z10) {
        if (this.f25168w != z10) {
            this.f25168w = z10;
            if (!z10 && this.f25171z == 5) {
                q0(4);
            }
            x0();
        }
    }

    public void m0(int i10) {
        n0(i10, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0015  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void n0(int r4, boolean r5) {
        /*
            r3 = this;
            r0 = 1
            r1 = 0
            r2 = -1
            if (r4 != r2) goto Lc
            boolean r4 = r3.f25151f
            if (r4 != 0) goto L15
            r3.f25151f = r0
            goto L1f
        Lc:
            boolean r2 = r3.f25151f
            if (r2 != 0) goto L17
            int r2 = r3.f25150e
            if (r2 == r4) goto L15
            goto L17
        L15:
            r0 = 0
            goto L1f
        L17:
            r3.f25151f = r1
            int r4 = java.lang.Math.max(r1, r4)
            r3.f25150e = r4
        L1f:
            if (r0 == 0) goto L24
            r3.A0(r5)
        L24:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.bottomsheet.BottomSheetBehavior.n0(int, boolean):void");
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean o(CoordinatorLayout coordinatorLayout, V v10, View view, float f10, float f11) {
        WeakReference<View> weakReference = this.I;
        if (weakReference == null || view != weakReference.get()) {
            return false;
        }
        return this.f25171z != 3 || super.o(coordinatorLayout, v10, view, f10, f11);
    }

    public void o0(int i10) {
        this.f25146a = i10;
    }

    public void p0(boolean z10) {
        this.f25169x = z10;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void q(CoordinatorLayout coordinatorLayout, V v10, View view, int i10, int i11, int[] iArr, int i12) {
        if (i12 == 1) {
            return;
        }
        WeakReference<View> weakReference = this.I;
        if (view != (weakReference != null ? weakReference.get() : null)) {
            return;
        }
        int top = v10.getTop();
        int i13 = top - i11;
        if (i11 > 0) {
            if (i13 < X()) {
                iArr[1] = top - X();
                a0.b0(v10, -iArr[1]);
                r0(3);
            } else {
                if (!this.f25170y) {
                    return;
                }
                iArr[1] = i11;
                a0.b0(v10, -i11);
                r0(1);
            }
        } else if (i11 < 0 && !view.canScrollVertically(-1)) {
            int i14 = this.f25166u;
            if (i13 > i14 && !this.f25168w) {
                iArr[1] = top - i14;
                a0.b0(v10, -iArr[1]);
                r0(4);
            } else {
                if (!this.f25170y) {
                    return;
                }
                iArr[1] = i11;
                a0.b0(v10, -i11);
                r0(1);
            }
        }
        U(v10.getTop());
        this.C = i11;
        this.D = true;
    }

    public void q0(int i10) {
        if (i10 == this.f25171z) {
            return;
        }
        if (this.H != null) {
            u0(i10);
            return;
        }
        if (i10 == 4 || i10 == 3 || i10 == 6 || (this.f25168w && i10 == 5)) {
            this.f25171z = i10;
        }
    }

    void r0(int i10) {
        V v10;
        if (this.f25171z == i10) {
            return;
        }
        this.f25171z = i10;
        WeakReference<V> weakReference = this.H;
        if (weakReference == null || (v10 = weakReference.get()) == null) {
            return;
        }
        if (i10 == 3) {
            z0(true);
        } else if (i10 == 6 || i10 == 5 || i10 == 4) {
            z0(false);
        }
        y0(i10);
        for (int i11 = 0; i11 < this.J.size(); i11++) {
            this.J.get(i11).b(v10, i10);
        }
        x0();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void t(CoordinatorLayout coordinatorLayout, V v10, View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
    }

    void t0(View view, int i10) {
        int iX;
        int i11;
        if (i10 == 4) {
            iX = this.f25166u;
        } else if (i10 == 6) {
            int i12 = this.f25164s;
            if (!this.f25147b || i12 > (i11 = this.f25163r)) {
                iX = i12;
            } else {
                iX = i11;
                i10 = 3;
            }
        } else if (i10 == 3) {
            iX = X();
        } else {
            if (!this.f25168w || i10 != 5) {
                throw new IllegalArgumentException("Illegal state argument: " + i10);
            }
            iX = this.G;
        }
        w0(view, i10, iX, false);
    }

    boolean v0(View view, float f10) {
        if (this.f25169x) {
            return true;
        }
        if (view.getTop() < this.f25166u) {
            return false;
        }
        return Math.abs((((float) view.getTop()) + (f10 * 0.1f)) - ((float) this.f25166u)) / ((float) P()) > 0.5f;
    }

    void w0(View view, int i10, int i11, boolean z10) {
        c0.c cVar = this.A;
        if (!(cVar != null && (!z10 ? !cVar.H(view, view.getLeft(), i11) : !cVar.F(view.getLeft(), i11)))) {
            r0(i10);
            return;
        }
        r0(2);
        y0(i10);
        if (this.f25160o == null) {
            this.f25160o = new h(view, i10);
        }
        if (((h) this.f25160o).f25186p) {
            this.f25160o.f25187q = i10;
            return;
        }
        BottomSheetBehavior<V>.h hVar = this.f25160o;
        hVar.f25187q = i10;
        a0.i0(view, hVar);
        ((h) this.f25160o).f25186p = true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public void x(CoordinatorLayout coordinatorLayout, V v10, Parcelable parcelable) {
        g gVar = (g) parcelable;
        super.x(coordinatorLayout, v10, gVar.h());
        f0(gVar);
        int i10 = gVar.f25180q;
        if (i10 == 1 || i10 == 2) {
            this.f25171z = 4;
        } else {
            this.f25171z = i10;
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public Parcelable y(CoordinatorLayout coordinatorLayout, V v10) {
        return new g(super.y(coordinatorLayout, v10), (BottomSheetBehavior<?>) this);
    }

    protected static class g extends b0.a {
        public static final Parcelable.Creator<g> CREATOR = new a();

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final int f25180q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        int f25181r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        boolean f25182s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        boolean f25183t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        boolean f25184u;

        static class a implements Parcelable.ClassLoaderCreator<g> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public g createFromParcel(Parcel parcel) {
                return new g(parcel, (ClassLoader) null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public g createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new g(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public g[] newArray(int i10) {
                return new g[i10];
            }
        }

        public g(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f25180q = parcel.readInt();
            this.f25181r = parcel.readInt();
            this.f25182s = parcel.readInt() == 1;
            this.f25183t = parcel.readInt() == 1;
            this.f25184u = parcel.readInt() == 1;
        }

        @Override // b0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f25180q);
            parcel.writeInt(this.f25181r);
            parcel.writeInt(this.f25182s ? 1 : 0);
            parcel.writeInt(this.f25183t ? 1 : 0);
            parcel.writeInt(this.f25184u ? 1 : 0);
        }

        public g(Parcelable parcelable, BottomSheetBehavior<?> bottomSheetBehavior) {
            super(parcelable);
            this.f25180q = bottomSheetBehavior.f25171z;
            this.f25181r = ((BottomSheetBehavior) bottomSheetBehavior).f25150e;
            this.f25182s = ((BottomSheetBehavior) bottomSheetBehavior).f25147b;
            this.f25183t = bottomSheetBehavior.f25168w;
            this.f25184u = ((BottomSheetBehavior) bottomSheetBehavior).f25169x;
        }
    }

    public BottomSheetBehavior(Context context, AttributeSet attributeSet) {
        int i10;
        super(context, attributeSet);
        this.f25146a = 0;
        this.f25147b = true;
        this.f25148c = false;
        this.f25160o = null;
        this.f25165t = 0.5f;
        this.f25167v = -1.0f;
        this.f25170y = true;
        this.f25171z = 4;
        this.J = new ArrayList<>();
        this.P = -1;
        this.Q = new d();
        this.f25153h = context.getResources().getDimensionPixelSize(y3.d.K);
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, y3.k.f36946y);
        this.f25154i = typedArrayObtainStyledAttributes.hasValue(y3.k.K);
        int i11 = y3.k.A;
        boolean zHasValue = typedArrayObtainStyledAttributes.hasValue(i11);
        if (zHasValue) {
            S(context, attributeSet, zHasValue, l4.c.a(context, typedArrayObtainStyledAttributes, i11));
        } else {
            R(context, attributeSet, zHasValue);
        }
        T();
        if (Build.VERSION.SDK_INT >= 21) {
            this.f25167v = typedArrayObtainStyledAttributes.getDimension(y3.k.f36953z, -1.0f);
        }
        int i12 = y3.k.G;
        TypedValue typedValuePeekValue = typedArrayObtainStyledAttributes.peekValue(i12);
        if (typedValuePeekValue != null && (i10 = typedValuePeekValue.data) == -1) {
            m0(i10);
        } else {
            m0(typedArrayObtainStyledAttributes.getDimensionPixelSize(i12, -1));
        }
        l0(typedArrayObtainStyledAttributes.getBoolean(y3.k.F, false));
        j0(typedArrayObtainStyledAttributes.getBoolean(y3.k.J, false));
        i0(typedArrayObtainStyledAttributes.getBoolean(y3.k.D, true));
        p0(typedArrayObtainStyledAttributes.getBoolean(y3.k.I, false));
        g0(typedArrayObtainStyledAttributes.getBoolean(y3.k.B, true));
        o0(typedArrayObtainStyledAttributes.getInt(y3.k.H, 0));
        k0(typedArrayObtainStyledAttributes.getFloat(y3.k.E, 0.5f));
        int i13 = y3.k.C;
        TypedValue typedValuePeekValue2 = typedArrayObtainStyledAttributes.peekValue(i13);
        if (typedValuePeekValue2 != null && typedValuePeekValue2.type == 16) {
            h0(typedValuePeekValue2.data);
        } else {
            h0(typedArrayObtainStyledAttributes.getDimensionPixelOffset(i13, 0));
        }
        typedArrayObtainStyledAttributes.recycle();
        this.f25149d = ViewConfiguration.get(context).getScaledMaximumFlingVelocity();
    }
}
