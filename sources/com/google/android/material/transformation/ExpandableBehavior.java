package com.google.android.material.transformation;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewTreeObserver;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a0;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
@Deprecated
public abstract class ExpandableBehavior extends CoordinatorLayout.c<View> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f25772a;

    class a implements ViewTreeObserver.OnPreDrawListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ View f25773o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        final /* synthetic */ int f25774p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        final /* synthetic */ i4.a f25775q;

        a(View view, int i10, i4.a aVar) {
            this.f25773o = view;
            this.f25774p = i10;
            this.f25775q = aVar;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // android.view.ViewTreeObserver.OnPreDrawListener
        public boolean onPreDraw() {
            this.f25773o.getViewTreeObserver().removeOnPreDrawListener(this);
            if (ExpandableBehavior.this.f25772a == this.f25774p) {
                ExpandableBehavior expandableBehavior = ExpandableBehavior.this;
                i4.a aVar = this.f25775q;
                expandableBehavior.H((View) aVar, this.f25773o, aVar.a(), false);
            }
            return false;
        }
    }

    public ExpandableBehavior() {
        this.f25772a = 0;
    }

    private boolean F(boolean z10) {
        if (!z10) {
            return this.f25772a == 1;
        }
        int i10 = this.f25772a;
        return i10 == 0 || i10 == 2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    protected i4.a G(CoordinatorLayout coordinatorLayout, View view) {
        List<View> listR = coordinatorLayout.r(view);
        int size = listR.size();
        for (int i10 = 0; i10 < size; i10++) {
            View view2 = listR.get(i10);
            if (e(coordinatorLayout, view, view2)) {
                return (i4.a) view2;
            }
        }
        return null;
    }

    protected abstract boolean H(View view, View view2, boolean z10, boolean z11);

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public abstract boolean e(CoordinatorLayout coordinatorLayout, View view, View view2);

    /* JADX WARN: Multi-variable type inference failed */
    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean h(CoordinatorLayout coordinatorLayout, View view, View view2) {
        i4.a aVar = (i4.a) view2;
        if (!F(aVar.a())) {
            return false;
        }
        this.f25772a = aVar.a() ? 1 : 2;
        return H((View) aVar, view, aVar.a(), true);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, View view, int i10) {
        i4.a aVarG;
        if (a0.U(view) || (aVarG = G(coordinatorLayout, view)) == null || !F(aVarG.a())) {
            return false;
        }
        int i11 = aVarG.a() ? 1 : 2;
        this.f25772a = i11;
        view.getViewTreeObserver().addOnPreDrawListener(new a(view, i11, aVarG));
        return false;
    }

    public ExpandableBehavior(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f25772a = 0;
    }
}
