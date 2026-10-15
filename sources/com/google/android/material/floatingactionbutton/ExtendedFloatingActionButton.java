package com.google.android.material.floatingactionbutton;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a0;
import com.facebook.appevents.internal.ViewHierarchyConstants;
import com.google.android.material.appbar.AppBarLayout;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.button.MaterialButton;
import java.util.Iterator;
import java.util.List;
import y3.j;
import y3.k;
import z3.h;

/* JADX INFO: loaded from: classes2.dex */
public class ExtendedFloatingActionButton extends MaterialButton implements CoordinatorLayout.b {
    private static final int U = j.f36773p;
    static final Property<View, Float> V = new b(Float.class, ViewHierarchyConstants.DIMENSION_WIDTH_KEY);
    static final Property<View, Float> W = new c(Float.class, ViewHierarchyConstants.DIMENSION_HEIGHT_KEY);

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    static final Property<View, Float> f25417a0 = new d(Float.class, "paddingStart");

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    static final Property<View, Float> f25418b0 = new e(Float.class, "paddingEnd");
    private int H;
    private final com.google.android.material.floatingactionbutton.c I;
    private final com.google.android.material.floatingactionbutton.c J;
    private final com.google.android.material.floatingactionbutton.c K;
    private final com.google.android.material.floatingactionbutton.c L;
    private final int M;
    private int N;
    private int O;
    private final CoordinatorLayout.c<ExtendedFloatingActionButton> P;
    private boolean Q;
    private boolean R;
    private boolean S;
    protected ColorStateList T;

    class a extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f25424a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ com.google.android.material.floatingactionbutton.c f25425b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ f f25426c;

