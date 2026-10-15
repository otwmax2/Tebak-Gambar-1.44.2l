package androidx.constraintlayout.motion.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Interpolator;
import androidx.constraintlayout.motion.widget.l;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.core.view.r;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: compiled from: MotionLayout.java */
/* JADX INFO: loaded from: classes.dex */
public class j extends ConstraintLayout implements r {
    public static boolean L0;
    private q.c A0;
    private boolean B0;
    private c C0;
    private Runnable D0;
    private int[] E0;
    int F0;
    private int G0;
    private boolean H0;
    e I0;
    private boolean J0;
    ArrayList<Integer> K0;
    l M;
    Interpolator N;
    Interpolator O;
    float P;
    private int Q;
    int R;
    private int S;
    private boolean T;
    HashMap<View, g> U;
    private long V;
    private float W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    float f1401a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    float f1402b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private long f1403c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    float f1404d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    private boolean f1405e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    boolean f1406f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private d f1407g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    int f1408h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private boolean f1409i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private u.b f1410j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private androidx.constraintlayout.motion.widget.b f1411k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    boolean f1412l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    float f1413m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    float f1414n0;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    long f1415o0;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    float f1416p0;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private boolean f1417q0;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private ArrayList<h> f1418r0;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private ArrayList<h> f1419s0;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    private ArrayList<h> f1420t0;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    private CopyOnWriteArrayList<d> f1421u0;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    private int f1422v0;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    private float f1423w0;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    boolean f1424x0;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    protected boolean f1425y0;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    float f1426z0;

