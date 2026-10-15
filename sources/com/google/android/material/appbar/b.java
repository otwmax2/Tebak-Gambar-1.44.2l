package com.google.android.material.appbar;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a0;
import androidx.core.view.k0;
import java.util.List;

/* JADX INFO: compiled from: HeaderScrollingViewBehavior.java */
/* JADX INFO: loaded from: classes2.dex */
abstract class b extends c<View> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Rect f25064d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    final Rect f25065e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f25066f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f25067g;

    public b() {
        this.f25064d = new Rect();
        this.f25065e = new Rect();
        this.f25066f = 0;
    }

    private static int N(int i10) {
        if (i10 == 0) {
            return 8388659;
        }
        return i10;
    }

    @Override // com.google.android.material.appbar.c
    protected void F(CoordinatorLayout coordinatorLayout, View view, int i10) {
        View viewH = H(coordinatorLayout.r(view));
        if (viewH == null) {
            super.F(coordinatorLayout, view, i10);
            this.f25066f = 0;
            return;
        }
        CoordinatorLayout.f fVar = (CoordinatorLayout.f) view.getLayoutParams();
        Rect rect = this.f25064d;
        rect.set(coordinatorLayout.getPaddingLeft() + ((ViewGroup.MarginLayoutParams) fVar).leftMargin, viewH.getBottom() + ((ViewGroup.MarginLayoutParams) fVar).topMargin, (coordinatorLayout.getWidth() - coordinatorLayout.getPaddingRight()) - ((ViewGroup.MarginLayoutParams) fVar).rightMargin, ((coordinatorLayout.getHeight() + viewH.getBottom()) - coordinatorLayout.getPaddingBottom()) - ((ViewGroup.MarginLayoutParams) fVar).bottomMargin);
        k0 lastWindowInsets = coordinatorLayout.getLastWindowInsets();
        if (lastWindowInsets != null && a0.B(coordinatorLayout) && !a0.B(view)) {
            rect.left += lastWindowInsets.j();
            rect.right -= lastWindowInsets.k();
        }
        Rect rect2 = this.f25065e;
        androidx.core.view.e.a(N(fVar.f1940c), view.getMeasuredWidth(), view.getMeasuredHeight(), rect, rect2, i10);
        int I = I(viewH);
        view.layout(rect2.left, rect2.top - I, rect2.right, rect2.bottom - I);
        this.f25066f = rect2.top - viewH.getBottom();
    }

    abstract View H(List<View> list);

    final int I(View view) {
        if (this.f25067g == 0) {
            return 0;
        }
        float fJ = J(view);
        int i10 = this.f25067g;
        return y.a.b((int) (fJ * i10), 0, i10);
    }

    float J(View view) {
        return 1.0f;
    }

    public final int K() {
        return this.f25067g;
    }

    int L(View view) {
        return view.getMeasuredHeight();
    }

    final int M() {
        return this.f25066f;
    }

    public final void O(int i10) {
        this.f25067g = i10;
    }

    protected boolean P() {
        return false;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean m(CoordinatorLayout coordinatorLayout, View view, int i10, int i11, int i12, int i13) {
        View viewH;
        k0 lastWindowInsets;
        int i14 = view.getLayoutParams().height;
        if ((i14 != -1 && i14 != -2) || (viewH = H(coordinatorLayout.r(view))) == null) {
            return false;
        }
        int size = View.MeasureSpec.getSize(i12);
        if (size <= 0) {
            size = coordinatorLayout.getHeight();
        } else if (a0.B(viewH) && (lastWindowInsets = coordinatorLayout.getLastWindowInsets()) != null) {
            size += lastWindowInsets.l() + lastWindowInsets.i();
        }
        int iL = size + L(viewH);
        int measuredHeight = viewH.getMeasuredHeight();
        if (P()) {
            view.setTranslationY(-measuredHeight);
        } else {
            iL -= measuredHeight;
        }
        coordinatorLayout.J(view, i10, i11, View.MeasureSpec.makeMeasureSpec(iL, i14 == -1 ? 1073741824 : Integer.MIN_VALUE), i13);
        return true;
    }

    public b(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f25064d = new Rect();
        this.f25065e = new Rect();
        this.f25066f = 0;
    }
}
