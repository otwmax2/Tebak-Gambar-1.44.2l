package com.google.android.material.snackbar;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.GradientDrawable;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import androidx.core.view.a0;
import y3.k;

/* JADX INFO: compiled from: BaseTransientBottomBar.java */
/* JADX INFO: loaded from: classes2.dex */
public class d extends FrameLayout {

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final View.OnTouchListener f25578v = new a();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private c f25579o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private b f25580p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f25581q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final float f25582r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final float f25583s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ColorStateList f25584t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private PorterDuff.Mode f25585u;

    /* JADX INFO: compiled from: BaseTransientBottomBar.java */
    static class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        @SuppressLint({"ClickableViewAccessibility"})
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    protected d(Context context, AttributeSet attributeSet) {
        super(q4.a.c(context, attributeSet, 0, 0), attributeSet);
        Context context2 = getContext();
        TypedArray typedArrayObtainStyledAttributes = context2.obtainStyledAttributes(attributeSet, k.M3);
        if (typedArrayObtainStyledAttributes.hasValue(k.T3)) {
            a0.y0(this, typedArrayObtainStyledAttributes.getDimensionPixelSize(r1, 0));
        }
        this.f25581q = typedArrayObtainStyledAttributes.getInt(k.P3, 0);
        this.f25582r = typedArrayObtainStyledAttributes.getFloat(k.Q3, 1.0f);
        setBackgroundTintList(l4.c.a(context2, typedArrayObtainStyledAttributes, k.R3));
        setBackgroundTintMode(com.google.android.material.internal.k.e(typedArrayObtainStyledAttributes.getInt(k.S3, -1), PorterDuff.Mode.SRC_IN));
        this.f25583s = typedArrayObtainStyledAttributes.getFloat(k.O3, 1.0f);
        typedArrayObtainStyledAttributes.recycle();
        setOnTouchListener(f25578v);
        setFocusable(true);
        if (getBackground() == null) {
            a0.u0(this, a());
        }
    }

    private Drawable a() {
        float dimension = getResources().getDimension(y3.d.M);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setCornerRadius(dimension);
        gradientDrawable.setColor(e4.a.g(this, y3.b.f36642l, y3.b.f36639i, getBackgroundOverlayColorAlpha()));
        if (this.f25584t == null) {
            return androidx.core.graphics.drawable.a.r(gradientDrawable);
        }
        Drawable drawableR = androidx.core.graphics.drawable.a.r(gradientDrawable);
        androidx.core.graphics.drawable.a.o(drawableR, this.f25584t);
        return drawableR;
    }

    float getActionTextColorAlpha() {
        return this.f25583s;
    }

    int getAnimationMode() {
        return this.f25581q;
    }

    float getBackgroundOverlayColorAlpha() {
        return this.f25582r;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        b bVar = this.f25580p;
        if (bVar != null) {
            bVar.onViewAttachedToWindow(this);
        }
        a0.n0(this);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        b bVar = this.f25580p;
        if (bVar != null) {
            bVar.onViewDetachedFromWindow(this);
        }
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        c cVar = this.f25579o;
        if (cVar != null) {
            cVar.a(this, i10, i11, i12, i13);
        }
    }

    void setAnimationMode(int i10) {
        this.f25581q = i10;
    }

    @Override // android.view.View
    public void setBackground(Drawable drawable) {
        setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundDrawable(Drawable drawable) {
        if (drawable != null && this.f25584t != null) {
            drawable = androidx.core.graphics.drawable.a.r(drawable.mutate());
            androidx.core.graphics.drawable.a.o(drawable, this.f25584t);
            androidx.core.graphics.drawable.a.p(drawable, this.f25585u);
        }
        super.setBackgroundDrawable(drawable);
    }

    @Override // android.view.View
    public void setBackgroundTintList(ColorStateList colorStateList) {
        this.f25584t = colorStateList;
        if (getBackground() != null) {
            Drawable drawableR = androidx.core.graphics.drawable.a.r(getBackground().mutate());
            androidx.core.graphics.drawable.a.o(drawableR, colorStateList);
            androidx.core.graphics.drawable.a.p(drawableR, this.f25585u);
            if (drawableR != getBackground()) {
                super.setBackgroundDrawable(drawableR);
            }
        }
    }

    @Override // android.view.View
    public void setBackgroundTintMode(PorterDuff.Mode mode) {
        this.f25585u = mode;
        if (getBackground() != null) {
            Drawable drawableR = androidx.core.graphics.drawable.a.r(getBackground().mutate());
            androidx.core.graphics.drawable.a.p(drawableR, mode);
            if (drawableR != getBackground()) {
                super.setBackgroundDrawable(drawableR);
            }
        }
    }

    void setOnAttachStateChangeListener(b bVar) {
        this.f25580p = bVar;
    }

    @Override // android.view.View
    public void setOnClickListener(View.OnClickListener onClickListener) {
        setOnTouchListener(onClickListener != null ? null : f25578v);
        super.setOnClickListener(onClickListener);
    }

    void setOnLayoutChangeListener(c cVar) {
        this.f25579o = cVar;
    }
}
