package androidx.appcompat.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.Window;
import android.view.WindowInsets;
import android.widget.OverScroller;
import androidx.appcompat.view.menu.m;
import androidx.core.view.k0;

/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"UnknownNullness"})
public class ActionBarOverlayLayout extends ViewGroup implements d0, androidx.core.view.s, androidx.core.view.q, androidx.core.view.r {
    static final int[] T = {f.a.f28978b, R.attr.windowContentOverlay};
    private int A;
    private final Rect B;
    private final Rect C;
    private final Rect D;
    private final Rect E;
    private final Rect F;
    private final Rect G;
    private final Rect H;
    private androidx.core.view.k0 I;
    private androidx.core.view.k0 J;
    private androidx.core.view.k0 K;
    private androidx.core.view.k0 L;
    private d M;
    private OverScroller N;
    ViewPropertyAnimator O;
    final AnimatorListenerAdapter P;
    private final Runnable Q;
    private final Runnable R;
    private final androidx.core.view.t S;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f783o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f784p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ContentFrameLayout f785q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    ActionBarContainer f786r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private e0 f787s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Drawable f788t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f789u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f790v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f791w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f792x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    boolean f793y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f794z;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.O = null;
            actionBarOverlayLayout.f793y = false;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.O = null;
            actionBarOverlayLayout.f793y = false;
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.u();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.O = actionBarOverlayLayout.f786r.animate().translationY(0.0f).setListener(ActionBarOverlayLayout.this.P);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ActionBarOverlayLayout.this.u();
            ActionBarOverlayLayout actionBarOverlayLayout = ActionBarOverlayLayout.this;
            actionBarOverlayLayout.O = actionBarOverlayLayout.f786r.animate().translationY(-ActionBarOverlayLayout.this.f786r.getHeight()).setListener(ActionBarOverlayLayout.this.P);
        }
    }

    public interface d {
        void a();

        void b();

        void c(boolean z10);

        void d();

        void e();

        void onWindowVisibilityChanged(int i10);
    }

    public static class e extends ViewGroup.MarginLayoutParams {
        public e(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
        }

        public e(int i10, int i11) {
            super(i10, i11);
        }

        public e(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
        }
    }

    public ActionBarOverlayLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f784p = 0;
        this.B = new Rect();
        this.C = new Rect();
        this.D = new Rect();
        this.E = new Rect();
        this.F = new Rect();
        this.G = new Rect();
        this.H = new Rect();
        androidx.core.view.k0 k0Var = androidx.core.view.k0.f2503b;
        this.I = k0Var;
        this.J = k0Var;
        this.K = k0Var;
        this.L = k0Var;
        this.P = new a();
        this.Q = new b();
        this.R = new c();
        v(context);
        this.S = new androidx.core.view.t(this);
    }

    private void A() {
        u();
        this.Q.run();
    }

    private boolean B(float f10) {
        this.N.fling(0, 0, 0, (int) f10, 0, 0, Integer.MIN_VALUE, Integer.MAX_VALUE);
        return this.N.getFinalY() > this.f786r.getHeight();
    }

    private void p() {
        u();
        this.R.run();
    }

    /* JADX WARN: Removed duplicated region for block: B:7:0x0013  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean q(android.view.View r3, android.graphics.Rect r4, boolean r5, boolean r6, boolean r7, boolean r8) {
        /*
            r2 = this;
            android.view.ViewGroup$LayoutParams r3 = r3.getLayoutParams()
            androidx.appcompat.widget.ActionBarOverlayLayout$e r3 = (androidx.appcompat.widget.ActionBarOverlayLayout.e) r3
            r0 = 1
            if (r5 == 0) goto L13
            int r5 = r3.leftMargin
            int r1 = r4.left
            if (r5 == r1) goto L13
            r3.leftMargin = r1
            r5 = 1
            goto L14
        L13:
            r5 = 0
        L14:
            if (r6 == 0) goto L1f
            int r6 = r3.topMargin
            int r1 = r4.top
            if (r6 == r1) goto L1f
            r3.topMargin = r1
            r5 = 1
        L1f:
            if (r8 == 0) goto L2a
            int r6 = r3.rightMargin
            int r8 = r4.right
            if (r6 == r8) goto L2a
            r3.rightMargin = r8
            r5 = 1
        L2a:
            if (r7 == 0) goto L35
            int r6 = r3.bottomMargin
            int r4 = r4.bottom
            if (r6 == r4) goto L35
            r3.bottomMargin = r4
            goto L36
        L35:
            r0 = r5
        L36:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.ActionBarOverlayLayout.q(android.view.View, android.graphics.Rect, boolean, boolean, boolean, boolean):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private e0 t(View view) {
        if (view instanceof e0) {
            return (e0) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        throw new IllegalStateException("Can't make a decor toolbar out of " + view.getClass().getSimpleName());
    }

    private void v(Context context) {
        TypedArray typedArrayObtainStyledAttributes = getContext().getTheme().obtainStyledAttributes(T);
        this.f783o = typedArrayObtainStyledAttributes.getDimensionPixelSize(0, 0);
        Drawable drawable = typedArrayObtainStyledAttributes.getDrawable(1);
        this.f788t = drawable;
        setWillNotDraw(drawable == null);
        typedArrayObtainStyledAttributes.recycle();
        this.f789u = context.getApplicationInfo().targetSdkVersion < 19;
        this.N = new OverScroller(context);
    }

    private void x() {
        u();
        postDelayed(this.R, 600L);
    }

    private void y() {
        u();
        postDelayed(this.Q, 600L);
    }

    @Override // androidx.appcompat.widget.d0
    public void a(Menu menu, m.a aVar) {
        z();
        this.f787s.a(menu, aVar);
    }

    @Override // androidx.appcompat.widget.d0
    public boolean b() {
        z();
        return this.f787s.b();
    }

    @Override // androidx.appcompat.widget.d0
    public void c() {
        z();
        this.f787s.c();
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof e;
    }

    @Override // androidx.appcompat.widget.d0
    public boolean d() {
        z();
        return this.f787s.d();
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        super.draw(canvas);
        if (this.f788t == null || this.f789u) {
            return;
        }
        int bottom = this.f786r.getVisibility() == 0 ? (int) (this.f786r.getBottom() + this.f786r.getTranslationY() + 0.5f) : 0;
        this.f788t.setBounds(0, bottom, getWidth(), this.f788t.getIntrinsicHeight() + bottom);
        this.f788t.draw(canvas);
    }

    @Override // androidx.appcompat.widget.d0
    public boolean e() {
        z();
        return this.f787s.e();
    }

    @Override // androidx.appcompat.widget.d0
    public boolean f() {
        z();
        return this.f787s.f();
    }

    @Override // android.view.View
    protected boolean fitSystemWindows(Rect rect) {
        if (Build.VERSION.SDK_INT >= 21) {
            return super.fitSystemWindows(rect);
        }
        z();
        boolean zQ = q(this.f786r, rect, true, true, false, true);
        this.E.set(rect);
        f1.a(this, this.E, this.B);
        if (!this.F.equals(this.E)) {
            this.F.set(this.E);
            zQ = true;
        }
        if (!this.C.equals(this.B)) {
            this.C.set(this.B);
            zQ = true;
        }
        if (zQ) {
            requestLayout();
        }
        return true;
    }

    @Override // androidx.appcompat.widget.d0
    public boolean g() {
        z();
        return this.f787s.g();
    }

    public int getActionBarHideOffset() {
        ActionBarContainer actionBarContainer = this.f786r;
        if (actionBarContainer != null) {
            return -((int) actionBarContainer.getTranslationY());
        }
        return 0;
    }

    @Override // android.view.ViewGroup
    public int getNestedScrollAxes() {
        return this.S.a();
    }

    public CharSequence getTitle() {
        z();
        return this.f787s.getTitle();
    }

    @Override // androidx.appcompat.widget.d0
    public void h(int i10) {
        z();
        if (i10 == 2) {
            this.f787s.r();
        } else if (i10 == 5) {
            this.f787s.s();
        } else {
            if (i10 != 109) {
                return;
            }
            setOverlayMode(true);
        }
    }

    @Override // androidx.appcompat.widget.d0
    public void i() {
        z();
        this.f787s.h();
    }

    @Override // androidx.core.view.r
    public void j(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        k(view, i10, i11, i12, i13, i14);
    }

    @Override // androidx.core.view.q
    public void k(View view, int i10, int i11, int i12, int i13, int i14) {
        if (i14 == 0) {
            onNestedScroll(view, i10, i11, i12, i13);
        }
    }

    @Override // androidx.core.view.q
    public boolean l(View view, View view2, int i10, int i11) {
        return i11 == 0 && onStartNestedScroll(view, view2, i10);
    }

    @Override // androidx.core.view.q
    public void m(View view, View view2, int i10, int i11) {
        if (i11 == 0) {
            onNestedScrollAccepted(view, view2, i10);
        }
    }

    @Override // androidx.core.view.q
    public void n(View view, int i10) {
        if (i10 == 0) {
            onStopNestedScroll(view);
        }
    }

    @Override // androidx.core.view.q
    public void o(View view, int i10, int i11, int[] iArr, int i12) {
        if (i12 == 0) {
            onNestedPreScroll(view, i10, i11, iArr);
        }
    }

    @Override // android.view.View
    public WindowInsets onApplyWindowInsets(WindowInsets windowInsets) {
        z();
        androidx.core.view.k0 k0VarW = androidx.core.view.k0.w(windowInsets, this);
        boolean zQ = q(this.f786r, new Rect(k0VarW.j(), k0VarW.l(), k0VarW.k(), k0VarW.i()), true, true, false, true);
        androidx.core.view.a0.h(this, k0VarW, this.B);
        Rect rect = this.B;
        androidx.core.view.k0 k0VarM = k0VarW.m(rect.left, rect.top, rect.right, rect.bottom);
        this.I = k0VarM;
        boolean z10 = true;
        if (!this.J.equals(k0VarM)) {
            this.J = this.I;
            zQ = true;
        }
        if (this.C.equals(this.B)) {
            z10 = zQ;
        } else {
            this.C.set(this.B);
        }
        if (z10) {
            requestLayout();
        }
        return k0VarW.a().c().b().u();
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        v(getContext());
        androidx.core.view.a0.n0(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        u();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        int childCount = getChildCount();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            if (childAt.getVisibility() != 8) {
                e eVar = (e) childAt.getLayoutParams();
                int measuredWidth = childAt.getMeasuredWidth();
                int measuredHeight = childAt.getMeasuredHeight();
                int i15 = ((ViewGroup.MarginLayoutParams) eVar).leftMargin + paddingLeft;
                int i16 = ((ViewGroup.MarginLayoutParams) eVar).topMargin + paddingTop;
                childAt.layout(i15, i16, measuredWidth + i15, measuredHeight + i16);
            }
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        int measuredHeight;
        z();
        measureChildWithMargins(this.f786r, i10, 0, i11, 0);
        e eVar = (e) this.f786r.getLayoutParams();
        int iMax = Math.max(0, this.f786r.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar).leftMargin + ((ViewGroup.MarginLayoutParams) eVar).rightMargin);
        int iMax2 = Math.max(0, this.f786r.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar).topMargin + ((ViewGroup.MarginLayoutParams) eVar).bottomMargin);
        int iCombineMeasuredStates = View.combineMeasuredStates(0, this.f786r.getMeasuredState());
        boolean z10 = (androidx.core.view.a0.N(this) & 256) != 0;
        if (z10) {
            measuredHeight = this.f783o;
            if (this.f791w && this.f786r.getTabContainer() != null) {
                measuredHeight += this.f783o;
            }
        } else {
            measuredHeight = this.f786r.getVisibility() != 8 ? this.f786r.getMeasuredHeight() : 0;
        }
        this.D.set(this.B);
        int i12 = Build.VERSION.SDK_INT;
        if (i12 >= 21) {
            this.K = this.I;
        } else {
            this.G.set(this.E);
        }
        if (!this.f790v && !z10) {
            Rect rect = this.D;
            rect.top += measuredHeight;
            rect.bottom += 0;
            if (i12 >= 21) {
                this.K = this.K.m(0, measuredHeight, 0, 0);
            }
        } else if (i12 >= 21) {
            this.K = new k0.b(this.K).c(androidx.core.graphics.b.b(this.K.j(), this.K.l() + measuredHeight, this.K.k(), this.K.i() + 0)).a();
        } else {
            Rect rect2 = this.G;
            rect2.top += measuredHeight;
            rect2.bottom += 0;
        }
        q(this.f785q, this.D, true, true, true, true);
        if (i12 >= 21 && !this.L.equals(this.K)) {
            androidx.core.view.k0 k0Var = this.K;
            this.L = k0Var;
            androidx.core.view.a0.i(this.f785q, k0Var);
        } else if (i12 < 21 && !this.H.equals(this.G)) {
            this.H.set(this.G);
            this.f785q.a(this.G);
        }
        measureChildWithMargins(this.f785q, i10, 0, i11, 0);
        e eVar2 = (e) this.f785q.getLayoutParams();
        int iMax3 = Math.max(iMax, this.f785q.getMeasuredWidth() + ((ViewGroup.MarginLayoutParams) eVar2).leftMargin + ((ViewGroup.MarginLayoutParams) eVar2).rightMargin);
        int iMax4 = Math.max(iMax2, this.f785q.getMeasuredHeight() + ((ViewGroup.MarginLayoutParams) eVar2).topMargin + ((ViewGroup.MarginLayoutParams) eVar2).bottomMargin);
        int iCombineMeasuredStates2 = View.combineMeasuredStates(iCombineMeasuredStates, this.f785q.getMeasuredState());
        setMeasuredDimension(View.resolveSizeAndState(Math.max(iMax3 + getPaddingLeft() + getPaddingRight(), getSuggestedMinimumWidth()), i10, iCombineMeasuredStates2), View.resolveSizeAndState(Math.max(iMax4 + getPaddingTop() + getPaddingBottom(), getSuggestedMinimumHeight()), i11, iCombineMeasuredStates2 << 16));
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.s
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        if (!this.f792x || !z10) {
            return false;
        }
        if (B(f11)) {
            p();
        } else {
            A();
        }
        this.f793y = true;
        return true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.s
    public boolean onNestedPreFling(View view, float f10, float f11) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.s
    public void onNestedPreScroll(View view, int i10, int i11, int[] iArr) {
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.s
    public void onNestedScroll(View view, int i10, int i11, int i12, int i13) {
        int i14 = this.f794z + i11;
        this.f794z = i14;
        setActionBarHideOffset(i14);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.s
    public void onNestedScrollAccepted(View view, View view2, int i10) {
        this.S.b(view, view2, i10);
        this.f794z = getActionBarHideOffset();
        u();
        d dVar = this.M;
        if (dVar != null) {
            dVar.e();
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.s
    public boolean onStartNestedScroll(View view, View view2, int i10) {
        if ((i10 & 2) == 0 || this.f786r.getVisibility() != 0) {
            return false;
        }
        return this.f792x;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.s
    public void onStopNestedScroll(View view) {
        if (this.f792x && !this.f793y) {
            if (this.f794z <= this.f786r.getHeight()) {
                y();
            } else {
                x();
            }
        }
        d dVar = this.M;
        if (dVar != null) {
            dVar.b();
        }
    }

    @Override // android.view.View
    @Deprecated
    public void onWindowSystemUiVisibilityChanged(int i10) {
        if (Build.VERSION.SDK_INT >= 16) {
            super.onWindowSystemUiVisibilityChanged(i10);
        }
        z();
        int i11 = this.A ^ i10;
        this.A = i10;
        boolean z10 = (i10 & 4) == 0;
        boolean z11 = (i10 & 256) != 0;
        d dVar = this.M;
        if (dVar != null) {
            dVar.c(!z11);
            if (z10 || !z11) {
                this.M.a();
            } else {
                this.M.d();
            }
        }
        if ((i11 & 256) == 0 || this.M == null) {
            return;
        }
        androidx.core.view.a0.n0(this);
    }

    @Override // android.view.View
    protected void onWindowVisibilityChanged(int i10) {
        super.onWindowVisibilityChanged(i10);
        this.f784p = i10;
        d dVar = this.M;
        if (dVar != null) {
            dVar.onWindowVisibilityChanged(i10);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public e generateDefaultLayoutParams() {
        return new e(-1, -1);
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public e generateLayoutParams(AttributeSet attributeSet) {
        return new e(getContext(), attributeSet);
    }

    public void setActionBarHideOffset(int i10) {
        u();
        this.f786r.setTranslationY(-Math.max(0, Math.min(i10, this.f786r.getHeight())));
    }

    public void setActionBarVisibilityCallback(d dVar) {
        this.M = dVar;
        if (getWindowToken() != null) {
            this.M.onWindowVisibilityChanged(this.f784p);
            int i10 = this.A;
            if (i10 != 0) {
                onWindowSystemUiVisibilityChanged(i10);
                androidx.core.view.a0.n0(this);
            }
        }
    }

    public void setHasNonEmbeddedTabs(boolean z10) {
        this.f791w = z10;
    }

    public void setHideOnContentScrollEnabled(boolean z10) {
        if (z10 != this.f792x) {
            this.f792x = z10;
            if (z10) {
                return;
            }
            u();
            setActionBarHideOffset(0);
        }
    }

    public void setIcon(int i10) {
        z();
        this.f787s.setIcon(i10);
    }

    public void setLogo(int i10) {
        z();
        this.f787s.l(i10);
    }

    public void setOverlayMode(boolean z10) {
        this.f790v = z10;
        this.f789u = z10 && getContext().getApplicationInfo().targetSdkVersion < 19;
    }

    public void setShowingForActionMode(boolean z10) {
    }

    public void setUiOptions(int i10) {
    }

    @Override // androidx.appcompat.widget.d0
    public void setWindowCallback(Window.Callback callback) {
        z();
        this.f787s.setWindowCallback(callback);
    }

    @Override // androidx.appcompat.widget.d0
    public void setWindowTitle(CharSequence charSequence) {
        z();
        this.f787s.setWindowTitle(charSequence);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    void u() {
        removeCallbacks(this.Q);
        removeCallbacks(this.R);
        ViewPropertyAnimator viewPropertyAnimator = this.O;
        if (viewPropertyAnimator != null) {
            viewPropertyAnimator.cancel();
        }
    }

    public boolean w() {
        return this.f790v;
    }

    void z() {
        if (this.f785q == null) {
            this.f785q = (ContentFrameLayout) findViewById(f.f.f29054b);
            this.f786r = (ActionBarContainer) findViewById(f.f.f29055c);
            this.f787s = t(findViewById(f.f.f29053a));
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new e(layoutParams);
    }

    public void setIcon(Drawable drawable) {
        z();
        this.f787s.setIcon(drawable);
    }
}
