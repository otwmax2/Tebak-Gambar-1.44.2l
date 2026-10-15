package androidx.recyclerview.widget;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.view.MotionEvent;
import androidx.core.view.a0;
import androidx.recyclerview.widget.RecyclerView;

/* JADX INFO: compiled from: FastScroller.java */
/* JADX INFO: loaded from: classes.dex */
class d extends RecyclerView.o implements RecyclerView.t {
    private static final int[] D = {R.attr.state_pressed};
    private static final int[] E = new int[0];
    int A;
    private final Runnable B;
    private final RecyclerView.u C;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f3911a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f3912b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    final StateListDrawable f3913c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    final Drawable f3914d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f3915e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f3916f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final StateListDrawable f3917g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Drawable f3918h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final int f3919i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final int f3920j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f3921k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f3922l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    float f3923m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    int f3924n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    int f3925o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    float f3926p;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private RecyclerView f3929s;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    final ValueAnimator f3936z;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private int f3927q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private int f3928r = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f3930t = false;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f3931u = false;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f3932v = 0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private int f3933w = 0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final int[] f3934x = new int[2];

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final int[] f3935y = new int[2];

    /* JADX INFO: compiled from: FastScroller.java */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            d.this.q(500);
        }
    }

    /* JADX INFO: compiled from: FastScroller.java */
    class b extends RecyclerView.u {
        b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.u
        public void b(RecyclerView recyclerView, int i10, int i11) {
            d.this.B(recyclerView.computeHorizontalScrollOffset(), recyclerView.computeVerticalScrollOffset());
        }
    }

    /* JADX INFO: compiled from: FastScroller.java */
    private class c extends AnimatorListenerAdapter {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f3939a = false;

        c() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f3939a = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            if (this.f3939a) {
                this.f3939a = false;
                return;
            }
            if (((Float) d.this.f3936z.getAnimatedValue()).floatValue() == 0.0f) {
                d dVar = d.this;
                dVar.A = 0;
                dVar.y(0);
            } else {
                d dVar2 = d.this;
                dVar2.A = 2;
                dVar2.v();
            }
        }
    }

    /* JADX INFO: renamed from: androidx.recyclerview.widget.d$d, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FastScroller.java */
    private class C0064d implements ValueAnimator.AnimatorUpdateListener {
        C0064d() {
        }

        @Override // android.animation.ValueAnimator.AnimatorUpdateListener
        public void onAnimationUpdate(ValueAnimator valueAnimator) {
            int iFloatValue = (int) (((Float) valueAnimator.getAnimatedValue()).floatValue() * 255.0f);
            d.this.f3913c.setAlpha(iFloatValue);
            d.this.f3914d.setAlpha(iFloatValue);
            d.this.v();
        }
    }

    d(RecyclerView recyclerView, StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2, int i10, int i11, int i12) {
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        this.f3936z = valueAnimatorOfFloat;
        this.A = 0;
        this.B = new a();
        this.C = new b();
        this.f3913c = stateListDrawable;
        this.f3914d = drawable;
        this.f3917g = stateListDrawable2;
        this.f3918h = drawable2;
        this.f3915e = Math.max(i10, stateListDrawable.getIntrinsicWidth());
        this.f3916f = Math.max(i10, drawable.getIntrinsicWidth());
        this.f3919i = Math.max(i10, stateListDrawable2.getIntrinsicWidth());
        this.f3920j = Math.max(i10, drawable2.getIntrinsicWidth());
        this.f3911a = i11;
        this.f3912b = i12;
        stateListDrawable.setAlpha(255);
        drawable.setAlpha(255);
        valueAnimatorOfFloat.addListener(new c());
        valueAnimatorOfFloat.addUpdateListener(new C0064d());
        j(recyclerView);
    }

    private void C(float f10) {
        int[] iArrP = p();
        float fMax = Math.max(iArrP[0], Math.min(iArrP[1], f10));
        if (Math.abs(this.f3922l - fMax) < 2.0f) {
            return;
        }
        int iX = x(this.f3923m, fMax, iArrP, this.f3929s.computeVerticalScrollRange(), this.f3929s.computeVerticalScrollOffset(), this.f3928r);
        if (iX != 0) {
            this.f3929s.scrollBy(0, iX);
        }
        this.f3923m = fMax;
    }

    private void k() {
        this.f3929s.removeCallbacks(this.B);
    }

    private void l() {
        this.f3929s.W0(this);
        this.f3929s.X0(this);
        this.f3929s.Y0(this.C);
        k();
    }

    private void m(Canvas canvas) {
        int i10 = this.f3928r;
        int i11 = this.f3919i;
        int i12 = this.f3925o;
        int i13 = this.f3924n;
        this.f3917g.setBounds(0, 0, i13, i11);
        this.f3918h.setBounds(0, 0, this.f3927q, this.f3920j);
        canvas.translate(0.0f, i10 - i11);
        this.f3918h.draw(canvas);
        canvas.translate(i12 - (i13 / 2), 0.0f);
        this.f3917g.draw(canvas);
        canvas.translate(-r2, -r0);
    }

    private void n(Canvas canvas) {
        int i10 = this.f3927q;
        int i11 = this.f3915e;
        int i12 = i10 - i11;
        int i13 = this.f3922l;
        int i14 = this.f3921k;
        int i15 = i13 - (i14 / 2);
        this.f3913c.setBounds(0, 0, i11, i14);
        this.f3914d.setBounds(0, 0, this.f3916f, this.f3928r);
        if (!s()) {
            canvas.translate(i12, 0.0f);
            this.f3914d.draw(canvas);
            canvas.translate(0.0f, i15);
            this.f3913c.draw(canvas);
            canvas.translate(-i12, -i15);
            return;
        }
        this.f3914d.draw(canvas);
        canvas.translate(this.f3915e, i15);
        canvas.scale(-1.0f, 1.0f);
        this.f3913c.draw(canvas);
        canvas.scale(-1.0f, 1.0f);
        canvas.translate(-this.f3915e, -i15);
    }

    private int[] o() {
        int[] iArr = this.f3935y;
        int i10 = this.f3912b;
        iArr[0] = i10;
        iArr[1] = this.f3927q - i10;
        return iArr;
    }

    private int[] p() {
        int[] iArr = this.f3934x;
        int i10 = this.f3912b;
        iArr[0] = i10;
        iArr[1] = this.f3928r - i10;
        return iArr;
    }

    private void r(float f10) {
        int[] iArrO = o();
        float fMax = Math.max(iArrO[0], Math.min(iArrO[1], f10));
        if (Math.abs(this.f3925o - fMax) < 2.0f) {
            return;
        }
        int iX = x(this.f3926p, fMax, iArrO, this.f3929s.computeHorizontalScrollRange(), this.f3929s.computeHorizontalScrollOffset(), this.f3927q);
        if (iX != 0) {
            this.f3929s.scrollBy(iX, 0);
        }
        this.f3926p = fMax;
    }

    private boolean s() {
        return a0.E(this.f3929s) == 1;
    }

    private void w(int i10) {
        k();
        this.f3929s.postDelayed(this.B, i10);
    }

    private int x(float f10, float f11, int[] iArr, int i10, int i11, int i12) {
        int i13 = iArr[1] - iArr[0];
        if (i13 == 0) {
            return 0;
        }
        int i14 = i10 - i12;
        int i15 = (int) (((f11 - f10) / i13) * i14);
        int i16 = i11 + i15;
        if (i16 >= i14 || i16 < 0) {
            return 0;
        }
        return i15;
    }

    private void z() {
        this.f3929s.h(this);
        this.f3929s.j(this);
        this.f3929s.k(this.C);
    }

    public void A() {
        int i10 = this.A;
        if (i10 != 0) {
            if (i10 != 3) {
                return;
            } else {
                this.f3936z.cancel();
            }
        }
        this.A = 1;
        ValueAnimator valueAnimator = this.f3936z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 1.0f);
        this.f3936z.setDuration(500L);
        this.f3936z.setStartDelay(0L);
        this.f3936z.start();
    }

    void B(int i10, int i11) {
        int iComputeVerticalScrollRange = this.f3929s.computeVerticalScrollRange();
        int i12 = this.f3928r;
        this.f3930t = iComputeVerticalScrollRange - i12 > 0 && i12 >= this.f3911a;
        int iComputeHorizontalScrollRange = this.f3929s.computeHorizontalScrollRange();
        int i13 = this.f3927q;
        boolean z10 = iComputeHorizontalScrollRange - i13 > 0 && i13 >= this.f3911a;
        this.f3931u = z10;
        boolean z11 = this.f3930t;
        if (!z11 && !z10) {
            if (this.f3932v != 0) {
                y(0);
                return;
            }
            return;
        }
        if (z11) {
            float f10 = i12;
            this.f3922l = (int) ((f10 * (i11 + (f10 / 2.0f))) / iComputeVerticalScrollRange);
            this.f3921k = Math.min(i12, (i12 * i12) / iComputeVerticalScrollRange);
        }
        if (this.f3931u) {
            float f11 = i13;
            this.f3925o = (int) ((f11 * (i10 + (f11 / 2.0f))) / iComputeHorizontalScrollRange);
            this.f3924n = Math.min(i13, (i13 * i13) / iComputeHorizontalScrollRange);
        }
        int i14 = this.f3932v;
        if (i14 == 0 || i14 == 1) {
            y(1);
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.t
    public void a(RecyclerView recyclerView, MotionEvent motionEvent) {
        if (this.f3932v == 0) {
            return;
        }
        if (motionEvent.getAction() == 0) {
            boolean zU = u(motionEvent.getX(), motionEvent.getY());
            boolean zT = t(motionEvent.getX(), motionEvent.getY());
            if (zU || zT) {
                if (zT) {
                    this.f3933w = 1;
                    this.f3926p = (int) motionEvent.getX();
                } else if (zU) {
                    this.f3933w = 2;
                    this.f3923m = (int) motionEvent.getY();
                }
                y(2);
                return;
            }
            return;
        }
        if (motionEvent.getAction() == 1 && this.f3932v == 2) {
            this.f3923m = 0.0f;
            this.f3926p = 0.0f;
            y(1);
            this.f3933w = 0;
            return;
        }
        if (motionEvent.getAction() == 2 && this.f3932v == 2) {
            A();
            if (this.f3933w == 1) {
                r(motionEvent.getX());
            }
            if (this.f3933w == 2) {
                C(motionEvent.getY());
            }
        }
    }

    @Override // androidx.recyclerview.widget.RecyclerView.t
    public boolean b(RecyclerView recyclerView, MotionEvent motionEvent) {
        int i10 = this.f3932v;
        if (i10 == 1) {
            boolean zU = u(motionEvent.getX(), motionEvent.getY());
            boolean zT = t(motionEvent.getX(), motionEvent.getY());
            if (motionEvent.getAction() != 0) {
                return false;
            }
            if (!zU && !zT) {
                return false;
            }
            if (zT) {
                this.f3933w = 1;
                this.f3926p = (int) motionEvent.getX();
            } else if (zU) {
                this.f3933w = 2;
                this.f3923m = (int) motionEvent.getY();
            }
            y(2);
        } else if (i10 != 2) {
            return false;
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.t
    public void c(boolean z10) {
    }

    @Override // androidx.recyclerview.widget.RecyclerView.o
    public void i(Canvas canvas, RecyclerView recyclerView, RecyclerView.b0 b0Var) {
        if (this.f3927q != this.f3929s.getWidth() || this.f3928r != this.f3929s.getHeight()) {
            this.f3927q = this.f3929s.getWidth();
            this.f3928r = this.f3929s.getHeight();
            y(0);
        } else if (this.A != 0) {
            if (this.f3930t) {
                n(canvas);
            }
            if (this.f3931u) {
                m(canvas);
            }
        }
    }

    public void j(RecyclerView recyclerView) {
        RecyclerView recyclerView2 = this.f3929s;
        if (recyclerView2 == recyclerView) {
            return;
        }
        if (recyclerView2 != null) {
            l();
        }
        this.f3929s = recyclerView;
        if (recyclerView != null) {
            z();
        }
    }

    void q(int i10) {
        int i11 = this.A;
        if (i11 == 1) {
            this.f3936z.cancel();
        } else if (i11 != 2) {
            return;
        }
        this.A = 3;
        ValueAnimator valueAnimator = this.f3936z;
        valueAnimator.setFloatValues(((Float) valueAnimator.getAnimatedValue()).floatValue(), 0.0f);
        this.f3936z.setDuration(i10);
        this.f3936z.start();
    }

    boolean t(float f10, float f11) {
        if (f11 >= this.f3928r - this.f3919i) {
            int i10 = this.f3925o;
            int i11 = this.f3924n;
            if (f10 >= i10 - (i11 / 2) && f10 <= i10 + (i11 / 2)) {
                return true;
            }
        }
        return false;
    }

    boolean u(float f10, float f11) {
        if (!s() ? f10 >= this.f3927q - this.f3915e : f10 <= this.f3915e) {
            int i10 = this.f3922l;
            int i11 = this.f3921k;
            if (f11 >= i10 - (i11 / 2) && f11 <= i10 + (i11 / 2)) {
                return true;
            }
        }
        return false;
    }

    void v() {
        this.f3929s.invalidate();
    }

    void y(int i10) {
        if (i10 == 2 && this.f3932v != 2) {
            this.f3913c.setState(D);
            k();
        }
        if (i10 == 0) {
            v();
        } else {
            A();
        }
        if (this.f3932v == 2 && i10 != 2) {
            this.f3913c.setState(E);
            w(1200);
        } else if (i10 == 1) {
            w(1500);
        }
        this.f3932v = i10;
    }
}
