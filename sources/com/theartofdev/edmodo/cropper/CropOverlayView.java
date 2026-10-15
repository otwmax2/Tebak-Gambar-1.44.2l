package com.theartofdev.edmodo.cropper;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Region;
import android.os.Build;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.ScaleGestureDetector;
import android.view.View;
import com.theartofdev.edmodo.cropper.CropImageView;
import java.util.Arrays;

/* JADX INFO: loaded from: classes2.dex */
public class CropOverlayView extends View {
    private int A;
    private int B;
    private float C;
    private float D;
    private float E;
    private float F;
    private float G;
    private h H;
    private boolean I;
    private int J;
    private int K;
    private float L;
    private CropImageView.d M;
    private CropImageView.c N;
    private final Rect O;
    private boolean P;
    private Integer Q;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ScaleGestureDetector f27295o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f27296p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final g f27297q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private b f27298r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final RectF f27299s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Paint f27300t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private Paint f27301u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private Paint f27302v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private Paint f27303w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private Path f27304x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final float[] f27305y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final RectF f27306z;

    public interface b {
        void a(boolean z10);
    }

    private class c extends ScaleGestureDetector.SimpleOnScaleGestureListener {
        private c() {
        }

        @Override // android.view.ScaleGestureDetector.SimpleOnScaleGestureListener, android.view.ScaleGestureDetector.OnScaleGestureListener
        @TargetApi(11)
        public boolean onScale(ScaleGestureDetector scaleGestureDetector) {
            RectF rectFH = CropOverlayView.this.f27297q.h();
            float focusX = scaleGestureDetector.getFocusX();
            float focusY = scaleGestureDetector.getFocusY();
            float currentSpanY = scaleGestureDetector.getCurrentSpanY() / 2.0f;
            float currentSpanX = scaleGestureDetector.getCurrentSpanX() / 2.0f;
            float f10 = focusY - currentSpanY;
            float f11 = focusX - currentSpanX;
            float f12 = focusX + currentSpanX;
            float f13 = focusY + currentSpanY;
            if (f11 >= f12 || f10 > f13 || f11 < 0.0f || f12 > CropOverlayView.this.f27297q.c() || f10 < 0.0f || f13 > CropOverlayView.this.f27297q.b()) {
                return true;
            }
            rectFH.set(f11, f10, f12, f13);
            CropOverlayView.this.f27297q.r(rectFH);
            CropOverlayView.this.invalidate();
            return true;
        }
    }

