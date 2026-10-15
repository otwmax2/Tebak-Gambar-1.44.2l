package com.google.android.material.timepicker;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.constraintlayout.widget.d;
import androidx.core.view.a0;
import o4.g;
import o4.i;
import y3.f;
import y3.h;
import y3.k;

/* JADX INFO: compiled from: RadialViewGroup.java */
/* JADX INFO: loaded from: classes2.dex */
class b extends ConstraintLayout {
    private final Runnable M;
    private int N;
    private g O;

    /* JADX INFO: compiled from: RadialViewGroup.java */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            b.this.F();
        }
    }

    public b(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    private Drawable B() {
        g gVar = new g();
        this.O = gVar;
        gVar.U(new i(0.5f));
        this.O.W(ColorStateList.valueOf(-1));
        return this.O;
    }

    private static boolean E(View view) {
        return "skip".equals(view.getTag());
    }

    private void G() {
        Handler handler = getHandler();
        if (handler != null) {
            handler.removeCallbacks(this.M);
            handler.post(this.M);
        }
    }

    public int C() {
        return this.N;
    }

    public void D(int i10) {
        this.N = i10;
        F();
    }

    protected void F() {
        int childCount = getChildCount();
        int i10 = 1;
        for (int i11 = 0; i11 < childCount; i11++) {
            if (E(getChildAt(i11))) {
                i10++;
            }
        }
        d dVar = new d();
        dVar.g(this);
        float f10 = 0.0f;
        for (int i12 = 0; i12 < childCount; i12++) {
            View childAt = getChildAt(i12);
            int id = childAt.getId();
            int i13 = f.f36697b;
            if (id != i13 && !E(childAt)) {
                dVar.i(childAt.getId(), i13, this.N, f10);
                f10 += 360.0f / (childCount - i10);
            }
        }
        dVar.c(this);
    }

    @Override // android.view.ViewGroup
    public void addView(View view, int i10, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i10, layoutParams);
        if (view.getId() == -1) {
            view.setId(a0.m());
        }
        G();
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        F();
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        G();
    }

    @Override // android.view.View
    public void setBackgroundColor(int i10) {
        this.O.W(ColorStateList.valueOf(i10));
    }

    public b(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        LayoutInflater.from(context).inflate(h.f36730g, this);
        a0.u0(this, B());
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.f36887p3, i10, 0);
        this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(k.f36894q3, 0);
        this.M = new a();
        typedArrayObtainStyledAttributes.recycle();
    }
}
