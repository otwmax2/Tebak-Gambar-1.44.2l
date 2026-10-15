package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.SeekBar;

/* JADX INFO: compiled from: AppCompatSeekBarHelper.java */
/* JADX INFO: loaded from: classes.dex */
class x extends s {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SeekBar f1203d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f1204e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private ColorStateList f1205f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private PorterDuff.Mode f1206g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1207h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private boolean f1208i;

    x(SeekBar seekBar) {
        super(seekBar);
        this.f1205f = null;
        this.f1206g = null;
        this.f1207h = false;
        this.f1208i = false;
        this.f1203d = seekBar;
    }

    private void f() {
        Drawable drawable = this.f1204e;
        if (drawable != null) {
            if (this.f1207h || this.f1208i) {
                Drawable drawableR = androidx.core.graphics.drawable.a.r(drawable.mutate());
                this.f1204e = drawableR;
                if (this.f1207h) {
                    androidx.core.graphics.drawable.a.o(drawableR, this.f1205f);
                }
                if (this.f1208i) {
                    androidx.core.graphics.drawable.a.p(this.f1204e, this.f1206g);
                }
                if (this.f1204e.isStateful()) {
                    this.f1204e.setState(this.f1203d.getDrawableState());
                }
            }
        }
    }

    @Override // androidx.appcompat.widget.s
    void c(AttributeSet attributeSet, int i10) {
        super.c(attributeSet, i10);
        Context context = this.f1203d.getContext();
        int[] iArr = f.j.T;
        w0 w0VarV = w0.v(context, attributeSet, iArr, i10, 0);
        SeekBar seekBar = this.f1203d;
        androidx.core.view.a0.o0(seekBar, seekBar.getContext(), iArr, attributeSet, w0VarV.r(), i10, 0);
        Drawable drawableH = w0VarV.h(f.j.U);
        if (drawableH != null) {
            this.f1203d.setThumb(drawableH);
        }
        j(w0VarV.g(f.j.V));
        int i11 = f.j.X;
        if (w0VarV.s(i11)) {
            this.f1206g = f0.d(w0VarV.k(i11, -1), this.f1206g);
            this.f1208i = true;
        }
        int i12 = f.j.W;
        if (w0VarV.s(i12)) {
            this.f1205f = w0VarV.c(i12);
            this.f1207h = true;
        }
        w0VarV.w();
        f();
    }

    void g(Canvas canvas) {
        if (this.f1204e != null) {
            int max = this.f1203d.getMax();
            if (max > 1) {
                int intrinsicWidth = this.f1204e.getIntrinsicWidth();
                int intrinsicHeight = this.f1204e.getIntrinsicHeight();
                int i10 = intrinsicWidth >= 0 ? intrinsicWidth / 2 : 1;
                int i11 = intrinsicHeight >= 0 ? intrinsicHeight / 2 : 1;
                this.f1204e.setBounds(-i10, -i11, i10, i11);
                float width = ((this.f1203d.getWidth() - this.f1203d.getPaddingLeft()) - this.f1203d.getPaddingRight()) / max;
                int iSave = canvas.save();
                canvas.translate(this.f1203d.getPaddingLeft(), this.f1203d.getHeight() / 2);
                for (int i12 = 0; i12 <= max; i12++) {
                    this.f1204e.draw(canvas);
                    canvas.translate(width, 0.0f);
                }
                canvas.restoreToCount(iSave);
            }
        }
    }

    void h() {
        Drawable drawable = this.f1204e;
        if (drawable != null && drawable.isStateful() && drawable.setState(this.f1203d.getDrawableState())) {
            this.f1203d.invalidateDrawable(drawable);
        }
    }

    void i() {
        Drawable drawable = this.f1204e;
        if (drawable != null) {
            drawable.jumpToCurrentState();
        }
    }

    void j(Drawable drawable) {
        Drawable drawable2 = this.f1204e;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f1204e = drawable;
        if (drawable != null) {
            drawable.setCallback(this.f1203d);
            androidx.core.graphics.drawable.a.m(drawable, androidx.core.view.a0.E(this.f1203d));
            if (drawable.isStateful()) {
                drawable.setState(this.f1203d.getDrawableState());
            }
            f();
        }
        this.f1203d.invalidate();
    }
}
