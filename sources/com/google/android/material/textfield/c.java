package com.google.android.material.textfield;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import o4.k;

/* JADX INFO: compiled from: CutoutDrawable.java */
/* JADX INFO: loaded from: classes2.dex */
class c extends o4.g {
    private final Paint M;
    private final RectF N;
    private int O;

    c() {
        this(null);
    }

    private void j0(Canvas canvas) {
        if (q0(getCallback())) {
            return;
        }
        canvas.restoreToCount(this.O);
    }

    private void k0(Canvas canvas) {
        Drawable.Callback callback = getCallback();
        if (!q0(callback)) {
            m0(canvas);
            return;
        }
        View view = (View) callback;
        if (view.getLayerType() != 2) {
            view.setLayerType(2, null);
        }
    }

    private void m0(Canvas canvas) {
        if (Build.VERSION.SDK_INT >= 21) {
            this.O = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null);
        } else {
            this.O = canvas.saveLayer(0.0f, 0.0f, canvas.getWidth(), canvas.getHeight(), null, 31);
        }
    }

    private void p0() {
        this.M.setStyle(Paint.Style.FILL_AND_STROKE);
        this.M.setColor(-1);
        this.M.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.DST_OUT));
    }

    private boolean q0(Drawable.Callback callback) {
        return callback instanceof View;
    }

    @Override // o4.g, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        k0(canvas);
        super.draw(canvas);
        canvas.drawRect(this.N, this.M);
        j0(canvas);
    }

    boolean i0() {
        return !this.N.isEmpty();
    }

    void l0() {
        n0(0.0f, 0.0f, 0.0f, 0.0f);
    }

    void n0(float f10, float f11, float f12, float f13) {
        RectF rectF = this.N;
        if (f10 == rectF.left && f11 == rectF.top && f12 == rectF.right && f13 == rectF.bottom) {
            return;
        }
        rectF.set(f10, f11, f12, f13);
        invalidateSelf();
    }

    void o0(RectF rectF) {
        n0(rectF.left, rectF.top, rectF.right, rectF.bottom);
    }

    c(k kVar) {
        super(kVar == null ? new k() : kVar);
        this.M = new Paint(1);
        p0();
        this.N = new RectF();
    }
}
