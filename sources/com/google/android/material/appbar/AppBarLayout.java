package com.google.android.material.appbar;

import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.ScrollView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a0;
import androidx.core.view.accessibility.c;
import androidx.core.view.accessibility.f;
import androidx.core.view.k0;
import androidx.core.view.o;
import java.lang.ref.WeakReference;
import java.util.List;
import o4.g;
import o4.h;
import y3.j;
import y3.k;

/* JADX INFO: loaded from: classes2.dex */
public class AppBarLayout extends LinearLayout implements CoordinatorLayout.b {
    private static final int F = j.f36761d;
    private int A;
    private WeakReference<View> B;
    private ValueAnimator C;
    private int[] D;
    private Drawable E;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f25015o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f25016p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f25017q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f25018r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f25019s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f25020t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private k0 f25021u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private List<b> f25022v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f25023w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f25024x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private boolean f25025y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f25026z;

    public static class Behavior extends BaseBehavior<AppBarLayout> {
        public Behavior() {
        }

        @Override // com.google.android.material.appbar.c
        public /* bridge */ /* synthetic */ int E() {
            return super.E();
        }

        @Override // com.google.android.material.appbar.c
        public /* bridge */ /* synthetic */ boolean G(int i10) {
            return super.G(i10);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: g0 */
        public /* bridge */ /* synthetic */ boolean l(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i10) {
            return super.l(coordinatorLayout, appBarLayout, i10);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: h0 */
        public /* bridge */ /* synthetic */ boolean m(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, int i10, int i11, int i12, int i13) {
            return super.m(coordinatorLayout, appBarLayout, i10, i11, i12, i13);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: i0 */
        public /* bridge */ /* synthetic */ void q(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10, int i11, int[] iArr, int i12) {
            super.q(coordinatorLayout, appBarLayout, view, i10, i11, iArr, i12);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: j0 */
        public /* bridge */ /* synthetic */ void t(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            super.t(coordinatorLayout, appBarLayout, view, i10, i11, i12, i13, i14, iArr);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: k0 */
        public /* bridge */ /* synthetic */ void x(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, Parcelable parcelable) {
            super.x(coordinatorLayout, appBarLayout, parcelable);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: l0 */
        public /* bridge */ /* synthetic */ Parcelable y(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
            return super.y(coordinatorLayout, appBarLayout);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: m0 */
        public /* bridge */ /* synthetic */ boolean A(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, View view2, int i10, int i11) {
            return super.A(coordinatorLayout, appBarLayout, view, view2, i10, i11);
        }

        @Override // com.google.android.material.appbar.AppBarLayout.BaseBehavior
        /* JADX INFO: renamed from: n0 */
        public /* bridge */ /* synthetic */ void C(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10) {
            super.C(coordinatorLayout, appBarLayout, view, i10);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }
    }

    public static class ScrollingViewBehavior extends com.google.android.material.appbar.b {
        public ScrollingViewBehavior() {
        }

        private static int R(AppBarLayout appBarLayout) {
            CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) appBarLayout.getLayoutParams()).f();
            if (cVarF instanceof BaseBehavior) {
                return ((BaseBehavior) cVarF).M();
            }
            return 0;
        }

        private void S(View view, View view2) {
            CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) view2.getLayoutParams()).f();
            if (cVarF instanceof BaseBehavior) {
                a0.b0(view, (((view2.getBottom() - view.getTop()) + ((BaseBehavior) cVarF).f25027k) + M()) - I(view2));
            }
        }

        private void T(View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view2;
                if (appBarLayout.j()) {
                    appBarLayout.p(appBarLayout.r(view));
                }
            }
        }

        @Override // com.google.android.material.appbar.b
        float J(View view) {
            int i10;
            if (view instanceof AppBarLayout) {
                AppBarLayout appBarLayout = (AppBarLayout) view;
                int totalScrollRange = appBarLayout.getTotalScrollRange();
                int downNestedPreScrollRange = appBarLayout.getDownNestedPreScrollRange();
                int iR = R(appBarLayout);
                if ((downNestedPreScrollRange == 0 || totalScrollRange + iR > downNestedPreScrollRange) && (i10 = totalScrollRange - downNestedPreScrollRange) != 0) {
                    return (iR / i10) + 1.0f;
                }
            }
            return 0.0f;
        }

        @Override // com.google.android.material.appbar.b
        int L(View view) {
            return view instanceof AppBarLayout ? ((AppBarLayout) view).getTotalScrollRange() : super.L(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.b
        /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
        public AppBarLayout H(List<View> list) {
            int size = list.size();
            for (int i10 = 0; i10 < size; i10++) {
                View view = list.get(i10);
                if (view instanceof AppBarLayout) {
                    return (AppBarLayout) view;
                }
            }
            return null;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean e(CoordinatorLayout coordinatorLayout, View view, View view2) {
            return view2 instanceof AppBarLayout;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
            S(view, view2);
            T(view, view2);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void i(CoordinatorLayout coordinatorLayout, View view, View view2) {
            if (view2 instanceof AppBarLayout) {
                a0.k0(coordinatorLayout, c.a.f2437q.b());
                a0.k0(coordinatorLayout, c.a.f2438r.b());
            }
        }

        @Override // com.google.android.material.appbar.c, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ boolean l(CoordinatorLayout coordinatorLayout, View view, int i10) {
            return super.l(coordinatorLayout, view, i10);
        }

        @Override // com.google.android.material.appbar.b, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public /* bridge */ /* synthetic */ boolean m(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int i13) {
            return super.m(coordinatorLayout, view, i10, i11, i12, i13);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public boolean w(CoordinatorLayout coordinatorLayout, View view, Rect rect, boolean z10) {
            AppBarLayout appBarLayoutH = H(coordinatorLayout.r(view));
            if (appBarLayoutH != null) {
                rect.offset(view.getLeft(), view.getTop());
                Rect rect2 = this.f25064d;
                rect2.set(0, 0, coordinatorLayout.getWidth(), coordinatorLayout.getHeight());
                if (!rect2.contains(rect)) {
                    appBarLayoutH.m(false, !z10);
                    return true;
                }
            }
            return false;
        }

        public ScrollingViewBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.f36929v3);
            O(typedArrayObtainStyledAttributes.getDimensionPixelSize(k.f36936w3, 0));
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    class a implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ g f25048a;

        a(g gVar) {
            this.f25048a = gVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            this.f25048a.V(((Float) valueAnimator.getAnimatedValue()).floatValue());
        }
    }

    public interface b<T extends AppBarLayout> {
        void a(T t10, int i10);
    }

    private void a() {
        WeakReference<View> weakReference = this.B;
        if (weakReference != null) {
            weakReference.clear();
        }
        this.B = null;
    }

    private View b(View view) {
        int i10;
        if (this.B == null && (i10 = this.A) != -1) {
            View viewFindViewById = view != null ? view.findViewById(i10) : null;
            if (viewFindViewById == null && (getParent() instanceof ViewGroup)) {
                viewFindViewById = ((ViewGroup) getParent()).findViewById(this.A);
            }
            if (viewFindViewById != null) {
                this.B = new WeakReference<>(viewFindViewById);
            }
        }
        WeakReference<View> weakReference = this.B;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    private boolean g() {
        int childCount = getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            if (((c) getChildAt(i10).getLayoutParams()).c()) {
                return true;
            }
        }
        return false;
    }

    private void i() {
        this.f25016p = -1;
        this.f25017q = -1;
        this.f25018r = -1;
    }

    private void n(boolean z10, boolean z11, boolean z12) {
        this.f25020t = (z10 ? 1 : 2) | (z11 ? 4 : 0) | (z12 ? 8 : 0);
        requestLayout();
    }

    private boolean o(boolean z10) {
        if (this.f25024x == z10) {
            return false;
        }
        this.f25024x = z10;
        refreshDrawableState();
        return true;
    }

    private boolean q() {
        return this.E != null && getTopInset() > 0;
    }

    private boolean s() {
        if (getChildCount() <= 0) {
            return false;
        }
        View childAt = getChildAt(0);
        return (childAt.getVisibility() == 8 || a0.B(childAt)) ? false : true;
    }

    private void t(g gVar, boolean z10) {
        float dimension = getResources().getDimension(y3.d.f36663a);
        float f10 = z10 ? 0.0f : dimension;
        if (!z10) {
            dimension = 0.0f;
        }
        ValueAnimator valueAnimator = this.C;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(f10, dimension);
        this.C = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(getResources().getInteger(y3.g.f36722a));
        this.C.setInterpolator(z3.a.f37199a);
        this.C.addUpdateListener(new a(gVar));
        this.C.start();
    }

    private void u() {
        setWillNotDraw(!q());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public c generateDefaultLayoutParams() {
        return new c(-1, -2);
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof c;
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(AttributeSet attributeSet) {
        return new c(getContext(), attributeSet);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (q()) {
            int iSave = canvas.save();
            canvas.translate(0.0f, -this.f25015o);
            this.E.draw(canvas);
            canvas.restoreToCount(iSave);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        int[] drawableState = getDrawableState();
        Drawable drawable = this.E;
        if (drawable != null && drawable.isStateful() && drawable.setState(drawableState)) {
            invalidateDrawable(drawable);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.widget.LinearLayout, android.view.ViewGroup
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public c generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (Build.VERSION.SDK_INT < 19 || !(layoutParams instanceof LinearLayout.LayoutParams)) ? layoutParams instanceof ViewGroup.MarginLayoutParams ? new c((ViewGroup.MarginLayoutParams) layoutParams) : new c(layoutParams) : new c((LinearLayout.LayoutParams) layoutParams);
    }

    boolean f() {
        return this.f25019s;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.c<AppBarLayout> getBehavior() {
        return new Behavior();
    }

    int getDownNestedPreScrollRange() {
        int iMin;
        int iF;
        int i10 = this.f25017q;
        if (i10 != -1) {
            return i10;
        }
        int i11 = 0;
        for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = getChildAt(childCount);
            c cVar = (c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i12 = cVar.f25050a;
            if ((i12 & 5) != 5) {
                if (i11 > 0) {
                    break;
                }
            } else {
                int i13 = ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin;
                if ((i12 & 8) != 0) {
                    iF = a0.F(childAt);
                } else if ((i12 & 2) != 0) {
                    iF = measuredHeight - a0.F(childAt);
                } else {
                    iMin = i13 + measuredHeight;
                    if (childCount == 0 && a0.B(childAt)) {
                        iMin = Math.min(iMin, measuredHeight - getTopInset());
                    }
                    i11 += iMin;
                }
                iMin = i13 + iF;
                if (childCount == 0) {
                    iMin = Math.min(iMin, measuredHeight - getTopInset());
                }
                i11 += iMin;
            }
        }
        int iMax = Math.max(0, i11);
        this.f25017q = iMax;
        return iMax;
    }

    int getDownNestedScrollRange() {
        int i10 = this.f25018r;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int i11 = 0;
        int iF = 0;
        while (true) {
            if (i11 >= childCount) {
                break;
            }
            View childAt = getChildAt(i11);
            c cVar = (c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight() + ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin;
            int i12 = cVar.f25050a;
            if ((i12 & 1) == 0) {
                break;
            }
            iF += measuredHeight;
            if ((i12 & 2) != 0) {
                iF -= a0.F(childAt);
                break;
            }
            i11++;
        }
        int iMax = Math.max(0, iF);
        this.f25018r = iMax;
        return iMax;
    }

    public int getLiftOnScrollTargetViewId() {
        return this.A;
    }

    public final int getMinimumHeightForVisibleOverlappingContent() {
        int topInset = getTopInset();
        int iF = a0.F(this);
        if (iF == 0) {
            int childCount = getChildCount();
            iF = childCount >= 1 ? a0.F(getChildAt(childCount - 1)) : 0;
            if (iF == 0) {
                return getHeight() / 3;
            }
        }
        return (iF * 2) + topInset;
    }

    int getPendingAction() {
        return this.f25020t;
    }

    public Drawable getStatusBarForeground() {
        return this.E;
    }

    @Deprecated
    public float getTargetElevation() {
        return 0.0f;
    }

    final int getTopInset() {
        k0 k0Var = this.f25021u;
        if (k0Var != null) {
            return k0Var.l();
        }
        return 0;
    }

    public final int getTotalScrollRange() {
        int i10 = this.f25016p;
        if (i10 != -1) {
            return i10;
        }
        int childCount = getChildCount();
        int i11 = 0;
        int iF = 0;
        while (true) {
            if (i11 >= childCount) {
                break;
            }
            View childAt = getChildAt(i11);
            c cVar = (c) childAt.getLayoutParams();
            int measuredHeight = childAt.getMeasuredHeight();
            int i12 = cVar.f25050a;
            if ((i12 & 1) == 0) {
                break;
            }
            iF += measuredHeight + ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin;
            if (i11 == 0 && a0.B(childAt)) {
                iF -= getTopInset();
            }
            if ((i12 & 2) != 0) {
                iF -= a0.F(childAt);
                break;
            }
            i11++;
        }
        int iMax = Math.max(0, iF);
        this.f25016p = iMax;
        return iMax;
    }

    int getUpNestedPreScrollRange() {
        return getTotalScrollRange();
    }

    boolean h() {
        return getTotalScrollRange() != 0;
    }

    public boolean j() {
        return this.f25026z;
    }

    void k(int i10) {
        this.f25015o = i10;
        if (!willNotDraw()) {
            a0.h0(this);
        }
        List<b> list = this.f25022v;
        if (list != null) {
            int size = list.size();
            for (int i11 = 0; i11 < size; i11++) {
                b bVar = this.f25022v.get(i11);
                if (bVar != null) {
                    bVar.a(this, i10);
                }
            }
        }
    }

    void l() {
        this.f25020t = 0;
    }

    public void m(boolean z10, boolean z11) {
        n(z10, z11, true);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        h.e(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        if (this.D == null) {
            this.D = new int[4];
        }
        int[] iArr = this.D;
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + iArr.length);
        boolean z10 = this.f25024x;
        int i11 = y3.b.A;
        if (!z10) {
            i11 = -i11;
        }
        iArr[0] = i11;
        iArr[1] = (z10 && this.f25025y) ? y3.b.B : -y3.b.B;
        int i12 = y3.b.f36655y;
        if (!z10) {
            i12 = -i12;
        }
        iArr[2] = i12;
        iArr[3] = (z10 && this.f25025y) ? y3.b.f36654x : -y3.b.f36654x;
        return LinearLayout.mergeDrawableStates(iArrOnCreateDrawableState, iArr);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        a();
    }

    @Override // android.widget.LinearLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        boolean z11 = true;
        if (a0.B(this) && s()) {
            int topInset = getTopInset();
            for (int childCount = getChildCount() - 1; childCount >= 0; childCount--) {
                a0.b0(getChildAt(childCount), topInset);
            }
        }
        i();
        this.f25019s = false;
        int childCount2 = getChildCount();
        int i14 = 0;
        while (true) {
            if (i14 >= childCount2) {
                break;
            }
            if (((c) getChildAt(i14).getLayoutParams()).b() != null) {
                this.f25019s = true;
                break;
            }
            i14++;
        }
        Drawable drawable = this.E;
        if (drawable != null) {
            drawable.setBounds(0, 0, getWidth(), getTopInset());
        }
        if (this.f25023w) {
            return;
        }
        if (!this.f25026z && !g()) {
            z11 = false;
        }
        o(z11);
    }

    @Override // android.widget.LinearLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
        int mode = View.MeasureSpec.getMode(i11);
        if (mode != 1073741824 && a0.B(this) && s()) {
            int measuredHeight = getMeasuredHeight();
            if (mode == Integer.MIN_VALUE) {
                measuredHeight = y.a.b(getMeasuredHeight() + getTopInset(), 0, View.MeasureSpec.getSize(i11));
            } else if (mode == 0) {
                measuredHeight += getTopInset();
            }
            setMeasuredDimension(getMeasuredWidth(), measuredHeight);
        }
        i();
    }

    boolean p(boolean z10) {
        if (this.f25025y == z10) {
            return false;
        }
        this.f25025y = z10;
        refreshDrawableState();
        if (!this.f25026z || !(getBackground() instanceof g)) {
            return true;
        }
        t((g) getBackground(), z10);
        return true;
    }

    boolean r(View view) {
        View viewB = b(view);
        if (viewB != null) {
            view = viewB;
        }
        return view != null && (view.canScrollVertically(-1) || view.getScrollY() > 0);
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        super.setElevation(f10);
        h.d(this, f10);
    }

    public void setExpanded(boolean z10) {
        m(z10, a0.U(this));
    }

    public void setLiftOnScroll(boolean z10) {
        this.f25026z = z10;
    }

    public void setLiftOnScrollTargetViewId(int i10) {
        this.A = i10;
        a();
    }

    @Override // android.widget.LinearLayout
    public void setOrientation(int i10) {
        if (i10 != 1) {
            throw new IllegalArgumentException("AppBarLayout is always vertical and does not support horizontal orientation");
        }
        super.setOrientation(i10);
    }

    public void setStatusBarForeground(Drawable drawable) {
        Drawable drawable2 = this.E;
        if (drawable2 != drawable) {
            if (drawable2 != null) {
                drawable2.setCallback(null);
            }
            Drawable drawableMutate = drawable != null ? drawable.mutate() : null;
            this.E = drawableMutate;
            if (drawableMutate != null) {
                if (drawableMutate.isStateful()) {
                    this.E.setState(getDrawableState());
                }
                androidx.core.graphics.drawable.a.m(this.E, a0.E(this));
                this.E.setVisible(getVisibility() == 0, false);
                this.E.setCallback(this);
            }
            u();
            a0.h0(this);
        }
    }

    public void setStatusBarForegroundColor(int i10) {
        setStatusBarForeground(new ColorDrawable(i10));
    }

    public void setStatusBarForegroundResource(int i10) {
        setStatusBarForeground(g.a.b(getContext(), i10));
    }

    @Deprecated
    public void setTargetElevation(float f10) {
        if (Build.VERSION.SDK_INT >= 21) {
            e.a(this, f10);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.E;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return super.verifyDrawable(drawable) || drawable == this.E;
    }

    protected static class BaseBehavior<T extends AppBarLayout> extends com.google.android.material.appbar.a<T> {

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f25027k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private int f25028l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        private ValueAnimator f25029m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        private int f25030n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private boolean f25031o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private float f25032p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private WeakReference<View> f25033q;

        class a implements ValueAnimator.AnimatorUpdateListener {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CoordinatorLayout f25034a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ AppBarLayout f25035b;

            a(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout) {
                this.f25034a = coordinatorLayout;
                this.f25035b = appBarLayout;
            }

            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator valueAnimator) {
                BaseBehavior.this.P(this.f25034a, this.f25035b, ((Integer) valueAnimator.getAnimatedValue()).intValue());
            }
        }

        class b implements f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ CoordinatorLayout f25037a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ AppBarLayout f25038b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            final /* synthetic */ View f25039c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            final /* synthetic */ int f25040d;

            b(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, View view, int i10) {
                this.f25037a = coordinatorLayout;
                this.f25038b = appBarLayout;
                this.f25039c = view;
                this.f25040d = i10;
            }

            /* JADX WARN: Multi-variable type inference failed */
            /* JADX WARN: Type inference fix 'apply assigned field type' failed
            java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$PrimitiveArg
            	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
            	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
            	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
            	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
             */
            @Override // androidx.core.view.accessibility.f
            public boolean a(View view, f.a aVar) {
                BaseBehavior.this.q(this.f25037a, this.f25038b, this.f25039c, 0, this.f25040d, new int[]{0, 0}, 1);
                return true;
            }
        }

        class c implements f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ AppBarLayout f25042a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            final /* synthetic */ boolean f25043b;

            c(AppBarLayout appBarLayout, boolean z10) {
                this.f25042a = appBarLayout;
                this.f25043b = z10;
            }

            @Override // androidx.core.view.accessibility.f
            public boolean a(View view, f.a aVar) {
                this.f25042a.setExpanded(this.f25043b);
                return true;
            }
        }

        public BaseBehavior() {
            this.f25030n = -1;
        }

        private void S(CoordinatorLayout coordinatorLayout, T t10, View view) {
            if (M() != (-t10.getTotalScrollRange()) && view.canScrollVertically(1)) {
                T(coordinatorLayout, t10, c.a.f2437q, false);
            }
            if (M() != 0) {
                if (!view.canScrollVertically(-1)) {
                    T(coordinatorLayout, t10, c.a.f2438r, true);
                    return;
                }
                int i10 = -t10.getDownNestedPreScrollRange();
                if (i10 != 0) {
                    a0.m0(coordinatorLayout, c.a.f2438r, null, new b(coordinatorLayout, t10, view, i10));
                }
            }
        }

        private void T(CoordinatorLayout coordinatorLayout, T t10, c.a aVar, boolean z10) {
            a0.m0(coordinatorLayout, aVar, null, new c(t10, z10));
        }

        private void U(CoordinatorLayout coordinatorLayout, T t10, int i10, float f10) {
            int iAbs = Math.abs(M() - i10);
            float fAbs = Math.abs(f10);
            V(coordinatorLayout, t10, i10, fAbs > 0.0f ? Math.round((iAbs / fAbs) * 1000.0f) * 3 : (int) (((iAbs / t10.getHeight()) + 1.0f) * 150.0f));
        }

        private void V(CoordinatorLayout coordinatorLayout, T t10, int i10, int i11) {
            int iM = M();
            if (iM == i10) {
                ValueAnimator valueAnimator = this.f25029m;
                if (valueAnimator == null || !valueAnimator.isRunning()) {
                    return;
                }
                this.f25029m.cancel();
                return;
            }
            ValueAnimator valueAnimator2 = this.f25029m;
            if (valueAnimator2 == null) {
                ValueAnimator valueAnimator3 = new ValueAnimator();
                this.f25029m = valueAnimator3;
                valueAnimator3.setInterpolator(z3.a.f37203e);
                this.f25029m.addUpdateListener(new a(coordinatorLayout, t10));
            } else {
                valueAnimator2.cancel();
            }
            this.f25029m.setDuration(Math.min(i11, 600));
            this.f25029m.setIntValues(iM, i10);
            this.f25029m.start();
        }

        private boolean X(CoordinatorLayout coordinatorLayout, T t10, View view) {
            return t10.h() && coordinatorLayout.getHeight() - view.getHeight() <= t10.getHeight();
        }

        private static boolean Y(int i10, int i11) {
            return (i10 & i11) == i11;
        }

        private View Z(CoordinatorLayout coordinatorLayout) {
            int childCount = coordinatorLayout.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = coordinatorLayout.getChildAt(i10);
                if ((childAt instanceof o) || (childAt instanceof ListView) || (childAt instanceof ScrollView)) {
                    return childAt;
                }
            }
            return null;
        }

        private static View a0(AppBarLayout appBarLayout, int i10) {
            int iAbs = Math.abs(i10);
            int childCount = appBarLayout.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = appBarLayout.getChildAt(i11);
                if (iAbs >= childAt.getTop() && iAbs <= childAt.getBottom()) {
                    return childAt;
                }
            }
            return null;
        }

        private int b0(T t10, int i10) {
            int childCount = t10.getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = t10.getChildAt(i11);
                int top = childAt.getTop();
                int bottom = childAt.getBottom();
                c cVar = (c) childAt.getLayoutParams();
                if (Y(cVar.a(), 32)) {
                    top -= ((LinearLayout.LayoutParams) cVar).topMargin;
                    bottom += ((LinearLayout.LayoutParams) cVar).bottomMargin;
                }
                int i12 = -i10;
                if (top <= i12 && bottom >= i12) {
                    return i11;
                }
            }
            return -1;
        }

        private int e0(T t10, int i10) {
            int iAbs = Math.abs(i10);
            int childCount = t10.getChildCount();
            int topInset = 0;
            int i11 = 0;
            while (true) {
                if (i11 >= childCount) {
                    break;
                }
                View childAt = t10.getChildAt(i11);
                c cVar = (c) childAt.getLayoutParams();
                Interpolator interpolatorB = cVar.b();
                if (iAbs < childAt.getTop() || iAbs > childAt.getBottom()) {
                    i11++;
                } else if (interpolatorB != null) {
                    int iA = cVar.a();
                    if ((iA & 1) != 0) {
                        topInset = 0 + childAt.getHeight() + ((LinearLayout.LayoutParams) cVar).topMargin + ((LinearLayout.LayoutParams) cVar).bottomMargin;
                        if ((iA & 2) != 0) {
                            topInset -= a0.F(childAt);
                        }
                    }
                    if (a0.B(childAt)) {
                        topInset -= t10.getTopInset();
                    }
                    if (topInset > 0) {
                        float f10 = topInset;
                        return Integer.signum(i10) * (childAt.getTop() + Math.round(f10 * interpolatorB.getInterpolation((iAbs - childAt.getTop()) / f10)));
                    }
                }
            }
            return i10;
        }

        private boolean p0(CoordinatorLayout coordinatorLayout, T t10) {
            List<View> listS = coordinatorLayout.s(t10);
            int size = listS.size();
            for (int i10 = 0; i10 < size; i10++) {
                CoordinatorLayout.c cVarF = ((CoordinatorLayout.f) listS.get(i10).getLayoutParams()).f();
                if (cVarF instanceof ScrollingViewBehavior) {
                    return ((ScrollingViewBehavior) cVarF).K() != 0;
                }
            }
            return false;
        }

        private void q0(CoordinatorLayout coordinatorLayout, T t10) {
            int iM = M();
            int iB0 = b0(t10, iM);
            if (iB0 >= 0) {
                View childAt = t10.getChildAt(iB0);
                c cVar = (c) childAt.getLayoutParams();
                int iA = cVar.a();
                if ((iA & 17) == 17) {
                    int i10 = -childAt.getTop();
                    int iF = -childAt.getBottom();
                    if (iB0 == t10.getChildCount() - 1) {
                        iF += t10.getTopInset();
                    }
                    if (Y(iA, 2)) {
                        iF += a0.F(childAt);
                    } else if (Y(iA, 5)) {
                        int iF2 = a0.F(childAt) + iF;
                        if (iM < iF2) {
                            i10 = iF2;
                        } else {
                            iF = iF2;
                        }
                    }
                    if (Y(iA, 32)) {
                        i10 += ((LinearLayout.LayoutParams) cVar).topMargin;
                        iF -= ((LinearLayout.LayoutParams) cVar).bottomMargin;
                    }
                    if (iM < (iF + i10) / 2) {
                        i10 = iF;
                    }
                    U(coordinatorLayout, t10, y.a.b(i10, -t10.getTotalScrollRange(), 0), 0.0f);
                }
            }
        }

        private void r0(CoordinatorLayout coordinatorLayout, T t10) {
            a0.k0(coordinatorLayout, c.a.f2437q.b());
            a0.k0(coordinatorLayout, c.a.f2438r.b());
            View viewZ = Z(coordinatorLayout);
            if (viewZ == null || t10.getTotalScrollRange() == 0 || !(((CoordinatorLayout.f) viewZ.getLayoutParams()).f() instanceof ScrollingViewBehavior)) {
                return;
            }
            S(coordinatorLayout, t10, viewZ);
        }

        private void s0(CoordinatorLayout coordinatorLayout, T t10, int i10, int i11, boolean z10) {
            View viewA0 = a0(t10, i10);
            if (viewA0 != null) {
                int iA = ((c) viewA0.getLayoutParams()).a();
                boolean zR = false;
                if ((iA & 1) != 0) {
                    int iF = a0.F(viewA0);
                    if (i11 <= 0 || (iA & 12) == 0 ? !((iA & 2) == 0 || (-i10) < (viewA0.getBottom() - iF) - t10.getTopInset()) : (-i10) >= (viewA0.getBottom() - iF) - t10.getTopInset()) {
                        zR = true;
                    }
                }
                if (t10.j()) {
                    zR = t10.r(Z(coordinatorLayout));
                }
                boolean zP = t10.p(zR);
                if (z10 || (zP && p0(coordinatorLayout, t10))) {
                    t10.jumpDrawablesToCurrentState();
                }
            }
        }

        @Override // com.google.android.material.appbar.a
        int M() {
            return E() + this.f25027k;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        /* JADX INFO: renamed from: W, reason: merged with bridge method [inline-methods] */
        public boolean H(T t10) {
            WeakReference<View> weakReference = this.f25033q;
            if (weakReference == null) {
                return true;
            }
            View view = weakReference.get();
            return (view == null || !view.isShown() || view.canScrollVertically(-1)) ? false : true;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        /* JADX INFO: renamed from: c0, reason: merged with bridge method [inline-methods] */
        public int K(T t10) {
            return -t10.getDownNestedScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        /* JADX INFO: renamed from: d0, reason: merged with bridge method [inline-methods] */
        public int L(T t10) {
            return t10.getTotalScrollRange();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        /* JADX INFO: renamed from: f0, reason: merged with bridge method [inline-methods] */
        public void N(CoordinatorLayout coordinatorLayout, T t10) {
            q0(coordinatorLayout, t10);
            if (t10.j()) {
                t10.p(t10.r(Z(coordinatorLayout)));
            }
        }

        @Override // com.google.android.material.appbar.c, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: g0, reason: merged with bridge method [inline-methods] */
        public boolean l(CoordinatorLayout coordinatorLayout, T t10, int i10) {
            boolean zL = super.l(coordinatorLayout, t10, i10);
            int pendingAction = t10.getPendingAction();
            int i11 = this.f25030n;
            if (i11 >= 0 && (pendingAction & 8) == 0) {
                View childAt = t10.getChildAt(i11);
                P(coordinatorLayout, t10, (-childAt.getBottom()) + (this.f25031o ? a0.F(childAt) + t10.getTopInset() : Math.round(childAt.getHeight() * this.f25032p)));
            } else if (pendingAction != 0) {
                boolean z10 = (pendingAction & 4) != 0;
                if ((pendingAction & 2) != 0) {
                    int i12 = -t10.getUpNestedPreScrollRange();
                    if (z10) {
                        U(coordinatorLayout, t10, i12, 0.0f);
                    } else {
                        P(coordinatorLayout, t10, i12);
                    }
                } else if ((pendingAction & 1) != 0) {
                    if (z10) {
                        U(coordinatorLayout, t10, 0, 0.0f);
                    } else {
                        P(coordinatorLayout, t10, 0);
                    }
                }
            }
            t10.l();
            this.f25030n = -1;
            G(y.a.b(E(), -t10.getTotalScrollRange(), 0));
            s0(coordinatorLayout, t10, E(), 0, true);
            t10.k(E());
            r0(coordinatorLayout, t10);
            return zL;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: h0, reason: merged with bridge method [inline-methods] */
        public boolean m(CoordinatorLayout coordinatorLayout, T t10, int i10, int i11, int i12, int i13) {
            if (((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) t10.getLayoutParams())).height != -2) {
                return super.m(coordinatorLayout, t10, i10, i11, i12, i13);
            }
            coordinatorLayout.J(t10, i10, i11, View.MeasureSpec.makeMeasureSpec(0, 0), i13);
            return true;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: i0, reason: merged with bridge method [inline-methods] */
        public void q(CoordinatorLayout coordinatorLayout, T t10, View view, int i10, int i11, int[] iArr, int i12) {
            int i13;
            int downNestedPreScrollRange;
            if (i11 != 0) {
                if (i11 < 0) {
                    int i14 = -t10.getTotalScrollRange();
                    i13 = i14;
                    downNestedPreScrollRange = t10.getDownNestedPreScrollRange() + i14;
                } else {
                    i13 = -t10.getUpNestedPreScrollRange();
                    downNestedPreScrollRange = 0;
                }
                if (i13 != downNestedPreScrollRange) {
                    iArr[1] = O(coordinatorLayout, t10, i11, i13, downNestedPreScrollRange);
                }
            }
            if (t10.j()) {
                t10.p(t10.r(view));
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: j0, reason: merged with bridge method [inline-methods] */
        public void t(CoordinatorLayout coordinatorLayout, T t10, View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
            if (i13 < 0) {
                iArr[1] = O(coordinatorLayout, t10, i13, -t10.getDownNestedScrollRange(), 0);
            }
            if (i13 == 0) {
                r0(coordinatorLayout, t10);
            }
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: k0, reason: merged with bridge method [inline-methods] */
        public void x(CoordinatorLayout coordinatorLayout, T t10, Parcelable parcelable) {
            if (!(parcelable instanceof d)) {
                super.x(coordinatorLayout, t10, parcelable);
                this.f25030n = -1;
                return;
            }
            d dVar = (d) parcelable;
            super.x(coordinatorLayout, t10, dVar.h());
            this.f25030n = dVar.f25045q;
            this.f25032p = dVar.f25046r;
            this.f25031o = dVar.f25047s;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: l0, reason: merged with bridge method [inline-methods] */
        public Parcelable y(CoordinatorLayout coordinatorLayout, T t10) {
            Parcelable parcelableY = super.y(coordinatorLayout, t10);
            int iE = E();
            int childCount = t10.getChildCount();
            for (int i10 = 0; i10 < childCount; i10++) {
                View childAt = t10.getChildAt(i10);
                int bottom = childAt.getBottom() + iE;
                if (childAt.getTop() + iE <= 0 && bottom >= 0) {
                    d dVar = new d(parcelableY);
                    dVar.f25045q = i10;
                    dVar.f25047s = bottom == a0.F(childAt) + t10.getTopInset();
                    dVar.f25046r = bottom / childAt.getHeight();
                    return dVar;
                }
            }
            return parcelableY;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: m0, reason: merged with bridge method [inline-methods] */
        public boolean A(CoordinatorLayout coordinatorLayout, T t10, View view, View view2, int i10, int i11) {
            ValueAnimator valueAnimator;
            boolean z10 = (i10 & 2) != 0 && (t10.j() || X(coordinatorLayout, t10, view));
            if (z10 && (valueAnimator = this.f25029m) != null) {
                valueAnimator.cancel();
            }
            this.f25033q = null;
            this.f25028l = i11;
            return z10;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: n0, reason: merged with bridge method [inline-methods] */
        public void C(CoordinatorLayout coordinatorLayout, T t10, View view, int i10) {
            if (this.f25028l == 0 || i10 == 1) {
                q0(coordinatorLayout, t10);
                if (t10.j()) {
                    t10.p(t10.r(view));
                }
            }
            this.f25033q = new WeakReference<>(view);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        @Override // com.google.android.material.appbar.a
        /* JADX INFO: renamed from: o0, reason: merged with bridge method [inline-methods] */
        public int Q(CoordinatorLayout coordinatorLayout, T t10, int i10, int i11, int i12) {
            int iM = M();
            int i13 = 0;
            if (i11 == 0 || iM < i11 || iM > i12) {
                this.f25027k = 0;
            } else {
                int iB = y.a.b(i10, i11, i12);
                if (iM != iB) {
                    int iE0 = t10.f() ? e0(t10, iB) : iB;
                    boolean zG = G(iE0);
                    i13 = iM - iB;
                    this.f25027k = iB - iE0;
                    if (!zG && t10.f()) {
                        coordinatorLayout.f(t10);
                    }
                    t10.k(E());
                    s0(coordinatorLayout, t10, iB, iB < iM ? -1 : 1, false);
                }
            }
            r0(coordinatorLayout, t10);
            return i13;
        }

        public BaseBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f25030n = -1;
        }

        protected static class d extends b0.a {
            public static final Parcelable.Creator<d> CREATOR = new a();

            /* JADX INFO: renamed from: q, reason: collision with root package name */
            int f25045q;

            /* JADX INFO: renamed from: r, reason: collision with root package name */
            float f25046r;

            /* JADX INFO: renamed from: s, reason: collision with root package name */
            boolean f25047s;

            static class a implements Parcelable.ClassLoaderCreator<d> {
                a() {
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
                public d createFromParcel(Parcel parcel) {
                    return new d(parcel, null);
                }

                @Override // android.os.Parcelable.ClassLoaderCreator
                /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
                public d createFromParcel(Parcel parcel, ClassLoader classLoader) {
                    return new d(parcel, classLoader);
                }

                @Override // android.os.Parcelable.Creator
                /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
                public d[] newArray(int i10) {
                    return new d[i10];
                }
            }

            public d(Parcel parcel, ClassLoader classLoader) {
                super(parcel, classLoader);
                this.f25045q = parcel.readInt();
                this.f25046r = parcel.readFloat();
                this.f25047s = parcel.readByte() != 0;
            }

            @Override // b0.a, android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i10) {
                super.writeToParcel(parcel, i10);
                parcel.writeInt(this.f25045q);
                parcel.writeFloat(this.f25046r);
                parcel.writeByte(this.f25047s ? (byte) 1 : (byte) 0);
            }

            public d(Parcelable parcelable) {
                super(parcelable);
            }
        }
    }

    public static class c extends LinearLayout.LayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f25050a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        Interpolator f25051b;

        public c(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f25050a = 1;
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.f36862m);
            this.f25050a = typedArrayObtainStyledAttributes.getInt(k.f36869n, 0);
            int i10 = k.f36876o;
            if (typedArrayObtainStyledAttributes.hasValue(i10)) {
                this.f25051b = AnimationUtils.loadInterpolator(context, typedArrayObtainStyledAttributes.getResourceId(i10, 0));
            }
            typedArrayObtainStyledAttributes.recycle();
        }

        public int a() {
            return this.f25050a;
        }

        public Interpolator b() {
            return this.f25051b;
        }

        boolean c() {
            int i10 = this.f25050a;
            return (i10 & 1) == 1 && (i10 & 10) != 0;
        }

        public c(int i10, int i11) {
            super(i10, i11);
            this.f25050a = 1;
        }

        public c(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f25050a = 1;
        }

        public c(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f25050a = 1;
        }

        public c(LinearLayout.LayoutParams layoutParams) {
            super(layoutParams);
            this.f25050a = 1;
        }
    }
}