    /* JADX INFO: compiled from: MotionLayout.java */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            j.this.C0.a();
        }
    }

    /* JADX INFO: compiled from: MotionLayout.java */
    static /* synthetic */ class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1428a;

        static {
            int[] iArr = new int[e.values().length];
            f1428a = iArr;
            try {
                iArr[e.UNDEFINED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1428a[e.SETUP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1428a[e.MOVING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1428a[e.FINISHED.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: compiled from: MotionLayout.java */
    class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        float f1429a = Float.NaN;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        float f1430b = Float.NaN;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f1431c = -1;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f1432d = -1;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final String f1433e = "motion.progress";

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        final String f1434f = "motion.velocity";

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        final String f1435g = "motion.StartState";

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        final String f1436h = "motion.EndState";

        c() {
        }

        void a() {
            int i10 = this.f1431c;
            if (i10 != -1 || this.f1432d != -1) {
                if (i10 == -1) {
                    j.this.O(this.f1432d);
                } else {
                    int i11 = this.f1432d;
                    if (i11 == -1) {
                        j.this.L(i10, -1, -1);
                    } else {
                        j.this.M(i10, i11);
                    }
                }
                j.this.setState(e.SETUP);
            }
            if (Float.isNaN(this.f1430b)) {
                if (Float.isNaN(this.f1429a)) {
                    return;
                }
                j.this.setProgress(this.f1429a);
            } else {
                j.this.K(this.f1429a, this.f1430b);
                this.f1429a = Float.NaN;
                this.f1430b = Float.NaN;
                this.f1431c = -1;
                this.f1432d = -1;
            }
        }

        public Bundle b() {
            Bundle bundle = new Bundle();
            bundle.putFloat("motion.progress", this.f1429a);
            bundle.putFloat("motion.velocity", this.f1430b);
            bundle.putInt("motion.StartState", this.f1431c);
            bundle.putInt("motion.EndState", this.f1432d);
            return bundle;
        }

        public void c() {
            this.f1432d = j.this.S;
            this.f1431c = j.this.Q;
            this.f1430b = j.this.getVelocity();
            this.f1429a = j.this.getProgress();
        }

        public void d(int i10) {
            this.f1432d = i10;
        }

        public void e(float f10) {
            this.f1429a = f10;
        }

        public void f(int i10) {
            this.f1431c = i10;
        }

        public void g(Bundle bundle) {
            this.f1429a = bundle.getFloat("motion.progress");
            this.f1430b = bundle.getFloat("motion.velocity");
            this.f1431c = bundle.getInt("motion.StartState");
            this.f1432d = bundle.getInt("motion.EndState");
        }

        public void h(float f10) {
            this.f1430b = f10;
        }
    }

    /* JADX INFO: compiled from: MotionLayout.java */
    public interface d {
        void a(j jVar, int i10, int i11, float f10);

        void b(j jVar, int i10, int i11);

        void c(j jVar, int i10);
    }

    /* JADX INFO: compiled from: MotionLayout.java */
    enum e {
        UNDEFINED,
        SETUP,
        MOVING,
        FINISHED
    }

    private void G() {
        CopyOnWriteArrayList<d> copyOnWriteArrayList;
        if ((this.f1407g0 == null && ((copyOnWriteArrayList = this.f1421u0) == null || copyOnWriteArrayList.isEmpty())) || this.f1423w0 == this.f1401a0) {
            return;
        }
        if (this.f1422v0 != -1) {
            d dVar = this.f1407g0;
            if (dVar != null) {
                dVar.b(this, this.Q, this.S);
            }
            CopyOnWriteArrayList<d> copyOnWriteArrayList2 = this.f1421u0;
            if (copyOnWriteArrayList2 != null) {
                Iterator<d> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    it.next().b(this, this.Q, this.S);
                }
            }
            this.f1424x0 = true;
        }
        this.f1422v0 = -1;
        float f10 = this.f1401a0;
        this.f1423w0 = f10;
        d dVar2 = this.f1407g0;
        if (dVar2 != null) {
            dVar2.a(this, this.Q, this.S, f10);
        }
        CopyOnWriteArrayList<d> copyOnWriteArrayList3 = this.f1421u0;
        if (copyOnWriteArrayList3 != null) {
            Iterator<d> it2 = copyOnWriteArrayList3.iterator();
            while (it2.hasNext()) {
                it2.next().a(this, this.Q, this.S, this.f1401a0);
            }
        }
        this.f1424x0 = true;
    }

    private void J() {
        CopyOnWriteArrayList<d> copyOnWriteArrayList;
        if (this.f1407g0 == null && ((copyOnWriteArrayList = this.f1421u0) == null || copyOnWriteArrayList.isEmpty())) {
            return;
        }
        this.f1424x0 = false;
        for (Integer num : this.K0) {
            d dVar = this.f1407g0;
            if (dVar != null) {
                dVar.c(this, num.intValue());
            }
            CopyOnWriteArrayList<d> copyOnWriteArrayList2 = this.f1421u0;
            if (copyOnWriteArrayList2 != null) {
                Iterator<d> it = copyOnWriteArrayList2.iterator();
                while (it.hasNext()) {
                    it.next().c(this, num.intValue());
                }
            }
        }
        this.K0.clear();
    }

    void E(float f10) {
    }

    void F(boolean z10) {
        boolean z11;
        int i10;
        float interpolation;
        boolean z12;
        boolean z13;
        if (this.f1403c0 == -1) {
            this.f1403c0 = getNanoTime();
        }
        float f10 = this.f1402b0;
        if (f10 > 0.0f && f10 < 1.0f) {
            this.R = -1;
        }
        if (this.f1417q0 || (this.f1406f0 && (z10 || this.f1404d0 != f10))) {
            float fSignum = Math.signum(this.f1404d0 - f10);
            long nanoTime = getNanoTime();
            Interpolator interpolator = this.N;
            float f11 = !(interpolator instanceof i) ? (((nanoTime - this.f1403c0) * fSignum) * 1.0E-9f) / this.W : 0.0f;
            float f12 = this.f1402b0 + f11;
            if (this.f1405e0) {
                f12 = this.f1404d0;
            }
            if ((fSignum <= 0.0f || f12 < this.f1404d0) && (fSignum > 0.0f || f12 > this.f1404d0)) {
                z11 = false;
            } else {
                f12 = this.f1404d0;
                this.f1406f0 = false;
                z11 = true;
            }
            this.f1402b0 = f12;
            this.f1401a0 = f12;
            this.f1403c0 = nanoTime;
            if (interpolator == null || z11) {
                this.P = f11;
            } else {
                if (this.f1409i0) {
                    interpolation = interpolator.getInterpolation((nanoTime - this.V) * 1.0E-9f);
                    Interpolator interpolator2 = this.N;
                    if (interpolator2 == this.f1410j0) {
                        throw null;
                    }
                    this.f1402b0 = interpolation;
                    this.f1403c0 = nanoTime;
                    if (interpolator2 instanceof i) {
                        float fA = ((i) interpolator2).a();
                        this.P = fA;
                        int i11 = ((Math.abs(fA) * this.W) > 1.0E-5f ? 1 : ((Math.abs(fA) * this.W) == 1.0E-5f ? 0 : -1));
                        if (fA > 0.0f && interpolation >= 1.0f) {
                            this.f1402b0 = 1.0f;
                            this.f1406f0 = false;
                            interpolation = 1.0f;
                        }
                        if (fA < 0.0f && interpolation <= 0.0f) {
                            this.f1402b0 = 0.0f;
                            this.f1406f0 = false;
                            f12 = 0.0f;
                        }
                    }
                } else {
                    interpolation = interpolator.getInterpolation(f12);
                    Interpolator interpolator3 = this.N;
                    if (interpolator3 instanceof i) {
                        this.P = ((i) interpolator3).a();
                    } else {
                        this.P = ((interpolator3.getInterpolation(f12 + f11) - interpolation) * fSignum) / f11;
                    }
                }
                f12 = interpolation;
            }
            if (Math.abs(this.P) > 1.0E-5f) {
                setState(e.MOVING);
            }
            if ((fSignum > 0.0f && f12 >= this.f1404d0) || (fSignum <= 0.0f && f12 <= this.f1404d0)) {
                f12 = this.f1404d0;
                this.f1406f0 = false;
            }
            if (f12 >= 1.0f || f12 <= 0.0f) {
                this.f1406f0 = false;
                setState(e.FINISHED);
            }
            int childCount = getChildCount();
            this.f1417q0 = false;
            long nanoTime2 = getNanoTime();
            this.f1426z0 = f12;
            Interpolator interpolator4 = this.O;
            float interpolation2 = interpolator4 == null ? f12 : interpolator4.getInterpolation(f12);
            Interpolator interpolator5 = this.O;
            if (interpolator5 != null) {
                float interpolation3 = interpolator5.getInterpolation((fSignum / this.W) + f12);
                this.P = interpolation3;
                this.P = interpolation3 - this.O.getInterpolation(f12);
            }
            for (int i12 = 0; i12 < childCount; i12++) {
                View childAt = getChildAt(i12);
                g gVar = this.U.get(childAt);
                if (gVar != null) {
                    this.f1417q0 = gVar.c(childAt, interpolation2, nanoTime2, this.A0) | this.f1417q0;
                }
            }
            boolean z14 = (fSignum > 0.0f && f12 >= this.f1404d0) || (fSignum <= 0.0f && f12 <= this.f1404d0);
            if (!this.f1417q0 && !this.f1406f0 && z14) {
                setState(e.FINISHED);
            }
            if (this.f1425y0) {
                requestLayout();
            }
            boolean z15 = (!z14) | this.f1417q0;
            this.f1417q0 = z15;
            if (f12 <= 0.0f && (i10 = this.Q) != -1 && this.R != i10) {
                this.R = i10;
                throw null;
            }
            if (f12 >= 1.0d) {
                int i13 = this.R;
                int i14 = this.S;
                if (i13 != i14) {
                    this.R = i14;
                    throw null;
                }
            }
            if (z15 || this.f1406f0) {
                invalidate();
            } else if ((fSignum > 0.0f && f12 == 1.0f) || (fSignum < 0.0f && f12 == 0.0f)) {
                setState(e.FINISHED);
            }
            if (!this.f1417q0 && !this.f1406f0 && ((fSignum > 0.0f && f12 == 1.0f) || (fSignum < 0.0f && f12 == 0.0f))) {
                I();
            }
        }
        float f13 = this.f1402b0;
        if (f13 >= 1.0f) {
            int i15 = this.R;
            int i16 = this.S;
            z13 = i15 != i16;
            this.R = i16;
        } else {
            if (f13 > 0.0f) {
                z12 = false;
                this.J0 |= z12;
                if (z12 && !this.B0) {
                    requestLayout();
                }
                this.f1401a0 = this.f1402b0;
            }
            int i17 = this.R;
            int i18 = this.Q;
            z13 = i17 != i18;
            this.R = i18;
        }
        z12 = z13;
        this.J0 |= z12;
        if (z12) {
            requestLayout();
        }
        this.f1401a0 = this.f1402b0;
    }

    protected void H() {
        int iIntValue;
        CopyOnWriteArrayList<d> copyOnWriteArrayList;
        if ((this.f1407g0 != null || ((copyOnWriteArrayList = this.f1421u0) != null && !copyOnWriteArrayList.isEmpty())) && this.f1422v0 == -1) {
            this.f1422v0 = this.R;
            if (this.K0.isEmpty()) {
                iIntValue = -1;
            } else {
                ArrayList<Integer> arrayList = this.K0;
                iIntValue = arrayList.get(arrayList.size() - 1).intValue();
            }
            int i10 = this.R;
            if (iIntValue != i10 && i10 != -1) {
                this.K0.add(Integer.valueOf(i10));
            }
        }
        J();
        Runnable runnable = this.D0;
        if (runnable != null) {
            runnable.run();
        }
        int[] iArr = this.E0;
        if (iArr == null || this.F0 <= 0) {
            return;
        }
        O(iArr[0]);
        int[] iArr2 = this.E0;
        System.arraycopy(iArr2, 1, iArr2, 0, iArr2.length - 1);
        this.F0--;
    }

    void I() {
    }

    public void K(float f10, float f11) {
        if (!isAttachedToWindow()) {
            if (this.C0 == null) {
                this.C0 = new c();
            }
            this.C0.e(f10);
            this.C0.h(f11);
            return;
        }
        setProgress(f10);
        setState(e.MOVING);
        this.P = f11;
        if (f11 != 0.0f) {
            E(f11 <= 0.0f ? 0.0f : 1.0f);
        } else {
            if (f10 == 0.0f || f10 == 1.0f) {
                return;
            }
            E(f10 <= 0.5f ? 0.0f : 1.0f);
        }
    }

    public void L(int i10, int i11, int i12) {
        setState(e.SETUP);
        this.R = i10;
        this.Q = -1;
        this.S = -1;
        androidx.constraintlayout.widget.c cVar = this.f1468y;
        if (cVar != null) {
            cVar.d(i10, i11, i12);
        }
    }

    public void M(int i10, int i11) {
        if (isAttachedToWindow()) {
            return;
        }
        if (this.C0 == null) {
            this.C0 = new c();
        }
        this.C0.f(i10);
        this.C0.d(i11);
    }

    public void N() {
        E(1.0f);
        this.D0 = null;
    }

    public void O(int i10) {
        if (isAttachedToWindow()) {
            P(i10, -1, -1);
            return;
        }
        if (this.C0 == null) {
            this.C0 = new c();
        }
        this.C0.d(i10);
    }

    public void P(int i10, int i11, int i12) {
        Q(i10, i11, i12, -1);
    }

    public void Q(int i10, int i11, int i12, int i13) {
        int i14 = this.R;
        if (i14 == i10) {
            return;
        }
        if (this.Q == i10) {
            E(0.0f);
            if (i13 > 0) {
                this.W = i13 / 1000.0f;
                return;
            }
            return;
        }
        if (this.S == i10) {
            E(1.0f);
            if (i13 > 0) {
                this.W = i13 / 1000.0f;
                return;
            }
            return;
        }
        this.S = i10;
        if (i14 != -1) {
            M(i14, i10);
            E(1.0f);
            this.f1402b0 = 0.0f;
            N();
            if (i13 > 0) {
                this.W = i13 / 1000.0f;
                return;
            }
            return;
        }
        this.f1409i0 = false;
        this.f1404d0 = 1.0f;
        this.f1401a0 = 0.0f;
        this.f1402b0 = 0.0f;
        this.f1403c0 = getNanoTime();
        this.V = getNanoTime();
        this.f1405e0 = false;
        this.N = null;
        if (i13 == -1) {
            throw null;
        }
        this.Q = -1;
        throw null;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void dispatchDraw(Canvas canvas) {
        ArrayList<h> arrayList = this.f1420t0;
        if (arrayList != null) {
            Iterator<h> it = arrayList.iterator();
            while (it.hasNext()) {
                it.next().w(canvas);
            }
        }
        F(false);
        super.dispatchDraw(canvas);
    }

    public int[] getConstraintSetIds() {
        return null;
    }

    public int getCurrentState() {
        return this.R;
    }

    public ArrayList<l.a> getDefinedTransitions() {
        return null;
    }

    public androidx.constraintlayout.motion.widget.b getDesignTool() {
        if (this.f1411k0 == null) {
            this.f1411k0 = new androidx.constraintlayout.motion.widget.b(this);
        }
        return this.f1411k0;
    }

    public int getEndState() {
        return this.S;
    }

    protected long getNanoTime() {
        return System.nanoTime();
    }

    public float getProgress() {
        return this.f1402b0;
    }

    public l getScene() {
        return this.M;
    }

    public int getStartState() {
        return this.Q;
    }

    public float getTargetPosition() {
        return this.f1404d0;
    }

    public Bundle getTransitionState() {
        if (this.C0 == null) {
            this.C0 = new c();
        }
        this.C0.c();
        return this.C0.b();
    }

    public long getTransitionTimeMs() {
        return (long) (this.W * 1000.0f);
    }

    public float getVelocity() {
        return this.P;
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return Build.VERSION.SDK_INT >= 19 ? super.isAttachedToWindow() : getWindowToken() != null;
    }

    @Override // androidx.core.view.r
    public void j(View view, int i10, int i11, int i12, int i13, int i14, int[] iArr) {
        if (this.f1412l0 || i10 != 0 || i11 != 0) {
            iArr[0] = iArr[0] + i12;
            iArr[1] = iArr[1] + i13;
        }
        this.f1412l0 = false;
    }

    @Override // androidx.core.view.q
    public void k(View view, int i10, int i11, int i12, int i13, int i14) {
    }

    @Override // androidx.core.view.q
    public boolean l(View view, View view2, int i10, int i11) {
        return false;
    }

    @Override // androidx.core.view.q
    public void m(View view, View view2, int i10, int i11) {
        this.f1415o0 = getNanoTime();
        this.f1416p0 = 0.0f;
        this.f1413m0 = 0.0f;
        this.f1414n0 = 0.0f;
    }

    @Override // androidx.core.view.q
    public void n(View view, int i10) {
    }

    @Override // androidx.core.view.q
    public void o(View view, int i10, int i11, int[] iArr, int i12) {
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        Display display;
        super.onAttachedToWindow();
        if (Build.VERSION.SDK_INT >= 17 && (display = getDisplay()) != null) {
            this.G0 = display.getRotation();
        }
        I();
        c cVar = this.C0;
        if (cVar != null) {
            if (this.H0) {
                post(new a());
            } else {
                cVar.a();
            }
        }
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        return false;
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        this.B0 = true;
        try {
            super.onLayout(z10, i10, i11, i12, i13);
        } finally {
            this.B0 = false;
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View
    protected void onMeasure(int i10, int i11) {
        super.onMeasure(i10, i11);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.s
    public boolean onNestedFling(View view, float f10, float f11, boolean z10) {
        return false;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent, androidx.core.view.s
    public boolean onNestedPreFling(View view, float f10, float f11) {
        return false;
    }

    @Override // android.view.View
    public void onRtlPropertiesChanged(int i10) {
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        return super.onTouchEvent(motionEvent);
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        if (view instanceof h) {
            h hVar = (h) view;
            if (this.f1421u0 == null) {
                this.f1421u0 = new CopyOnWriteArrayList<>();
            }
            this.f1421u0.add(hVar);
            if (hVar.v()) {
                if (this.f1418r0 == null) {
                    this.f1418r0 = new ArrayList<>();
                }
                this.f1418r0.add(hVar);
            }
            if (hVar.u()) {
                if (this.f1419s0 == null) {
                    this.f1419s0 = new ArrayList<>();
                }
                this.f1419s0.add(hVar);
            }
            if (hVar.t()) {
                if (this.f1420t0 == null) {
                    this.f1420t0 = new ArrayList<>();
                }
                this.f1420t0.add(hVar);
            }
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        ArrayList<h> arrayList = this.f1418r0;
        if (arrayList != null) {
            arrayList.remove(view);
        }
        ArrayList<h> arrayList2 = this.f1419s0;
        if (arrayList2 != null) {
            arrayList2.remove(view);
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout, android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (!this.f1425y0) {
            int i10 = this.R;
        }
        super.requestLayout();
    }

    public void setDebugMode(int i10) {
        this.f1408h0 = i10;
        invalidate();
    }

    public void setDelayedApplicationOfInitialState(boolean z10) {
        this.H0 = z10;
    }

    public void setInteractionEnabled(boolean z10) {
        this.T = z10;
    }

    public void setInterpolatedProgress(float f10) {
        setProgress(f10);
    }

    public void setOnHide(float f10) {
        ArrayList<h> arrayList = this.f1419s0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f1419s0.get(i10).setProgress(f10);
            }
        }
    }

    public void setOnShow(float f10) {
        ArrayList<h> arrayList = this.f1418r0;
        if (arrayList != null) {
            int size = arrayList.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f1418r0.get(i10).setProgress(f10);
            }
        }
    }

    public void setProgress(float f10) {
        if (f10 < 0.0f || f10 > 1.0f) {
            Log.w("MotionLayout", "Warning! Progress is defined for values between 0.0 and 1.0 inclusive");
        }
        if (!isAttachedToWindow()) {
            if (this.C0 == null) {
                this.C0 = new c();
            }
            this.C0.e(f10);
            return;
        }
        if (f10 <= 0.0f) {
            if (this.f1402b0 == 1.0f && this.R == this.S) {
                setState(e.MOVING);
            }
            this.R = this.Q;
            if (this.f1402b0 == 0.0f) {
                setState(e.FINISHED);
                return;
            }
            return;
        }
        if (f10 < 1.0f) {
            this.R = -1;
            setState(e.MOVING);
            return;
        }
        if (this.f1402b0 == 0.0f && this.R == this.Q) {
            setState(e.MOVING);
        }
        this.R = this.S;
        if (this.f1402b0 == 1.0f) {
            setState(e.FINISHED);
        }
    }

    public void setScene(l lVar) {
        r();
        throw null;
    }

    void setStartState(int i10) {
        if (isAttachedToWindow()) {
            this.R = i10;
            return;
        }
        if (this.C0 == null) {
            this.C0 = new c();
        }
        this.C0.f(i10);
        this.C0.d(i10);
    }

    void setState(e eVar) {
        e eVar2 = e.FINISHED;
        if (eVar == eVar2 && this.R == -1) {
            return;
        }
        e eVar3 = this.I0;
        this.I0 = eVar;
        e eVar4 = e.MOVING;
        if (eVar3 == eVar4 && eVar == eVar4) {
            G();
        }
        int i10 = b.f1428a[eVar3.ordinal()];
        if (i10 != 1 && i10 != 2) {
            if (i10 == 3 && eVar == eVar2) {
                H();
                return;
            }
            return;
        }
        if (eVar == eVar4) {
            G();
        }
        if (eVar == eVar2) {
            H();
        }
    }

    public void setTransition(int i10) {
    }

    protected void setTransition(l.a aVar) {
        throw null;
    }

    public void setTransitionDuration(int i10) {
        Log.e("MotionLayout", "MotionScene not defined");
    }

    public void setTransitionListener(d dVar) {
        this.f1407g0 = dVar;
    }

    public void setTransitionState(Bundle bundle) {
        if (this.C0 == null) {
            this.C0 = new c();
        }
        this.C0.g(bundle);
        if (isAttachedToWindow()) {
            this.C0.a();
        }
    }

    @Override // androidx.constraintlayout.widget.ConstraintLayout
    protected void t(int i10) {
        this.f1468y = null;
    }

    @Override // android.view.View
    public String toString() {
        Context context = getContext();
        return androidx.constraintlayout.motion.widget.a.a(context, this.Q) + "->" + androidx.constraintlayout.motion.widget.a.a(context, this.S) + " (pos:" + this.f1402b0 + " Dpos/Dt:" + this.P;
    }
}