    public CropOverlayView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f27297q = new g();
        this.f27299s = new RectF();
        this.f27304x = new Path();
        this.f27305y = new float[8];
        this.f27306z = new RectF();
        this.L = this.J / this.K;
        this.O = new Rect();
    }

    private boolean b(RectF rectF) {
        float fU = com.theartofdev.edmodo.cropper.c.u(this.f27305y);
        float fW = com.theartofdev.edmodo.cropper.c.w(this.f27305y);
        float fV = com.theartofdev.edmodo.cropper.c.v(this.f27305y);
        float fP = com.theartofdev.edmodo.cropper.c.p(this.f27305y);
        if (!n()) {
            this.f27306z.set(fU, fW, fV, fP);
            return false;
        }
        float[] fArr = this.f27305y;
        float f10 = fArr[0];
        float f11 = fArr[1];
        float f12 = fArr[4];
        float f13 = fArr[5];
        float f14 = fArr[6];
        float f15 = fArr[7];
        if (fArr[7] < fArr[1]) {
            if (fArr[1] < fArr[3]) {
                f10 = fArr[6];
                f11 = fArr[7];
                f12 = fArr[2];
                f13 = fArr[3];
                f14 = fArr[4];
                f15 = fArr[5];
            } else {
                f10 = fArr[4];
                f11 = fArr[5];
                f12 = fArr[0];
                f13 = fArr[1];
                f14 = fArr[2];
                f15 = fArr[3];
            }
        } else if (fArr[1] > fArr[3]) {
            f10 = fArr[2];
            f11 = fArr[3];
            f12 = fArr[6];
            f13 = fArr[7];
            f14 = fArr[0];
            f15 = fArr[1];
        }
        float f16 = (f15 - f11) / (f14 - f10);
        float f17 = (-1.0f) / f16;
        float f18 = f11 - (f16 * f10);
        float f19 = f11 - (f10 * f17);
        float f20 = f13 - (f16 * f12);
        float f21 = f13 - (f12 * f17);
        float fCenterY = rectF.centerY() - rectF.top;
        float fCenterX = rectF.centerX();
        float f22 = rectF.left;
        float f23 = fCenterY / (fCenterX - f22);
        float f24 = -f23;
        float f25 = rectF.top;
        float f26 = f25 - (f22 * f23);
        float f27 = rectF.right;
        float f28 = f25 - (f24 * f27);
        float f29 = f16 - f23;
        float f30 = (f26 - f18) / f29;
        float fMax = Math.max(fU, f30 < f27 ? f30 : fU);
        float f31 = (f26 - f19) / (f17 - f23);
        if (f31 >= rectF.right) {
            f31 = fMax;
        }
        float fMax2 = Math.max(fMax, f31);
        float f32 = f17 - f24;
        float f33 = (f28 - f21) / f32;
        if (f33 >= rectF.right) {
            f33 = fMax2;
        }
        float fMax3 = Math.max(fMax2, f33);
        float f34 = (f28 - f19) / f32;
        if (f34 <= rectF.left) {
            f34 = fV;
        }
        float fMin = Math.min(fV, f34);
        float f35 = (f28 - f20) / (f16 - f24);
        if (f35 <= rectF.left) {
            f35 = fMin;
        }
        float fMin2 = Math.min(fMin, f35);
        float f36 = (f26 - f20) / f29;
        if (f36 <= rectF.left) {
            f36 = fMin2;
        }
        float fMin3 = Math.min(fMin2, f36);
        float fMax4 = Math.max(fW, Math.max((f16 * fMax3) + f18, (f17 * fMin3) + f19));
        float fMin4 = Math.min(fP, Math.min((f17 * fMax3) + f21, (f16 * fMin3) + f20));
        RectF rectF2 = this.f27306z;
        rectF2.left = fMax3;
        rectF2.top = fMax4;
        rectF2.right = fMin3;
        rectF2.bottom = fMin4;
        return true;
    }

    private void c(boolean z10) {
        try {
            b bVar = this.f27298r;
            if (bVar != null) {
                bVar.a(z10);
            }
        } catch (Exception e10) {
            Log.e("AIC", "Exception in crop window changed", e10);
        }
    }

    private void d(Canvas canvas) {
        int i10;
        RectF rectFH = this.f27297q.h();
        float fMax = Math.max(com.theartofdev.edmodo.cropper.c.u(this.f27305y), 0.0f);
        float fMax2 = Math.max(com.theartofdev.edmodo.cropper.c.w(this.f27305y), 0.0f);
        float fMin = Math.min(com.theartofdev.edmodo.cropper.c.v(this.f27305y), getWidth());
        float fMin2 = Math.min(com.theartofdev.edmodo.cropper.c.p(this.f27305y), getHeight());
        if (this.N != CropImageView.c.RECTANGLE) {
            this.f27304x.reset();
            int i11 = Build.VERSION.SDK_INT;
            if (i11 > 17 || this.N != CropImageView.c.OVAL) {
                this.f27299s.set(rectFH.left, rectFH.top, rectFH.right, rectFH.bottom);
            } else {
                this.f27299s.set(rectFH.left + 2.0f, rectFH.top + 2.0f, rectFH.right - 2.0f, rectFH.bottom - 2.0f);
            }
            this.f27304x.addOval(this.f27299s, Path.Direction.CW);
            canvas.save();
            if (i11 >= 26) {
                canvas.clipOutPath(this.f27304x);
            } else {
                canvas.clipPath(this.f27304x, Region.Op.XOR);
            }
            canvas.drawRect(fMax, fMax2, fMin, fMin2, this.f27303w);
            canvas.restore();
            return;
        }
        if (!n() || (i10 = Build.VERSION.SDK_INT) <= 17) {
            canvas.drawRect(fMax, fMax2, fMin, rectFH.top, this.f27303w);
            canvas.drawRect(fMax, rectFH.bottom, fMin, fMin2, this.f27303w);
            canvas.drawRect(fMax, rectFH.top, rectFH.left, rectFH.bottom, this.f27303w);
            canvas.drawRect(rectFH.right, rectFH.top, fMin, rectFH.bottom, this.f27303w);
            return;
        }
        this.f27304x.reset();
        Path path = this.f27304x;
        float[] fArr = this.f27305y;
        path.moveTo(fArr[0], fArr[1]);
        Path path2 = this.f27304x;
        float[] fArr2 = this.f27305y;
        path2.lineTo(fArr2[2], fArr2[3]);
        Path path3 = this.f27304x;
        float[] fArr3 = this.f27305y;
        path3.lineTo(fArr3[4], fArr3[5]);
        Path path4 = this.f27304x;
        float[] fArr4 = this.f27305y;
        path4.lineTo(fArr4[6], fArr4[7]);
        this.f27304x.close();
        canvas.save();
        if (i10 >= 26) {
            canvas.clipOutPath(this.f27304x);
        } else {
            canvas.clipPath(this.f27304x, Region.Op.INTERSECT);
        }
        canvas.clipRect(rectFH, Region.Op.XOR);
        canvas.drawRect(fMax, fMax2, fMin, fMin2, this.f27303w);
        canvas.restore();
    }

    private void e(Canvas canvas) {
        Paint paint = this.f27300t;
        if (paint != null) {
            float strokeWidth = paint.getStrokeWidth();
            RectF rectFH = this.f27297q.h();
            float f10 = strokeWidth / 2.0f;
            rectFH.inset(f10, f10);
            if (this.N == CropImageView.c.RECTANGLE) {
                canvas.drawRect(rectFH, this.f27300t);
            } else {
                canvas.drawOval(rectFH, this.f27300t);
            }
        }
    }

    private void f(Canvas canvas) {
        if (this.f27301u != null) {
            Paint paint = this.f27300t;
            float strokeWidth = paint != null ? paint.getStrokeWidth() : 0.0f;
            float strokeWidth2 = this.f27301u.getStrokeWidth();
            float f10 = strokeWidth2 / 2.0f;
            float f11 = (this.N == CropImageView.c.RECTANGLE ? this.C : 0.0f) + f10;
            RectF rectFH = this.f27297q.h();
            rectFH.inset(f11, f11);
            float f12 = (strokeWidth2 - strokeWidth) / 2.0f;
            float f13 = f10 + f12;
            float f14 = rectFH.left;
            float f15 = rectFH.top;
            canvas.drawLine(f14 - f12, f15 - f13, f14 - f12, f15 + this.D, this.f27301u);
            float f16 = rectFH.left;
            float f17 = rectFH.top;
            canvas.drawLine(f16 - f13, f17 - f12, f16 + this.D, f17 - f12, this.f27301u);
            float f18 = rectFH.right;
            float f19 = rectFH.top;
            canvas.drawLine(f18 + f12, f19 - f13, f18 + f12, f19 + this.D, this.f27301u);
            float f20 = rectFH.right;
            float f21 = rectFH.top;
            canvas.drawLine(f20 + f13, f21 - f12, f20 - this.D, f21 - f12, this.f27301u);
            float f22 = rectFH.left;
            float f23 = rectFH.bottom;
            canvas.drawLine(f22 - f12, f23 + f13, f22 - f12, f23 - this.D, this.f27301u);
            float f24 = rectFH.left;
            float f25 = rectFH.bottom;
            canvas.drawLine(f24 - f13, f25 + f12, f24 + this.D, f25 + f12, this.f27301u);
            float f26 = rectFH.right;
            float f27 = rectFH.bottom;
            canvas.drawLine(f26 + f12, f27 + f13, f26 + f12, f27 - this.D, this.f27301u);
            float f28 = rectFH.right;
            float f29 = rectFH.bottom;
            canvas.drawLine(f28 + f13, f29 + f12, f28 - this.D, f29 + f12, this.f27301u);
        }
    }

    private void g(Canvas canvas) {
        if (this.f27302v != null) {
            Paint paint = this.f27300t;
            float strokeWidth = paint != null ? paint.getStrokeWidth() : 0.0f;
            RectF rectFH = this.f27297q.h();
            rectFH.inset(strokeWidth, strokeWidth);
            float fWidth = rectFH.width() / 3.0f;
            float fHeight = rectFH.height() / 3.0f;
            if (this.N != CropImageView.c.OVAL) {
                float f10 = rectFH.left + fWidth;
                float f11 = rectFH.right - fWidth;
                canvas.drawLine(f10, rectFH.top, f10, rectFH.bottom, this.f27302v);
                canvas.drawLine(f11, rectFH.top, f11, rectFH.bottom, this.f27302v);
                float f12 = rectFH.top + fHeight;
                float f13 = rectFH.bottom - fHeight;
                canvas.drawLine(rectFH.left, f12, rectFH.right, f12, this.f27302v);
                canvas.drawLine(rectFH.left, f13, rectFH.right, f13, this.f27302v);
                return;
            }
            float fWidth2 = (rectFH.width() / 2.0f) - strokeWidth;
            float fHeight2 = (rectFH.height() / 2.0f) - strokeWidth;
            float f14 = rectFH.left + fWidth;
            float f15 = rectFH.right - fWidth;
            double d10 = fHeight2;
            double dSin = Math.sin(Math.acos((fWidth2 - fWidth) / fWidth2));
            Double.isNaN(d10);
            float f16 = (float) (d10 * dSin);
            canvas.drawLine(f14, (rectFH.top + fHeight2) - f16, f14, (rectFH.bottom - fHeight2) + f16, this.f27302v);
            canvas.drawLine(f15, (rectFH.top + fHeight2) - f16, f15, (rectFH.bottom - fHeight2) + f16, this.f27302v);
            float f17 = rectFH.top + fHeight;
            float f18 = rectFH.bottom - fHeight;
            double d11 = fWidth2;
            double dCos = Math.cos(Math.asin((fHeight2 - fHeight) / fHeight2));
            Double.isNaN(d11);
            float f19 = (float) (d11 * dCos);
            canvas.drawLine((rectFH.left + fWidth2) - f19, f17, (rectFH.right - fWidth2) + f19, f17, this.f27302v);
            canvas.drawLine((rectFH.left + fWidth2) - f19, f18, (rectFH.right - fWidth2) + f19, f18, this.f27302v);
        }
    }

    private void h(RectF rectF) {
        if (rectF.width() < this.f27297q.e()) {
            float fE = (this.f27297q.e() - rectF.width()) / 2.0f;
            rectF.left -= fE;
            rectF.right += fE;
        }
        if (rectF.height() < this.f27297q.d()) {
            float fD = (this.f27297q.d() - rectF.height()) / 2.0f;
            rectF.top -= fD;
            rectF.bottom += fD;
        }
        if (rectF.width() > this.f27297q.c()) {
            float fWidth = (rectF.width() - this.f27297q.c()) / 2.0f;
            rectF.left += fWidth;
            rectF.right -= fWidth;
        }
        if (rectF.height() > this.f27297q.b()) {
            float fHeight = (rectF.height() - this.f27297q.b()) / 2.0f;
            rectF.top += fHeight;
            rectF.bottom -= fHeight;
        }
        b(rectF);
        if (this.f27306z.width() > 0.0f && this.f27306z.height() > 0.0f) {
            float fMax = Math.max(this.f27306z.left, 0.0f);
            float fMax2 = Math.max(this.f27306z.top, 0.0f);
            float fMin = Math.min(this.f27306z.right, getWidth());
            float fMin2 = Math.min(this.f27306z.bottom, getHeight());
            if (rectF.left < fMax) {
                rectF.left = fMax;
            }
            if (rectF.top < fMax2) {
                rectF.top = fMax2;
            }
            if (rectF.right > fMin) {
                rectF.right = fMin;
            }
            if (rectF.bottom > fMin2) {
                rectF.bottom = fMin2;
            }
        }
        if (!this.I || Math.abs(rectF.width() - (rectF.height() * this.L)) <= 0.1d) {
            return;
        }
        if (rectF.width() > rectF.height() * this.L) {
            float fAbs = Math.abs((rectF.height() * this.L) - rectF.width()) / 2.0f;
            rectF.left += fAbs;
            rectF.right -= fAbs;
        } else {
            float fAbs2 = Math.abs((rectF.width() / this.L) - rectF.height()) / 2.0f;
            rectF.top += fAbs2;
            rectF.bottom -= fAbs2;
        }
    }

    private static Paint j(int i10) {
        Paint paint = new Paint();
        paint.setColor(i10);
        return paint;
    }

    private static Paint k(float f10, int i10) {
        if (f10 <= 0.0f) {
            return null;
        }
        Paint paint = new Paint();
        paint.setColor(i10);
        paint.setStrokeWidth(f10);
        paint.setStyle(Paint.Style.STROKE);
        paint.setAntiAlias(true);
        return paint;
    }

    private void l() {
        float fMax = Math.max(com.theartofdev.edmodo.cropper.c.u(this.f27305y), 0.0f);
        float fMax2 = Math.max(com.theartofdev.edmodo.cropper.c.w(this.f27305y), 0.0f);
        float fMin = Math.min(com.theartofdev.edmodo.cropper.c.v(this.f27305y), getWidth());
        float fMin2 = Math.min(com.theartofdev.edmodo.cropper.c.p(this.f27305y), getHeight());
        if (fMin <= fMax || fMin2 <= fMax2) {
            return;
        }
        RectF rectF = new RectF();
        this.P = true;
        float f10 = this.E;
        float f11 = fMin - fMax;
        float f12 = f10 * f11;
        float f13 = fMin2 - fMax2;
        float f14 = f10 * f13;
        if (this.O.width() > 0 && this.O.height() > 0) {
            rectF.left = (this.O.left / this.f27297q.k()) + fMax;
            rectF.top = (this.O.top / this.f27297q.j()) + fMax2;
            rectF.right = rectF.left + (this.O.width() / this.f27297q.k());
            rectF.bottom = rectF.top + (this.O.height() / this.f27297q.j());
            rectF.left = Math.max(fMax, rectF.left);
            rectF.top = Math.max(fMax2, rectF.top);
            rectF.right = Math.min(fMin, rectF.right);
            rectF.bottom = Math.min(fMin2, rectF.bottom);
        } else if (!this.I || fMin <= fMax || fMin2 <= fMax2) {
            rectF.left = fMax + f12;
            rectF.top = fMax2 + f14;
            rectF.right = fMin - f12;
            rectF.bottom = fMin2 - f14;
        } else if (f11 / f13 > this.L) {
            rectF.top = fMax2 + f14;
            rectF.bottom = fMin2 - f14;
            float width = getWidth() / 2.0f;
            this.L = this.J / this.K;
            float fMax3 = Math.max(this.f27297q.e(), rectF.height() * this.L) / 2.0f;
            rectF.left = width - fMax3;
            rectF.right = width + fMax3;
        } else {
            rectF.left = fMax + f12;
            rectF.right = fMin - f12;
            float height = getHeight() / 2.0f;
            float fMax4 = Math.max(this.f27297q.d(), rectF.width() / this.L) / 2.0f;
            rectF.top = height - fMax4;
            rectF.bottom = height + fMax4;
        }
        h(rectF);
        this.f27297q.r(rectF);
    }

    private boolean n() {
        float[] fArr = this.f27305y;
        return (fArr[0] == fArr[6] || fArr[1] == fArr[7]) ? false : true;
    }

    private void o(float f10, float f11) {
        h hVarF = this.f27297q.f(f10, f11, this.F, this.N);
        this.H = hVarF;
        if (hVarF != null) {
            invalidate();
        }
    }

    private void p(float f10, float f11) {
        if (this.H != null) {
            float f12 = this.G;
            RectF rectFH = this.f27297q.h();
            this.H.m(rectFH, f10, f11, this.f27306z, this.A, this.B, b(rectFH) ? 0.0f : f12, this.I, this.L);
            this.f27297q.r(rectFH);
            c(true);
            invalidate();
        }
    }

    private void q() {
        if (this.H != null) {
            this.H = null;
            c(false);
            invalidate();
        }
    }

    public int getAspectRatioX() {
        return this.J;
    }

    public int getAspectRatioY() {
        return this.K;
    }

    public CropImageView.c getCropShape() {
        return this.N;
    }

    public RectF getCropWindowRect() {
        return this.f27297q.h();
    }

    public CropImageView.d getGuidelines() {
        return this.M;
    }

    public Rect getInitialCropWindowRect() {
        return this.O;
    }

    public void i() {
        RectF cropWindowRect = getCropWindowRect();
        h(cropWindowRect);
        this.f27297q.r(cropWindowRect);
    }

    public boolean m() {
        return this.I;
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        d(canvas);
        if (this.f27297q.s()) {
            CropImageView.d dVar = this.M;
            if (dVar == CropImageView.d.ON) {
                g(canvas);
            } else if (dVar == CropImageView.d.ON_TOUCH && this.H != null) {
                g(canvas);
            }
        }
        e(canvas);
        f(canvas);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (!isEnabled()) {
            return false;
        }
        if (this.f27296p) {
            this.f27295o.onTouchEvent(motionEvent);
        }
        int action = motionEvent.getAction();
        if (action == 0) {
            o(motionEvent.getX(), motionEvent.getY());
            return true;
        }
        if (action != 1) {
            if (action == 2) {
                p(motionEvent.getX(), motionEvent.getY());
                getParent().requestDisallowInterceptTouchEvent(true);
                return true;
            }
            if (action != 3) {
                return false;
            }
        }
        getParent().requestDisallowInterceptTouchEvent(false);
        q();
        return true;
    }

    public void r() {
        if (this.P) {
            setCropWindowRect(com.theartofdev.edmodo.cropper.c.f27343b);
            l();
            invalidate();
        }
    }

    public void s(float[] fArr, int i10, int i11) {
        if (fArr == null || !Arrays.equals(this.f27305y, fArr)) {
            if (fArr == null) {
                Arrays.fill(this.f27305y, 0.0f);
            } else {
                System.arraycopy(fArr, 0, this.f27305y, 0, fArr.length);
            }
            this.A = i10;
            this.B = i11;
            RectF rectFH = this.f27297q.h();
            if (rectFH.width() == 0.0f || rectFH.height() == 0.0f) {
                l();
            }
        }
    }

    public void setAspectRatioX(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
        }
        if (this.J != i10) {
            this.J = i10;
            this.L = i10 / this.K;
            if (this.P) {
                l();
                invalidate();
            }
        }
    }

    public void setAspectRatioY(int i10) {
        if (i10 <= 0) {
            throw new IllegalArgumentException("Cannot set aspect ratio value to a number less than or equal to 0.");
        }
        if (this.K != i10) {
            this.K = i10;
            this.L = this.J / i10;
            if (this.P) {
                l();
                invalidate();
            }
        }
    }

    public void setCropShape(CropImageView.c cVar) {
        if (this.N != cVar) {
            this.N = cVar;
            if (Build.VERSION.SDK_INT <= 17) {
                if (cVar == CropImageView.c.OVAL) {
                    Integer numValueOf = Integer.valueOf(getLayerType());
                    this.Q = numValueOf;
                    if (numValueOf.intValue() != 1) {
                        setLayerType(1, null);
                    } else {
                        this.Q = null;
                    }
                } else {
                    Integer num = this.Q;
                    if (num != null) {
                        setLayerType(num.intValue(), null);
                        this.Q = null;
                    }
                }
            }
            invalidate();
        }
    }

    public void setCropWindowChangeListener(b bVar) {
        this.f27298r = bVar;
    }

    public void setCropWindowRect(RectF rectF) {
        this.f27297q.r(rectF);
    }

    public void setFixedAspectRatio(boolean z10) {
        if (this.I != z10) {
            this.I = z10;
            if (this.P) {
                l();
                invalidate();
            }
        }
    }

    public void setGuidelines(CropImageView.d dVar) {
        if (this.M != dVar) {
            this.M = dVar;
            if (this.P) {
                invalidate();
            }
        }
    }

    public void setInitialAttributeValues(f fVar) {
        this.f27297q.q(fVar);
        setCropShape(fVar.f27376o);
        setSnapRadius(fVar.f27377p);
        setGuidelines(fVar.f27379r);
        setFixedAspectRatio(fVar.f27387z);
        setAspectRatioX(fVar.A);
        setAspectRatioY(fVar.B);
        u(fVar.f27384w);
        this.F = fVar.f27378q;
        this.E = fVar.f27386y;
        this.f27300t = k(fVar.C, fVar.D);
        this.C = fVar.F;
        this.D = fVar.G;
        this.f27301u = k(fVar.E, fVar.H);
        this.f27302v = k(fVar.I, fVar.J);
        this.f27303w = j(fVar.K);
    }

    public void setInitialCropWindowRect(Rect rect) {
        Rect rect2 = this.O;
        if (rect == null) {
            rect = com.theartofdev.edmodo.cropper.c.f27342a;
        }
        rect2.set(rect);
        if (this.P) {
            l();
            invalidate();
            c(false);
        }
    }

    public void setSnapRadius(float f10) {
        this.G = f10;
    }

    public void t(float f10, float f11, float f12, float f13) {
        this.f27297q.p(f10, f11, f12, f13);
    }

    public boolean u(boolean z10) {
        if (this.f27296p == z10) {
            return false;
        }
        this.f27296p = z10;
        if (!z10 || this.f27295o != null) {
            return true;
        }
        this.f27295o = new ScaleGestureDetector(getContext(), new c());
        return true;
    }
}
