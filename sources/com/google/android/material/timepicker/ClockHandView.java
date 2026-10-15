package com.google.android.material.timepicker;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.RectF;
import android.util.AttributeSet;
import android.util.Pair;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import androidx.core.view.a0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import y3.j;
import y3.k;

/* JADX INFO: loaded from: classes2.dex */
class ClockHandView extends View {
    private float A;
    private boolean B;
    private c C;
    private double D;
    private int E;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private ValueAnimator f25744o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f25745p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private float f25746q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private float f25747r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f25748s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f25749t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final List<d> f25750u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final int f25751v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final float f25752w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Paint f25753x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final RectF f25754y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private final int f25755z;

    class a implements ValueAnimator.AnimatorUpdateListener {
        a() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            ClockHandView.this.m(((Float) valueAnimator.getAnimatedValue()).floatValue(), true);
        }
    }

    class b extends AnimatorListenerAdapter {
        b() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            animator.end();
        }
    }

    public interface c {
        void a(float f10, boolean z10);
    }

    public interface d {
        void a(float f10, boolean z10);
    }

    public ClockHandView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, y3.b.f36650t);
    }

    private void c(Canvas canvas) {
        int height = getHeight() / 2;
        float width = getWidth() / 2;
        float fCos = (this.E * ((float) Math.cos(this.D))) + width;
        float f10 = height;
        float fSin = (this.E * ((float) Math.sin(this.D))) + f10;
        this.f25753x.setStrokeWidth(0.0f);
        canvas.drawCircle(fCos, fSin, this.f25751v, this.f25753x);
        double dSin = Math.sin(this.D);
        double dCos = Math.cos(this.D);
        Double.isNaN(d);
        Double.isNaN(d);
        this.f25753x.setStrokeWidth(this.f25755z);
        canvas.drawLine(width, f10, r1 + ((int) (dCos * d)), height + ((int) (d * dSin)), this.f25753x);
        canvas.drawCircle(width, f10, this.f25752w, this.f25753x);
    }

    private int e(float f10, float f11) {
        int degrees = ((int) Math.toDegrees(Math.atan2(f11 - (getHeight() / 2), f10 - (getWidth() / 2)))) + 90;
        return degrees < 0 ? degrees + 360 : degrees;
    }

    private Pair<Float, Float> h(float f10) {
        float f11 = f();
        if (Math.abs(f11 - f10) > 180.0f) {
            if (f11 > 180.0f && f10 < 180.0f) {
                f10 += 360.0f;
            }
            if (f11 < 180.0f && f10 > 180.0f) {
                f11 += 360.0f;
            }
        }
        return new Pair<>(Float.valueOf(f11), Float.valueOf(f10));
    }

    private boolean i(float f10, float f11, boolean z10, boolean z11, boolean z12) {
        float fE = e(f10, f11);
        boolean z13 = false;
        boolean z14 = f() != fE;
        if (z11 && z14) {
            return true;
        }
        if (!z14 && !z10) {
            return false;
        }
        if (z12 && this.f25745p) {
            z13 = true;
        }
        l(fE, z13);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(float f10, boolean z10) {
        float f11 = f10 % 360.0f;
        this.A = f11;
        this.D = Math.toRadians(f11 - 90.0f);
        int height = getHeight() / 2;
        float width = (getWidth() / 2) + (this.E * ((float) Math.cos(this.D)));
        float fSin = height + (this.E * ((float) Math.sin(this.D)));
        RectF rectF = this.f25754y;
        int i10 = this.f25751v;
        rectF.set(width - i10, fSin - i10, width + i10, fSin + i10);
        Iterator<d> it = this.f25750u.iterator();
        while (it.hasNext()) {
            it.next().a(f11, z10);
        }
        invalidate();
    }

    public void b(d dVar) {
        this.f25750u.add(dVar);
    }

    public RectF d() {
        return this.f25754y;
    }

    public float f() {
        return this.A;
    }

    public int g() {
        return this.f25751v;
    }

    public void j(int i10) {
        this.E = i10;
        invalidate();
    }

    public void k(float f10) {
        l(f10, false);
    }

    public void l(float f10, boolean z10) {
        ValueAnimator valueAnimator = this.f25744o;
        if (valueAnimator != null) {
            valueAnimator.cancel();
        }
        if (!z10) {
            m(f10, false);
            return;
        }
        Pair<Float, Float> pairH = h(f10);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(((Float) pairH.first).floatValue(), ((Float) pairH.second).floatValue());
        this.f25744o = valueAnimatorOfFloat;
        valueAnimatorOfFloat.setDuration(200L);
        this.f25744o.addUpdateListener(new a());
        this.f25744o.addListener(new b());
        this.f25744o.start();
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        c(canvas);
    }

    @Override // android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        k(f());
    }

    @Override // android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        boolean z11;
        boolean z12;
        c cVar;
        int actionMasked = motionEvent.getActionMasked();
        float x10 = motionEvent.getX();
        float y10 = motionEvent.getY();
        if (actionMasked != 0) {
            if (actionMasked == 1 || actionMasked == 2) {
                int i10 = (int) (x10 - this.f25746q);
                int i11 = (int) (y10 - this.f25747r);
                this.f25748s = (i10 * i10) + (i11 * i11) > this.f25749t;
                boolean z13 = this.B;
                z10 = actionMasked == 1;
                z11 = z13;
            } else {
                z10 = false;
                z11 = false;
            }
            z12 = false;
        } else {
            this.f25746q = x10;
            this.f25747r = y10;
            this.f25748s = true;
            this.B = false;
            z10 = false;
            z11 = false;
            z12 = true;
        }
        boolean zI = i(x10, y10, z11, z12, z10) | this.B;
        this.B = zI;
        if (zI && z10 && (cVar = this.C) != null) {
            cVar.a(e(x10, y10), this.f25748s);
        }
        return true;
    }

    public ClockHandView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f25750u = new ArrayList();
        Paint paint = new Paint();
        this.f25753x = paint;
        this.f25754y = new RectF();
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, k.P0, i10, j.f36776s);
        this.E = typedArrayObtainStyledAttributes.getDimensionPixelSize(k.R0, 0);
        this.f25751v = typedArrayObtainStyledAttributes.getDimensionPixelSize(k.S0, 0);
        this.f25755z = getResources().getDimensionPixelSize(y3.d.f36673k);
        this.f25752w = r6.getDimensionPixelSize(y3.d.f36671i);
        int color = typedArrayObtainStyledAttributes.getColor(k.Q0, 0);
        paint.setAntiAlias(true);
        paint.setColor(color);
        k(0.0f);
        this.f25749t = ViewConfiguration.get(context).getScaledTouchSlop();
        a0.A0(this, 2);
        typedArrayObtainStyledAttributes.recycle();
    }
}
