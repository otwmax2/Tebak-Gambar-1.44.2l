package com.theartofdev.edmodo.cropper;

import android.graphics.Matrix;
import android.graphics.RectF;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import android.widget.ImageView;

/* JADX INFO: compiled from: CropImageAnimation.java */
/* JADX INFO: loaded from: classes2.dex */
final class e extends Animation implements Animation.AnimationListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final ImageView f27355o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final CropOverlayView f27356p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final float[] f27357q = new float[8];

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final float[] f27358r = new float[8];

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final RectF f27359s = new RectF();

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final RectF f27360t = new RectF();

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final float[] f27361u = new float[9];

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final float[] f27362v = new float[9];

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final RectF f27363w = new RectF();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final float[] f27364x = new float[8];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final float[] f27365y = new float[9];

    public e(ImageView imageView, CropOverlayView cropOverlayView) {
        this.f27355o = imageView;
        this.f27356p = cropOverlayView;
        setDuration(300L);
        setFillAfter(true);
        setInterpolator(new AccelerateDecelerateInterpolator());
        setAnimationListener(this);
    }

    public void a(float[] fArr, Matrix matrix) {
        System.arraycopy(fArr, 0, this.f27358r, 0, 8);
        this.f27360t.set(this.f27356p.getCropWindowRect());
        matrix.getValues(this.f27362v);
    }

    @Override // android.view.animation.Animation
    protected void applyTransformation(float f10, Transformation transformation) {
        float[] fArr;
        RectF rectF = this.f27363w;
        RectF rectF2 = this.f27359s;
        float f11 = rectF2.left;
        RectF rectF3 = this.f27360t;
        rectF.left = f11 + ((rectF3.left - f11) * f10);
        float f12 = rectF2.top;
        rectF.top = f12 + ((rectF3.top - f12) * f10);
        float f13 = rectF2.right;
        rectF.right = f13 + ((rectF3.right - f13) * f10);
        float f14 = rectF2.bottom;
        rectF.bottom = f14 + ((rectF3.bottom - f14) * f10);
        this.f27356p.setCropWindowRect(rectF);
        int i10 = 0;
        int i11 = 0;
        while (true) {
            fArr = this.f27364x;
            if (i11 >= fArr.length) {
                break;
            }
            float[] fArr2 = this.f27357q;
            fArr[i11] = fArr2[i11] + ((this.f27358r[i11] - fArr2[i11]) * f10);
            i11++;
        }
        this.f27356p.s(fArr, this.f27355o.getWidth(), this.f27355o.getHeight());
        while (true) {
            float[] fArr3 = this.f27365y;
            if (i10 >= fArr3.length) {
                Matrix imageMatrix = this.f27355o.getImageMatrix();
                imageMatrix.setValues(this.f27365y);
                this.f27355o.setImageMatrix(imageMatrix);
                this.f27355o.invalidate();
                this.f27356p.invalidate();
                return;
            }
            float[] fArr4 = this.f27361u;
            fArr3[i10] = fArr4[i10] + ((this.f27362v[i10] - fArr4[i10]) * f10);
            i10++;
        }
    }

    public void b(float[] fArr, Matrix matrix) {
        reset();
        System.arraycopy(fArr, 0, this.f27357q, 0, 8);
        this.f27359s.set(this.f27356p.getCropWindowRect());
        matrix.getValues(this.f27361u);
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationEnd(Animation animation) {
        this.f27355o.clearAnimation();
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationRepeat(Animation animation) {
    }

    @Override // android.view.animation.Animation.AnimationListener
    public void onAnimationStart(Animation animation) {
    }
}
