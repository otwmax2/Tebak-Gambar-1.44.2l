package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.AttributeSet;
import android.view.ActionMode;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;

/* JADX INFO: loaded from: classes.dex */
public class ActionBarContainer extends FrameLayout {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private boolean f767o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private View f768p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private View f769q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private View f770r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    Drawable f771s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    Drawable f772t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    Drawable f773u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    boolean f774v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    boolean f775w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private int f776x;

    private static class a {
        public static void a(ActionBarContainer actionBarContainer) {
            actionBarContainer.invalidateOutline();
        }
    }

    public ActionBarContainer(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        androidx.core.view.a0.u0(this, new b(this));
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, f.j.f29115a);
        this.f771s = typedArrayObtainStyledAttributes.getDrawable(f.j.f29120b);
        this.f772t = typedArrayObtainStyledAttributes.getDrawable(f.j.f29130d);
        this.f776x = typedArrayObtainStyledAttributes.getDimensionPixelSize(f.j.f29160j, -1);
        boolean z10 = true;
        if (getId() == f.f.H) {
            this.f774v = true;
            this.f773u = typedArrayObtainStyledAttributes.getDrawable(f.j.f29125c);
        }
        typedArrayObtainStyledAttributes.recycle();
        if (!this.f774v ? this.f771s != null || this.f772t != null : this.f773u != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
    }

    private int a(View view) {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
        return view.getMeasuredHeight() + layoutParams.topMargin + layoutParams.bottomMargin;
    }

