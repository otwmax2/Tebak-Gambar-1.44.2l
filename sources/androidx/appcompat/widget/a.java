package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;

/* JADX INFO: compiled from: AbsActionBarView.java */
/* JADX INFO: loaded from: classes.dex */
abstract class a extends ViewGroup {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    protected final C0014a f928o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    protected final Context f929p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    protected ActionMenuView f930q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    protected c f931r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    protected int f932s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    protected androidx.core.view.g0 f933t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f934u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f935v;

    /* JADX INFO: renamed from: androidx.appcompat.widget.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbsActionBarView.java */
    protected class C0014a implements androidx.core.view.h0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f936a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        int f937b;

        protected C0014a() {
        }

        @Override // androidx.core.view.h0
        public void a(View view) {
            this.f936a = true;
        }

        @Override // androidx.core.view.h0
        public void b(View view) {
            if (this.f936a) {
                return;
            }
            a aVar = a.this;
            aVar.f933t = null;
            a.super.setVisibility(this.f937b);
        }

        @Override // androidx.core.view.h0
        public void c(View view) {
            a.super.setVisibility(0);
            this.f936a = false;
        }

        public C0014a d(androidx.core.view.g0 g0Var, int i10) {
            a.this.f933t = g0Var;
            this.f937b = i10;
            return this;
        }
    }

    a(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    protected static int d(int i10, int i11, boolean z10) {
        return z10 ? i10 - i11 : i10 + i11;
    }

    protected int c(View view, int i10, int i11, int i12) {
        view.measure(View.MeasureSpec.makeMeasureSpec(i10, Integer.MIN_VALUE), i11);
        return Math.max(0, (i10 - view.getMeasuredWidth()) - i12);
    }

    protected int e(View view, int i10, int i11, int i12, boolean z10) {
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        int i13 = i11 + ((i12 - measuredHeight) / 2);
        if (z10) {
            view.layout(i10 - measuredWidth, i13, i10, measuredHeight + i13);
        } else {
            view.layout(i10, i13, i10 + measuredWidth, measuredHeight + i13);
        }
        return z10 ? -measuredWidth : measuredWidth;
    }

    public androidx.core.view.g0 f(int i10, long j10) {
        androidx.core.view.g0 g0Var = this.f933t;
        if (g0Var != null) {
            g0Var.c();
        }
        if (i10 != 0) {
            androidx.core.view.g0 g0VarB = androidx.core.view.a0.e(this).b(0.0f);
            g0VarB.f(j10);
            g0VarB.h(this.f928o.d(g0VarB, i10));
            return g0VarB;
        }
        if (getVisibility() != 0) {
            setAlpha(0.0f);
        }
        androidx.core.view.g0 g0VarB2 = androidx.core.view.a0.e(this).b(1.0f);
        g0VarB2.f(j10);
        g0VarB2.h(this.f928o.d(g0VarB2, i10));
        return g0VarB2;
    }

    public int getAnimatedVisibility() {
        return this.f933t != null ? this.f928o.f937b : getVisibility();
    }

    public int getContentHeight() {
        return this.f932s;
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(null, f.j.f29115a, f.a.f28979c, 0);
        setContentHeight(typedArrayObtainStyledAttributes.getLayoutDimension(f.j.f29160j, 0));
        typedArrayObtainStyledAttributes.recycle();
        c cVar = this.f931r;
        if (cVar != null) {
            cVar.F(configuration);
        }
    }

    @Override // android.view.View
    public boolean onHoverEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 9) {
            this.f935v = false;
        }
        if (!this.f935v) {
            boolean zOnHoverEvent = super.onHoverEvent(motionEvent);
            if (actionMasked == 9 && !zOnHoverEvent) {
                this.f935v = true;
            }
        }
        if (actionMasked == 10 || actionMasked == 3) {
            this.f935v = false;
        }
        return true;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            this.f934u = false;
        }
        if (!this.f934u) {
            boolean zOnTouchEvent = super.onTouchEvent(motionEvent);
            if (actionMasked == 0 && !zOnTouchEvent) {
                this.f934u = true;
            }
        }
        if (actionMasked == 1 || actionMasked == 3) {
            this.f934u = false;
        }
        return true;
    }

    public void setContentHeight(int i10) {
        this.f932s = i10;
        requestLayout();
    }

    @Override // android.view.View
    public void setVisibility(int i10) {
        if (i10 != getVisibility()) {
            androidx.core.view.g0 g0Var = this.f933t;
            if (g0Var != null) {
                g0Var.c();
            }
            super.setVisibility(i10);
        }
    }

    a(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f928o = new C0014a();
        TypedValue typedValue = new TypedValue();
        if (!context.getTheme().resolveAttribute(f.a.f28977a, typedValue, true) || typedValue.resourceId == 0) {
            this.f929p = context;
        } else {
            this.f929p = new ContextThemeWrapper(context, typedValue.resourceId);
        }
    }
}
