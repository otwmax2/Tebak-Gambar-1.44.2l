package androidx.core.widget;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import androidx.core.view.a0;

/* JADX INFO: compiled from: AutoScrollHelper.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a implements View.OnTouchListener {
    private static final int F = ViewConfiguration.getTapTimeout();
    boolean A;
    boolean B;
    boolean C;
    private boolean D;
    private boolean E;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    final View f2562q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private Runnable f2563r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f2566u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f2567v;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f2571z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    final C0043a f2560o = new C0043a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Interpolator f2561p = new AccelerateInterpolator();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private float[] f2564s = {0.0f, 0.0f};

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private float[] f2565t = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private float[] f2568w = {0.0f, 0.0f};

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private float[] f2569x = {0.0f, 0.0f};

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private float[] f2570y = {Float.MAX_VALUE, Float.MAX_VALUE};

    /* JADX INFO: renamed from: androidx.core.widget.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AutoScrollHelper.java */
    private static class C0043a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f2572a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f2573b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private float f2574c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private float f2575d;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        private float f2581j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private int f2582k;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f2576e = Long.MIN_VALUE;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        private long f2580i = -1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f2577f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private int f2578g = 0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private int f2579h = 0;

        C0043a() {
        }

        private float e(long j10) {
            if (j10 < this.f2576e) {
                return 0.0f;
            }
            long j11 = this.f2580i;
            if (j11 < 0 || j10 < j11) {
                return a.o((j10 - r0) / this.f2572a, 0.0f, 1.0f) * 0.5f;
            }
            float f10 = this.f2581j;
            return (1.0f - f10) + (f10 * a.o((j10 - j11) / this.f2582k, 0.0f, 1.0f));
        }

        private float g(float f10) {
            return ((-4.0f) * f10 * f10) + (f10 * 4.0f);
        }

        public void a() {
            if (this.f2577f == 0) {
                throw new RuntimeException("Cannot compute scroll delta before calling start()");
            }
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            float fG = g(e(jCurrentAnimationTimeMillis));
            long j10 = jCurrentAnimationTimeMillis - this.f2577f;
            this.f2577f = jCurrentAnimationTimeMillis;
            float f10 = j10 * fG;
            this.f2578g = (int) (this.f2574c * f10);
            this.f2579h = (int) (f10 * this.f2575d);
        }

        public int b() {
            return this.f2578g;
        }

        public int c() {
            return this.f2579h;
        }

        public int d() {
            float f10 = this.f2574c;
            return (int) (f10 / Math.abs(f10));
        }

        public int f() {
            float f10 = this.f2575d;
            return (int) (f10 / Math.abs(f10));
        }

        public boolean h() {
            return this.f2580i > 0 && AnimationUtils.currentAnimationTimeMillis() > this.f2580i + ((long) this.f2582k);
        }

        public void i() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f2582k = a.p((int) (jCurrentAnimationTimeMillis - this.f2576e), 0, this.f2573b);
            this.f2581j = e(jCurrentAnimationTimeMillis);
            this.f2580i = jCurrentAnimationTimeMillis;
        }

        public void j(int i10) {
            this.f2573b = i10;
        }

        public void k(int i10) {
            this.f2572a = i10;
        }

        public void l(float f10, float f11) {
            this.f2574c = f10;
            this.f2575d = f11;
        }

        public void m() {
            long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
            this.f2576e = jCurrentAnimationTimeMillis;
            this.f2580i = -1L;
            this.f2577f = jCurrentAnimationTimeMillis;
            this.f2581j = 0.5f;
            this.f2578g = 0;
            this.f2579h = 0;
        }
    }

    /* JADX INFO: compiled from: AutoScrollHelper.java */
    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = a.this;
            if (aVar.C) {
                if (aVar.A) {
                    aVar.A = false;
                    aVar.f2560o.m();
                }
                C0043a c0043a = a.this.f2560o;
                if (c0043a.h() || !a.this.E()) {
                    a.this.C = false;
                    return;
                }
                a aVar2 = a.this;
                if (aVar2.B) {
                    aVar2.B = false;
                    aVar2.d();
                }
                c0043a.a();
                a.this.t(c0043a.b(), c0043a.c());
                a0.i0(a.this.f2562q, this);
            }
        }
    }

    public a(View view) {
        this.f2562q = view;
        float f10 = Resources.getSystem().getDisplayMetrics().density;
        float f11 = (int) ((1575.0f * f10) + 0.5f);
        y(f11, f11);
        float f12 = (int) ((f10 * 315.0f) + 0.5f);
        z(f12, f12);
        v(1);
        x(Float.MAX_VALUE, Float.MAX_VALUE);
        C(0.2f, 0.2f);
        D(1.0f, 1.0f);
        u(F);
        B(500);
        A(500);
    }

    private void F() {
        int i10;
        if (this.f2563r == null) {
            this.f2563r = new b();
        }
        this.C = true;
        this.A = true;
        if (this.f2571z || (i10 = this.f2567v) <= 0) {
            this.f2563r.run();
        } else {
            a0.j0(this.f2562q, this.f2563r, i10);
        }
        this.f2571z = true;
    }

    private float e(int i10, float f10, float f11, float f12) {
        float fR = r(this.f2564s[i10], f11, this.f2565t[i10], f10);
        if (fR == 0.0f) {
            return 0.0f;
        }
        float f13 = this.f2568w[i10];
        float f14 = this.f2569x[i10];
        float f15 = this.f2570y[i10];
        float f16 = f13 * f12;
        return fR > 0.0f ? o(fR * f16, f14, f15) : -o((-fR) * f16, f14, f15);
    }

    static float o(float f10, float f11, float f12) {
        return f10 > f12 ? f12 : f10 < f11 ? f11 : f10;
    }

    static int p(int i10, int i11, int i12) {
        return i10 > i12 ? i12 : i10 < i11 ? i11 : i10;
    }

    private float q(float f10, float f11) {
        if (f11 == 0.0f) {
            return 0.0f;
        }
        int i10 = this.f2566u;
        if (i10 == 0 || i10 == 1) {
            if (f10 < f11) {
                if (f10 >= 0.0f) {
                    return 1.0f - (f10 / f11);
                }
                if (this.C && i10 == 1) {
                    return 1.0f;
                }
            }
        } else if (i10 == 2 && f10 < 0.0f) {
            return f10 / (-f11);
        }
        return 0.0f;
    }

    private float r(float f10, float f11, float f12, float f13) {
        float interpolation;
        float fO = o(f10 * f11, 0.0f, f12);
        float fQ = q(f11 - f13, fO) - q(f13, fO);
        if (fQ < 0.0f) {
            interpolation = -this.f2561p.getInterpolation(-fQ);
        } else {
            if (fQ <= 0.0f) {
                return 0.0f;
            }
            interpolation = this.f2561p.getInterpolation(fQ);
        }
        return o(interpolation, -1.0f, 1.0f);
    }

    private void s() {
        if (this.A) {
            this.C = false;
        } else {
            this.f2560o.i();
        }
    }

    public a A(int i10) {
        this.f2560o.j(i10);
        return this;
    }

    public a B(int i10) {
        this.f2560o.k(i10);
        return this;
    }

    public a C(float f10, float f11) {
        float[] fArr = this.f2564s;
        fArr[0] = f10;
        fArr[1] = f11;
        return this;
    }

    public a D(float f10, float f11) {
        float[] fArr = this.f2568w;
        fArr[0] = f10 / 1000.0f;
        fArr[1] = f11 / 1000.0f;
        return this;
    }

    boolean E() {
        C0043a c0043a = this.f2560o;
        int iF = c0043a.f();
        int iD = c0043a.d();
        return (iF != 0 && b(iF)) || (iD != 0 && a(iD));
    }

    public abstract boolean a(int i10);

    public abstract boolean b(int i10);

    void d() {
        long jUptimeMillis = SystemClock.uptimeMillis();
        MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
        this.f2562q.onTouchEvent(motionEventObtain);
        motionEventObtain.recycle();
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.D
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r6 = 3
            if (r0 == r6) goto L16
            goto L58
        L16:
            r5.s()
            goto L58
        L1a:
            r5.B = r2
            r5.f2571z = r1
        L1e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.f2562q
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.e(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.f2562q
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.e(r2, r7, r6, r3)
            androidx.core.widget.a$a r7 = r5.f2560o
            r7.l(r0, r6)
            boolean r6 = r5.C
            if (r6 != 0) goto L58
            boolean r6 = r5.E()
            if (r6 == 0) goto L58
            r5.F()
        L58:
            boolean r6 = r5.E
            if (r6 == 0) goto L61
            boolean r6 = r5.C
            if (r6 == 0) goto L61
            r1 = 1
        L61:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.core.widget.a.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    public abstract void t(int i10, int i11);

    public a u(int i10) {
        this.f2567v = i10;
        return this;
    }

    public a v(int i10) {
        this.f2566u = i10;
        return this;
    }

    public a w(boolean z10) {
        if (this.D && !z10) {
            s();
        }
        this.D = z10;
        return this;
    }

    public a x(float f10, float f11) {
        float[] fArr = this.f2565t;
        fArr[0] = f10;
        fArr[1] = f11;
        return this;
    }

    public a y(float f10, float f11) {
        float[] fArr = this.f2570y;
        fArr[0] = f10 / 1000.0f;
        fArr[1] = f11 / 1000.0f;
        return this;
    }

    public a z(float f10, float f11) {
        float[] fArr = this.f2569x;
        fArr[0] = f10 / 1000.0f;
        fArr[1] = f11 / 1000.0f;
        return this;
    }
}
