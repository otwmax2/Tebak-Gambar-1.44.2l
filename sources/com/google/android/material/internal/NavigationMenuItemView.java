package com.google.android.material.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.CheckedTextView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.n;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.appcompat.widget.z0;
import androidx.core.view.a0;

/* JADX INFO: loaded from: classes2.dex */
public class NavigationMenuItemView extends d implements n.a {
    private static final int[] T = {R.attr.state_checked};
    private int J;
    private boolean K;
    boolean L;
    private final CheckedTextView M;
    private FrameLayout N;
    private androidx.appcompat.view.menu.i O;
    private ColorStateList P;
    private boolean Q;
    private Drawable R;
    private final androidx.core.view.a S;

    class a extends androidx.core.view.a {
        a() {
        }

        @Override // androidx.core.view.a
        public void g(View view, androidx.core.view.accessibility.c cVar) {
            super.g(view, cVar);
            cVar.V(NavigationMenuItemView.this.L);
        }
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private void B() {
        if (D()) {
            this.M.setVisibility(8);
            FrameLayout frameLayout = this.N;
            if (frameLayout != null) {
                LinearLayoutCompat.a aVar = (LinearLayoutCompat.a) frameLayout.getLayoutParams();
                ((LinearLayout.LayoutParams) aVar).width = -1;
                this.N.setLayoutParams(aVar);
                return;
            }
            return;
        }
        this.M.setVisibility(0);
        FrameLayout frameLayout2 = this.N;
        if (frameLayout2 != null) {
            LinearLayoutCompat.a aVar2 = (LinearLayoutCompat.a) frameLayout2.getLayoutParams();
            ((LinearLayout.LayoutParams) aVar2).width = -2;
            this.N.setLayoutParams(aVar2);
        }
    }

    private StateListDrawable C() {
        TypedValue typedValue = new TypedValue();
        if (!getContext().getTheme().resolveAttribute(f.a.f28999w, typedValue, true)) {
            return null;
        }
        StateListDrawable stateListDrawable = new StateListDrawable();
        stateListDrawable.addState(T, new ColorDrawable(typedValue.data));
        stateListDrawable.addState(ViewGroup.EMPTY_STATE_SET, new ColorDrawable(0));
        return stateListDrawable;
    }

    private boolean D() {
        return this.O.getTitle() == null && this.O.getIcon() == null && this.O.getActionView() != null;
    }

    private void setActionView(View view) {
        if (view != null) {
            if (this.N == null) {
                this.N = (FrameLayout) ((ViewStub) findViewById(y3.f.f36701f)).inflate();
            }
            this.N.removeAllViews();
            this.N.addView(view);
        }
    }

    @Override // androidx.appcompat.view.menu.n.a
    public boolean d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.n.a
    public void e(androidx.appcompat.view.menu.i iVar, int i10) {
        this.O = iVar;
        if (iVar.getItemId() > 0) {
            setId(iVar.getItemId());
        }
        setVisibility(iVar.isVisible() ? 0 : 8);
        if (getBackground() == null) {
            a0.u0(this, C());
        }
        setCheckable(iVar.isCheckable());
        setChecked(iVar.isChecked());
        setEnabled(iVar.isEnabled());
        setTitle(iVar.getTitle());
        setIcon(iVar.getIcon());
        setActionView(iVar.getActionView());
        setContentDescription(iVar.getContentDescription());
        z0.a(this, iVar.getTooltipText());
        B();
    }

    @Override // androidx.appcompat.view.menu.n.a
    public androidx.appcompat.view.menu.i getItemData() {
        return this.O;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected int[] onCreateDrawableState(int i10) {
        int[] iArrOnCreateDrawableState = super.onCreateDrawableState(i10 + 1);
        androidx.appcompat.view.menu.i iVar = this.O;
        if (iVar != null && iVar.isCheckable() && this.O.isChecked()) {
            ViewGroup.mergeDrawableStates(iArrOnCreateDrawableState, T);
        }
        return iArrOnCreateDrawableState;
    }

    public void setCheckable(boolean z10) {
        refreshDrawableState();
        if (this.L != z10) {
            this.L = z10;
            this.S.l(this.M, 2048);
        }
    }

    public void setChecked(boolean z10) {
        refreshDrawableState();
        this.M.setChecked(z10);
    }

    public void setHorizontalPadding(int i10) {
        setPadding(i10, 0, i10, 0);
    }

    public void setIcon(Drawable drawable) {
        if (drawable != null) {
            if (this.Q) {
                Drawable.ConstantState constantState = drawable.getConstantState();
                if (constantState != null) {
                    drawable = constantState.newDrawable();
                }
                drawable = androidx.core.graphics.drawable.a.r(drawable).mutate();
                androidx.core.graphics.drawable.a.o(drawable, this.P);
            }
            int i10 = this.J;
            drawable.setBounds(0, 0, i10, i10);
        } else if (this.K) {
            if (this.R == null) {
                Drawable drawableD = androidx.core.content.res.h.d(getResources(), y3.e.f36695g, getContext().getTheme());
                this.R = drawableD;
                if (drawableD != null) {
                    int i11 = this.J;
                    drawableD.setBounds(0, 0, i11, i11);
                }
            }
            drawable = this.R;
        }
        androidx.core.widget.j.i(this.M, drawable, null, null, null);
    }

    public void setIconPadding(int i10) {
        this.M.setCompoundDrawablePadding(i10);
    }

    public void setIconSize(int i10) {
        this.J = i10;
    }

    void setIconTintList(ColorStateList colorStateList) {
        this.P = colorStateList;
        this.Q = colorStateList != null;
        androidx.appcompat.view.menu.i iVar = this.O;
        if (iVar != null) {
            setIcon(iVar.getIcon());
        }
    }

    public void setMaxLines(int i10) {
        this.M.setMaxLines(i10);
    }

    public void setNeedsEmptyIcon(boolean z10) {
        this.K = z10;
    }

    public void setTextAppearance(int i10) {
        androidx.core.widget.j.n(this.M, i10);
    }

    public void setTextColor(ColorStateList colorStateList) {
        this.M.setTextColor(colorStateList);
    }

    public void setTitle(CharSequence charSequence) {
        this.M.setText(charSequence);
    }

    public NavigationMenuItemView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        a aVar = new a();
        this.S = aVar;
        setOrientation(0);
        LayoutInflater.from(context).inflate(y3.h.f36725b, (ViewGroup) this, true);
        setIconSize(context.getResources().getDimensionPixelSize(y3.d.f36667e));
        CheckedTextView checkedTextView = (CheckedTextView) findViewById(y3.f.f36702g);
        this.M = checkedTextView;
        checkedTextView.setDuplicateParentStateEnabled(true);
        a0.q0(checkedTextView, aVar);
    }
}
