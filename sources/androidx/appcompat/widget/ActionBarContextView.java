package androidx.appcompat.widget;

import android.content.Context;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContextView extends androidx.appcompat.widget.a {
    private View A;
    private LinearLayout B;
    private TextView C;
    private TextView D;
    private int E;
    private int F;
    private boolean G;
    private int H;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private CharSequence f777w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private CharSequence f778x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private View f779y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private View f780z;

    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final /* synthetic */ androidx.appcompat.view.b f781o;

        a(androidx.appcompat.view.b bVar) {
            this.f781o = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f781o.c();
        }
    }

    public ActionBarContextView(Context context) {
        this(context, null);
    }

    private void i() {
        if (this.B == null) {
            LayoutInflater.from(getContext()).inflate(f.g.f29079a, this);
            LinearLayout linearLayout = (LinearLayout) getChildAt(getChildCount() - 1);
            this.B = linearLayout;
            this.C = (TextView) linearLayout.findViewById(f.f.f29057e);
            this.D = (TextView) this.B.findViewById(f.f.f29056d);
            if (this.E != 0) {
                this.C.setTextAppearance(getContext(), this.E);
            }
            if (this.F != 0) {
                this.D.setTextAppearance(getContext(), this.F);
            }
        }
        this.C.setText(this.f777w);
        this.D.setText(this.f778x);
        boolean z10 = !TextUtils.isEmpty(this.f777w);
        boolean z11 = !TextUtils.isEmpty(this.f778x);
        int i10 = 0;
        this.D.setVisibility(z11 ? 0 : 8);
        LinearLayout linearLayout2 = this.B;
        if (!z10 && !z11) {
            i10 = 8;
        }
        linearLayout2.setVisibility(i10);
        if (this.B.getParent() == null) {
            addView(this.B);
        }
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ androidx.core.view.g0 f(int i10, long j10) {
        return super.f(i10, j10);
    }

    public void g() {
        if (this.f779y == null) {
            k();
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        return new ViewGroup.MarginLayoutParams(-1, -2);
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new ViewGroup.MarginLayoutParams(getContext(), attributeSet);
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getAnimatedVisibility() {
        return super.getAnimatedVisibility();
    }

    @Override // androidx.appcompat.widget.a
    public /* bridge */ /* synthetic */ int getContentHeight() {
        return super.getContentHeight();
    }

    public CharSequence getSubtitle() {
        return this.f778x;
    }

    public CharSequence getTitle() {
        return this.f777w;
    }

    public void h(androidx.appcompat.view.b bVar) {
        View view = this.f779y;
        if (view == null) {
            View viewInflate = LayoutInflater.from(getContext()).inflate(this.H, (ViewGroup) this, false);
            this.f779y = viewInflate;
            addView(viewInflate);
        } else if (view.getParent() == null) {
            addView(this.f779y);
        }
        View viewFindViewById = this.f779y.findViewById(f.f.f29061i);
        this.f780z = viewFindViewById;
        viewFindViewById.setOnClickListener(new a(bVar));
        androidx.appcompat.view.menu.g gVar = (androidx.appcompat.view.menu.g) bVar.e();
        c cVar = this.f931r;
        if (cVar != null) {
            cVar.y();
        }
        c cVar2 = new c(getContext());
        this.f931r = cVar2;
        cVar2.J(true);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(-2, -1);
        gVar.c(this.f931r, this.f929p);
        ActionMenuView actionMenuView = (ActionMenuView) this.f931r.o(this);
        this.f930q = actionMenuView;
        androidx.core.view.a0.u0(actionMenuView, null);
        addView(this.f930q, layoutParams);
    }

    public boolean j() {
        return this.G;
    }

    public void k() {
        removeAllViews();
        this.A = null;
        this.f930q = null;
        this.f931r = null;
        View view = this.f780z;
        if (view != null) {
            view.setOnClickListener(null);
        }
    }

    public boolean l() {
        c cVar = this.f931r;
        if (cVar != null) {
            return cVar.K();
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        c cVar = this.f931r;
        if (cVar != null) {
            cVar.B();
            this.f931r.C();
        }
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onHoverEvent(MotionEvent motionEvent) {
        return super.onHoverEvent(motionEvent);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        boolean zB = f1.b(this);
        int paddingRight = zB ? (i12 - i10) - getPaddingRight() : getPaddingLeft();
        int paddingTop = getPaddingTop();
        int paddingTop2 = ((i13 - i11) - getPaddingTop()) - getPaddingBottom();
        View view = this.f779y;
        if (view != null && view.getVisibility() != 8) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f779y.getLayoutParams();
            int i14 = zB ? marginLayoutParams.rightMargin : marginLayoutParams.leftMargin;
            int i15 = zB ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
            int iD = androidx.appcompat.widget.a.d(paddingRight, i14, zB);
            paddingRight = androidx.appcompat.widget.a.d(iD + e(this.f779y, iD, paddingTop, paddingTop2, zB), i15, zB);
        }
        int iE = paddingRight;
        LinearLayout linearLayout = this.B;
        if (linearLayout != null && this.A == null && linearLayout.getVisibility() != 8) {
            iE += e(this.B, iE, paddingTop, paddingTop2, zB);
        }
        int i16 = iE;
        View view2 = this.A;
        if (view2 != null) {
            e(view2, i16, paddingTop, paddingTop2, zB);
        }
        int paddingLeft = zB ? getPaddingLeft() : (i12 - i10) - getPaddingRight();
        ActionMenuView actionMenuView = this.f930q;
        if (actionMenuView != null) {
            e(actionMenuView, paddingLeft, paddingTop, paddingTop2, !zB);
        }
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        if (View.MeasureSpec.getMode(i10) != 1073741824) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"match_parent\" (or fill_parent)");
        }
        if (View.MeasureSpec.getMode(i11) == 0) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
        }
        int size = View.MeasureSpec.getSize(i10);
        int size2 = this.f932s;
        if (size2 <= 0) {
            size2 = View.MeasureSpec.getSize(i11);
        }
        int paddingTop = getPaddingTop() + getPaddingBottom();
        int paddingLeft = (size - getPaddingLeft()) - getPaddingRight();
        int iMin = size2 - paddingTop;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iMin, Integer.MIN_VALUE);
        View view = this.f779y;
        if (view != null) {
            int iC = c(view, paddingLeft, iMakeMeasureSpec, 0);
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f779y.getLayoutParams();
            paddingLeft = iC - (marginLayoutParams.leftMargin + marginLayoutParams.rightMargin);
        }
        ActionMenuView actionMenuView = this.f930q;
        if (actionMenuView != null && actionMenuView.getParent() == this) {
            paddingLeft = c(this.f930q, paddingLeft, iMakeMeasureSpec, 0);
        }
        LinearLayout linearLayout = this.B;
        if (linearLayout != null && this.A == null) {
            if (this.G) {
                this.B.measure(View.MeasureSpec.makeMeasureSpec(0, 0), iMakeMeasureSpec);
                int measuredWidth = this.B.getMeasuredWidth();
                boolean z10 = measuredWidth <= paddingLeft;
                if (z10) {
                    paddingLeft -= measuredWidth;
                }
                this.B.setVisibility(z10 ? 0 : 8);
            } else {
                paddingLeft = c(linearLayout, paddingLeft, iMakeMeasureSpec, 0);
            }
        }
        View view2 = this.A;
        if (view2 != null) {
            ViewGroup.LayoutParams layoutParams = view2.getLayoutParams();
            int i12 = layoutParams.width;
            int i13 = i12 != -2 ? 1073741824 : Integer.MIN_VALUE;
            if (i12 >= 0) {
                paddingLeft = Math.min(i12, paddingLeft);
            }
            int i14 = layoutParams.height;
            int i15 = i14 == -2 ? Integer.MIN_VALUE : 1073741824;
            if (i14 >= 0) {
                iMin = Math.min(i14, iMin);
            }
            this.A.measure(View.MeasureSpec.makeMeasureSpec(paddingLeft, i13), View.MeasureSpec.makeMeasureSpec(iMin, i15));
        }
        if (this.f932s > 0) {
            setMeasuredDimension(size, size2);
            return;
        }
        int childCount = getChildCount();
        int i16 = 0;
        for (int i17 = 0; i17 < childCount; i17++) {
            int measuredHeight = getChildAt(i17).getMeasuredHeight() + paddingTop;
            if (measuredHeight > i16) {
                i16 = measuredHeight;
            }
        }
        setMeasuredDimension(size, i16);
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.appcompat.widget.a
    public void setContentHeight(int i10) {
        this.f932s = i10;
    }

    public void setCustomView(View view) {
        LinearLayout linearLayout;
        View view2 = this.A;
        if (view2 != null) {
            removeView(view2);
        }
        this.A = view;
        if (view != null && (linearLayout = this.B) != null) {
            removeView(linearLayout);
            this.B = null;
        }
        if (view != null) {
            addView(view);
        }
        requestLayout();
    }

    public void setSubtitle(CharSequence charSequence) {
        this.f778x = charSequence;
        i();
    }

    public void setTitle(CharSequence charSequence) {
        this.f777w = charSequence;
        i();
        androidx.core.view.a0.t0(this, charSequence);
    }

    public void setTitleOptional(boolean z10) {
        if (z10 != this.G) {
            requestLayout();
        }
        this.G = z10;
    }

    @Override // androidx.appcompat.widget.a, android.view.View
    public /* bridge */ /* synthetic */ void setVisibility(int i10) {
        super.setVisibility(i10);
    }

    @Override // android.view.ViewGroup
    public boolean shouldDelayChildPressedState() {
        return false;
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, f.a.f28986j);
    }

    public ActionBarContextView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        w0 w0VarV = w0.v(context, attributeSet, f.j.f29235y, i10, 0);
        androidx.core.view.a0.u0(this, w0VarV.g(f.j.f29240z));
        this.E = w0VarV.n(f.j.D, 0);
        this.F = w0VarV.n(f.j.C, 0);
        this.f932s = w0VarV.m(f.j.B, 0);
        this.H = w0VarV.n(f.j.A, f.g.f29082d);
        w0VarV.w();
    }
}