    private boolean b(View view) {
        return view == null || view.getVisibility() == 8 || view.getMeasuredHeight() == 0;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void drawableStateChanged() {
        super.drawableStateChanged();
        Drawable drawable = this.f771s;
        if (drawable != null && drawable.isStateful()) {
            this.f771s.setState(getDrawableState());
        }
        Drawable drawable2 = this.f772t;
        if (drawable2 != null && drawable2.isStateful()) {
            this.f772t.setState(getDrawableState());
        }
        Drawable drawable3 = this.f773u;
        if (drawable3 == null || !drawable3.isStateful()) {
            return;
        }
        this.f773u.setState(getDrawableState());
    }

    public View getTabContainer() {
        return this.f768p;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void jumpDrawablesToCurrentState() {
        super.jumpDrawablesToCurrentState();
        Drawable drawable = this.f771s;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
        Drawable drawable2 = this.f772t;
        if (drawable2 != null) {
            drawable2.jumpToCurrentState();
        }
        Drawable drawable3 = this.f773u;
        if (drawable3 != null) {
            drawable3.jumpToCurrentState();
        }
    }

    @Override // android.view.View
    public void onFinishInflate() {
        super.onFinishInflate();
        this.f769q = findViewById(f.f.f29053a);
        this.f770r = findViewById(f.f.f29058f);
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        super.onHoverEvent(motionEvent);
        return true;
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return this.f767o || super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        Drawable drawable;
        super.onLayout(z10, i10, i11, i12, i13);
        View view = this.f768p;
        boolean z11 = true;
        boolean z12 = false;
        boolean z13 = (view == null || view.getVisibility() == 8) ? false : true;
        if (view != null && view.getVisibility() != 8) {
            int measuredHeight = getMeasuredHeight();
            FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) view.getLayoutParams();
            int measuredHeight2 = measuredHeight - view.getMeasuredHeight();
            int i14 = layoutParams.bottomMargin;
            view.layout(i10, measuredHeight2 - i14, i12, measuredHeight - i14);
        }
        if (this.f774v) {
            Drawable drawable2 = this.f773u;
            if (drawable2 != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            } else {
                z11 = false;
            }
        } else {
            if (this.f771s != null) {
                if (this.f769q.getVisibility() == 0) {
                    this.f771s.setBounds(this.f769q.getLeft(), this.f769q.getTop(), this.f769q.getRight(), this.f769q.getBottom());
                } else {
                    View view2 = this.f770r;
                    if (view2 == null || view2.getVisibility() != 0) {
                        this.f771s.setBounds(0, 0, 0, 0);
                    } else {
                        this.f771s.setBounds(this.f770r.getLeft(), this.f770r.getTop(), this.f770r.getRight(), this.f770r.getBottom());
                    }
                }
                z12 = true;
            }
            this.f775w = z13;
            if (!z13 || (drawable = this.f772t) == null) {
                z11 = z12;
            } else {
                drawable.setBounds(view.getLeft(), view.getTop(), view.getRight(), view.getBottom());
            }
        }
        if (z11) {
            invalidate();
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public void onMeasure(int i10, int i11) {
        int i12;
        if (this.f769q == null && View.MeasureSpec.getMode(i11) == Integer.MIN_VALUE && (i12 = this.f776x) >= 0) {
            i11 = View.MeasureSpec.makeMeasureSpec(Math.min(i12, View.MeasureSpec.getSize(i11)), Integer.MIN_VALUE);
        }
        super.onMeasure(i10, i11);
        if (this.f769q == null) {
            return;
        }
        int mode = View.MeasureSpec.getMode(i11);
        View view = this.f768p;
        if (view == null || view.getVisibility() == 8 || mode == 1073741824) {
            return;
        }
        setMeasuredDimension(getMeasuredWidth(), Math.min((!b(this.f769q) ? a(this.f769q) : !b(this.f770r) ? a(this.f770r) : 0) + a(this.f768p), mode == Integer.MIN_VALUE ? View.MeasureSpec.getSize(i11) : Integer.MAX_VALUE));
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return true;
    }

    public void setPrimaryBackground(Drawable drawable) {
        Drawable drawable2 = this.f771s;
        if (drawable2 != null) {
            drawable2.setCallback(null);
            unscheduleDrawable(this.f771s);
        }
        this.f771s = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            View view = this.f769q;
            if (view != null) {
                this.f771s.setBounds(view.getLeft(), this.f769q.getTop(), this.f769q.getRight(), this.f769q.getBottom());
            }
        }
        boolean z10 = true;
        if (!this.f774v ? this.f771s != null || this.f772t != null : this.f773u != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            a.a(this);
        }
    }

    public void setSplitBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f773u;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f773u);
        }
        this.f773u = drawable;
        boolean z10 = false;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f774v && (drawable2 = this.f773u) != null) {
                drawable2.setBounds(0, 0, getMeasuredWidth(), getMeasuredHeight());
            }
        }
        if (!this.f774v ? !(this.f771s != null || this.f772t != null) : this.f773u == null) {
            z10 = true;
        }
        setWillNotDraw(z10);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            a.a(this);
        }
    }

    public void setStackedBackground(Drawable drawable) {
        Drawable drawable2;
        Drawable drawable3 = this.f772t;
        if (drawable3 != null) {
            drawable3.setCallback(null);
            unscheduleDrawable(this.f772t);
        }
        this.f772t = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            if (this.f775w && (drawable2 = this.f772t) != null) {
                drawable2.setBounds(this.f768p.getLeft(), this.f768p.getTop(), this.f768p.getRight(), this.f768p.getBottom());
            }
        }
        boolean z10 = true;
        if (!this.f774v ? this.f771s != null || this.f772t != null : this.f773u != null) {
            z10 = false;
        }
        setWillNotDraw(z10);
        invalidate();
        if (Build.VERSION.SDK_INT >= 21) {
            a.a(this);
        }
    }

    public void setTabContainer(p0 p0Var) {
        View view = this.f768p;
        if (view != null) {
            removeView(view);
        }
        this.f768p = p0Var;
        if (p0Var != null) {
            addView(p0Var);
            ViewGroup.LayoutParams layoutParams = p0Var.getLayoutParams();
            layoutParams.width = -1;
            layoutParams.height = -2;
            p0Var.setAllowCollapse(false);
        }
    }

    public void setTransitioning(boolean z10) {
        this.f767o = z10;
        setDescendantFocusability(z10 ? 393216 : 262144);
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        super.setVisibility(i10);
        boolean z10 = i10 == 0;
        Drawable drawable = this.f771s;
        if (drawable != null) {
            drawable.setVisible(z10, false);
        }
        Drawable drawable2 = this.f772t;
        if (drawable2 != null) {
            drawable2.setVisible(z10, false);
        }
        Drawable drawable3 = this.f773u;
        if (drawable3 != null) {
            drawable3.setVisible(z10, false);
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback) {
        return null;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public ActionMode startActionModeForChild(View view, ActionMode.Callback callback, int i10) {
        if (i10 != 0) {
            return super.startActionModeForChild(view, callback, i10);
        }
        return null;
    }

    @Override // android.view.View
    protected boolean verifyDrawable(Drawable drawable) {
        return (drawable == this.f771s && !this.f774v) || (drawable == this.f772t && this.f775w) || ((drawable == this.f773u && this.f774v) || super.verifyDrawable(drawable));
    }
}