        a(com.google.android.material.floatingactionbutton.c cVar, f fVar) {
            this.f25425b = cVar;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f25424a = true;
            this.f25425b.a();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            this.f25425b.f();
            if (this.f25424a) {
                return;
            }
            this.f25425b.i(this.f25426c);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            this.f25425b.onAnimationStart(animator);
            this.f25424a = false;
        }
    }

    static class b extends Property<View, Float> {
        b(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().width);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f10) {
            view.getLayoutParams().width = f10.intValue();
            view.requestLayout();
        }
    }

    static class c extends Property<View, Float> {
        c(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(view.getLayoutParams().height);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f10) {
            view.getLayoutParams().height = f10.intValue();
            view.requestLayout();
        }
    }

    static class d extends Property<View, Float> {
        d(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(a0.J(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f10) {
            a0.D0(view, f10.intValue(), view.getPaddingTop(), a0.I(view), view.getPaddingBottom());
        }
    }

    static class e extends Property<View, Float> {
        e(Class cls, String str) {
            super(cls, str);
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Float get(View view) {
            return Float.valueOf(a0.I(view));
        }

        @Override // android.util.Property
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void set(View view, Float f10) {
            a0.D0(view, a0.J(view), view.getPaddingTop(), f10.intValue(), view.getPaddingBottom());
        }
    }

    public static abstract class f {
    }

    private boolean q() {
        return getVisibility() != 0 ? this.H == 2 : this.H != 1;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void r(com.google.android.material.floatingactionbutton.c cVar, f fVar) {
        if (cVar.e()) {
            return;
        }
        if (!t()) {
            cVar.b();
            cVar.i(fVar);
            return;
        }
        measure(0, 0);
        AnimatorSet animatorSetG = cVar.g();
        animatorSetG.addListener(new a(cVar, fVar));
        Iterator<Animator.AnimatorListener> it = cVar.h().iterator();
        while (it.hasNext()) {
            animatorSetG.addListener(it.next());
        }
        animatorSetG.start();
    }

    private void s() {
        this.T = getTextColors();
    }

    private boolean t() {
        return (a0.U(this) || (!q() && this.S)) && !isInEditMode();
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.b
    public CoordinatorLayout.c<ExtendedFloatingActionButton> getBehavior() {
        return this.P;
    }

    int getCollapsedPadding() {
        return (getCollapsedSize() - getIconSize()) / 2;
    }

    int getCollapsedSize() {
        int i10 = this.M;
        return i10 < 0 ? (Math.min(a0.J(this), a0.I(this)) * 2) + getIconSize() : i10;
    }

    public h getExtendMotionSpec() {
        return this.J.c();
    }

    public h getHideMotionSpec() {
        return this.L.c();
    }

    public h getShowMotionSpec() {
        return this.K.c();
    }

    public h getShrinkMotionSpec() {
        return this.I.c();
    }

    @Override // com.google.android.material.button.MaterialButton, android.widget.TextView, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.Q && TextUtils.isEmpty(getText()) && getIcon() != null) {
            this.Q = false;
            this.I.b();
        }
    }

    public void setAnimateShowBeforeLayout(boolean z10) {
        this.S = z10;
    }

    public void setExtendMotionSpec(h hVar) {
        this.J.d(hVar);
    }

    public void setExtendMotionSpecResource(int i10) {
        setExtendMotionSpec(h.c(getContext(), i10));
    }

    public void setExtended(boolean z10) {
        if (this.Q == z10) {
            return;
        }
        com.google.android.material.floatingactionbutton.c cVar = z10 ? this.J : this.I;
        if (cVar.e()) {
            return;
        }
        cVar.b();
    }

    public void setHideMotionSpec(h hVar) {
        this.L.d(hVar);
    }

    public void setHideMotionSpecResource(int i10) {
        setHideMotionSpec(h.c(getContext(), i10));
    }

    @Override // android.widget.TextView, android.view.View
    public void setPadding(int i10, int i11, int i12, int i13) {
        super.setPadding(i10, i11, i12, i13);
        if (!this.Q || this.R) {
            return;
        }
        this.N = a0.J(this);
        this.O = a0.I(this);
    }

    @Override // android.widget.TextView, android.view.View
    public void setPaddingRelative(int i10, int i11, int i12, int i13) {
        super.setPaddingRelative(i10, i11, i12, i13);
        if (!this.Q || this.R) {
            return;
        }
        this.N = i10;
        this.O = i12;
    }

    public void setShowMotionSpec(h hVar) {
        this.K.d(hVar);
    }

    public void setShowMotionSpecResource(int i10) {
        setShowMotionSpec(h.c(getContext(), i10));
    }

    public void setShrinkMotionSpec(h hVar) {
        this.I.d(hVar);
    }

    public void setShrinkMotionSpecResource(int i10) {
        setShrinkMotionSpec(h.c(getContext(), i10));
    }

    @Override // android.widget.TextView
    public void setTextColor(int i10) {
        super.setTextColor(i10);
        s();
    }

    protected static class ExtendedFloatingActionButtonBehavior<T extends ExtendedFloatingActionButton> extends CoordinatorLayout.c<T> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private Rect f25419a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private f f25420b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private f f25421c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f25422d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f25423e;

        public ExtendedFloatingActionButtonBehavior() {
            this.f25422d = false;
            this.f25423e = true;
        }

        private static boolean G(View view) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (layoutParams instanceof CoordinatorLayout.f) {
                return ((CoordinatorLayout.f) layoutParams).f() instanceof BottomSheetBehavior;
            }
            return false;
        }

        private boolean J(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            return (this.f25422d || this.f25423e) && ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams()).e() == view.getId();
        }

        private boolean L(CoordinatorLayout coordinatorLayout, AppBarLayout appBarLayout, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!J(appBarLayout, extendedFloatingActionButton)) {
                return false;
            }
            if (this.f25419a == null) {
                this.f25419a = new Rect();
            }
            Rect rect = this.f25419a;
            com.google.android.material.internal.b.a(coordinatorLayout, appBarLayout, rect);
            if (rect.bottom <= appBarLayout.getMinimumHeightForVisibleOverlappingContent()) {
                K(extendedFloatingActionButton);
                return true;
            }
            E(extendedFloatingActionButton);
            return true;
        }

        private boolean M(View view, ExtendedFloatingActionButton extendedFloatingActionButton) {
            if (!J(view, extendedFloatingActionButton)) {
                return false;
            }
            if (view.getTop() < (extendedFloatingActionButton.getHeight() / 2) + ((ViewGroup.MarginLayoutParams) ((CoordinatorLayout.f) extendedFloatingActionButton.getLayoutParams())).topMargin) {
                K(extendedFloatingActionButton);
                return true;
            }
            E(extendedFloatingActionButton);
            return true;
        }

        protected void E(ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z10 = this.f25423e;
            extendedFloatingActionButton.r(z10 ? extendedFloatingActionButton.J : extendedFloatingActionButton.K, z10 ? this.f25421c : this.f25420b);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: F, reason: merged with bridge method [inline-methods] */
        public boolean b(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, Rect rect) {
            return super.b(coordinatorLayout, extendedFloatingActionButton, rect);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: H, reason: merged with bridge method [inline-methods] */
        public boolean h(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, View view) {
            if (view instanceof AppBarLayout) {
                L(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton);
                return false;
            }
            if (!G(view)) {
                return false;
            }
            M(view, extendedFloatingActionButton);
            return false;
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        /* JADX INFO: renamed from: I, reason: merged with bridge method [inline-methods] */
        public boolean l(CoordinatorLayout coordinatorLayout, ExtendedFloatingActionButton extendedFloatingActionButton, int i10) {
            List<View> listR = coordinatorLayout.r(extendedFloatingActionButton);
            int size = listR.size();
            for (int i11 = 0; i11 < size; i11++) {
                View view = listR.get(i11);
                if (!(view instanceof AppBarLayout)) {
                    if (G(view) && M(view, extendedFloatingActionButton)) {
                        break;
                    }
                } else {
                    if (L(coordinatorLayout, (AppBarLayout) view, extendedFloatingActionButton)) {
                        break;
                    }
                }
            }
            coordinatorLayout.I(extendedFloatingActionButton, i10);
            return true;
        }

        protected void K(ExtendedFloatingActionButton extendedFloatingActionButton) {
            boolean z10 = this.f25423e;
            extendedFloatingActionButton.r(z10 ? extendedFloatingActionButton.I : extendedFloatingActionButton.L, z10 ? this.f25421c : this.f25420b);
        }

        @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
        public void g(CoordinatorLayout.f fVar) {
            if (fVar.f1945h == 0) {
                fVar.f1945h = 80;
            }
        }

        public ExtendedFloatingActionButtonBehavior(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.f36822g1);
            this.f25422d = typedArrayObtainStyledAttributes.getBoolean(k.f36829h1, false);
            this.f25423e = typedArrayObtainStyledAttributes.getBoolean(k.f36836i1, true);
            typedArrayObtainStyledAttributes.recycle();
        }
    }

    @Override // android.widget.TextView
    public void setTextColor(ColorStateList colorStateList) {
        super.setTextColor(colorStateList);
        s();
    }
}
