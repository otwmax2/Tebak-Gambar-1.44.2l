package com.google.android.material.bottomappbar;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.ActionMenuView;
import androidx.appcompat.widget.Toolbar;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a0;
import com.google.android.material.behavior.HideBottomViewOnScrollBehavior;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import y3.j;
import z3.k;

/* JADX INFO: loaded from: classes2.dex */
public class BottomAppBar extends Toolbar implements CoordinatorLayout.b {
    private static final int A0 = j.f36766i;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private final int f25101i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private final o4.g f25102j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private Animator f25103k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private Animator f25104l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private int f25105m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private int f25106n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private boolean f25107o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private int f25108p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private ArrayList<g> f25109q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private int f25110r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private boolean f25111s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private boolean f25112t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private Behavior f25113u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private int f25114v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private int f25115w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private int f25116x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    AnimatorListenerAdapter f25117y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    k<FloatingActionButton> f25118z0;

    class a extends AnimatorListenerAdapter {
        a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.m0();
            BottomAppBar.this.f25103k0 = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.n0();
        }
    }

    class b extends FloatingActionButton.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ int f25125a;

        class a extends FloatingActionButton.b {
            a() {
            }

            @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.b
            public void b(FloatingActionButton floatingActionButton) {
                BottomAppBar.this.m0();
            }
        }

        b(int i10) {
            this.f25125a = i10;
        }

        @Override // com.google.android.material.floatingactionbutton.FloatingActionButton.b
        public void a(FloatingActionButton floatingActionButton) {
            floatingActionButton.setTranslationX(BottomAppBar.this.r0(this.f25125a));
            floatingActionButton.s(new a());
        }
    }

    class c extends AnimatorListenerAdapter {
        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            BottomAppBar.this.m0();
            BottomAppBar.this.f25111s0 = false;
            BottomAppBar.this.f25104l0 = null;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.n0();
        }
    }

    class d extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f25129a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ ActionMenuView f25130b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ int f25131c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ boolean f25132d;

        d(ActionMenuView actionMenuView, int i10, boolean z10) {
            this.f25130b = actionMenuView;
            this.f25131c = i10;
            this.f25132d = z10;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f25129a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f25129a) {
                return;
            }
            boolean z10 = BottomAppBar.this.f25110r0 != 0;
            BottomAppBar bottomAppBar = BottomAppBar.this;
            bottomAppBar.v0(bottomAppBar.f25110r0);
            BottomAppBar.this.B0(this.f25130b, this.f25131c, this.f25132d, z10);
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ ActionMenuView f25134o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ int f25135p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ boolean f25136q;

        e(ActionMenuView actionMenuView, int i10, boolean z10) {
            this.f25134o = actionMenuView;
            this.f25135p = i10;
            this.f25136q = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f25134o.setTranslationX(BottomAppBar.this.q0(r0, this.f25135p, this.f25136q));
        }
    }

    class f extends AnimatorListenerAdapter {
        f() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            BottomAppBar.this.f25117y0.onAnimationStart(animator);
            FloatingActionButton floatingActionButtonO0 = BottomAppBar.this.o0();
            if (floatingActionButtonO0 != null) {
                floatingActionButtonO0.setTranslationX(BottomAppBar.this.getFabTranslationX());
            }
        }
    }

    interface g {
        void a(BottomAppBar bottomAppBar);

        void b(BottomAppBar bottomAppBar);
    }

    static class h extends b0.a {
        public static final Parcelable.Creator<h> CREATOR = new a();

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        int f25139q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        boolean f25140r;

        static class a implements Parcelable.ClassLoaderCreator<h> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public h createFromParcel(Parcel parcel) {
                return new h(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public h createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new h(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public h[] newArray(int i10) {
                return new h[i10];
            }
        }

        public h(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // b0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeInt(this.f25139q);
            parcel.writeInt(this.f25140r ? 1 : 0);
        }

        public h(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f25139q = parcel.readInt();
            this.f25140r = parcel.readInt() != 0;
        }
    }

    private void A0(ActionMenuView actionMenuView, int i10, boolean z10) {
        B0(actionMenuView, i10, z10, false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B0(ActionMenuView actionMenuView, int i10, boolean z10, boolean z11) {
        e eVar = new e(actionMenuView, i10, z10);
        if (z11) {
            actionMenuView.post(eVar);
        } else {
            eVar.run();
        }
    }

    private ActionMenuView getActionMenuView() {
        for (int i10 = 0; i10 < getChildCount(); i10++) {
            View childAt = getChildAt(i10);
            if (childAt instanceof ActionMenuView) {
                return (ActionMenuView) childAt;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBottomInset() {
        return this.f25114v0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float getFabTranslationX() {
        return r0(this.f25105m0);
    }

    private float getFabTranslationY() {
        return -getTopEdgeTreatment().d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getLeftInset() {
        return this.f25116x0;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getRightInset() {
        return this.f25115w0;
    }

    private com.google.android.material.bottomappbar.a getTopEdgeTreatment() {
        return (com.google.android.material.bottomappbar.a) this.f25102j0.C().p();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h0(FloatingActionButton floatingActionButton) {
        floatingActionButton.e(this.f25117y0);
        floatingActionButton.f(new f());
        floatingActionButton.g(this.f25118z0);
    }

    private void i0() {
        Animator animator = this.f25104l0;
        if (animator != null) {
            animator.cancel();
        }
        Animator animator2 = this.f25103k0;
        if (animator2 != null) {
            animator2.cancel();
        }
    }

    private void k0(int i10, List<Animator> list) {
        ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(o0(), "translationX", r0(i10));
        objectAnimatorOfFloat.setDuration(300L);
        list.add(objectAnimatorOfFloat);
    }

    private void l0(int i10, boolean z10, List<Animator> list) {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null) {
            return;
        }
        Animator animatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 1.0f);
        if (Math.abs(actionMenuView.getTranslationX() - q0(actionMenuView, i10, z10)) <= 1.0f) {
            if (actionMenuView.getAlpha() < 1.0f) {
                list.add(animatorOfFloat);
            }
        } else {
            ObjectAnimator objectAnimatorOfFloat = ObjectAnimator.ofFloat(actionMenuView, "alpha", 0.0f);
            objectAnimatorOfFloat.addListener(new d(actionMenuView, i10, z10));
            AnimatorSet animatorSet = new AnimatorSet();
            animatorSet.setDuration(150L);
            animatorSet.playSequentially(objectAnimatorOfFloat, animatorOfFloat);
            list.add(animatorSet);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m0() {
        ArrayList<g> arrayList;
        int i10 = this.f25108p0 - 1;
        this.f25108p0 = i10;
        if (i10 != 0 || (arrayList = this.f25109q0) == null) {
            return;
        }
        Iterator<g> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().b(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n0() {
        ArrayList<g> arrayList;
        int i10 = this.f25108p0;
        this.f25108p0 = i10 + 1;
        if (i10 != 0 || (arrayList = this.f25109q0) == null) {
            return;
        }
        Iterator<g> it = arrayList.iterator();
        while (it.hasNext()) {
            it.next().a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public FloatingActionButton o0() {
        View viewP0 = p0();
        if (viewP0 instanceof FloatingActionButton) {
            return (FloatingActionButton) viewP0;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public View p0() {
        if (!(getParent() instanceof CoordinatorLayout)) {
            return null;
        }
        for (View view : ((CoordinatorLayout) getParent()).s(this)) {
            if ((view instanceof FloatingActionButton) || (view instanceof ExtendedFloatingActionButton)) {
                return view;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public float r0(int i10) {
        boolean zD = com.google.android.material.internal.k.d(this);
        if (i10 == 1) {
            return ((getMeasuredWidth() / 2) - (this.f25101i0 + (zD ? this.f25116x0 : this.f25115w0))) * (zD ? -1 : 1);
        }
        return 0.0f;
    }

    private boolean s0() {
        FloatingActionButton floatingActionButtonO0 = o0();
        return floatingActionButtonO0 != null && floatingActionButtonO0.o();
    }

    private void t0(int i10, boolean z10) {
        if (!a0.U(this)) {
            this.f25111s0 = false;
            v0(this.f25110r0);
            return;
        }
        Animator animator = this.f25104l0;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (!s0()) {
            i10 = 0;
            z10 = false;
        }
        l0(i10, z10, arrayList);
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f25104l0 = animatorSet;
        animatorSet.addListener(new c());
        this.f25104l0.start();
    }

    private void u0(int i10) {
        if (this.f25105m0 == i10 || !a0.U(this)) {
            return;
        }
        Animator animator = this.f25103k0;
        if (animator != null) {
            animator.cancel();
        }
        ArrayList arrayList = new ArrayList();
        if (this.f25106n0 == 1) {
            k0(i10, arrayList);
        } else {
            j0(i10, arrayList);
        }
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(arrayList);
        this.f25103k0 = animatorSet;
        animatorSet.addListener(new a());
        this.f25103k0.start();
    }

    private void w0() {
        ActionMenuView actionMenuView = getActionMenuView();
        if (actionMenuView == null || this.f25104l0 != null) {
            return;
        }
        actionMenuView.setAlpha(1.0f);
        if (s0()) {
            A0(actionMenuView, this.f25105m0, this.f25112t0);
        } else {
            A0(actionMenuView, 0, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x0() {
        getTopEdgeTreatment().m(getFabTranslationX());
        View viewP0 = p0();
        this.f25102j0.X((this.f25112t0 && s0()) ? 1.0f : 0.0f);
        if (viewP0 != null) {
            viewP0.setTranslationY(getFabTranslationY());
            viewP0.setTranslationX(getFabTranslationX());
        }
    }

    public ColorStateList getBackgroundTint() {
        return this.f25102j0.E();
    }

    public float getCradleVerticalOffset() {
        return getTopEdgeTreatment().d();
    }

    public int getFabAlignmentMode() {
        return this.f25105m0;
    }

    public int getFabAnimationMode() {
        return this.f25106n0;
    }

    public float getFabCradleMargin() {
        return getTopEdgeTreatment().f();
    }

    public float getFabCradleRoundedCornerRadius() {
        return getTopEdgeTreatment().g();
    }

    public boolean getHideOnScroll() {
        return this.f25107o0;
    }

    protected void j0(int i10, List<Animator> list) {
        FloatingActionButton floatingActionButtonO0 = o0();
        if (floatingActionButtonO0 == null || floatingActionButtonO0.n()) {
            return;
        }
        n0();
        floatingActionButtonO0.l(new b(i10));
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        o4.h.f(this, this.f25102j0);
        if (getParent() instanceof ViewGroup) {
            ((ViewGroup) getParent()).setClipChildren(false);
        }
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (z10) {
            i0();
            x0();
        }
        w0();
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof h)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        h hVar = (h) parcelable;
        super.onRestoreInstanceState(hVar.h());
        this.f25105m0 = hVar.f25139q;
        this.f25112t0 = hVar.f25140r;
    }

    @Override // androidx.appcompat.widget.Toolbar, android.view.View
    protected Parcelable onSaveInstanceState() {
        h hVar = new h(super.onSaveInstanceState());
        hVar.f25139q = this.f25105m0;
        hVar.f25140r = this.f25112t0;
        return hVar;
    }

    protected int q0(ActionMenuView actionMenuView, int i10, boolean z10) {
        if (i10 != 1 || !z10) {
            return 0;
        }
        boolean zD = com.google.android.material.internal.k.d(this);
        int measuredWidth = zD ? getMeasuredWidth() : 0;
        for (int i11 = 0; i11 < getChildCount(); i11++) {
            View childAt = getChildAt(i11);
            if ((childAt.getLayoutParams() instanceof Toolbar.e) && (((Toolbar.e) childAt.getLayoutParams()).f338a & 8388615) == 8388611) {
                measuredWidth = zD ? Math.min(measuredWidth, childAt.getLeft()) : Math.max(measuredWidth, childAt.getRight());
            }
        }
        return measuredWidth - ((zD ? actionMenuView.getRight() : actionMenuView.getLeft()) + (zD ? this.f25115w0 : -this.f25116x0));
    }

    public void setBackgroundTint(ColorStateList colorStateList) {
        androidx.core.graphics.drawable.a.o(this.f25102j0, colorStateList);
    }

    public void setCradleVerticalOffset(float f10) {
        if (f10 != getCradleVerticalOffset()) {
            getTopEdgeTreatment().i(f10);
            this.f25102j0.invalidateSelf();
            x0();
        }
    }

    @Override // android.view.View
    public void setElevation(float f10) {
        this.f25102j0.V(f10);
        getBehavior().G(this, this.f25102j0.B() - this.f25102j0.A());
    }

    public void setFabAlignmentMode(int i10) {
        y0(i10, 0);
    }

    public void setFabAnimationMode(int i10) {
        this.f25106n0 = i10;
    }

    public void setFabCradleMargin(float f10) {
        if (f10 != getFabCradleMargin()) {
            getTopEdgeTreatment().j(f10);
            this.f25102j0.invalidateSelf();
        }
    }

    public void setFabCradleRoundedCornerRadius(float f10) {
        if (f10 != getFabCradleRoundedCornerRadius()) {
            getTopEdgeTreatment().k(f10);
            this.f25102j0.invalidateSelf();
        }
    }

    public void setHideOnScroll(boolean z10) {
        this.f25107o0 = z10;
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setSubtitle(CharSequence charSequence) {
    }

    @Override // androidx.appcompat.widget.Toolbar
    public void setTitle(CharSequence charSequence) {
    }

    public void v0(int i10) {
        if (i10 != 0) {
            this.f25110r0 = 0;
            getMenu().clear();
            x(i10);
        }
    }

    public void y0(int i10, int i11) {
        this.f25110r0 = i11;
        this.f25111s0 = true;
        t0(i10, this.f25112t0);
        u0(i10);
        this.f25105m0 = i10;
    }

    boolean z0(int i10) {
        float f10 = i10;
        if (f10 == getTopEdgeTreatment().h()) {
            return false;
        }
        getTopEdgeTreatment().l(f10);
        this.f25102j0.invalidateSelf();
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public Behavior getBehavior() {
        if (this.f25113u0 == null) {
            this.f25113u0 = new Behavior();
        }
        return this.f25113u0;
    }

    public static class Behavior extends HideBottomViewOnScrollBehavior<BottomAppBar> {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Rect f25119e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private WeakReference<BottomAppBar> f25120f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f25121g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private final View.OnLayoutChangeListener f25122h;

        class a implements View.OnLayoutChangeListener {
            a() {
            }

            @Override // android.view.View.OnLayoutChangeListener
            public void onLayoutChange(View view, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17) {
                BottomAppBar bottomAppBar = (BottomAppBar) Behavior.this.f25120f.get();
                if (bottomAppBar == null || !(view instanceof FloatingActionButton)) {
                    view.removeOnLayoutChangeListener(this);
                    return;
                }
                FloatingActionButton floatingActionButton = (FloatingActionButton) view;
                floatingActionButton.j(Behavior.this.f25119e);
                int iHeight = Behavior.this.f25119e.height();
                bottomAppBar.z0(iHeight);
                CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
                if (Behavior.this.f25121g == 0) {
                    ((ViewGroup.MarginLayoutParams) fVar).bottomMargin = bottomAppBar.getBottomInset() + (bottomAppBar.getResources().getDimensionPixelOffset(y3.d.f36684v) - ((floatingActionButton.getMeasuredHeight() - iHeight) / 2));
                    ((ViewGroup.MarginLayoutParams) fVar).leftMargin = bottomAppBar.getLeftInset();
                    ((ViewGroup.MarginLayoutParams) fVar).rightMargin = bottomAppBar.getRightInset();
                    if (com.google.android.material.internal.k.d(floatingActionButton)) {
                        ((ViewGroup.MarginLayoutParams) fVar).leftMargin += bottomAppBar.f25101i0;
                    } else {
                        ((ViewGroup.MarginLayoutParams) fVar).rightMargin += bottomAppBar.f25101i0;
                    }
                }
            }
        }

        public Behavior() {
            this.f25122h = new a();
            this.f25119e = new Rect();
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: M, reason: merged with bridge method [inline-methods] */
        public boolean l(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, int i10) {
            this.f25120f = new WeakReference<>(bottomAppBar);
            View viewP0 = bottomAppBar.p0();
            if (viewP0 != null && !a0.U(viewP0)) {
                CoordinatorLayout.f fVar = (CoordinatorLayout.f) viewP0.getLayoutParams();
                fVar.f1941d = 49;
                this.f25121g = ((ViewGroup.MarginLayoutParams) fVar).bottomMargin;
                if (viewP0 instanceof FloatingActionButton) {
                    FloatingActionButton floatingActionButton = (FloatingActionButton) viewP0;
                    floatingActionButton.addOnLayoutChangeListener(this.f25122h);
                    bottomAppBar.h0(floatingActionButton);
                }
                bottomAppBar.x0();
            }
            coordinatorLayout.I(bottomAppBar, i10);
            return super.l(coordinatorLayout, bottomAppBar, i10);
        }

        @Override // com.google.android.material.behavior.HideBottomViewOnScrollBehavior, androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: N, reason: merged with bridge method [inline-methods] */
        public boolean A(CoordinatorLayout coordinatorLayout, BottomAppBar bottomAppBar, View view, View view2, int i10, int i11) {
            return bottomAppBar.getHideOnScroll() && super.A(coordinatorLayout, bottomAppBar, view, view2, i10, i11);
        }

        public Behavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f25122h = new a();
            this.f25119e = new Rect();
        }
    }
}
