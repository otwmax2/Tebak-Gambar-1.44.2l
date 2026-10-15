package e1;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import androidx.core.util.h;

/* JADX INFO: compiled from: CircularProgressDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public class a extends Drawable implements Animatable {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private static final Interpolator f28889u = new LinearInterpolator();

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private static final Interpolator f28890v = new p0.b();

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final int[] f28891w = {-16777216};

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final c f28892o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private float f28893p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Resources f28894q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Animator f28895r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    float f28896s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    boolean f28897t;

    /* JADX INFO: renamed from: e1.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CircularProgressDrawable.java */
    class C0150a implements ValueAnimator.AnimatorUpdateListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f28898a;

        C0150a(c cVar) {
            this.f28898a = cVar;
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
            a.this.h(fFloatValue, this.f28898a);
            a.this.b(fFloatValue, this.f28898a, false);
            a.this.invalidateSelf();
        }
    }

    /* JADX INFO: compiled from: CircularProgressDrawable.java */
    class b implements Animator.AnimatorListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f28900a;

        b(c cVar) {
            this.f28900a = cVar;
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
            a.this.b(1.0f, this.f28900a, true);
            this.f28900a.y();
            this.f28900a.l();
            a aVar = a.this;
            if (!aVar.f28897t) {
                aVar.f28896s += 1.0f;
                return;
            }
            aVar.f28897t = false;
            animator.cancel();
            animator.setDuration(1332L);
            animator.start();
            this.f28900a.v(false);
        }

        @Override // android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
            a.this.f28896s = 0.0f;
        }
    }

    /* JADX INFO: compiled from: CircularProgressDrawable.java */
    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final RectF f28902a = new RectF();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Paint f28903b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final Paint f28904c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final Paint f28905d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        float f28906e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        float f28907f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        float f28908g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        float f28909h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        int[] f28910i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        int f28911j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        float f28912k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        float f28913l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        float f28914m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        boolean f28915n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        Path f28916o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        float f28917p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        float f28918q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        int f28919r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        int f28920s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f28921t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        int f28922u;

        c() {
            Paint paint = new Paint();
            this.f28903b = paint;
            Paint paint2 = new Paint();
            this.f28904c = paint2;
            Paint paint3 = new Paint();
            this.f28905d = paint3;
            this.f28906e = 0.0f;
            this.f28907f = 0.0f;
            this.f28908g = 0.0f;
            this.f28909h = 5.0f;
            this.f28917p = 1.0f;
            this.f28921t = 255;
            paint.setStrokeCap(Paint.Cap.SQUARE);
            paint.setAntiAlias(true);
            paint.setStyle(Paint.Style.STROKE);
            paint2.setStyle(Paint.Style.FILL);
            paint2.setAntiAlias(true);
            paint3.setColor(0);
        }

        void a(Canvas canvas, Rect rect) {
            RectF rectF = this.f28902a;
            float f10 = this.f28918q;
            float fMin = (this.f28909h / 2.0f) + f10;
            if (f10 <= 0.0f) {
                fMin = (Math.min(rect.width(), rect.height()) / 2.0f) - Math.max((this.f28919r * this.f28917p) / 2.0f, this.f28909h / 2.0f);
            }
            rectF.set(rect.centerX() - fMin, rect.centerY() - fMin, rect.centerX() + fMin, rect.centerY() + fMin);
            float f11 = this.f28906e;
            float f12 = this.f28908g;
            float f13 = (f11 + f12) * 360.0f;
            float f14 = ((this.f28907f + f12) * 360.0f) - f13;
            this.f28903b.setColor(this.f28922u);
            this.f28903b.setAlpha(this.f28921t);
            float f15 = this.f28909h / 2.0f;
            rectF.inset(f15, f15);
            canvas.drawCircle(rectF.centerX(), rectF.centerY(), rectF.width() / 2.0f, this.f28905d);
            float f16 = -f15;
            rectF.inset(f16, f16);
            canvas.drawArc(rectF, f13, f14, false, this.f28903b);
            b(canvas, f13, f14, rectF);
        }

        void b(Canvas canvas, float f10, float f11, RectF rectF) {
            if (this.f28915n) {
                Path path = this.f28916o;
                if (path == null) {
                    Path path2 = new Path();
                    this.f28916o = path2;
                    path2.setFillType(Path.FillType.EVEN_ODD);
                } else {
                    path.reset();
                }
                float fMin = Math.min(rectF.width(), rectF.height()) / 2.0f;
                float f12 = (this.f28919r * this.f28917p) / 2.0f;
                this.f28916o.moveTo(0.0f, 0.0f);
                this.f28916o.lineTo(this.f28919r * this.f28917p, 0.0f);
                Path path3 = this.f28916o;
                float f13 = this.f28919r;
                float f14 = this.f28917p;
                path3.lineTo((f13 * f14) / 2.0f, this.f28920s * f14);
                this.f28916o.offset((fMin + rectF.centerX()) - f12, rectF.centerY() + (this.f28909h / 2.0f));
                this.f28916o.close();
                this.f28904c.setColor(this.f28922u);
                this.f28904c.setAlpha(this.f28921t);
                canvas.save();
                canvas.rotate(f10 + f11, rectF.centerX(), rectF.centerY());
                canvas.drawPath(this.f28916o, this.f28904c);
                canvas.restore();
            }
        }

        int c() {
            return this.f28921t;
        }

        float d() {
            return this.f28907f;
        }

        int e() {
            return this.f28910i[f()];
        }

        int f() {
            return (this.f28911j + 1) % this.f28910i.length;
        }

        float g() {
            return this.f28906e;
        }

        int h() {
            return this.f28910i[this.f28911j];
        }

        float i() {
            return this.f28913l;
        }

        float j() {
            return this.f28914m;
        }

        float k() {
            return this.f28912k;
        }

        void l() {
            r(f());
        }

        void m() {
            this.f28912k = 0.0f;
            this.f28913l = 0.0f;
            this.f28914m = 0.0f;
            w(0.0f);
            t(0.0f);
            u(0.0f);
        }

        void n(int i10) {
            this.f28921t = i10;
        }

        void o(float f10) {
            this.f28918q = f10;
        }

        void p(int i10) {
            this.f28922u = i10;
        }

        void q(ColorFilter colorFilter) {
            this.f28903b.setColorFilter(colorFilter);
        }

        void r(int i10) {
            this.f28911j = i10;
            this.f28922u = this.f28910i[i10];
        }

        void s(int[] iArr) {
            this.f28910i = iArr;
            r(0);
        }

        void t(float f10) {
            this.f28907f = f10;
        }

        void u(float f10) {
            this.f28908g = f10;
        }

        void v(boolean z10) {
            if (this.f28915n != z10) {
                this.f28915n = z10;
            }
        }

        void w(float f10) {
            this.f28906e = f10;
        }

        void x(float f10) {
            this.f28909h = f10;
            this.f28903b.setStrokeWidth(f10);
        }

        void y() {
            this.f28912k = this.f28906e;
            this.f28913l = this.f28907f;
            this.f28914m = this.f28908g;
        }
    }

    public a(Context context) {
        this.f28894q = ((Context) h.f(context)).getResources();
        c cVar = new c();
        this.f28892o = cVar;
        cVar.s(f28891w);
        f(2.5f);
        g();
    }

    private void a(float f10, c cVar) {
        h(f10, cVar);
        float fFloor = (float) (Math.floor(cVar.j() / 0.8f) + 1.0d);
        cVar.w(cVar.k() + (((cVar.i() - 0.01f) - cVar.k()) * f10));
        cVar.t(cVar.i());
        cVar.u(cVar.j() + ((fFloor - cVar.j()) * f10));
    }

    private int c(float f10, int i10, int i11) {
        return ((((i10 >> 24) & 255) + ((int) ((((i11 >> 24) & 255) - r0) * f10))) << 24) | ((((i10 >> 16) & 255) + ((int) ((((i11 >> 16) & 255) - r1) * f10))) << 16) | ((((i10 >> 8) & 255) + ((int) ((((i11 >> 8) & 255) - r2) * f10))) << 8) | ((i10 & 255) + ((int) (f10 * ((i11 & 255) - r8))));
    }

    private void e(float f10) {
        this.f28893p = f10;
    }

    private void g() {
        c cVar = this.f28892o;
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.addUpdateListener(new C0150a(cVar));
        valueAnimatorOfFloat.setRepeatCount(-1);
        valueAnimatorOfFloat.setRepeatMode(1);
        valueAnimatorOfFloat.setInterpolator(f28889u);
        valueAnimatorOfFloat.addListener(new b(cVar));
        this.f28895r = valueAnimatorOfFloat;
    }

    void b(float f10, c cVar, boolean z10) {
        float interpolation;
        float interpolation2;
        if (this.f28897t) {
            a(f10, cVar);
            return;
        }
        if (f10 != 1.0f || z10) {
            float fJ = cVar.j();
            if (f10 < 0.5f) {
                interpolation = cVar.k();
                interpolation2 = (f28890v.getInterpolation(f10 / 0.5f) * 0.79f) + 0.01f + interpolation;
            } else {
                float fK = cVar.k() + 0.79f;
                interpolation = fK - (((1.0f - f28890v.getInterpolation((f10 - 0.5f) / 0.5f)) * 0.79f) + 0.01f);
                interpolation2 = fK;
            }
            float f11 = fJ + (0.20999998f * f10);
            float f12 = (f10 + this.f28896s) * 216.0f;
            cVar.w(interpolation);
            cVar.t(interpolation2);
            cVar.u(f11);
            e(f12);
        }
    }

    public void d(float f10) {
        this.f28892o.o(f10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        Rect bounds = getBounds();
        canvas.save();
        canvas.rotate(this.f28893p, bounds.exactCenterX(), bounds.exactCenterY());
        this.f28892o.a(canvas, bounds);
        canvas.restore();
    }

    public void f(float f10) {
        this.f28892o.x(f10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public int getAlpha() {
        return this.f28892o.c();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    void h(float f10, c cVar) {
        if (f10 > 0.75f) {
            cVar.p(c((f10 - 0.75f) / 0.25f, cVar.h(), cVar.e()));
        } else {
            cVar.p(cVar.h());
        }
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f28895r.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f28892o.n(i10);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f28892o.q(colorFilter);
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f28895r.cancel();
        this.f28892o.y();
        if (this.f28892o.d() != this.f28892o.g()) {
            this.f28897t = true;
            this.f28895r.setDuration(666L);
            this.f28895r.start();
        } else {
            this.f28892o.r(0);
            this.f28892o.m();
            this.f28895r.setDuration(1332L);
            this.f28895r.start();
        }
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f28895r.cancel();
        e(0.0f);
        this.f28892o.v(false);
        this.f28892o.r(0);
        this.f28892o.m();
        invalidateSelf();
    }
}
