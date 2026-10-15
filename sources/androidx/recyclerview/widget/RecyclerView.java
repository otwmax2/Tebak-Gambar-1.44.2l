package androidx.recyclerview.widget;

import android.R;
import android.animation.LayoutTransition;
import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.Observable;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.StateListDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.view.Display;
import android.view.FocusFinder;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import android.view.animation.Interpolator;
import android.widget.EdgeEffect;
import android.widget.OverScroller;
import androidx.core.view.accessibility.c;
import androidx.recyclerview.widget.a;
import androidx.recyclerview.widget.b;
import androidx.recyclerview.widget.e;
import androidx.recyclerview.widget.k;
import androidx.recyclerview.widget.o;
import androidx.recyclerview.widget.p;
import com.facebook.internal.Utility;
import com.vungle.mediation.BuildConfig;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class RecyclerView extends ViewGroup implements androidx.core.view.o {
    private static final int[] Q0 = {R.attr.nestedScrollingEnabled};
    static final boolean R0;
    static final boolean S0;
    static final boolean T0;
    static final boolean U0;
    private static final boolean V0;
    private static final boolean W0;
    private static final Class<?>[] X0;
    static final Interpolator Y0;
    p A;
    boolean A0;
    x B;
    private m.b B0;
    final List<x> C;
    boolean C0;
    final ArrayList<o> D;
    androidx.recyclerview.widget.k D0;
    private final ArrayList<t> E;
    private k E0;
    private t F;
    private final int[] F0;
    boolean G;
    private androidx.core.view.p G0;
    boolean H;
    private final int[] H0;
    boolean I;
    private final int[] I0;
    boolean J;
    final int[] J0;
    private int K;
    final List<e0> K0;
    boolean L;
    private Runnable L0;
    boolean M;
    private boolean M0;
    private boolean N;
    private int N0;
    private int O;
    private int O0;
    boolean P;
    private final p.b P0;
    private final AccessibilityManager Q;
    private List<r> R;
    boolean S;
    boolean T;
    private int U;
    private int V;
    private l W;

    /* JADX INFO: renamed from: a0, reason: collision with root package name */
    private EdgeEffect f3646a0;

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    private EdgeEffect f3647b0;

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    private EdgeEffect f3648c0;

    /* JADX INFO: renamed from: d0, reason: collision with root package name */
    private EdgeEffect f3649d0;

    /* JADX INFO: renamed from: e0, reason: collision with root package name */
    m f3650e0;

    /* JADX INFO: renamed from: f0, reason: collision with root package name */
    private int f3651f0;

    /* JADX INFO: renamed from: g0, reason: collision with root package name */
    private int f3652g0;

    /* JADX INFO: renamed from: h0, reason: collision with root package name */
    private VelocityTracker f3653h0;

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    private int f3654i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    private int f3655j0;

    /* JADX INFO: renamed from: k0, reason: collision with root package name */
    private int f3656k0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    private int f3657l0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    private int f3658m0;

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    private s f3659n0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final y f3660o;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    private final int f3661o0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    final w f3662p;

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    private final int f3663p0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    z f3664q;

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    private float f3665q0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    androidx.recyclerview.widget.a f3666r;

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    private float f3667r0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    androidx.recyclerview.widget.b f3668s;

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    private boolean f3669s0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    final androidx.recyclerview.widget.p f3670t;

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    final d0 f3671t0;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    boolean f3672u;

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    androidx.recyclerview.widget.e f3673u0;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    final Runnable f3674v;

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    e.b f3675v0;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final Rect f3676w;

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    final b0 f3677w0;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private final Rect f3678x;

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    private u f3679x0;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    final RectF f3680y;

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    private List<u> f3681y0;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    h f3682z;

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    boolean f3683z0;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            RecyclerView recyclerView = RecyclerView.this;
            if (!recyclerView.J || recyclerView.isLayoutRequested()) {
                return;
            }
            RecyclerView recyclerView2 = RecyclerView.this;
            if (!recyclerView2.G) {
                recyclerView2.requestLayout();
            } else if (recyclerView2.M) {
                recyclerView2.L = true;
            } else {
                recyclerView2.u();
            }
        }
    }

    public static abstract class a0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private RecyclerView f3686b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private p f3687c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private boolean f3688d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f3689e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private View f3690f;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f3692h;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f3685a = -1;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final a f3691g = new a(0, 0);

        public static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private int f3693a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            private int f3694b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            private int f3695c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            private int f3696d;

            /* JADX INFO: renamed from: e, reason: collision with root package name */
            private Interpolator f3697e;

            /* JADX INFO: renamed from: f, reason: collision with root package name */
            private boolean f3698f;

            /* JADX INFO: renamed from: g, reason: collision with root package name */
            private int f3699g;

            public a(int i10, int i11) {
                this(i10, i11, Integer.MIN_VALUE, null);
            }

            private void e() {
                if (this.f3697e != null && this.f3695c < 1) {
                    throw new IllegalStateException("If you provide an interpolator, you must set a positive duration");
                }
                if (this.f3695c < 1) {
                    throw new IllegalStateException("Scroll duration must be a positive number");
                }
            }

            boolean a() {
                return this.f3696d >= 0;
            }

            public void b(int i10) {
                this.f3696d = i10;
            }

            void c(RecyclerView recyclerView) {
                int i10 = this.f3696d;
                if (i10 >= 0) {
                    this.f3696d = -1;
                    recyclerView.v0(i10);
                    this.f3698f = false;
                } else {
                    if (!this.f3698f) {
                        this.f3699g = 0;
                        return;
                    }
                    e();
                    recyclerView.f3671t0.e(this.f3693a, this.f3694b, this.f3695c, this.f3697e);
                    int i11 = this.f3699g + 1;
                    this.f3699g = i11;
                    if (i11 > 10) {
                        Log.e("RecyclerView", "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary");
                    }
                    this.f3698f = false;
                }
            }

            public void d(int i10, int i11, int i12, Interpolator interpolator) {
                this.f3693a = i10;
                this.f3694b = i11;
                this.f3695c = i12;
                this.f3697e = interpolator;
                this.f3698f = true;
            }

            public a(int i10, int i11, int i12, Interpolator interpolator) {
                this.f3696d = -1;
                this.f3698f = false;
                this.f3699g = 0;
                this.f3693a = i10;
                this.f3694b = i11;
                this.f3695c = i12;
                this.f3697e = interpolator;
            }
        }

        public interface b {
            PointF a(int i10);
        }

        public PointF a(int i10) {
            Object objE = e();
            if (objE instanceof b) {
                return ((b) objE).a(i10);
            }
            Log.w("RecyclerView", "You should override computeScrollVectorForPosition when the LayoutManager does not implement " + b.class.getCanonicalName());
            return null;
        }

        public View b(int i10) {
            return this.f3686b.A.C(i10);
        }

        public int c() {
            return this.f3686b.A.J();
        }

        public int d(View view) {
            return this.f3686b.d0(view);
        }

        public p e() {
            return this.f3687c;
        }

        public int f() {
            return this.f3685a;
        }

        public boolean g() {
            return this.f3688d;
        }

        public boolean h() {
            return this.f3689e;
        }

        protected void i(PointF pointF) {
            float f10 = pointF.x;
            float f11 = pointF.y;
            float fSqrt = (float) Math.sqrt((f10 * f10) + (f11 * f11));
            pointF.x /= fSqrt;
            pointF.y /= fSqrt;
        }

        void j(int i10, int i11) {
            PointF pointFA;
            RecyclerView recyclerView = this.f3686b;
            if (this.f3685a == -1 || recyclerView == null) {
                r();
            }
            if (this.f3688d && this.f3690f == null && this.f3687c != null && (pointFA = a(this.f3685a)) != null) {
                float f10 = pointFA.x;
                if (f10 != 0.0f || pointFA.y != 0.0f) {
                    recyclerView.g1((int) Math.signum(f10), (int) Math.signum(pointFA.y), null);
                }
            }
            this.f3688d = false;
            View view = this.f3690f;
            if (view != null) {
                if (d(view) == this.f3685a) {
                    o(this.f3690f, recyclerView.f3677w0, this.f3691g);
                    this.f3691g.c(recyclerView);
                    r();
                } else {
                    Log.e("RecyclerView", "Passed over target position while smooth scrolling.");
                    this.f3690f = null;
                }
            }
            if (this.f3689e) {
                l(i10, i11, recyclerView.f3677w0, this.f3691g);
                boolean zA = this.f3691g.a();
                this.f3691g.c(recyclerView);
                if (zA && this.f3689e) {
                    this.f3688d = true;
                    recyclerView.f3671t0.d();
                }
            }
        }

        protected void k(View view) {
            if (d(view) == f()) {
                this.f3690f = view;
            }
        }

        protected abstract void l(int i10, int i11, b0 b0Var, a aVar);

        protected abstract void m();

        protected abstract void n();

        protected abstract void o(View view, b0 b0Var, a aVar);

        public void p(int i10) {
            this.f3685a = i10;
        }

        void q(RecyclerView recyclerView, p pVar) {
            recyclerView.f3671t0.f();
            if (this.f3692h) {
                Log.w("RecyclerView", "An instance of " + getClass().getSimpleName() + " was started more than once. Each instance of" + getClass().getSimpleName() + " is intended to only be used once. You should create a new instance for each use.");
            }
            this.f3686b = recyclerView;
            this.f3687c = pVar;
            int i10 = this.f3685a;
            if (i10 == -1) {
                throw new IllegalArgumentException("Invalid target position");
            }
            recyclerView.f3677w0.f3701a = i10;
            this.f3689e = true;
            this.f3688d = true;
            this.f3690f = b(f());
            m();
            this.f3686b.f3671t0.d();
            this.f3692h = true;
        }

        protected final void r() {
            if (this.f3689e) {
                this.f3689e = false;
                n();
                this.f3686b.f3677w0.f3701a = -1;
                this.f3690f = null;
                this.f3685a = -1;
                this.f3688d = false;
                this.f3687c.f1(this);
                this.f3687c = null;
                this.f3686b = null;
            }
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            m mVar = RecyclerView.this.f3650e0;
            if (mVar != null) {
                mVar.u();
            }
            RecyclerView.this.C0 = false;
        }
    }

    public static class b0 {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private SparseArray<Object> f3702b;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        int f3713m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        long f3714n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        int f3715o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        int f3716p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        int f3717q;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        int f3701a = -1;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f3703c = 0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f3704d = 0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        int f3705e = 1;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f3706f = 0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        boolean f3707g = false;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f3708h = false;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f3709i = false;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f3710j = false;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        boolean f3711k = false;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        boolean f3712l = false;

        void a(int i10) {
            if ((this.f3705e & i10) != 0) {
                return;
            }
            throw new IllegalStateException("Layout state should be one of " + Integer.toBinaryString(i10) + " but it is " + Integer.toBinaryString(this.f3705e));
        }

        public int b() {
            return this.f3708h ? this.f3703c - this.f3704d : this.f3706f;
        }

        public int c() {
            return this.f3701a;
        }

        public boolean d() {
            return this.f3701a != -1;
        }

        public boolean e() {
            return this.f3708h;
        }

        void f(h hVar) {
            this.f3705e = 1;
            this.f3706f = hVar.d();
            this.f3708h = false;
            this.f3709i = false;
            this.f3710j = false;
        }

        public boolean g() {
            return this.f3712l;
        }

        public String toString() {
            return "State{mTargetPosition=" + this.f3701a + ", mData=" + this.f3702b + ", mItemCount=" + this.f3706f + ", mIsMeasuring=" + this.f3710j + ", mPreviousLayoutItemCount=" + this.f3703c + ", mDeletedInvisibleItemCountSincePreviousLayout=" + this.f3704d + ", mStructureChanged=" + this.f3707g + ", mInPreLayout=" + this.f3708h + ", mRunSimpleAnimations=" + this.f3711k + ", mRunPredictiveAnimations=" + this.f3712l + '}';
        }
    }

    class c implements Interpolator {
        c() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    public static abstract class c0 {
    }

    class d implements p.b {
        d() {
        }

        @Override // androidx.recyclerview.widget.p.b
        public void a(e0 e0Var) {
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.A.m1(e0Var.f3727o, recyclerView.f3662p);
        }

        @Override // androidx.recyclerview.widget.p.b
        public void b(e0 e0Var, m.c cVar, m.c cVar2) {
            RecyclerView.this.l(e0Var, cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.p.b
        public void c(e0 e0Var, m.c cVar, m.c cVar2) {
            RecyclerView.this.f3662p.J(e0Var);
            RecyclerView.this.n(e0Var, cVar, cVar2);
        }

        @Override // androidx.recyclerview.widget.p.b
        public void d(e0 e0Var, m.c cVar, m.c cVar2) {
            e0Var.Q(false);
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.S) {
                if (recyclerView.f3650e0.b(e0Var, e0Var, cVar, cVar2)) {
                    RecyclerView.this.M0();
                }
            } else if (recyclerView.f3650e0.d(e0Var, cVar, cVar2)) {
                RecyclerView.this.M0();
            }
        }
    }

    class d0 implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f3719o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f3720p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        OverScroller f3721q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        Interpolator f3722r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private boolean f3723s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private boolean f3724t;

        d0() {
            Interpolator interpolator = RecyclerView.Y0;
            this.f3722r = interpolator;
            this.f3723s = false;
            this.f3724t = false;
            this.f3721q = new OverScroller(RecyclerView.this.getContext(), interpolator);
        }

        private int a(int i10, int i11) {
            int iAbs = Math.abs(i10);
            int iAbs2 = Math.abs(i11);
            boolean z10 = iAbs > iAbs2;
            RecyclerView recyclerView = RecyclerView.this;
            int width = z10 ? recyclerView.getWidth() : recyclerView.getHeight();
            if (!z10) {
                iAbs = iAbs2;
            }
            return Math.min((int) (((iAbs / width) + 1.0f) * 300.0f), 2000);
        }

        private void c() {
            RecyclerView.this.removeCallbacks(this);
            androidx.core.view.a0.i0(RecyclerView.this, this);
        }

        public void b(int i10, int i11) {
            RecyclerView.this.setScrollState(2);
            this.f3720p = 0;
            this.f3719o = 0;
            Interpolator interpolator = this.f3722r;
            Interpolator interpolator2 = RecyclerView.Y0;
            if (interpolator != interpolator2) {
                this.f3722r = interpolator2;
                this.f3721q = new OverScroller(RecyclerView.this.getContext(), interpolator2);
            }
            this.f3721q.fling(0, 0, i10, i11, Integer.MIN_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MAX_VALUE);
            d();
        }

        void d() {
            if (this.f3723s) {
                this.f3724t = true;
            } else {
                c();
            }
        }

        public void e(int i10, int i11, int i12, Interpolator interpolator) {
            if (i12 == Integer.MIN_VALUE) {
                i12 = a(i10, i11);
            }
            int i13 = i12;
            if (interpolator == null) {
                interpolator = RecyclerView.Y0;
            }
            if (this.f3722r != interpolator) {
                this.f3722r = interpolator;
                this.f3721q = new OverScroller(RecyclerView.this.getContext(), interpolator);
            }
            this.f3720p = 0;
            this.f3719o = 0;
            RecyclerView.this.setScrollState(2);
            this.f3721q.startScroll(0, 0, i10, i11, i13);
            if (Build.VERSION.SDK_INT < 23) {
                this.f3721q.computeScrollOffset();
            }
            d();
        }

        public void f() {
            RecyclerView.this.removeCallbacks(this);
            this.f3721q.abortAnimation();
        }

        @Override // java.lang.Runnable
        public void run() {
            int i10;
            int i11;
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.A == null) {
                f();
                return;
            }
            this.f3724t = false;
            this.f3723s = true;
            recyclerView.u();
            OverScroller overScroller = this.f3721q;
            if (overScroller.computeScrollOffset()) {
                int currX = overScroller.getCurrX();
                int currY = overScroller.getCurrY();
                int i12 = currX - this.f3719o;
                int i13 = currY - this.f3720p;
                this.f3719o = currX;
                this.f3720p = currY;
                RecyclerView recyclerView2 = RecyclerView.this;
                int[] iArr = recyclerView2.J0;
                iArr[0] = 0;
                iArr[1] = 0;
                if (recyclerView2.F(i12, i13, iArr, null, 1)) {
                    int[] iArr2 = RecyclerView.this.J0;
                    i12 -= iArr2[0];
                    i13 -= iArr2[1];
                }
                if (RecyclerView.this.getOverScrollMode() != 2) {
                    RecyclerView.this.t(i12, i13);
                }
                RecyclerView recyclerView3 = RecyclerView.this;
                if (recyclerView3.f3682z != null) {
                    int[] iArr3 = recyclerView3.J0;
                    iArr3[0] = 0;
                    iArr3[1] = 0;
                    recyclerView3.g1(i12, i13, iArr3);
                    RecyclerView recyclerView4 = RecyclerView.this;
                    int[] iArr4 = recyclerView4.J0;
                    i11 = iArr4[0];
                    i10 = iArr4[1];
                    i12 -= i11;
                    i13 -= i10;
                    a0 a0Var = recyclerView4.A.f3765g;
                    if (a0Var != null && !a0Var.g() && a0Var.h()) {
                        int iB = RecyclerView.this.f3677w0.b();
                        if (iB == 0) {
                            a0Var.r();
                        } else if (a0Var.f() >= iB) {
                            a0Var.p(iB - 1);
                            a0Var.j(i11, i10);
                        } else {
                            a0Var.j(i11, i10);
                        }
                    }
                } else {
                    i10 = 0;
                    i11 = 0;
                }
                if (!RecyclerView.this.D.isEmpty()) {
                    RecyclerView.this.invalidate();
                }
                RecyclerView recyclerView5 = RecyclerView.this;
                int[] iArr5 = recyclerView5.J0;
                iArr5[0] = 0;
                iArr5[1] = 0;
                recyclerView5.G(i11, i10, i12, i13, null, 1, iArr5);
                RecyclerView recyclerView6 = RecyclerView.this;
                int[] iArr6 = recyclerView6.J0;
                int i14 = i12 - iArr6[0];
                int i15 = i13 - iArr6[1];
                if (i11 != 0 || i10 != 0) {
                    recyclerView6.I(i11, i10);
                }
                if (!RecyclerView.this.awakenScrollBars()) {
                    RecyclerView.this.invalidate();
                }
                boolean z10 = overScroller.isFinished() || (((overScroller.getCurrX() == overScroller.getFinalX()) || i14 != 0) && ((overScroller.getCurrY() == overScroller.getFinalY()) || i15 != 0));
                a0 a0Var2 = RecyclerView.this.A.f3765g;
                if ((a0Var2 != null && a0Var2.g()) || !z10) {
                    d();
                    RecyclerView recyclerView7 = RecyclerView.this;
                    androidx.recyclerview.widget.e eVar = recyclerView7.f3673u0;
                    if (eVar != null) {
                        eVar.f(recyclerView7, i11, i10);
                    }
                } else {
                    if (RecyclerView.this.getOverScrollMode() != 2) {
                        int currVelocity = (int) overScroller.getCurrVelocity();
                        int i16 = i14 < 0 ? -currVelocity : i14 > 0 ? currVelocity : 0;
                        if (i15 < 0) {
                            currVelocity = -currVelocity;
                        } else if (i15 <= 0) {
                            currVelocity = 0;
                        }
                        RecyclerView.this.a(i16, currVelocity);
                    }
                    if (RecyclerView.U0) {
                        RecyclerView.this.f3675v0.b();
                    }
                }
            }
            a0 a0Var3 = RecyclerView.this.A.f3765g;
            if (a0Var3 != null && a0Var3.g()) {
                a0Var3.j(0, 0);
            }
            this.f3723s = false;
            if (this.f3724t) {
                c();
            } else {
                RecyclerView.this.setScrollState(0);
                RecyclerView.this.t1(1);
            }
        }
    }

    class e implements b.InterfaceC0062b {
        e() {
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0062b
        public View a(int i10) {
            return RecyclerView.this.getChildAt(i10);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0062b
        public void b(View view) {
            e0 e0VarF0 = RecyclerView.f0(view);
            if (e0VarF0 != null) {
                e0VarF0.L(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0062b
        public int c() {
            return RecyclerView.this.getChildCount();
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0062b
        public void d() {
            int iC = c();
            for (int i10 = 0; i10 < iC; i10++) {
                View viewA = a(i10);
                RecyclerView.this.z(viewA);
                viewA.clearAnimation();
            }
            RecyclerView.this.removeAllViews();
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0062b
        public int e(View view) {
            return RecyclerView.this.indexOfChild(view);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0062b
        public e0 f(View view) {
            return RecyclerView.f0(view);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0062b
        public void g(int i10) {
            e0 e0VarF0;
            View viewA = a(i10);
            if (viewA != null && (e0VarF0 = RecyclerView.f0(viewA)) != null) {
                if (e0VarF0.H() && !e0VarF0.T()) {
                    throw new IllegalArgumentException("called detach on an already detached child " + e0VarF0 + RecyclerView.this.P());
                }
                e0VarF0.b(256);
            }
            RecyclerView.this.detachViewFromParent(i10);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0062b
        public void h(View view) {
            e0 e0VarF0 = RecyclerView.f0(view);
            if (e0VarF0 != null) {
                e0VarF0.M(RecyclerView.this);
            }
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0062b
        public void i(View view, int i10) {
            RecyclerView.this.addView(view, i10);
            RecyclerView.this.y(view);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0062b
        public void j(int i10) {
            View childAt = RecyclerView.this.getChildAt(i10);
            if (childAt != null) {
                RecyclerView.this.z(childAt);
                childAt.clearAnimation();
            }
            RecyclerView.this.removeViewAt(i10);
        }

        @Override // androidx.recyclerview.widget.b.InterfaceC0062b
        public void k(View view, int i10, ViewGroup.LayoutParams layoutParams) {
            e0 e0VarF0 = RecyclerView.f0(view);
            if (e0VarF0 != null) {
                if (!e0VarF0.H() && !e0VarF0.T()) {
                    throw new IllegalArgumentException("Called attach on a child which is not detached: " + e0VarF0 + RecyclerView.this.P());
                }
                e0VarF0.p();
            }
            RecyclerView.this.attachViewToParent(view, i10, layoutParams);
        }
    }

    public static abstract class e0 {
        private static final List<Object> H = Collections.emptyList();
        RecyclerView F;
        h<? extends e0> G;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public final View f3727o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        WeakReference<RecyclerView> f3728p;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        int f3736x;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        int f3729q = -1;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        int f3730r = -1;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        long f3731s = -1;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        int f3732t = -1;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        int f3733u = -1;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        e0 f3734v = null;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        e0 f3735w = null;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        List<Object> f3737y = null;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        List<Object> f3738z = null;
        private int A = 0;
        w B = null;
        boolean C = false;
        private int D = 0;
        int E = -1;

        public e0(View view) {
            if (view == null) {
                throw new IllegalArgumentException("itemView may not be null");
            }
            this.f3727o = view;
        }

        private void q() {
            if (this.f3737y == null) {
                ArrayList arrayList = new ArrayList();
                this.f3737y = arrayList;
                this.f3738z = Collections.unmodifiableList(arrayList);
            }
        }

        boolean A() {
            return (this.f3736x & 512) != 0 || D();
        }

        boolean B() {
            return (this.f3727o.getParent() == null || this.f3727o.getParent() == this.F) ? false : true;
        }

        boolean C() {
            return (this.f3736x & 1) != 0;
        }

        boolean D() {
            return (this.f3736x & 4) != 0;
        }

        public final boolean E() {
            return (this.f3736x & 16) == 0 && !androidx.core.view.a0.R(this.f3727o);
        }

        boolean F() {
            return (this.f3736x & 8) != 0;
        }

        boolean G() {
            return this.B != null;
        }

        boolean H() {
            return (this.f3736x & 256) != 0;
        }

        boolean I() {
            return (this.f3736x & 2) != 0;
        }

        boolean J() {
            return (this.f3736x & 2) != 0;
        }

        void K(int i10, boolean z10) {
            if (this.f3730r == -1) {
                this.f3730r = this.f3729q;
            }
            if (this.f3733u == -1) {
                this.f3733u = this.f3729q;
            }
            if (z10) {
                this.f3733u += i10;
            }
            this.f3729q += i10;
            if (this.f3727o.getLayoutParams() != null) {
                ((q) this.f3727o.getLayoutParams()).f3785c = true;
            }
        }

        void L(RecyclerView recyclerView) {
            int i10 = this.E;
            if (i10 != -1) {
                this.D = i10;
            } else {
                this.D = androidx.core.view.a0.C(this.f3727o);
            }
            recyclerView.j1(this, 4);
        }

        void M(RecyclerView recyclerView) {
            recyclerView.j1(this, this.D);
            this.D = 0;
        }

        void N() {
            this.f3736x = 0;
            this.f3729q = -1;
            this.f3730r = -1;
            this.f3731s = -1L;
            this.f3733u = -1;
            this.A = 0;
            this.f3734v = null;
            this.f3735w = null;
            e();
            this.D = 0;
            this.E = -1;
            RecyclerView.r(this);
        }

        void O() {
            if (this.f3730r == -1) {
                this.f3730r = this.f3729q;
            }
        }

        void P(int i10, int i11) {
            this.f3736x = (i10 & i11) | (this.f3736x & (i11 ^ (-1)));
        }

        public final void Q(boolean z10) {
            int i10 = this.A;
            int i11 = z10 ? i10 - 1 : i10 + 1;
            this.A = i11;
            if (i11 < 0) {
                this.A = 0;
                Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
                return;
            }
            if (!z10 && i11 == 1) {
                this.f3736x |= 16;
            } else if (z10 && i11 == 0) {
                this.f3736x &= -17;
            }
        }

        void R(w wVar, boolean z10) {
            this.B = wVar;
            this.C = z10;
        }

        boolean S() {
            return (this.f3736x & 16) != 0;
        }

        boolean T() {
            return (this.f3736x & 128) != 0;
        }

        void U() {
            this.B.J(this);
        }

        boolean V() {
            return (this.f3736x & 32) != 0;
        }

        void a(Object obj) {
            if (obj == null) {
                b(1024);
            } else if ((1024 & this.f3736x) == 0) {
                q();
                this.f3737y.add(obj);
            }
        }

        void b(int i10) {
            this.f3736x = i10 | this.f3736x;
        }

        void d() {
            this.f3730r = -1;
            this.f3733u = -1;
        }

        void e() {
            List<Object> list = this.f3737y;
            if (list != null) {
                list.clear();
            }
            this.f3736x &= -1025;
        }

        void o() {
            this.f3736x &= -33;
        }

        void p() {
            this.f3736x &= -257;
        }

        boolean r() {
            return (this.f3736x & 16) == 0 && androidx.core.view.a0.R(this.f3727o);
        }

        void s(int i10, int i11, boolean z10) {
            b(8);
            K(i11, z10);
            this.f3729q = i10;
        }

        public final int t() {
            RecyclerView recyclerView = this.F;
            if (recyclerView == null) {
                return -1;
            }
            return recyclerView.b0(this);
        }

        public String toString() {
            StringBuilder sb = new StringBuilder((getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName()) + "{" + Integer.toHexString(hashCode()) + " position=" + this.f3729q + " id=" + this.f3731s + ", oldPos=" + this.f3730r + ", pLpos:" + this.f3733u);
            if (G()) {
                sb.append(" scrap ");
                sb.append(this.C ? "[changeScrap]" : "[attachedScrap]");
            }
            if (D()) {
                sb.append(" invalid");
            }
            if (!C()) {
                sb.append(" unbound");
            }
            if (J()) {
                sb.append(" update");
            }
            if (F()) {
                sb.append(" removed");
            }
            if (T()) {
                sb.append(" ignored");
            }
            if (H()) {
                sb.append(" tmpDetached");
            }
            if (!E()) {
                sb.append(" not recyclable(" + this.A + ")");
            }
            if (A()) {
                sb.append(" undefined adapter position");
            }
            if (this.f3727o.getParent() == null) {
                sb.append(" no parent");
            }
            sb.append("}");
            return sb.toString();
        }

        public final long u() {
            return this.f3731s;
        }

        public final int v() {
            return this.f3732t;
        }

        public final int w() {
            int i10 = this.f3733u;
            return i10 == -1 ? this.f3729q : i10;
        }

        public final int x() {
            return this.f3730r;
        }

        List<Object> y() {
            if ((this.f3736x & 1024) != 0) {
                return H;
            }
            List<Object> list = this.f3737y;
            return (list == null || list.size() == 0) ? H : this.f3738z;
        }

        boolean z(int i10) {
            return (i10 & this.f3736x) != 0;
        }
    }

    class f implements a.InterfaceC0061a {
        f() {
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0061a
        public void a(int i10, int i11) {
            RecyclerView.this.C0(i10, i11);
            RecyclerView.this.f3683z0 = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0061a
        public void b(a.b bVar) {
            i(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0061a
        public void c(int i10, int i11, Object obj) {
            RecyclerView.this.w1(i10, i11, obj);
            RecyclerView.this.A0 = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0061a
        public void d(a.b bVar) {
            i(bVar);
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0061a
        public e0 e(int i10) {
            e0 e0VarZ = RecyclerView.this.Z(i10, true);
            if (e0VarZ == null || RecyclerView.this.f3668s.n(e0VarZ.f3727o)) {
                return null;
            }
            return e0VarZ;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0061a
        public void f(int i10, int i11) {
            RecyclerView.this.D0(i10, i11, false);
            RecyclerView.this.f3683z0 = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0061a
        public void g(int i10, int i11) {
            RecyclerView.this.B0(i10, i11);
            RecyclerView.this.f3683z0 = true;
        }

        @Override // androidx.recyclerview.widget.a.InterfaceC0061a
        public void h(int i10, int i11) {
            RecyclerView.this.D0(i10, i11, true);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f3683z0 = true;
            recyclerView.f3677w0.f3704d += i11;
        }

        void i(a.b bVar) {
            int i10 = bVar.f3851a;
            if (i10 == 1) {
                RecyclerView recyclerView = RecyclerView.this;
                recyclerView.A.R0(recyclerView, bVar.f3852b, bVar.f3854d);
                return;
            }
            if (i10 == 2) {
                RecyclerView recyclerView2 = RecyclerView.this;
                recyclerView2.A.U0(recyclerView2, bVar.f3852b, bVar.f3854d);
            } else if (i10 == 4) {
                RecyclerView recyclerView3 = RecyclerView.this;
                recyclerView3.A.W0(recyclerView3, bVar.f3852b, bVar.f3854d, bVar.f3853c);
            } else {
                if (i10 != 8) {
                    return;
                }
                RecyclerView recyclerView4 = RecyclerView.this;
                recyclerView4.A.T0(recyclerView4, bVar.f3852b, bVar.f3854d, 1);
            }
        }
    }

    static /* synthetic */ class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f3740a;

        static {
            int[] iArr = new int[h.a.values().length];
            f3740a = iArr;
            try {
                iArr[h.a.PREVENT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f3740a[h.a.PREVENT_WHEN_EMPTY.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public static abstract class h<VH extends e0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final i f3741a = new i();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private boolean f3742b = false;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private a f3743c = a.ALLOW;

        public enum a {
            ALLOW,
            PREVENT_WHEN_EMPTY,
            PREVENT
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(VH vh, int i10) {
            boolean z10 = vh.G == null;
            if (z10) {
                vh.f3729q = i10;
                if (h()) {
                    vh.f3731s = e(i10);
                }
                vh.P(1, 519);
                androidx.core.os.m.a("RV OnBindView");
            }
            vh.G = this;
            l(vh, i10, vh.y());
            if (z10) {
                vh.e();
                ViewGroup.LayoutParams layoutParams = vh.f3727o.getLayoutParams();
                if (layoutParams instanceof q) {
                    ((q) layoutParams).f3785c = true;
                }
                androidx.core.os.m.b();
            }
        }

        boolean b() {
            int i10 = g.f3740a[this.f3743c.ordinal()];
            if (i10 != 1) {
                return i10 != 2 || d() > 0;
            }
            return false;
        }

        public final VH c(ViewGroup viewGroup, int i10) {
            try {
                androidx.core.os.m.a("RV CreateView");
                VH vh = (VH) m(viewGroup, i10);
                if (vh.f3727o.getParent() != null) {
                    throw new IllegalStateException("ViewHolder views must not be attached when created. Ensure that you are not passing 'true' to the attachToRoot parameter of LayoutInflater.inflate(..., boolean attachToRoot)");
                }
                vh.f3732t = i10;
                return vh;
            } finally {
                androidx.core.os.m.b();
            }
        }

        public abstract int d();

        public long e(int i10) {
            return -1L;
        }

        public int f(int i10) {
            return 0;
        }

        public final boolean g() {
            return this.f3741a.a();
        }

        public final boolean h() {
            return this.f3742b;
        }

        public final void i() {
            this.f3741a.b();
        }

        public void j(RecyclerView recyclerView) {
        }

        public abstract void k(VH vh, int i10);

        public void l(VH vh, int i10, List<Object> list) {
            k(vh, i10);
        }

        public abstract VH m(ViewGroup viewGroup, int i10);

        public void n(RecyclerView recyclerView) {
        }

        public boolean o(VH vh) {
            return false;
        }

        public void p(VH vh) {
        }

        public void q(VH vh) {
        }

        public void r(VH vh) {
        }

        public void s(j jVar) {
            this.f3741a.registerObserver(jVar);
        }

        public void t(boolean z10) {
            if (g()) {
                throw new IllegalStateException("Cannot change whether this adapter has stable IDs while the adapter has registered observers.");
            }
            this.f3742b = z10;
        }

        public void u(j jVar) {
            this.f3741a.unregisterObserver(jVar);
        }
    }

    static class i extends Observable<j> {
        i() {
        }

        public boolean a() {
            return !((Observable) this).mObservers.isEmpty();
        }

        public void b() {
            for (int size = ((Observable) this).mObservers.size() - 1; size >= 0; size--) {
                ((j) ((Observable) this).mObservers.get(size)).a();
            }
        }
    }

    public static abstract class j {
        public void a() {
        }
    }

    public interface k {
        int a(int i10, int i11);
    }

    public static class l {
        protected EdgeEffect a(RecyclerView recyclerView, int i10) {
            return new EdgeEffect(recyclerView.getContext());
        }
    }

    public static abstract class m {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private b f3748a = null;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private ArrayList<a> f3749b = new ArrayList<>();

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private long f3750c = 120;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private long f3751d = 120;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private long f3752e = 250;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private long f3753f = 250;

        public interface a {
            void a();
        }

        interface b {
            void a(e0 e0Var);
        }

        public static class c {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f3754a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f3755b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public int f3756c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public int f3757d;

            public c a(e0 e0Var) {
                return b(e0Var, 0);
            }

            public c b(e0 e0Var, int i10) {
                View view = e0Var.f3727o;
                this.f3754a = view.getLeft();
                this.f3755b = view.getTop();
                this.f3756c = view.getRight();
                this.f3757d = view.getBottom();
                return this;
            }
        }

        static int e(e0 e0Var) {
            int i10 = e0Var.f3736x & 14;
            if (e0Var.D()) {
                return 4;
            }
            if ((i10 & 4) != 0) {
                return i10;
            }
            int iX = e0Var.x();
            int iT = e0Var.t();
            return (iX == -1 || iT == -1 || iX == iT) ? i10 : i10 | 2048;
        }

        public abstract boolean a(e0 e0Var, c cVar, c cVar2);

        public abstract boolean b(e0 e0Var, e0 e0Var2, c cVar, c cVar2);

        public abstract boolean c(e0 e0Var, c cVar, c cVar2);

        public abstract boolean d(e0 e0Var, c cVar, c cVar2);

        public abstract boolean f(e0 e0Var);

        public boolean g(e0 e0Var, List<Object> list) {
            return f(e0Var);
        }

        public final void h(e0 e0Var) {
            r(e0Var);
            b bVar = this.f3748a;
            if (bVar != null) {
                bVar.a(e0Var);
            }
        }

        public final void i() {
            int size = this.f3749b.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f3749b.get(i10).a();
            }
            this.f3749b.clear();
        }

        public abstract void j(e0 e0Var);

        public abstract void k();

        public long l() {
            return this.f3750c;
        }

        public long m() {
            return this.f3753f;
        }

        public long n() {
            return this.f3752e;
        }

        public long o() {
            return this.f3751d;
        }

        public abstract boolean p();

        public c q() {
            return new c();
        }

        public void r(e0 e0Var) {
        }

        public c s(b0 b0Var, e0 e0Var) {
            return q().a(e0Var);
        }

        public c t(b0 b0Var, e0 e0Var, int i10, List<Object> list) {
            return q().a(e0Var);
        }

        public abstract void u();

        void v(b bVar) {
            this.f3748a = bVar;
        }
    }

    private class n implements m.b {
        n() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.m.b
        public void a(e0 e0Var) {
            e0Var.Q(true);
            if (e0Var.f3734v != null && e0Var.f3735w == null) {
                e0Var.f3734v = null;
            }
            e0Var.f3735w = null;
            if (e0Var.S() || RecyclerView.this.V0(e0Var.f3727o) || !e0Var.H()) {
                return;
            }
            RecyclerView.this.removeDetachedView(e0Var.f3727o, false);
        }
    }

    public static abstract class o {
        @Deprecated
        public void d(Rect rect, int i10, RecyclerView recyclerView) {
            rect.set(0, 0, 0, 0);
        }

        public void e(Rect rect, View view, RecyclerView recyclerView, b0 b0Var) {
            d(rect, ((q) view.getLayoutParams()).a(), recyclerView);
        }

        @Deprecated
        public void f(Canvas canvas, RecyclerView recyclerView) {
        }

        public void g(Canvas canvas, RecyclerView recyclerView, b0 b0Var) {
            f(canvas, recyclerView);
        }

        @Deprecated
        public void h(Canvas canvas, RecyclerView recyclerView) {
        }

        public void i(Canvas canvas, RecyclerView recyclerView, b0 b0Var) {
            h(canvas, recyclerView);
        }
    }

    public static abstract class p {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        androidx.recyclerview.widget.b f3759a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        RecyclerView f3760b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final o.b f3761c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final o.b f3762d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        androidx.recyclerview.widget.o f3763e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        androidx.recyclerview.widget.o f3764f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        a0 f3765g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        boolean f3766h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        boolean f3767i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        boolean f3768j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        private boolean f3769k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        private boolean f3770l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        int f3771m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        boolean f3772n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private int f3773o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private int f3774p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private int f3775q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private int f3776r;

        class a implements o.b {
            a() {
            }

            @Override // androidx.recyclerview.widget.o.b
            public View a(int i10) {
                return p.this.I(i10);
            }

            @Override // androidx.recyclerview.widget.o.b
            public int b(View view) {
                return p.this.Q(view) - ((ViewGroup.MarginLayoutParams) ((q) view.getLayoutParams())).leftMargin;
            }

            @Override // androidx.recyclerview.widget.o.b
            public int c() {
                return p.this.e0();
            }

            @Override // androidx.recyclerview.widget.o.b
            public int d() {
                return p.this.o0() - p.this.f0();
            }

            @Override // androidx.recyclerview.widget.o.b
            public int e(View view) {
                return p.this.T(view) + ((ViewGroup.MarginLayoutParams) ((q) view.getLayoutParams())).rightMargin;
            }
        }

        class b implements o.b {
            b() {
            }

            @Override // androidx.recyclerview.widget.o.b
            public View a(int i10) {
                return p.this.I(i10);
            }

            @Override // androidx.recyclerview.widget.o.b
            public int b(View view) {
                return p.this.U(view) - ((ViewGroup.MarginLayoutParams) ((q) view.getLayoutParams())).topMargin;
            }

            @Override // androidx.recyclerview.widget.o.b
            public int c() {
                return p.this.g0();
            }

            @Override // androidx.recyclerview.widget.o.b
            public int d() {
                return p.this.W() - p.this.d0();
            }

            @Override // androidx.recyclerview.widget.o.b
            public int e(View view) {
                return p.this.O(view) + ((ViewGroup.MarginLayoutParams) ((q) view.getLayoutParams())).bottomMargin;
            }
        }

        public interface c {
            void a(int i10, int i11);
        }

        public static class d {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public int f3779a;

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            public int f3780b;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            public boolean f3781c;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            public boolean f3782d;
        }

        public p() {
            a aVar = new a();
            this.f3761c = aVar;
            b bVar = new b();
            this.f3762d = bVar;
            this.f3763e = new androidx.recyclerview.widget.o(aVar);
            this.f3764f = new androidx.recyclerview.widget.o(bVar);
            this.f3766h = false;
            this.f3767i = false;
            this.f3768j = false;
            this.f3769k = true;
            this.f3770l = true;
        }

        public static int K(int i10, int i11, int i12, int i13, boolean z10) {
            int iMax = Math.max(0, i10 - i12);
            if (z10) {
                if (i13 < 0) {
                    if (i13 != -1 || (i11 != Integer.MIN_VALUE && (i11 == 0 || i11 != 1073741824))) {
                        i11 = 0;
                        i13 = 0;
                    } else {
                        i13 = iMax;
                    }
                }
                i11 = 1073741824;
            } else {
                if (i13 < 0) {
                    if (i13 != -1) {
                        if (i13 == -2) {
                            i11 = (i11 == Integer.MIN_VALUE || i11 == 1073741824) ? Integer.MIN_VALUE : 0;
                        }
                        i11 = 0;
                        i13 = 0;
                    }
                    i13 = iMax;
                }
                i11 = 1073741824;
            }
            return View.MeasureSpec.makeMeasureSpec(i13, i11);
        }

        private int[] L(View view, Rect rect) {
            int[] iArr = new int[2];
            int iE0 = e0();
            int iG0 = g0();
            int iO0 = o0() - f0();
            int iW = W() - d0();
            int left = (view.getLeft() + rect.left) - view.getScrollX();
            int top = (view.getTop() + rect.top) - view.getScrollY();
            int iWidth = rect.width() + left;
            int iHeight = rect.height() + top;
            int i10 = left - iE0;
            int iMin = Math.min(0, i10);
            int i11 = top - iG0;
            int iMin2 = Math.min(0, i11);
            int i12 = iWidth - iO0;
            int iMax = Math.max(0, i12);
            int iMax2 = Math.max(0, iHeight - iW);
            if (Z() != 1) {
                if (iMin == 0) {
                    iMin = Math.min(i10, iMax);
                }
                iMax = iMin;
            } else if (iMax == 0) {
                iMax = Math.max(iMin, i12);
            }
            if (iMin2 == 0) {
                iMin2 = Math.min(i11, iMax2);
            }
            iArr[0] = iMax;
            iArr[1] = iMin2;
            return iArr;
        }

        private void f(View view, int i10, boolean z10) {
            e0 e0VarF0 = RecyclerView.f0(view);
            if (z10 || e0VarF0.F()) {
                this.f3760b.f3670t.b(e0VarF0);
            } else {
                this.f3760b.f3670t.p(e0VarF0);
            }
            q qVar = (q) view.getLayoutParams();
            if (e0VarF0.V() || e0VarF0.G()) {
                if (e0VarF0.G()) {
                    e0VarF0.U();
                } else {
                    e0VarF0.o();
                }
                this.f3759a.c(view, i10, view.getLayoutParams(), false);
            } else if (view.getParent() == this.f3760b) {
                int iM = this.f3759a.m(view);
                if (i10 == -1) {
                    i10 = this.f3759a.g();
                }
                if (iM == -1) {
                    throw new IllegalStateException("Added View has RecyclerView as parent but view is not a real child. Unfiltered index:" + this.f3760b.indexOfChild(view) + this.f3760b.P());
                }
                if (iM != i10) {
                    this.f3760b.A.B0(iM, i10);
                }
            } else {
                this.f3759a.a(view, i10, false);
                qVar.f3785c = true;
                a0 a0Var = this.f3765g;
                if (a0Var != null && a0Var.h()) {
                    this.f3765g.k(view);
                }
            }
            if (qVar.f3786d) {
                e0VarF0.f3727o.invalidate();
                qVar.f3786d = false;
            }
        }

        public static d i0(Context context, AttributeSet attributeSet, int i10, int i11) {
            d dVar = new d();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, w0.c.f35930f, i10, i11);
            dVar.f3779a = typedArrayObtainStyledAttributes.getInt(w0.c.f35931g, 1);
            dVar.f3780b = typedArrayObtainStyledAttributes.getInt(w0.c.f35941q, 1);
            dVar.f3781c = typedArrayObtainStyledAttributes.getBoolean(w0.c.f35940p, false);
            dVar.f3782d = typedArrayObtainStyledAttributes.getBoolean(w0.c.f35942r, false);
            typedArrayObtainStyledAttributes.recycle();
            return dVar;
        }

        public static int n(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i10);
            int size = View.MeasureSpec.getSize(i10);
            return mode != Integer.MIN_VALUE ? mode != 1073741824 ? Math.max(i11, i12) : size : Math.min(size, Math.max(i11, i12));
        }

        private boolean t0(RecyclerView recyclerView, int i10, int i11) {
            View focusedChild = recyclerView.getFocusedChild();
            if (focusedChild == null) {
                return false;
            }
            int iE0 = e0();
            int iG0 = g0();
            int iO0 = o0() - f0();
            int iW = W() - d0();
            Rect rect = this.f3760b.f3676w;
            P(focusedChild, rect);
            return rect.left - i10 < iO0 && rect.right - i10 > iE0 && rect.top - i11 < iW && rect.bottom - i11 > iG0;
        }

        private void v1(w wVar, int i10, View view) {
            e0 e0VarF0 = RecyclerView.f0(view);
            if (e0VarF0.T()) {
                return;
            }
            if (e0VarF0.D() && !e0VarF0.F() && !this.f3760b.f3682z.h()) {
                q1(i10);
                wVar.C(e0VarF0);
            } else {
                x(i10);
                wVar.D(view);
                this.f3760b.f3670t.k(e0VarF0);
            }
        }

        private static boolean w0(int i10, int i11, int i12) {
            int mode = View.MeasureSpec.getMode(i11);
            int size = View.MeasureSpec.getSize(i11);
            if (i12 > 0 && i10 != i12) {
                return false;
            }
            if (mode == Integer.MIN_VALUE) {
                return size >= i10;
            }
            if (mode != 0) {
                return mode == 1073741824 && size == i10;
            }
            return true;
        }

        private void y(int i10, View view) {
            this.f3759a.d(i10);
        }

        void A(RecyclerView recyclerView, w wVar) {
            this.f3767i = false;
            I0(recyclerView, wVar);
        }

        public void A0(View view, int i10, int i11) {
            q qVar = (q) view.getLayoutParams();
            Rect rectJ0 = this.f3760b.j0(view);
            int i12 = i10 + rectJ0.left + rectJ0.right;
            int i13 = i11 + rectJ0.top + rectJ0.bottom;
            int iK = K(o0(), p0(), e0() + f0() + ((ViewGroup.MarginLayoutParams) qVar).leftMargin + ((ViewGroup.MarginLayoutParams) qVar).rightMargin + i12, ((ViewGroup.MarginLayoutParams) qVar).width, k());
            int iK2 = K(W(), X(), g0() + d0() + ((ViewGroup.MarginLayoutParams) qVar).topMargin + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin + i13, ((ViewGroup.MarginLayoutParams) qVar).height, l());
            if (F1(view, iK, iK2, qVar)) {
                view.measure(iK, iK2);
            }
        }

        void A1(int i10, int i11) {
            this.f3775q = View.MeasureSpec.getSize(i10);
            int mode = View.MeasureSpec.getMode(i10);
            this.f3773o = mode;
            if (mode == 0 && !RecyclerView.S0) {
                this.f3775q = 0;
            }
            this.f3776r = View.MeasureSpec.getSize(i11);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.f3774p = mode2;
            if (mode2 != 0 || RecyclerView.S0) {
                return;
            }
            this.f3776r = 0;
        }

        public View B(View view) {
            View viewR;
            RecyclerView recyclerView = this.f3760b;
            if (recyclerView == null || (viewR = recyclerView.R(view)) == null || this.f3759a.n(viewR)) {
                return null;
            }
            return viewR;
        }

        public void B0(int i10, int i11) {
            View viewI = I(i10);
            if (viewI != null) {
                x(i10);
                h(viewI, i11);
            } else {
                throw new IllegalArgumentException("Cannot move a child from non-existing index:" + i10 + this.f3760b.toString());
            }
        }

        public void B1(int i10, int i11) {
            this.f3760b.setMeasuredDimension(i10, i11);
        }

        public View C(int i10) {
            int iJ = J();
            for (int i11 = 0; i11 < iJ; i11++) {
                View viewI = I(i11);
                e0 e0VarF0 = RecyclerView.f0(viewI);
                if (e0VarF0 != null && e0VarF0.w() == i10 && !e0VarF0.T() && (this.f3760b.f3677w0.e() || !e0VarF0.F())) {
                    return viewI;
                }
            }
            return null;
        }

        public void C0(int i10) {
            RecyclerView recyclerView = this.f3760b;
            if (recyclerView != null) {
                recyclerView.z0(i10);
            }
        }

        public void C1(Rect rect, int i10, int i11) {
            B1(n(i10, rect.width() + e0() + f0(), c0()), n(i11, rect.height() + g0() + d0(), b0()));
        }

        public abstract q D();

        public void D0(int i10) {
            RecyclerView recyclerView = this.f3760b;
            if (recyclerView != null) {
                recyclerView.A0(i10);
            }
        }

        void D1(int i10, int i11) {
            int iJ = J();
            if (iJ == 0) {
                this.f3760b.w(i10, i11);
                return;
            }
            int i12 = Integer.MIN_VALUE;
            int i13 = Integer.MIN_VALUE;
            int i14 = Integer.MAX_VALUE;
            int i15 = Integer.MAX_VALUE;
            for (int i16 = 0; i16 < iJ; i16++) {
                View viewI = I(i16);
                Rect rect = this.f3760b.f3676w;
                P(viewI, rect);
                int i17 = rect.left;
                if (i17 < i14) {
                    i14 = i17;
                }
                int i18 = rect.right;
                if (i18 > i12) {
                    i12 = i18;
                }
                int i19 = rect.top;
                if (i19 < i15) {
                    i15 = i19;
                }
                int i20 = rect.bottom;
                if (i20 > i13) {
                    i13 = i20;
                }
            }
            this.f3760b.f3676w.set(i14, i15, i12, i13);
            C1(this.f3760b.f3676w, i10, i11);
        }

        public q E(Context context, AttributeSet attributeSet) {
            return new q(context, attributeSet);
        }

        public void E0(h hVar, h hVar2) {
        }

        void E1(RecyclerView recyclerView) {
            if (recyclerView == null) {
                this.f3760b = null;
                this.f3759a = null;
                this.f3775q = 0;
                this.f3776r = 0;
            } else {
                this.f3760b = recyclerView;
                this.f3759a = recyclerView.f3668s;
                this.f3775q = recyclerView.getWidth();
                this.f3776r = recyclerView.getHeight();
            }
            this.f3773o = 1073741824;
            this.f3774p = 1073741824;
        }

        public q F(ViewGroup.LayoutParams layoutParams) {
            return layoutParams instanceof q ? new q((q) layoutParams) : layoutParams instanceof ViewGroup.MarginLayoutParams ? new q((ViewGroup.MarginLayoutParams) layoutParams) : new q(layoutParams);
        }

        public boolean F0(RecyclerView recyclerView, ArrayList<View> arrayList, int i10, int i11) {
            return false;
        }

        boolean F1(View view, int i10, int i11, q qVar) {
            return (!view.isLayoutRequested() && this.f3769k && w0(view.getWidth(), i10, ((ViewGroup.MarginLayoutParams) qVar).width) && w0(view.getHeight(), i11, ((ViewGroup.MarginLayoutParams) qVar).height)) ? false : true;
        }

        public int G() {
            return -1;
        }

        public void G0(RecyclerView recyclerView) {
        }

        boolean G1() {
            return false;
        }

        public int H(View view) {
            return ((q) view.getLayoutParams()).f3784b.bottom;
        }

        @Deprecated
        public void H0(RecyclerView recyclerView) {
        }

        boolean H1(View view, int i10, int i11, q qVar) {
            return (this.f3769k && w0(view.getMeasuredWidth(), i10, ((ViewGroup.MarginLayoutParams) qVar).width) && w0(view.getMeasuredHeight(), i11, ((ViewGroup.MarginLayoutParams) qVar).height)) ? false : true;
        }

        public View I(int i10) {
            androidx.recyclerview.widget.b bVar = this.f3759a;
            if (bVar != null) {
                return bVar.f(i10);
            }
            return null;
        }

        public void I0(RecyclerView recyclerView, w wVar) {
            H0(recyclerView);
        }

        public void I1(RecyclerView recyclerView, b0 b0Var, int i10) {
            Log.e("RecyclerView", "You must override smoothScrollToPosition to support smooth scrolling");
        }

        public int J() {
            androidx.recyclerview.widget.b bVar = this.f3759a;
            if (bVar != null) {
                return bVar.g();
            }
            return 0;
        }

        public View J0(View view, int i10, w wVar, b0 b0Var) {
            return null;
        }

        public void J1(a0 a0Var) {
            a0 a0Var2 = this.f3765g;
            if (a0Var2 != null && a0Var != a0Var2 && a0Var2.h()) {
                this.f3765g.r();
            }
            this.f3765g = a0Var;
            a0Var.q(this.f3760b, this);
        }

        public void K0(AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f3760b;
            L0(recyclerView.f3662p, recyclerView.f3677w0, accessibilityEvent);
        }

        void K1() {
            a0 a0Var = this.f3765g;
            if (a0Var != null) {
                a0Var.r();
            }
        }

        public void L0(w wVar, b0 b0Var, AccessibilityEvent accessibilityEvent) {
            RecyclerView recyclerView = this.f3760b;
            if (recyclerView == null || accessibilityEvent == null) {
                return;
            }
            boolean z10 = true;
            if (!recyclerView.canScrollVertically(1) && !this.f3760b.canScrollVertically(-1) && !this.f3760b.canScrollHorizontally(-1) && !this.f3760b.canScrollHorizontally(1)) {
                z10 = false;
            }
            accessibilityEvent.setScrollable(z10);
            h hVar = this.f3760b.f3682z;
            if (hVar != null) {
                accessibilityEvent.setItemCount(hVar.d());
            }
        }

        public boolean L1() {
            return false;
        }

        public boolean M() {
            RecyclerView recyclerView = this.f3760b;
            return recyclerView != null && recyclerView.f3672u;
        }

        void M0(androidx.core.view.accessibility.c cVar) {
            RecyclerView recyclerView = this.f3760b;
            N0(recyclerView.f3662p, recyclerView.f3677w0, cVar);
        }

        public int N(w wVar, b0 b0Var) {
            return -1;
        }

        public void N0(w wVar, b0 b0Var, androidx.core.view.accessibility.c cVar) {
            if (this.f3760b.canScrollVertically(-1) || this.f3760b.canScrollHorizontally(-1)) {
                cVar.a(Utility.DEFAULT_STREAM_BUFFER_SIZE);
                cVar.p0(true);
            }
            if (this.f3760b.canScrollVertically(1) || this.f3760b.canScrollHorizontally(1)) {
                cVar.a(4096);
                cVar.p0(true);
            }
            cVar.Z(c.b.a(k0(wVar, b0Var), N(wVar, b0Var), v0(wVar, b0Var), l0(wVar, b0Var)));
        }

        public int O(View view) {
            return view.getBottom() + H(view);
        }

        void O0(View view, androidx.core.view.accessibility.c cVar) {
            e0 e0VarF0 = RecyclerView.f0(view);
            if (e0VarF0 == null || e0VarF0.F() || this.f3759a.n(e0VarF0.f3727o)) {
                return;
            }
            RecyclerView recyclerView = this.f3760b;
            P0(recyclerView.f3662p, recyclerView.f3677w0, view, cVar);
        }

        public void P(View view, Rect rect) {
            RecyclerView.g0(view, rect);
        }

        public void P0(w wVar, b0 b0Var, View view, androidx.core.view.accessibility.c cVar) {
        }

        public int Q(View view) {
            return view.getLeft() - a0(view);
        }

        public View Q0(View view, int i10) {
            return null;
        }

        public int R(View view) {
            Rect rect = ((q) view.getLayoutParams()).f3784b;
            return view.getMeasuredHeight() + rect.top + rect.bottom;
        }

        public void R0(RecyclerView recyclerView, int i10, int i11) {
        }

        public int S(View view) {
            Rect rect = ((q) view.getLayoutParams()).f3784b;
            return view.getMeasuredWidth() + rect.left + rect.right;
        }

        public void S0(RecyclerView recyclerView) {
        }

        public int T(View view) {
            return view.getRight() + j0(view);
        }

        public void T0(RecyclerView recyclerView, int i10, int i11, int i12) {
        }

        public int U(View view) {
            return view.getTop() - m0(view);
        }

        public void U0(RecyclerView recyclerView, int i10, int i11) {
        }

        public View V() {
            View focusedChild;
            RecyclerView recyclerView = this.f3760b;
            if (recyclerView == null || (focusedChild = recyclerView.getFocusedChild()) == null || this.f3759a.n(focusedChild)) {
                return null;
            }
            return focusedChild;
        }

        public void V0(RecyclerView recyclerView, int i10, int i11) {
        }

        public int W() {
            return this.f3776r;
        }

        public void W0(RecyclerView recyclerView, int i10, int i11, Object obj) {
            V0(recyclerView, i10, i11);
        }

        public int X() {
            return this.f3774p;
        }

        public void X0(w wVar, b0 b0Var) {
            Log.e("RecyclerView", "You must override onLayoutChildren(Recycler recycler, State state) ");
        }

        public int Y() {
            RecyclerView recyclerView = this.f3760b;
            h adapter = recyclerView != null ? recyclerView.getAdapter() : null;
            if (adapter != null) {
                return adapter.d();
            }
            return 0;
        }

        public void Y0(b0 b0Var) {
        }

        public int Z() {
            return androidx.core.view.a0.E(this.f3760b);
        }

        public void Z0(w wVar, b0 b0Var, int i10, int i11) {
            this.f3760b.w(i10, i11);
        }

        public int a0(View view) {
            return ((q) view.getLayoutParams()).f3784b.left;
        }

        @Deprecated
        public boolean a1(RecyclerView recyclerView, View view, View view2) {
            return x0() || recyclerView.t0();
        }

        public void b(View view) {
            c(view, -1);
        }

        public int b0() {
            return androidx.core.view.a0.F(this.f3760b);
        }

        public boolean b1(RecyclerView recyclerView, b0 b0Var, View view, View view2) {
            return a1(recyclerView, view, view2);
        }

        public void c(View view, int i10) {
            f(view, i10, true);
        }

        public int c0() {
            return androidx.core.view.a0.G(this.f3760b);
        }

        public void c1(Parcelable parcelable) {
        }

        public void d(View view) {
            e(view, -1);
        }

        public int d0() {
            RecyclerView recyclerView = this.f3760b;
            if (recyclerView != null) {
                return recyclerView.getPaddingBottom();
            }
            return 0;
        }

        public Parcelable d1() {
            return null;
        }

        public void e(View view, int i10) {
            f(view, i10, false);
        }

        public int e0() {
            RecyclerView recyclerView = this.f3760b;
            if (recyclerView != null) {
                return recyclerView.getPaddingLeft();
            }
            return 0;
        }

        public void e1(int i10) {
        }

        public int f0() {
            RecyclerView recyclerView = this.f3760b;
            if (recyclerView != null) {
                return recyclerView.getPaddingRight();
            }
            return 0;
        }

        void f1(a0 a0Var) {
            if (this.f3765g == a0Var) {
                this.f3765g = null;
            }
        }

        public void g(String str) {
            RecyclerView recyclerView = this.f3760b;
            if (recyclerView != null) {
                recyclerView.o(str);
            }
        }

        public int g0() {
            RecyclerView recyclerView = this.f3760b;
            if (recyclerView != null) {
                return recyclerView.getPaddingTop();
            }
            return 0;
        }

        boolean g1(int i10, Bundle bundle) {
            RecyclerView recyclerView = this.f3760b;
            return h1(recyclerView.f3662p, recyclerView.f3677w0, i10, bundle);
        }

        public void h(View view, int i10) {
            i(view, i10, (q) view.getLayoutParams());
        }

        public int h0(View view) {
            return ((q) view.getLayoutParams()).a();
        }

        public boolean h1(w wVar, b0 b0Var, int i10, Bundle bundle) {
            int iW;
            int iO0;
            int i11;
            int i12;
            RecyclerView recyclerView = this.f3760b;
            if (recyclerView == null) {
                return false;
            }
            if (i10 == 4096) {
                iW = recyclerView.canScrollVertically(1) ? (W() - g0()) - d0() : 0;
                if (this.f3760b.canScrollHorizontally(1)) {
                    iO0 = (o0() - e0()) - f0();
                    i11 = iW;
                    i12 = iO0;
                }
                i11 = iW;
                i12 = 0;
            } else if (i10 != 8192) {
                i12 = 0;
                i11 = 0;
            } else {
                iW = recyclerView.canScrollVertically(-1) ? -((W() - g0()) - d0()) : 0;
                if (this.f3760b.canScrollHorizontally(-1)) {
                    iO0 = -((o0() - e0()) - f0());
                    i11 = iW;
                    i12 = iO0;
                }
                i11 = iW;
                i12 = 0;
            }
            if (i11 == 0 && i12 == 0) {
                return false;
            }
            this.f3760b.o1(i12, i11, null, Integer.MIN_VALUE, true);
            return true;
        }

        public void i(View view, int i10, q qVar) {
            e0 e0VarF0 = RecyclerView.f0(view);
            if (e0VarF0.F()) {
                this.f3760b.f3670t.b(e0VarF0);
            } else {
                this.f3760b.f3670t.p(e0VarF0);
            }
            this.f3759a.c(view, i10, qVar, e0VarF0.F());
        }

        boolean i1(View view, int i10, Bundle bundle) {
            RecyclerView recyclerView = this.f3760b;
            return j1(recyclerView.f3662p, recyclerView.f3677w0, view, i10, bundle);
        }

        public void j(View view, Rect rect) {
            RecyclerView recyclerView = this.f3760b;
            if (recyclerView == null) {
                rect.set(0, 0, 0, 0);
            } else {
                rect.set(recyclerView.j0(view));
            }
        }

        public int j0(View view) {
            return ((q) view.getLayoutParams()).f3784b.right;
        }

        public boolean j1(w wVar, b0 b0Var, View view, int i10, Bundle bundle) {
            return false;
        }

        public boolean k() {
            return false;
        }

        public int k0(w wVar, b0 b0Var) {
            return -1;
        }

        public void k1(w wVar) {
            for (int iJ = J() - 1; iJ >= 0; iJ--) {
                if (!RecyclerView.f0(I(iJ)).T()) {
                    n1(iJ, wVar);
                }
            }
        }

        public boolean l() {
            return false;
        }

        public int l0(w wVar, b0 b0Var) {
            return 0;
        }

        void l1(w wVar) {
            int iJ = wVar.j();
            for (int i10 = iJ - 1; i10 >= 0; i10--) {
                View viewN = wVar.n(i10);
                e0 e0VarF0 = RecyclerView.f0(viewN);
                if (!e0VarF0.T()) {
                    e0VarF0.Q(false);
                    if (e0VarF0.H()) {
                        this.f3760b.removeDetachedView(viewN, false);
                    }
                    m mVar = this.f3760b.f3650e0;
                    if (mVar != null) {
                        mVar.j(e0VarF0);
                    }
                    e0VarF0.Q(true);
                    wVar.y(viewN);
                }
            }
            wVar.e();
            if (iJ > 0) {
                this.f3760b.invalidate();
            }
        }

        public boolean m(q qVar) {
            return qVar != null;
        }

        public int m0(View view) {
            return ((q) view.getLayoutParams()).f3784b.top;
        }

        public void m1(View view, w wVar) {
            p1(view);
            wVar.B(view);
        }

        public void n0(View view, boolean z10, Rect rect) {
            Matrix matrix;
            if (z10) {
                Rect rect2 = ((q) view.getLayoutParams()).f3784b;
                rect.set(-rect2.left, -rect2.top, view.getWidth() + rect2.right, view.getHeight() + rect2.bottom);
            } else {
                rect.set(0, 0, view.getWidth(), view.getHeight());
            }
            if (this.f3760b != null && (matrix = view.getMatrix()) != null && !matrix.isIdentity()) {
                RectF rectF = this.f3760b.f3680y;
                rectF.set(rect);
                matrix.mapRect(rectF);
                rect.set((int) Math.floor(rectF.left), (int) Math.floor(rectF.top), (int) Math.ceil(rectF.right), (int) Math.ceil(rectF.bottom));
            }
            rect.offset(view.getLeft(), view.getTop());
        }

        public void n1(int i10, w wVar) {
            View viewI = I(i10);
            q1(i10);
            wVar.B(viewI);
        }

        public void o(int i10, int i11, b0 b0Var, c cVar) {
        }

        public int o0() {
            return this.f3775q;
        }

        public boolean o1(Runnable runnable) {
            RecyclerView recyclerView = this.f3760b;
            if (recyclerView != null) {
                return recyclerView.removeCallbacks(runnable);
            }
            return false;
        }

        public void p(int i10, c cVar) {
        }

        public int p0() {
            return this.f3773o;
        }

        public void p1(View view) {
            this.f3759a.p(view);
        }

        public int q(b0 b0Var) {
            return 0;
        }

        boolean q0() {
            int iJ = J();
            for (int i10 = 0; i10 < iJ; i10++) {
                ViewGroup.LayoutParams layoutParams = I(i10).getLayoutParams();
                if (layoutParams.width < 0 && layoutParams.height < 0) {
                    return true;
                }
            }
            return false;
        }

        public void q1(int i10) {
            if (I(i10) != null) {
                this.f3759a.q(i10);
            }
        }

        public int r(b0 b0Var) {
            return 0;
        }

        public boolean r0() {
            return this.f3767i;
        }

        public boolean r1(RecyclerView recyclerView, View view, Rect rect, boolean z10) {
            return s1(recyclerView, view, rect, z10, false);
        }

        public int s(b0 b0Var) {
            return 0;
        }

        public boolean s0() {
            return this.f3768j;
        }

        public boolean s1(RecyclerView recyclerView, View view, Rect rect, boolean z10, boolean z11) {
            int[] iArrL = L(view, rect);
            int i10 = iArrL[0];
            int i11 = iArrL[1];
            if ((z11 && !t0(recyclerView, i10, i11)) || (i10 == 0 && i11 == 0)) {
                return false;
            }
            if (z10) {
                recyclerView.scrollBy(i10, i11);
            } else {
                recyclerView.l1(i10, i11);
            }
            return true;
        }

        public int t(b0 b0Var) {
            return 0;
        }

        public void t1() {
            RecyclerView recyclerView = this.f3760b;
            if (recyclerView != null) {
                recyclerView.requestLayout();
            }
        }

        public int u(b0 b0Var) {
            return 0;
        }

        public final boolean u0() {
            return this.f3770l;
        }

        public void u1() {
            this.f3766h = true;
        }

        public int v(b0 b0Var) {
            return 0;
        }

        public boolean v0(w wVar, b0 b0Var) {
            return false;
        }

        public void w(w wVar) {
            for (int iJ = J() - 1; iJ >= 0; iJ--) {
                v1(wVar, iJ, I(iJ));
            }
        }

        public int w1(int i10, w wVar, b0 b0Var) {
            return 0;
        }

        public void x(int i10) {
            y(i10, I(i10));
        }

        public boolean x0() {
            a0 a0Var = this.f3765g;
            return a0Var != null && a0Var.h();
        }

        public void x1(int i10) {
        }

        public boolean y0(View view, boolean z10, boolean z11) {
            boolean z12 = this.f3763e.b(view, 24579) && this.f3764f.b(view, 24579);
            return z10 ? z12 : !z12;
        }

        public int y1(int i10, w wVar, b0 b0Var) {
            return 0;
        }

        void z(RecyclerView recyclerView) {
            this.f3767i = true;
            G0(recyclerView);
        }

        public void z0(View view, int i10, int i11, int i12, int i13) {
            q qVar = (q) view.getLayoutParams();
            Rect rect = qVar.f3784b;
            view.layout(i10 + rect.left + ((ViewGroup.MarginLayoutParams) qVar).leftMargin, i11 + rect.top + ((ViewGroup.MarginLayoutParams) qVar).topMargin, (i12 - rect.right) - ((ViewGroup.MarginLayoutParams) qVar).rightMargin, (i13 - rect.bottom) - ((ViewGroup.MarginLayoutParams) qVar).bottomMargin);
        }

        void z1(RecyclerView recyclerView) {
            A1(View.MeasureSpec.makeMeasureSpec(recyclerView.getWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(recyclerView.getHeight(), 1073741824));
        }
    }

    public interface r {
        void a(View view);

        void b(View view);
    }

    public static abstract class s {
        public abstract boolean a(int i10, int i11);
    }

    public interface t {
        void a(RecyclerView recyclerView, MotionEvent motionEvent);

        boolean b(RecyclerView recyclerView, MotionEvent motionEvent);

        void c(boolean z10);
    }

    public static abstract class u {
        public void a(RecyclerView recyclerView, int i10) {
        }

        public void b(RecyclerView recyclerView, int i10, int i11) {
        }
    }

    public static class v {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        SparseArray<a> f3787a = new SparseArray<>();

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f3788b = 0;

        static class a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final ArrayList<e0> f3789a = new ArrayList<>();

            /* JADX INFO: renamed from: b, reason: collision with root package name */
            int f3790b = 5;

            /* JADX INFO: renamed from: c, reason: collision with root package name */
            long f3791c = 0;

            /* JADX INFO: renamed from: d, reason: collision with root package name */
            long f3792d = 0;

            a() {
            }
        }

        private a g(int i10) {
            a aVar = this.f3787a.get(i10);
            if (aVar != null) {
                return aVar;
            }
            a aVar2 = new a();
            this.f3787a.put(i10, aVar2);
            return aVar2;
        }

        void a() {
            this.f3788b++;
        }

        public void b() {
            for (int i10 = 0; i10 < this.f3787a.size(); i10++) {
                this.f3787a.valueAt(i10).f3789a.clear();
            }
        }

        void c() {
            this.f3788b--;
        }

        void d(int i10, long j10) {
            a aVarG = g(i10);
            aVarG.f3792d = j(aVarG.f3792d, j10);
        }

        void e(int i10, long j10) {
            a aVarG = g(i10);
            aVarG.f3791c = j(aVarG.f3791c, j10);
        }

        public e0 f(int i10) {
            a aVar = this.f3787a.get(i10);
            if (aVar == null || aVar.f3789a.isEmpty()) {
                return null;
            }
            ArrayList<e0> arrayList = aVar.f3789a;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                if (!arrayList.get(size).B()) {
                    return arrayList.remove(size);
                }
            }
            return null;
        }

        void h(h hVar, h hVar2, boolean z10) {
            if (hVar != null) {
                c();
            }
            if (!z10 && this.f3788b == 0) {
                b();
            }
            if (hVar2 != null) {
                a();
            }
        }

        public void i(e0 e0Var) {
            int iV = e0Var.v();
            ArrayList<e0> arrayList = g(iV).f3789a;
            if (this.f3787a.get(iV).f3790b <= arrayList.size()) {
                return;
            }
            e0Var.N();
            arrayList.add(e0Var);
        }

        long j(long j10, long j11) {
            return j10 == 0 ? j11 : ((j10 / 4) * 3) + (j11 / 4);
        }

        boolean k(int i10, long j10, long j11) {
            long j12 = g(i10).f3792d;
            return j12 == 0 || j10 + j12 < j11;
        }

        boolean l(int i10, long j10, long j11) {
            long j12 = g(i10).f3791c;
            return j12 == 0 || j10 + j12 < j11;
        }
    }

    public final class w {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final ArrayList<e0> f3793a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        ArrayList<e0> f3794b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final ArrayList<e0> f3795c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final List<e0> f3796d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f3797e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        int f3798f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        v f3799g;

        public w() {
            ArrayList<e0> arrayList = new ArrayList<>();
            this.f3793a = arrayList;
            this.f3794b = null;
            this.f3795c = new ArrayList<>();
            this.f3796d = Collections.unmodifiableList(arrayList);
            this.f3797e = 2;
            this.f3798f = 2;
        }

        private boolean H(e0 e0Var, int i10, int i11, long j10) {
            e0Var.G = null;
            e0Var.F = RecyclerView.this;
            int iV = e0Var.v();
            long nanoTime = RecyclerView.this.getNanoTime();
            if (j10 != Long.MAX_VALUE && !this.f3799g.k(iV, nanoTime, j10)) {
                return false;
            }
            RecyclerView.this.f3682z.a(e0Var, i10);
            this.f3799g.d(e0Var.v(), RecyclerView.this.getNanoTime() - nanoTime);
            b(e0Var);
            if (!RecyclerView.this.f3677w0.e()) {
                return true;
            }
            e0Var.f3733u = i11;
            return true;
        }

        private void b(e0 e0Var) {
            if (RecyclerView.this.s0()) {
                View view = e0Var.f3727o;
                if (androidx.core.view.a0.C(view) == 0) {
                    androidx.core.view.a0.A0(view, 1);
                }
                androidx.recyclerview.widget.k kVar = RecyclerView.this.D0;
                if (kVar == null) {
                    return;
                }
                androidx.core.view.a aVarN = kVar.n();
                if (aVarN instanceof k.a) {
                    ((k.a) aVarN).o(view);
                }
                androidx.core.view.a0.q0(view, aVarN);
            }
        }

        private void q(ViewGroup viewGroup, boolean z10) {
            for (int childCount = viewGroup.getChildCount() - 1; childCount >= 0; childCount--) {
                View childAt = viewGroup.getChildAt(childCount);
                if (childAt instanceof ViewGroup) {
                    q((ViewGroup) childAt, true);
                }
            }
            if (z10) {
                if (viewGroup.getVisibility() == 4) {
                    viewGroup.setVisibility(0);
                    viewGroup.setVisibility(4);
                } else {
                    int visibility = viewGroup.getVisibility();
                    viewGroup.setVisibility(4);
                    viewGroup.setVisibility(visibility);
                }
            }
        }

        private void r(e0 e0Var) {
            View view = e0Var.f3727o;
            if (view instanceof ViewGroup) {
                q((ViewGroup) view, false);
            }
        }

        void A(int i10) {
            a(this.f3795c.get(i10), true);
            this.f3795c.remove(i10);
        }

        public void B(View view) {
            e0 e0VarF0 = RecyclerView.f0(view);
            if (e0VarF0.H()) {
                RecyclerView.this.removeDetachedView(view, false);
            }
            if (e0VarF0.G()) {
                e0VarF0.U();
            } else if (e0VarF0.V()) {
                e0VarF0.o();
            }
            C(e0VarF0);
            if (RecyclerView.this.f3650e0 == null || e0VarF0.E()) {
                return;
            }
            RecyclerView.this.f3650e0.j(e0VarF0);
        }

        void C(e0 e0Var) {
            boolean z10;
            boolean z11 = true;
            if (e0Var.G() || e0Var.f3727o.getParent() != null) {
                StringBuilder sb = new StringBuilder();
                sb.append("Scrapped or attached views may not be recycled. isScrap:");
                sb.append(e0Var.G());
                sb.append(" isAttached:");
                sb.append(e0Var.f3727o.getParent() != null);
                sb.append(RecyclerView.this.P());
                throw new IllegalArgumentException(sb.toString());
            }
            if (e0Var.H()) {
                throw new IllegalArgumentException("Tmp detached view should be removed from RecyclerView before it can be recycled: " + e0Var + RecyclerView.this.P());
            }
            if (e0Var.T()) {
                throw new IllegalArgumentException("Trying to recycle an ignored view holder. You should first call stopIgnoringView(view) before calling recycle." + RecyclerView.this.P());
            }
            boolean zR = e0Var.r();
            h hVar = RecyclerView.this.f3682z;
            if ((hVar != null && zR && hVar.o(e0Var)) || e0Var.E()) {
                if (this.f3798f <= 0 || e0Var.z(526)) {
                    z10 = false;
                } else {
                    int size = this.f3795c.size();
                    if (size >= this.f3798f && size > 0) {
                        A(0);
                        size--;
                    }
                    if (RecyclerView.U0 && size > 0 && !RecyclerView.this.f3675v0.d(e0Var.f3729q)) {
                        int i10 = size - 1;
                        while (i10 >= 0) {
                            if (!RecyclerView.this.f3675v0.d(this.f3795c.get(i10).f3729q)) {
                                break;
                            } else {
                                i10--;
                            }
                        }
                        size = i10 + 1;
                    }
                    this.f3795c.add(size, e0Var);
                    z10 = true;
                }
                if (z10) {
                    z = z10;
                    z11 = false;
                } else {
                    a(e0Var, true);
                    z = z10;
                }
            } else {
                z11 = false;
            }
            RecyclerView.this.f3670t.q(e0Var);
            if (z || z11 || !zR) {
                return;
            }
            e0Var.G = null;
            e0Var.F = null;
        }

        void D(View view) {
            e0 e0VarF0 = RecyclerView.f0(view);
            if (!e0VarF0.z(12) && e0VarF0.I() && !RecyclerView.this.p(e0VarF0)) {
                if (this.f3794b == null) {
                    this.f3794b = new ArrayList<>();
                }
                e0VarF0.R(this, true);
                this.f3794b.add(e0VarF0);
                return;
            }
            if (!e0VarF0.D() || e0VarF0.F() || RecyclerView.this.f3682z.h()) {
                e0VarF0.R(this, false);
                this.f3793a.add(e0VarF0);
            } else {
                throw new IllegalArgumentException("Called scrap view with an invalid view. Invalid views cannot be reused from scrap, they should rebound from recycler pool." + RecyclerView.this.P());
            }
        }

        void E(v vVar) {
            v vVar2 = this.f3799g;
            if (vVar2 != null) {
                vVar2.c();
            }
            this.f3799g = vVar;
            if (vVar == null || RecyclerView.this.getAdapter() == null) {
                return;
            }
            this.f3799g.a();
        }

        void F(c0 c0Var) {
        }

        public void G(int i10) {
            this.f3797e = i10;
            K();
        }

        /* JADX WARN: Removed duplicated region for block: B:18:0x0037  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x005c  */
        /* JADX WARN: Removed duplicated region for block: B:29:0x005f  */
        /* JADX WARN: Removed duplicated region for block: B:59:0x012c A[PHI: r1 r4
          0x012c: PHI (r1v12 androidx.recyclerview.widget.RecyclerView$e0) = (r1v11 androidx.recyclerview.widget.RecyclerView$e0), (r1v30 androidx.recyclerview.widget.RecyclerView$e0) binds: [B:28:0x005d, B:45:0x00ad] A[DONT_GENERATE, DONT_INLINE]
          0x012c: PHI (r4v3 boolean) = (r4v2 boolean), (r4v7 boolean) binds: [B:28:0x005d, B:45:0x00ad] A[DONT_GENERATE, DONT_INLINE]] */
        /* JADX WARN: Removed duplicated region for block: B:68:0x014d  */
        /* JADX WARN: Removed duplicated region for block: B:74:0x0179  */
        /* JADX WARN: Removed duplicated region for block: B:85:0x01a9  */
        /* JADX WARN: Removed duplicated region for block: B:86:0x01b7  */
        /* JADX WARN: Removed duplicated region for block: B:92:0x01d3 A[ADDED_TO_REGION] */
        /* JADX WARN: Removed duplicated region for block: B:94:0x01d6  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        androidx.recyclerview.widget.RecyclerView.e0 I(int r17, boolean r18, long r19) {
            /*
                Method dump skipped, instruction units count: 530
                To view this dump change 'Code comments level' option to 'DEBUG'
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.w.I(int, boolean, long):androidx.recyclerview.widget.RecyclerView$e0");
        }

        void J(e0 e0Var) {
            if (e0Var.C) {
                this.f3794b.remove(e0Var);
            } else {
                this.f3793a.remove(e0Var);
            }
            e0Var.B = null;
            e0Var.C = false;
            e0Var.o();
        }

        void K() {
            p pVar = RecyclerView.this.A;
            this.f3798f = this.f3797e + (pVar != null ? pVar.f3771m : 0);
            for (int size = this.f3795c.size() - 1; size >= 0 && this.f3795c.size() > this.f3798f; size--) {
                A(size);
            }
        }

        boolean L(e0 e0Var) {
            if (e0Var.F()) {
                return RecyclerView.this.f3677w0.e();
            }
            int i10 = e0Var.f3729q;
            if (i10 >= 0 && i10 < RecyclerView.this.f3682z.d()) {
                if (RecyclerView.this.f3677w0.e() || RecyclerView.this.f3682z.f(e0Var.f3729q) == e0Var.v()) {
                    return !RecyclerView.this.f3682z.h() || e0Var.u() == RecyclerView.this.f3682z.e(e0Var.f3729q);
                }
                return false;
            }
            throw new IndexOutOfBoundsException("Inconsistency detected. Invalid view holder adapter position" + e0Var + RecyclerView.this.P());
        }

        void M(int i10, int i11) {
            int i12;
            int i13 = i11 + i10;
            for (int size = this.f3795c.size() - 1; size >= 0; size--) {
                e0 e0Var = this.f3795c.get(size);
                if (e0Var != null && (i12 = e0Var.f3729q) >= i10 && i12 < i13) {
                    e0Var.b(2);
                    A(size);
                }
            }
        }

        void a(e0 e0Var, boolean z10) {
            RecyclerView.r(e0Var);
            View view = e0Var.f3727o;
            androidx.recyclerview.widget.k kVar = RecyclerView.this.D0;
            if (kVar != null) {
                androidx.core.view.a aVarN = kVar.n();
                androidx.core.view.a0.q0(view, aVarN instanceof k.a ? ((k.a) aVarN).n(view) : null);
            }
            if (z10) {
                g(e0Var);
            }
            e0Var.G = null;
            e0Var.F = null;
            i().i(e0Var);
        }

        public void c() {
            this.f3793a.clear();
            z();
        }

        void d() {
            int size = this.f3795c.size();
            for (int i10 = 0; i10 < size; i10++) {
                this.f3795c.get(i10).d();
            }
            int size2 = this.f3793a.size();
            for (int i11 = 0; i11 < size2; i11++) {
                this.f3793a.get(i11).d();
            }
            ArrayList<e0> arrayList = this.f3794b;
            if (arrayList != null) {
                int size3 = arrayList.size();
                for (int i12 = 0; i12 < size3; i12++) {
                    this.f3794b.get(i12).d();
                }
            }
        }

        void e() {
            this.f3793a.clear();
            ArrayList<e0> arrayList = this.f3794b;
            if (arrayList != null) {
                arrayList.clear();
            }
        }

        public int f(int i10) {
            if (i10 >= 0 && i10 < RecyclerView.this.f3677w0.b()) {
                return !RecyclerView.this.f3677w0.e() ? i10 : RecyclerView.this.f3666r.m(i10);
            }
            throw new IndexOutOfBoundsException("invalid position " + i10 + ". State item count is " + RecyclerView.this.f3677w0.b() + RecyclerView.this.P());
        }

        void g(e0 e0Var) {
            x xVar = RecyclerView.this.B;
            if (xVar != null) {
                xVar.a(e0Var);
            }
            int size = RecyclerView.this.C.size();
            for (int i10 = 0; i10 < size; i10++) {
                RecyclerView.this.C.get(i10).a(e0Var);
            }
            h hVar = RecyclerView.this.f3682z;
            if (hVar != null) {
                hVar.r(e0Var);
            }
            RecyclerView recyclerView = RecyclerView.this;
            if (recyclerView.f3677w0 != null) {
                recyclerView.f3670t.q(e0Var);
            }
        }

        e0 h(int i10) {
            int size;
            int iM;
            ArrayList<e0> arrayList = this.f3794b;
            if (arrayList != null && (size = arrayList.size()) != 0) {
                for (int i11 = 0; i11 < size; i11++) {
                    e0 e0Var = this.f3794b.get(i11);
                    if (!e0Var.V() && e0Var.w() == i10) {
                        e0Var.b(32);
                        return e0Var;
                    }
                }
                if (RecyclerView.this.f3682z.h() && (iM = RecyclerView.this.f3666r.m(i10)) > 0 && iM < RecyclerView.this.f3682z.d()) {
                    long jE = RecyclerView.this.f3682z.e(iM);
                    for (int i12 = 0; i12 < size; i12++) {
                        e0 e0Var2 = this.f3794b.get(i12);
                        if (!e0Var2.V() && e0Var2.u() == jE) {
                            e0Var2.b(32);
                            return e0Var2;
                        }
                    }
                }
            }
            return null;
        }

        v i() {
            if (this.f3799g == null) {
                this.f3799g = new v();
            }
            return this.f3799g;
        }

        int j() {
            return this.f3793a.size();
        }

        public List<e0> k() {
            return this.f3796d;
        }

        e0 l(long j10, int i10, boolean z10) {
            for (int size = this.f3793a.size() - 1; size >= 0; size--) {
                e0 e0Var = this.f3793a.get(size);
                if (e0Var.u() == j10 && !e0Var.V()) {
                    if (i10 == e0Var.v()) {
                        e0Var.b(32);
                        if (e0Var.F() && !RecyclerView.this.f3677w0.e()) {
                            e0Var.P(2, 14);
                        }
                        return e0Var;
                    }
                    if (!z10) {
                        this.f3793a.remove(size);
                        RecyclerView.this.removeDetachedView(e0Var.f3727o, false);
                        y(e0Var.f3727o);
                    }
                }
            }
            int size2 = this.f3795c.size();
            while (true) {
                size2--;
                if (size2 < 0) {
                    return null;
                }
                e0 e0Var2 = this.f3795c.get(size2);
                if (e0Var2.u() == j10 && !e0Var2.B()) {
                    if (i10 == e0Var2.v()) {
                        if (!z10) {
                            this.f3795c.remove(size2);
                        }
                        return e0Var2;
                    }
                    if (!z10) {
                        A(size2);
                        return null;
                    }
                }
            }
        }

        e0 m(int i10, boolean z10) {
            View viewE;
            int size = this.f3793a.size();
            for (int i11 = 0; i11 < size; i11++) {
                e0 e0Var = this.f3793a.get(i11);
                if (!e0Var.V() && e0Var.w() == i10 && !e0Var.D() && (RecyclerView.this.f3677w0.f3708h || !e0Var.F())) {
                    e0Var.b(32);
                    return e0Var;
                }
            }
            if (z10 || (viewE = RecyclerView.this.f3668s.e(i10)) == null) {
                int size2 = this.f3795c.size();
                for (int i12 = 0; i12 < size2; i12++) {
                    e0 e0Var2 = this.f3795c.get(i12);
                    if (!e0Var2.D() && e0Var2.w() == i10 && !e0Var2.B()) {
                        if (!z10) {
                            this.f3795c.remove(i12);
                        }
                        return e0Var2;
                    }
                }
                return null;
            }
            e0 e0VarF0 = RecyclerView.f0(viewE);
            RecyclerView.this.f3668s.s(viewE);
            int iM = RecyclerView.this.f3668s.m(viewE);
            if (iM != -1) {
                RecyclerView.this.f3668s.d(iM);
                D(viewE);
                e0VarF0.b(8224);
                return e0VarF0;
            }
            throw new IllegalStateException("layout index should not be -1 after unhiding a view:" + e0VarF0 + RecyclerView.this.P());
        }

        View n(int i10) {
            return this.f3793a.get(i10).f3727o;
        }

        public View o(int i10) {
            return p(i10, false);
        }

        View p(int i10, boolean z10) {
            return I(i10, z10, Long.MAX_VALUE).f3727o;
        }

        void s() {
            int size = this.f3795c.size();
            for (int i10 = 0; i10 < size; i10++) {
                q qVar = (q) this.f3795c.get(i10).f3727o.getLayoutParams();
                if (qVar != null) {
                    qVar.f3785c = true;
                }
            }
        }

        void t() {
            int size = this.f3795c.size();
            for (int i10 = 0; i10 < size; i10++) {
                e0 e0Var = this.f3795c.get(i10);
                if (e0Var != null) {
                    e0Var.b(6);
                    e0Var.a(null);
                }
            }
            h hVar = RecyclerView.this.f3682z;
            if (hVar == null || !hVar.h()) {
                z();
            }
        }

        void u(int i10, int i11) {
            int size = this.f3795c.size();
            for (int i12 = 0; i12 < size; i12++) {
                e0 e0Var = this.f3795c.get(i12);
                if (e0Var != null && e0Var.f3729q >= i10) {
                    e0Var.K(i11, false);
                }
            }
        }

        void v(int i10, int i11) {
            int i12;
            int i13;
            int i14;
            int i15;
            if (i10 < i11) {
                i12 = -1;
                i14 = i10;
                i13 = i11;
            } else {
                i12 = 1;
                i13 = i10;
                i14 = i11;
            }
            int size = this.f3795c.size();
            for (int i16 = 0; i16 < size; i16++) {
                e0 e0Var = this.f3795c.get(i16);
                if (e0Var != null && (i15 = e0Var.f3729q) >= i14 && i15 <= i13) {
                    if (i15 == i10) {
                        e0Var.K(i11 - i10, false);
                    } else {
                        e0Var.K(i12, false);
                    }
                }
            }
        }

        void w(int i10, int i11, boolean z10) {
            int i12 = i10 + i11;
            for (int size = this.f3795c.size() - 1; size >= 0; size--) {
                e0 e0Var = this.f3795c.get(size);
                if (e0Var != null) {
                    int i13 = e0Var.f3729q;
                    if (i13 >= i12) {
                        e0Var.K(-i11, z10);
                    } else if (i13 >= i10) {
                        e0Var.b(8);
                        A(size);
                    }
                }
            }
        }

        void x(h hVar, h hVar2, boolean z10) {
            c();
            i().h(hVar, hVar2, z10);
        }

        void y(View view) {
            e0 e0VarF0 = RecyclerView.f0(view);
            e0VarF0.B = null;
            e0VarF0.C = false;
            e0VarF0.o();
            C(e0VarF0);
        }

        void z() {
            for (int size = this.f3795c.size() - 1; size >= 0; size--) {
                A(size);
            }
            this.f3795c.clear();
            if (RecyclerView.U0) {
                RecyclerView.this.f3675v0.b();
            }
        }
    }

    public interface x {
        void a(e0 e0Var);
    }

    private class y extends j {
        y() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.j
        public void a() {
            RecyclerView.this.o(null);
            RecyclerView recyclerView = RecyclerView.this;
            recyclerView.f3677w0.f3707g = true;
            recyclerView.P0(true);
            if (RecyclerView.this.f3666r.p()) {
                return;
            }
            RecyclerView.this.requestLayout();
        }
    }

    static {
        int i10 = Build.VERSION.SDK_INT;
        R0 = i10 == 18 || i10 == 19 || i10 == 20;
        S0 = i10 >= 23;
        T0 = i10 >= 16;
        U0 = i10 >= 21;
        V0 = i10 <= 15;
        W0 = i10 <= 15;
        Class<?> cls = Integer.TYPE;
        X0 = new Class[]{Context.class, AttributeSet.class, cls, cls};
        Y0 = new c();
    }

    public RecyclerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, w0.a.f35921a);
    }

    private void A() {
        int i10 = this.O;
        this.O = 0;
        if (i10 == 0 || !s0()) {
            return;
        }
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain();
        accessibilityEventObtain.setEventType(2048);
        androidx.core.view.accessibility.b.b(accessibilityEventObtain, i10);
        sendAccessibilityEventUnchecked(accessibilityEventObtain);
    }

    private void C() {
        this.f3677w0.a(1);
        Q(this.f3677w0);
        this.f3677w0.f3710j = false;
        q1();
        this.f3670t.f();
        G0();
        O0();
        d1();
        b0 b0Var = this.f3677w0;
        b0Var.f3709i = b0Var.f3711k && this.A0;
        this.A0 = false;
        this.f3683z0 = false;
        b0Var.f3708h = b0Var.f3712l;
        b0Var.f3706f = this.f3682z.d();
        U(this.F0);
        if (this.f3677w0.f3711k) {
            int iG = this.f3668s.g();
            for (int i10 = 0; i10 < iG; i10++) {
                e0 e0VarF0 = f0(this.f3668s.f(i10));
                if (!e0VarF0.T() && (!e0VarF0.D() || this.f3682z.h())) {
                    this.f3670t.e(e0VarF0, this.f3650e0.t(this.f3677w0, e0VarF0, m.e(e0VarF0), e0VarF0.y()));
                    if (this.f3677w0.f3709i && e0VarF0.I() && !e0VarF0.F() && !e0VarF0.T() && !e0VarF0.D()) {
                        this.f3670t.c(c0(e0VarF0), e0VarF0);
                    }
                }
            }
        }
        if (this.f3677w0.f3712l) {
            e1();
            b0 b0Var2 = this.f3677w0;
            boolean z10 = b0Var2.f3707g;
            b0Var2.f3707g = false;
            this.A.X0(this.f3662p, b0Var2);
            this.f3677w0.f3707g = z10;
            for (int i11 = 0; i11 < this.f3668s.g(); i11++) {
                e0 e0VarF02 = f0(this.f3668s.f(i11));
                if (!e0VarF02.T() && !this.f3670t.i(e0VarF02)) {
                    int iE = m.e(e0VarF02);
                    boolean z11 = e0VarF02.z(Utility.DEFAULT_STREAM_BUFFER_SIZE);
                    if (!z11) {
                        iE |= 4096;
                    }
                    m.c cVarT = this.f3650e0.t(this.f3677w0, e0VarF02, iE, e0VarF02.y());
                    if (z11) {
                        R0(e0VarF02, cVarT);
                    } else {
                        this.f3670t.a(e0VarF02, cVarT);
                    }
                }
            }
            s();
        } else {
            s();
        }
        H0();
        s1(false);
        this.f3677w0.f3705e = 2;
    }

    private void D() {
        q1();
        G0();
        this.f3677w0.a(6);
        this.f3666r.j();
        this.f3677w0.f3706f = this.f3682z.d();
        this.f3677w0.f3704d = 0;
        if (this.f3664q != null && this.f3682z.b()) {
            Parcelable parcelable = this.f3664q.f3802q;
            if (parcelable != null) {
                this.A.c1(parcelable);
            }
            this.f3664q = null;
        }
        b0 b0Var = this.f3677w0;
        b0Var.f3708h = false;
        this.A.X0(this.f3662p, b0Var);
        b0 b0Var2 = this.f3677w0;
        b0Var2.f3707g = false;
        b0Var2.f3711k = b0Var2.f3711k && this.f3650e0 != null;
        b0Var2.f3705e = 4;
        H0();
        s1(false);
    }

    private void E() {
        this.f3677w0.a(4);
        q1();
        G0();
        b0 b0Var = this.f3677w0;
        b0Var.f3705e = 1;
        if (b0Var.f3711k) {
            for (int iG = this.f3668s.g() - 1; iG >= 0; iG--) {
                e0 e0VarF0 = f0(this.f3668s.f(iG));
                if (!e0VarF0.T()) {
                    long jC0 = c0(e0VarF0);
                    m.c cVarS = this.f3650e0.s(this.f3677w0, e0VarF0);
                    e0 e0VarG = this.f3670t.g(jC0);
                    if (e0VarG == null || e0VarG.T()) {
                        this.f3670t.d(e0VarF0, cVarS);
                    } else {
                        boolean zH = this.f3670t.h(e0VarG);
                        boolean zH2 = this.f3670t.h(e0VarF0);
                        if (zH && e0VarG == e0VarF0) {
                            this.f3670t.d(e0VarF0, cVarS);
                        } else {
                            m.c cVarN = this.f3670t.n(e0VarG);
                            this.f3670t.d(e0VarF0, cVarS);
                            m.c cVarM = this.f3670t.m(e0VarF0);
                            if (cVarN == null) {
                                k0(jC0, e0VarF0, e0VarG);
                            } else {
                                m(e0VarG, e0VarF0, cVarN, cVarM, zH, zH2);
                            }
                        }
                    }
                }
            }
            this.f3670t.o(this.P0);
        }
        this.A.l1(this.f3662p);
        b0 b0Var2 = this.f3677w0;
        b0Var2.f3703c = b0Var2.f3706f;
        this.S = false;
        this.T = false;
        b0Var2.f3711k = false;
        b0Var2.f3712l = false;
        this.A.f3766h = false;
        ArrayList<e0> arrayList = this.f3662p.f3794b;
        if (arrayList != null) {
            arrayList.clear();
        }
        p pVar = this.A;
        if (pVar.f3772n) {
            pVar.f3771m = 0;
            pVar.f3772n = false;
            this.f3662p.K();
        }
        this.A.Y0(this.f3677w0);
        H0();
        s1(false);
        this.f3670t.f();
        int[] iArr = this.F0;
        if (x(iArr[0], iArr[1])) {
            I(0, 0);
        }
        S0();
        b1();
    }

    private void J0(MotionEvent motionEvent) {
        int actionIndex = motionEvent.getActionIndex();
        if (motionEvent.getPointerId(actionIndex) == this.f3652g0) {
            int i10 = actionIndex == 0 ? 1 : 0;
            this.f3652g0 = motionEvent.getPointerId(i10);
            int x10 = (int) (motionEvent.getX(i10) + 0.5f);
            this.f3656k0 = x10;
            this.f3654i0 = x10;
            int y10 = (int) (motionEvent.getY(i10) + 0.5f);
            this.f3657l0 = y10;
            this.f3655j0 = y10;
        }
    }

    private boolean K(MotionEvent motionEvent) {
        t tVar = this.F;
        if (tVar == null) {
            if (motionEvent.getAction() == 0) {
                return false;
            }
            return T(motionEvent);
        }
        tVar.a(this, motionEvent);
        int action = motionEvent.getAction();
        if (action == 3 || action == 1) {
            this.F = null;
        }
        return true;
    }

    private boolean N0() {
        return this.f3650e0 != null && this.A.L1();
    }

    private void O0() {
        boolean z10;
        if (this.S) {
            this.f3666r.u();
            if (this.T) {
                this.A.S0(this);
            }
        }
        if (N0()) {
            this.f3666r.s();
        } else {
            this.f3666r.j();
        }
        boolean z11 = false;
        boolean z12 = this.f3683z0 || this.A0;
        this.f3677w0.f3711k = this.J && this.f3650e0 != null && ((z10 = this.S) || z12 || this.A.f3766h) && (!z10 || this.f3682z.h());
        b0 b0Var = this.f3677w0;
        if (b0Var.f3711k && z12 && !this.S && N0()) {
            z11 = true;
        }
        b0Var.f3712l = z11;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0056  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private void Q0(float r7, float r8, float r9, float r10) {
        /*
            r6 = this;
            r0 = 1065353216(0x3f800000, float:1.0)
            r1 = 1
            r2 = 0
            int r3 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r3 >= 0) goto L21
            r6.M()
            android.widget.EdgeEffect r3 = r6.f3646a0
            float r4 = -r8
            int r5 = r6.getWidth()
            float r5 = (float) r5
            float r4 = r4 / r5
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            float r9 = r0 - r9
            androidx.core.widget.e.c(r3, r4, r9)
        L1f:
            r9 = 1
            goto L3c
        L21:
            int r3 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r3 <= 0) goto L3b
            r6.N()
            android.widget.EdgeEffect r3 = r6.f3648c0
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r4 = r8 / r4
            int r5 = r6.getHeight()
            float r5 = (float) r5
            float r9 = r9 / r5
            androidx.core.widget.e.c(r3, r4, r9)
            goto L1f
        L3b:
            r9 = 0
        L3c:
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 >= 0) goto L56
            r6.O()
            android.widget.EdgeEffect r9 = r6.f3647b0
            float r0 = -r10
            int r3 = r6.getHeight()
            float r3 = (float) r3
            float r0 = r0 / r3
            int r3 = r6.getWidth()
            float r3 = (float) r3
            float r7 = r7 / r3
            androidx.core.widget.e.c(r9, r0, r7)
            goto L72
        L56:
            int r3 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r3 <= 0) goto L71
            r6.L()
            android.widget.EdgeEffect r9 = r6.f3649d0
            int r3 = r6.getHeight()
            float r3 = (float) r3
            float r3 = r10 / r3
            int r4 = r6.getWidth()
            float r4 = (float) r4
            float r7 = r7 / r4
            float r0 = r0 - r7
            androidx.core.widget.e.c(r9, r3, r0)
            goto L72
        L71:
            r1 = r9
        L72:
            if (r1 != 0) goto L7c
            int r7 = (r8 > r2 ? 1 : (r8 == r2 ? 0 : -1))
            if (r7 != 0) goto L7c
            int r7 = (r10 > r2 ? 1 : (r10 == r2 ? 0 : -1))
            if (r7 == 0) goto L7f
        L7c:
            androidx.core.view.a0.h0(r6)
        L7f:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Q0(float, float, float, float):void");
    }

    private void S0() {
        View viewFindViewById;
        if (!this.f3669s0 || this.f3682z == null || !hasFocus() || getDescendantFocusability() == 393216) {
            return;
        }
        if (getDescendantFocusability() == 131072 && isFocused()) {
            return;
        }
        if (!isFocused()) {
            View focusedChild = getFocusedChild();
            if (!W0 || (focusedChild.getParent() != null && focusedChild.hasFocus())) {
                if (!this.f3668s.n(focusedChild)) {
                    return;
                }
            } else if (this.f3668s.g() == 0) {
                requestFocus();
                return;
            }
        }
        View viewW = null;
        e0 e0VarY = (this.f3677w0.f3714n == -1 || !this.f3682z.h()) ? null : Y(this.f3677w0.f3714n);
        if (e0VarY != null && !this.f3668s.n(e0VarY.f3727o) && e0VarY.f3727o.hasFocusable()) {
            viewW = e0VarY.f3727o;
        } else if (this.f3668s.g() > 0) {
            viewW = W();
        }
        if (viewW != null) {
            int i10 = this.f3677w0.f3715o;
            if (i10 != -1 && (viewFindViewById = viewW.findViewById(i10)) != null && viewFindViewById.isFocusable()) {
                viewW = viewFindViewById;
            }
            viewW.requestFocus();
        }
    }

    private boolean T(MotionEvent motionEvent) {
        int action = motionEvent.getAction();
        int size = this.E.size();
        for (int i10 = 0; i10 < size; i10++) {
            t tVar = this.E.get(i10);
            if (tVar.b(this, motionEvent) && action != 3) {
                this.F = tVar;
                return true;
            }
        }
        return false;
    }

    private void T0() {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.f3646a0;
        if (edgeEffect != null) {
            edgeEffect.onRelease();
            zIsFinished = this.f3646a0.isFinished();
        } else {
            zIsFinished = false;
        }
        EdgeEffect edgeEffect2 = this.f3647b0;
        if (edgeEffect2 != null) {
            edgeEffect2.onRelease();
            zIsFinished |= this.f3647b0.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f3648c0;
        if (edgeEffect3 != null) {
            edgeEffect3.onRelease();
            zIsFinished |= this.f3648c0.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f3649d0;
        if (edgeEffect4 != null) {
            edgeEffect4.onRelease();
            zIsFinished |= this.f3649d0.isFinished();
        }
        if (zIsFinished) {
            androidx.core.view.a0.h0(this);
        }
    }

    private void U(int[] iArr) {
        int iG = this.f3668s.g();
        if (iG == 0) {
            iArr[0] = -1;
            iArr[1] = -1;
            return;
        }
        int i10 = Integer.MAX_VALUE;
        int i11 = Integer.MIN_VALUE;
        for (int i12 = 0; i12 < iG; i12++) {
            e0 e0VarF0 = f0(this.f3668s.f(i12));
            if (!e0VarF0.T()) {
                int iW = e0VarF0.w();
                if (iW < i10) {
                    i10 = iW;
                }
                if (iW > i11) {
                    i11 = iW;
                }
            }
        }
        iArr[0] = i10;
        iArr[1] = i11;
    }

    static RecyclerView V(View view) {
        if (!(view instanceof ViewGroup)) {
            return null;
        }
        if (view instanceof RecyclerView) {
            return (RecyclerView) view;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int childCount = viewGroup.getChildCount();
        for (int i10 = 0; i10 < childCount; i10++) {
            RecyclerView recyclerViewV = V(viewGroup.getChildAt(i10));
            if (recyclerViewV != null) {
                return recyclerViewV;
            }
        }
        return null;
    }

    private View W() {
        e0 e0VarX;
        b0 b0Var = this.f3677w0;
        int i10 = b0Var.f3713m;
        if (i10 == -1) {
            i10 = 0;
        }
        int iB = b0Var.b();
        for (int i11 = i10; i11 < iB; i11++) {
            e0 e0VarX2 = X(i11);
            if (e0VarX2 == null) {
                break;
            }
            if (e0VarX2.f3727o.hasFocusable()) {
                return e0VarX2.f3727o;
            }
        }
        int iMin = Math.min(iB, i10);
        do {
            iMin--;
            if (iMin < 0 || (e0VarX = X(iMin)) == null) {
                return null;
            }
        } while (!e0VarX.f3727o.hasFocusable());
        return e0VarX.f3727o;
    }

    private void a1(View view, View view2) {
        View view3 = view2 != null ? view2 : view;
        this.f3676w.set(0, 0, view3.getWidth(), view3.getHeight());
        ViewGroup.LayoutParams layoutParams = view3.getLayoutParams();
        if (layoutParams instanceof q) {
            q qVar = (q) layoutParams;
            if (!qVar.f3785c) {
                Rect rect = qVar.f3784b;
                Rect rect2 = this.f3676w;
                rect2.left -= rect.left;
                rect2.right += rect.right;
                rect2.top -= rect.top;
                rect2.bottom += rect.bottom;
            }
        }
        if (view2 != null) {
            offsetDescendantRectToMyCoords(view2, this.f3676w);
            offsetRectIntoDescendantCoords(view, this.f3676w);
        }
        this.A.s1(this, view, this.f3676w, !this.J, view2 == null);
    }

    private void b1() {
        b0 b0Var = this.f3677w0;
        b0Var.f3714n = -1L;
        b0Var.f3713m = -1;
        b0Var.f3715o = -1;
    }

    private void c1() {
        VelocityTracker velocityTracker = this.f3653h0;
        if (velocityTracker != null) {
            velocityTracker.clear();
        }
        t1(0);
        T0();
    }

    private void d1() {
        View focusedChild = (this.f3669s0 && hasFocus() && this.f3682z != null) ? getFocusedChild() : null;
        e0 e0VarS = focusedChild != null ? S(focusedChild) : null;
        if (e0VarS == null) {
            b1();
            return;
        }
        this.f3677w0.f3714n = this.f3682z.h() ? e0VarS.u() : -1L;
        this.f3677w0.f3713m = this.S ? -1 : e0VarS.F() ? e0VarS.f3730r : e0VarS.t();
        this.f3677w0.f3715o = h0(e0VarS.f3727o);
    }

    static e0 f0(View view) {
        if (view == null) {
            return null;
        }
        return ((q) view.getLayoutParams()).f3783a;
    }

    private void g(e0 e0Var) {
        View view = e0Var.f3727o;
        boolean z10 = view.getParent() == this;
        this.f3662p.J(e0(view));
        if (e0Var.H()) {
            this.f3668s.c(view, -1, view.getLayoutParams(), true);
        } else if (z10) {
            this.f3668s.k(view);
        } else {
            this.f3668s.b(view, true);
        }
    }

    static void g0(View view, Rect rect) {
        q qVar = (q) view.getLayoutParams();
        Rect rect2 = qVar.f3784b;
        rect.set((view.getLeft() - rect2.left) - ((ViewGroup.MarginLayoutParams) qVar).leftMargin, (view.getTop() - rect2.top) - ((ViewGroup.MarginLayoutParams) qVar).topMargin, view.getRight() + rect2.right + ((ViewGroup.MarginLayoutParams) qVar).rightMargin, view.getBottom() + rect2.bottom + ((ViewGroup.MarginLayoutParams) qVar).bottomMargin);
    }

    private androidx.core.view.p getScrollingChildHelper() {
        if (this.G0 == null) {
            this.G0 = new androidx.core.view.p(this);
        }
        return this.G0;
    }

    private int h0(View view) {
        int id = view.getId();
        while (!view.isFocused() && (view instanceof ViewGroup) && view.hasFocus()) {
            view = ((ViewGroup) view).getFocusedChild();
            if (view.getId() != -1) {
                id = view.getId();
            }
        }
        return id;
    }

    private String i0(Context context, String str) {
        if (str.charAt(0) == '.') {
            return context.getPackageName() + str;
        }
        if (str.contains(".")) {
            return str;
        }
        return RecyclerView.class.getPackage().getName() + '.' + str;
    }

    private void i1(h hVar, boolean z10, boolean z11) {
        h hVar2 = this.f3682z;
        if (hVar2 != null) {
            hVar2.u(this.f3660o);
            this.f3682z.n(this);
        }
        if (!z10 || z11) {
            U0();
        }
        this.f3666r.u();
        h hVar3 = this.f3682z;
        this.f3682z = hVar;
        if (hVar != null) {
            hVar.s(this.f3660o);
            hVar.j(this);
        }
        p pVar = this.A;
        if (pVar != null) {
            pVar.E0(hVar3, this.f3682z);
        }
        this.f3662p.x(hVar3, this.f3682z, z10);
        this.f3677w0.f3707g = true;
    }

    private void k0(long j10, e0 e0Var, e0 e0Var2) {
        int iG = this.f3668s.g();
        for (int i10 = 0; i10 < iG; i10++) {
            e0 e0VarF0 = f0(this.f3668s.f(i10));
            if (e0VarF0 != e0Var && c0(e0VarF0) == j10) {
                h hVar = this.f3682z;
                if (hVar == null || !hVar.h()) {
                    throw new IllegalStateException("Two different ViewHolders have the same change ID. This might happen due to inconsistent Adapter update events or if the LayoutManager lays out the same View multiple times.\n ViewHolder 1:" + e0VarF0 + " \n View Holder 2:" + e0Var + P());
                }
                throw new IllegalStateException("Two different ViewHolders have the same stable ID. Stable IDs in your adapter MUST BE unique and SHOULD NOT change.\n ViewHolder 1:" + e0VarF0 + " \n View Holder 2:" + e0Var + P());
            }
        }
        Log.e("RecyclerView", "Problem while matching changed view holders with the newones. The pre-layout information for the change holder " + e0Var2 + " cannot be found but it is necessary for " + e0Var + P());
    }

    private void m(e0 e0Var, e0 e0Var2, m.c cVar, m.c cVar2, boolean z10, boolean z11) {
        e0Var.Q(false);
        if (z10) {
            g(e0Var);
        }
        if (e0Var != e0Var2) {
            if (z11) {
                g(e0Var2);
            }
            e0Var.f3734v = e0Var2;
            g(e0Var);
            this.f3662p.J(e0Var);
            e0Var2.Q(false);
            e0Var2.f3735w = e0Var;
        }
        if (this.f3650e0.b(e0Var, e0Var2, cVar, cVar2)) {
            M0();
        }
    }

    private boolean m0() {
        int iG = this.f3668s.g();
        for (int i10 = 0; i10 < iG; i10++) {
            e0 e0VarF0 = f0(this.f3668s.f(i10));
            if (e0VarF0 != null && !e0VarF0.T() && e0VarF0.I()) {
                return true;
            }
        }
        return false;
    }

    @SuppressLint({"InlinedApi"})
    private void o0() {
        if (androidx.core.view.a0.D(this) == 0) {
            androidx.core.view.a0.B0(this, 8);
        }
    }

    private void p0() {
        this.f3668s = new androidx.recyclerview.widget.b(new e());
    }

    private void q() {
        c1();
        setScrollState(0);
    }

    static void r(e0 e0Var) {
        WeakReference<RecyclerView> weakReference = e0Var.f3728p;
        if (weakReference != null) {
            RecyclerView recyclerView = weakReference.get();
            while (recyclerView != null) {
                if (recyclerView == e0Var.f3727o) {
                    return;
                }
                Object parent = recyclerView.getParent();
                recyclerView = parent instanceof View ? (View) parent : null;
            }
            e0Var.f3728p = null;
        }
    }

    private boolean u0(View view, View view2, int i10) {
        int i11;
        if (view2 == null || view2 == this || view2 == view || R(view2) == null) {
            return false;
        }
        if (view == null || R(view) == null) {
            return true;
        }
        this.f3676w.set(0, 0, view.getWidth(), view.getHeight());
        this.f3678x.set(0, 0, view2.getWidth(), view2.getHeight());
        offsetDescendantRectToMyCoords(view, this.f3676w);
        offsetDescendantRectToMyCoords(view2, this.f3678x);
        byte b10 = -1;
        int i12 = this.A.Z() == 1 ? -1 : 1;
        Rect rect = this.f3676w;
        int i13 = rect.left;
        Rect rect2 = this.f3678x;
        int i14 = rect2.left;
        if ((i13 < i14 || rect.right <= i14) && rect.right < rect2.right) {
            i11 = 1;
        } else {
            int i15 = rect.right;
            int i16 = rect2.right;
            i11 = ((i15 > i16 || i13 >= i16) && i13 > i14) ? -1 : 0;
        }
        int i17 = rect.top;
        int i18 = rect2.top;
        if ((i17 < i18 || rect.bottom <= i18) && rect.bottom < rect2.bottom) {
            b10 = 1;
        } else {
            int i19 = rect.bottom;
            int i20 = rect2.bottom;
            if ((i19 <= i20 && i17 < i20) || i17 <= i18) {
                b10 = 0;
            }
        }
        if (i10 == 1) {
            return b10 < 0 || (b10 == 0 && i11 * i12 < 0);
        }
        if (i10 == 2) {
            return b10 > 0 || (b10 == 0 && i11 * i12 > 0);
        }
        if (i10 == 17) {
            return i11 < 0;
        }
        if (i10 == 33) {
            return b10 < 0;
        }
        if (i10 == 66) {
            return i11 > 0;
        }
        if (i10 == 130) {
            return b10 > 0;
        }
        throw new IllegalArgumentException("Invalid direction: " + i10 + P());
    }

    private void v(Context context, String str, AttributeSet attributeSet, int i10, int i11) {
        Constructor constructor;
        if (str != null) {
            String strTrim = str.trim();
            if (strTrim.isEmpty()) {
                return;
            }
            String strI0 = i0(context, strTrim);
            try {
                Class<? extends U> clsAsSubclass = Class.forName(strI0, false, isInEditMode() ? getClass().getClassLoader() : context.getClassLoader()).asSubclass(p.class);
                Object[] objArr = null;
                try {
                    constructor = clsAsSubclass.getConstructor(X0);
                    objArr = new Object[]{context, attributeSet, Integer.valueOf(i10), Integer.valueOf(i11)};
                } catch (NoSuchMethodException e10) {
                    try {
                        constructor = clsAsSubclass.getConstructor(new Class[0]);
                    } catch (NoSuchMethodException e11) {
                        e11.initCause(e10);
                        throw new IllegalStateException(attributeSet.getPositionDescription() + ": Error creating LayoutManager " + strI0, e11);
                    }
                }
                constructor.setAccessible(true);
                setLayoutManager((p) constructor.newInstance(objArr));
            } catch (ClassCastException e12) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Class is not a LayoutManager " + strI0, e12);
            } catch (ClassNotFoundException e13) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Unable to find LayoutManager " + strI0, e13);
            } catch (IllegalAccessException e14) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Cannot access non-public constructor " + strI0, e14);
            } catch (InstantiationException e15) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strI0, e15);
            } catch (InvocationTargetException e16) {
                throw new IllegalStateException(attributeSet.getPositionDescription() + ": Could not instantiate the LayoutManager: " + strI0, e16);
            }
        }
    }

    private void v1() {
        this.f3671t0.f();
        p pVar = this.A;
        if (pVar != null) {
            pVar.K1();
        }
    }

    private boolean x(int i10, int i11) {
        U(this.F0);
        int[] iArr = this.F0;
        return (iArr[0] == i10 && iArr[1] == i11) ? false : true;
    }

    private void y0(int i10, int i11, MotionEvent motionEvent, int i12) {
        p pVar = this.A;
        if (pVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.M) {
            return;
        }
        int[] iArr = this.J0;
        iArr[0] = 0;
        iArr[1] = 0;
        boolean zK = pVar.k();
        boolean zL = this.A.l();
        r1(zL ? (zK ? 1 : 0) | 2 : zK ? 1 : 0, i12);
        if (F(zK ? i10 : 0, zL ? i11 : 0, this.J0, this.H0, i12)) {
            int[] iArr2 = this.J0;
            i10 -= iArr2[0];
            i11 -= iArr2[1];
        }
        f1(zK ? i10 : 0, zL ? i11 : 0, motionEvent, i12);
        androidx.recyclerview.widget.e eVar = this.f3673u0;
        if (eVar != null && (i10 != 0 || i11 != 0)) {
            eVar.f(this, i10, i11);
        }
        t1(i12);
    }

    public void A0(int i10) {
        int iG = this.f3668s.g();
        for (int i11 = 0; i11 < iG; i11++) {
            this.f3668s.f(i11).offsetTopAndBottom(i10);
        }
    }

    void B() {
        if (this.f3682z == null) {
            Log.w("RecyclerView", "No adapter attached; skipping layout");
            return;
        }
        if (this.A == null) {
            Log.e("RecyclerView", "No layout manager attached; skipping layout");
            return;
        }
        this.f3677w0.f3710j = false;
        boolean z10 = this.M0 && !(this.N0 == getWidth() && this.O0 == getHeight());
        this.N0 = 0;
        this.O0 = 0;
        this.M0 = false;
        if (this.f3677w0.f3705e == 1) {
            C();
            this.A.z1(this);
            D();
        } else if (this.f3666r.q() || z10 || this.A.o0() != getWidth() || this.A.W() != getHeight()) {
            this.A.z1(this);
            D();
        } else {
            this.A.z1(this);
        }
        E();
    }

    void B0(int i10, int i11) {
        int iJ = this.f3668s.j();
        for (int i12 = 0; i12 < iJ; i12++) {
            e0 e0VarF0 = f0(this.f3668s.i(i12));
            if (e0VarF0 != null && !e0VarF0.T() && e0VarF0.f3729q >= i10) {
                e0VarF0.K(i11, false);
                this.f3677w0.f3707g = true;
            }
        }
        this.f3662p.u(i10, i11);
        requestLayout();
    }

    void C0(int i10, int i11) {
        int i12;
        int i13;
        int i14;
        int i15;
        int iJ = this.f3668s.j();
        if (i10 < i11) {
            i14 = -1;
            i13 = i10;
            i12 = i11;
        } else {
            i12 = i10;
            i13 = i11;
            i14 = 1;
        }
        for (int i16 = 0; i16 < iJ; i16++) {
            e0 e0VarF0 = f0(this.f3668s.i(i16));
            if (e0VarF0 != null && (i15 = e0VarF0.f3729q) >= i13 && i15 <= i12) {
                if (i15 == i10) {
                    e0VarF0.K(i11 - i10, false);
                } else {
                    e0VarF0.K(i14, false);
                }
                this.f3677w0.f3707g = true;
            }
        }
        this.f3662p.v(i10, i11);
        requestLayout();
    }

    void D0(int i10, int i11, boolean z10) {
        int i12 = i10 + i11;
        int iJ = this.f3668s.j();
        for (int i13 = 0; i13 < iJ; i13++) {
            e0 e0VarF0 = f0(this.f3668s.i(i13));
            if (e0VarF0 != null && !e0VarF0.T()) {
                int i14 = e0VarF0.f3729q;
                if (i14 >= i12) {
                    e0VarF0.K(-i11, z10);
                    this.f3677w0.f3707g = true;
                } else if (i14 >= i10) {
                    e0VarF0.s(i10 - 1, -i11, z10);
                    this.f3677w0.f3707g = true;
                }
            }
        }
        this.f3662p.w(i10, i11, z10);
        requestLayout();
    }

    public void E0(View view) {
    }

    public boolean F(int i10, int i11, int[] iArr, int[] iArr2, int i12) {
        return getScrollingChildHelper().d(i10, i11, iArr, iArr2, i12);
    }

    public void F0(View view) {
    }

    public final void G(int i10, int i11, int i12, int i13, int[] iArr, int i14, int[] iArr2) {
        getScrollingChildHelper().e(i10, i11, i12, i13, iArr, i14, iArr2);
    }

    void G0() {
        this.U++;
    }

    void H(int i10) {
        p pVar = this.A;
        if (pVar != null) {
            pVar.e1(i10);
        }
        K0(i10);
        u uVar = this.f3679x0;
        if (uVar != null) {
            uVar.a(this, i10);
        }
        List<u> list = this.f3681y0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f3681y0.get(size).a(this, i10);
            }
        }
    }

    void H0() {
        I0(true);
    }

    void I(int i10, int i11) {
        this.V++;
        int scrollX = getScrollX();
        int scrollY = getScrollY();
        onScrollChanged(scrollX, scrollY, scrollX - i10, scrollY - i11);
        L0(i10, i11);
        u uVar = this.f3679x0;
        if (uVar != null) {
            uVar.b(this, i10, i11);
        }
        List<u> list = this.f3681y0;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.f3681y0.get(size).b(this, i10, i11);
            }
        }
        this.V--;
    }

    void I0(boolean z10) {
        int i10 = this.U - 1;
        this.U = i10;
        if (i10 < 1) {
            this.U = 0;
            if (z10) {
                A();
                J();
            }
        }
    }

    void J() {
        int i10;
        for (int size = this.K0.size() - 1; size >= 0; size--) {
            e0 e0Var = this.K0.get(size);
            if (e0Var.f3727o.getParent() == this && !e0Var.T() && (i10 = e0Var.E) != -1) {
                androidx.core.view.a0.A0(e0Var.f3727o, i10);
                e0Var.E = -1;
            }
        }
        this.K0.clear();
    }

    public void K0(int i10) {
    }

    void L() {
        if (this.f3649d0 != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.W.a(this, 3);
        this.f3649d0 = edgeEffectA;
        if (this.f3672u) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    public void L0(int i10, int i11) {
    }

    void M() {
        if (this.f3646a0 != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.W.a(this, 0);
        this.f3646a0 = edgeEffectA;
        if (this.f3672u) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void M0() {
        if (this.C0 || !this.G) {
            return;
        }
        androidx.core.view.a0.i0(this, this.L0);
        this.C0 = true;
    }

    void N() {
        if (this.f3648c0 != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.W.a(this, 2);
        this.f3648c0 = edgeEffectA;
        if (this.f3672u) {
            edgeEffectA.setSize((getMeasuredHeight() - getPaddingTop()) - getPaddingBottom(), (getMeasuredWidth() - getPaddingLeft()) - getPaddingRight());
        } else {
            edgeEffectA.setSize(getMeasuredHeight(), getMeasuredWidth());
        }
    }

    void O() {
        if (this.f3647b0 != null) {
            return;
        }
        EdgeEffect edgeEffectA = this.W.a(this, 1);
        this.f3647b0 = edgeEffectA;
        if (this.f3672u) {
            edgeEffectA.setSize((getMeasuredWidth() - getPaddingLeft()) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
        } else {
            edgeEffectA.setSize(getMeasuredWidth(), getMeasuredHeight());
        }
    }

    String P() {
        return " " + super.toString() + ", adapter:" + this.f3682z + ", layout:" + this.A + ", context:" + getContext();
    }

    void P0(boolean z10) {
        this.T = z10 | this.T;
        this.S = true;
        x0();
    }

    final void Q(b0 b0Var) {
        if (getScrollState() != 2) {
            b0Var.f3716p = 0;
            b0Var.f3717q = 0;
        } else {
            OverScroller overScroller = this.f3671t0.f3721q;
            b0Var.f3716p = overScroller.getFinalX() - overScroller.getCurrX();
            b0Var.f3717q = overScroller.getFinalY() - overScroller.getCurrY();
        }
    }

    public View R(View view) {
        ViewParent parent = view.getParent();
        while (parent != null && parent != this && (parent instanceof View)) {
            view = parent;
            parent = view.getParent();
        }
        if (parent == this) {
            return view;
        }
        return null;
    }

    void R0(e0 e0Var, m.c cVar) {
        e0Var.P(0, Utility.DEFAULT_STREAM_BUFFER_SIZE);
        if (this.f3677w0.f3709i && e0Var.I() && !e0Var.F() && !e0Var.T()) {
            this.f3670t.c(c0(e0Var), e0Var);
        }
        this.f3670t.e(e0Var, cVar);
    }

    public e0 S(View view) {
        View viewR = R(view);
        if (viewR == null) {
            return null;
        }
        return e0(viewR);
    }

    void U0() {
        m mVar = this.f3650e0;
        if (mVar != null) {
            mVar.k();
        }
        p pVar = this.A;
        if (pVar != null) {
            pVar.k1(this.f3662p);
            this.A.l1(this.f3662p);
        }
        this.f3662p.c();
    }

    boolean V0(View view) {
        q1();
        boolean zR = this.f3668s.r(view);
        if (zR) {
            e0 e0VarF0 = f0(view);
            this.f3662p.J(e0VarF0);
            this.f3662p.C(e0VarF0);
        }
        s1(!zR);
        return zR;
    }

    public void W0(o oVar) {
        p pVar = this.A;
        if (pVar != null) {
            pVar.g("Cannot remove item decoration during a scroll  or layout");
        }
        this.D.remove(oVar);
        if (this.D.isEmpty()) {
            setWillNotDraw(getOverScrollMode() == 2);
        }
        w0();
        requestLayout();
    }

    public e0 X(int i10) {
        e0 e0Var = null;
        if (this.S) {
            return null;
        }
        int iJ = this.f3668s.j();
        for (int i11 = 0; i11 < iJ; i11++) {
            e0 e0VarF0 = f0(this.f3668s.i(i11));
            if (e0VarF0 != null && !e0VarF0.F() && b0(e0VarF0) == i10) {
                if (!this.f3668s.n(e0VarF0.f3727o)) {
                    return e0VarF0;
                }
                e0Var = e0VarF0;
            }
        }
        return e0Var;
    }

    public void X0(t tVar) {
        this.E.remove(tVar);
        if (this.F == tVar) {
            this.F = null;
        }
    }

    public e0 Y(long j10) {
        h hVar = this.f3682z;
        e0 e0Var = null;
        if (hVar != null && hVar.h()) {
            int iJ = this.f3668s.j();
            for (int i10 = 0; i10 < iJ; i10++) {
                e0 e0VarF0 = f0(this.f3668s.i(i10));
                if (e0VarF0 != null && !e0VarF0.F() && e0VarF0.u() == j10) {
                    if (!this.f3668s.n(e0VarF0.f3727o)) {
                        return e0VarF0;
                    }
                    e0Var = e0VarF0;
                }
            }
        }
        return e0Var;
    }

    public void Y0(u uVar) {
        List<u> list = this.f3681y0;
        if (list != null) {
            list.remove(uVar);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    androidx.recyclerview.widget.RecyclerView.e0 Z(int r6, boolean r7) {
        /*
            r5 = this;
            androidx.recyclerview.widget.b r0 = r5.f3668s
            int r0 = r0.j()
            r1 = 0
            r2 = 0
        L8:
            if (r2 >= r0) goto L3a
            androidx.recyclerview.widget.b r3 = r5.f3668s
            android.view.View r3 = r3.i(r2)
            androidx.recyclerview.widget.RecyclerView$e0 r3 = f0(r3)
            if (r3 == 0) goto L37
            boolean r4 = r3.F()
            if (r4 != 0) goto L37
            if (r7 == 0) goto L23
            int r4 = r3.f3729q
            if (r4 == r6) goto L2a
            goto L37
        L23:
            int r4 = r3.w()
            if (r4 == r6) goto L2a
            goto L37
        L2a:
            androidx.recyclerview.widget.b r1 = r5.f3668s
            android.view.View r4 = r3.f3727o
            boolean r1 = r1.n(r4)
            if (r1 == 0) goto L36
            r1 = r3
            goto L37
        L36:
            return r3
        L37:
            int r2 = r2 + 1
            goto L8
        L3a:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.Z(int, boolean):androidx.recyclerview.widget.RecyclerView$e0");
    }

    void Z0() {
        e0 e0Var;
        int iG = this.f3668s.g();
        for (int i10 = 0; i10 < iG; i10++) {
            View viewF = this.f3668s.f(i10);
            e0 e0VarE0 = e0(viewF);
            if (e0VarE0 != null && (e0Var = e0VarE0.f3735w) != null) {
                View view = e0Var.f3727o;
                int left = viewF.getLeft();
                int top = viewF.getTop();
                if (left != view.getLeft() || top != view.getTop()) {
                    view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
                }
            }
        }
    }

    void a(int i10, int i11) {
        if (i10 < 0) {
            M();
            if (this.f3646a0.isFinished()) {
                this.f3646a0.onAbsorb(-i10);
            }
        } else if (i10 > 0) {
            N();
            if (this.f3648c0.isFinished()) {
                this.f3648c0.onAbsorb(i10);
            }
        }
        if (i11 < 0) {
            O();
            if (this.f3647b0.isFinished()) {
                this.f3647b0.onAbsorb(-i11);
            }
        } else if (i11 > 0) {
            L();
            if (this.f3649d0.isFinished()) {
                this.f3649d0.onAbsorb(i11);
            }
        }
        if (i10 == 0 && i11 == 0) {
            return;
        }
        androidx.core.view.a0.h0(this);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public boolean a0(int i10, int i11) {
        p pVar = this.A;
        if (pVar == null) {
            Log.e("RecyclerView", "Cannot fling without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return false;
        }
        if (this.M) {
            return false;
        }
        int iK = pVar.k();
        boolean zL = this.A.l();
        if (iK == 0 || Math.abs(i10) < this.f3661o0) {
            i10 = 0;
        }
        if (!zL || Math.abs(i11) < this.f3661o0) {
            i11 = 0;
        }
        if (i10 == 0 && i11 == 0) {
            return false;
        }
        float f10 = i10;
        float f11 = i11;
        if (!dispatchNestedPreFling(f10, f11)) {
            boolean z10 = iK != 0 || zL;
            dispatchNestedFling(f10, f11, z10);
            s sVar = this.f3659n0;
            if (sVar != null && sVar.a(i10, i11)) {
                return true;
            }
            if (z10) {
                if (zL) {
                    iK = (iK == true ? 1 : 0) | 2;
                }
                r1(iK, 1);
                int i12 = this.f3663p0;
                int iMax = Math.max(-i12, Math.min(i10, i12));
                int i13 = this.f3663p0;
                this.f3671t0.b(iMax, Math.max(-i13, Math.min(i11, i13)));
                return true;
            }
        }
        return false;
    }

    @Override // android.view.ViewGroup, android.view.View
    public void addFocusables(ArrayList<View> arrayList, int i10, int i11) {
        p pVar = this.A;
        if (pVar == null || !pVar.F0(this, arrayList, i10, i11)) {
            super.addFocusables(arrayList, i10, i11);
        }
    }

    int b0(e0 e0Var) {
        if (e0Var.z(524) || !e0Var.C()) {
            return -1;
        }
        return this.f3666r.e(e0Var.f3729q);
    }

    long c0(e0 e0Var) {
        return this.f3682z.h() ? e0Var.u() : e0Var.f3729q;
    }

    @Override // android.view.ViewGroup
    protected boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return (layoutParams instanceof q) && this.A.m((q) layoutParams);
    }

    @Override // android.view.View
    public int computeHorizontalScrollExtent() {
        p pVar = this.A;
        if (pVar != null && pVar.k()) {
            return this.A.q(this.f3677w0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollOffset() {
        p pVar = this.A;
        if (pVar != null && pVar.k()) {
            return this.A.r(this.f3677w0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeHorizontalScrollRange() {
        p pVar = this.A;
        if (pVar != null && pVar.k()) {
            return this.A.s(this.f3677w0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollExtent() {
        p pVar = this.A;
        if (pVar != null && pVar.l()) {
            return this.A.t(this.f3677w0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollOffset() {
        p pVar = this.A;
        if (pVar != null && pVar.l()) {
            return this.A.u(this.f3677w0);
        }
        return 0;
    }

    @Override // android.view.View
    public int computeVerticalScrollRange() {
        p pVar = this.A;
        if (pVar != null && pVar.l()) {
            return this.A.v(this.f3677w0);
        }
        return 0;
    }

    public int d0(View view) {
        e0 e0VarF0 = f0(view);
        if (e0VarF0 != null) {
            return e0VarF0.w();
        }
        return -1;
    }

    @Override // android.view.View
    public boolean dispatchNestedFling(float f10, float f11, boolean z10) {
        return getScrollingChildHelper().a(f10, f11, z10);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreFling(float f10, float f11) {
        return getScrollingChildHelper().b(f10, f11);
    }

    @Override // android.view.View
    public boolean dispatchNestedPreScroll(int i10, int i11, int[] iArr, int[] iArr2) {
        return getScrollingChildHelper().c(i10, i11, iArr, iArr2);
    }

    @Override // android.view.View
    public boolean dispatchNestedScroll(int i10, int i11, int i12, int i13, int[] iArr) {
        return getScrollingChildHelper().f(i10, i11, i12, i13, iArr);
    }

    @Override // android.view.View
    public boolean dispatchPopulateAccessibilityEvent(AccessibilityEvent accessibilityEvent) {
        onPopulateAccessibilityEvent(accessibilityEvent);
        return true;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchRestoreInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchThawSelfOnly(sparseArray);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void dispatchSaveInstanceState(SparseArray<Parcelable> sparseArray) {
        dispatchFreezeSelfOnly(sparseArray);
    }

    @Override // android.view.View
    public void draw(Canvas canvas) {
        boolean z10;
        super.draw(canvas);
        int size = this.D.size();
        boolean z11 = false;
        for (int i10 = 0; i10 < size; i10++) {
            this.D.get(i10).i(canvas, this, this.f3677w0);
        }
        EdgeEffect edgeEffect = this.f3646a0;
        if (edgeEffect == null || edgeEffect.isFinished()) {
            z10 = false;
        } else {
            int iSave = canvas.save();
            int paddingBottom = this.f3672u ? getPaddingBottom() : 0;
            canvas.rotate(270.0f);
            canvas.translate((-getHeight()) + paddingBottom, 0.0f);
            EdgeEffect edgeEffect2 = this.f3646a0;
            z10 = edgeEffect2 != null && edgeEffect2.draw(canvas);
            canvas.restoreToCount(iSave);
        }
        EdgeEffect edgeEffect3 = this.f3647b0;
        if (edgeEffect3 != null && !edgeEffect3.isFinished()) {
            int iSave2 = canvas.save();
            if (this.f3672u) {
                canvas.translate(getPaddingLeft(), getPaddingTop());
            }
            EdgeEffect edgeEffect4 = this.f3647b0;
            z10 |= edgeEffect4 != null && edgeEffect4.draw(canvas);
            canvas.restoreToCount(iSave2);
        }
        EdgeEffect edgeEffect5 = this.f3648c0;
        if (edgeEffect5 != null && !edgeEffect5.isFinished()) {
            int iSave3 = canvas.save();
            int width = getWidth();
            int paddingTop = this.f3672u ? getPaddingTop() : 0;
            canvas.rotate(90.0f);
            canvas.translate(paddingTop, -width);
            EdgeEffect edgeEffect6 = this.f3648c0;
            z10 |= edgeEffect6 != null && edgeEffect6.draw(canvas);
            canvas.restoreToCount(iSave3);
        }
        EdgeEffect edgeEffect7 = this.f3649d0;
        if (edgeEffect7 != null && !edgeEffect7.isFinished()) {
            int iSave4 = canvas.save();
            canvas.rotate(180.0f);
            if (this.f3672u) {
                canvas.translate((-getWidth()) + getPaddingRight(), (-getHeight()) + getPaddingBottom());
            } else {
                canvas.translate(-getWidth(), -getHeight());
            }
            EdgeEffect edgeEffect8 = this.f3649d0;
            if (edgeEffect8 != null && edgeEffect8.draw(canvas)) {
                z11 = true;
            }
            z10 |= z11;
            canvas.restoreToCount(iSave4);
        }
        if ((z10 || this.f3650e0 == null || this.D.size() <= 0 || !this.f3650e0.p()) ? z10 : true) {
            androidx.core.view.a0.h0(this);
        }
    }

    @Override // android.view.ViewGroup
    public boolean drawChild(Canvas canvas, View view, long j10) {
        return super.drawChild(canvas, view, j10);
    }

    public e0 e0(View view) {
        ViewParent parent = view.getParent();
        if (parent == null || parent == this) {
            return f0(view);
        }
        throw new IllegalArgumentException("View " + view + " is not a direct child of " + this);
    }

    void e1() {
        int iJ = this.f3668s.j();
        for (int i10 = 0; i10 < iJ; i10++) {
            e0 e0VarF0 = f0(this.f3668s.i(i10));
            if (!e0VarF0.T()) {
                e0VarF0.O();
            }
        }
    }

    boolean f1(int i10, int i11, MotionEvent motionEvent, int i12) {
        int i13;
        int i14;
        int i15;
        int i16;
        u();
        if (this.f3682z != null) {
            int[] iArr = this.J0;
            iArr[0] = 0;
            iArr[1] = 0;
            g1(i10, i11, iArr);
            int[] iArr2 = this.J0;
            int i17 = iArr2[0];
            int i18 = iArr2[1];
            i13 = i18;
            i14 = i17;
            i15 = i10 - i17;
            i16 = i11 - i18;
        } else {
            i13 = 0;
            i14 = 0;
            i15 = 0;
            i16 = 0;
        }
        if (!this.D.isEmpty()) {
            invalidate();
        }
        int[] iArr3 = this.J0;
        iArr3[0] = 0;
        iArr3[1] = 0;
        G(i14, i13, i15, i16, this.H0, i12, iArr3);
        int[] iArr4 = this.J0;
        int i19 = i15 - iArr4[0];
        int i20 = i16 - iArr4[1];
        boolean z10 = (iArr4[0] == 0 && iArr4[1] == 0) ? false : true;
        int i21 = this.f3656k0;
        int[] iArr5 = this.H0;
        this.f3656k0 = i21 - iArr5[0];
        this.f3657l0 -= iArr5[1];
        int[] iArr6 = this.I0;
        iArr6[0] = iArr6[0] + iArr5[0];
        iArr6[1] = iArr6[1] + iArr5[1];
        if (getOverScrollMode() != 2) {
            if (motionEvent != null && !androidx.core.view.n.a(motionEvent, 8194)) {
                Q0(motionEvent.getX(), i19, motionEvent.getY(), i20);
            }
            t(i10, i11);
        }
        if (i14 != 0 || i13 != 0) {
            I(i14, i13);
        }
        if (!awakenScrollBars()) {
            invalidate();
        }
        return (!z10 && i14 == 0 && i13 == 0) ? false : true;
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public View focusSearch(View view, int i10) {
        View viewJ0;
        boolean z10;
        View viewQ0 = this.A.Q0(view, i10);
        if (viewQ0 != null) {
            return viewQ0;
        }
        boolean z11 = (this.f3682z == null || this.A == null || t0() || this.M) ? false : true;
        FocusFinder focusFinder = FocusFinder.getInstance();
        if (z11 && (i10 == 2 || i10 == 1)) {
            if (this.A.l()) {
                int i11 = i10 == 2 ? 130 : 33;
                z10 = focusFinder.findNextFocus(this, view, i11) == null;
                if (V0) {
                    i10 = i11;
                }
            } else {
                z10 = false;
            }
            if (!z10 && this.A.k()) {
                int i12 = (this.A.Z() == 1) ^ (i10 == 2) ? 66 : 17;
                boolean z12 = focusFinder.findNextFocus(this, view, i12) == null;
                if (V0) {
                    i10 = i12;
                }
                z10 = z12;
            }
            if (z10) {
                u();
                if (R(view) == null) {
                    return null;
                }
                q1();
                this.A.J0(view, i10, this.f3662p, this.f3677w0);
                s1(false);
            }
            viewJ0 = focusFinder.findNextFocus(this, view, i10);
        } else {
            View viewFindNextFocus = focusFinder.findNextFocus(this, view, i10);
            if (viewFindNextFocus == null && z11) {
                u();
                if (R(view) == null) {
                    return null;
                }
                q1();
                viewJ0 = this.A.J0(view, i10, this.f3662p, this.f3677w0);
                s1(false);
            } else {
                viewJ0 = viewFindNextFocus;
            }
        }
        if (viewJ0 == null || viewJ0.hasFocusable()) {
            return u0(view, viewJ0, i10) ? viewJ0 : super.focusSearch(view, i10);
        }
        if (getFocusedChild() == null) {
            return super.focusSearch(view, i10);
        }
        a1(viewJ0, null);
        return view;
    }

    void g1(int i10, int i11, int[] iArr) {
        q1();
        G0();
        androidx.core.os.m.a("RV Scroll");
        Q(this.f3677w0);
        int iW1 = i10 != 0 ? this.A.w1(i10, this.f3662p, this.f3677w0) : 0;
        int iY1 = i11 != 0 ? this.A.y1(i11, this.f3662p, this.f3677w0) : 0;
        androidx.core.os.m.b();
        Z0();
        H0();
        s1(false);
        if (iArr != null) {
            iArr[0] = iW1;
            iArr[1] = iY1;
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateDefaultLayoutParams() {
        p pVar = this.A;
        if (pVar != null) {
            return pVar.D();
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + P());
    }

    @Override // android.view.ViewGroup
    public ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        p pVar = this.A;
        if (pVar != null) {
            return pVar.E(getContext(), attributeSet);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + P());
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.recyclerview.widget.RecyclerView";
    }

    public h getAdapter() {
        return this.f3682z;
    }

    @Override // android.view.View
    public int getBaseline() {
        p pVar = this.A;
        return pVar != null ? pVar.G() : super.getBaseline();
    }

    @Override // android.view.ViewGroup
    protected int getChildDrawingOrder(int i10, int i11) {
        k kVar = this.E0;
        return kVar == null ? super.getChildDrawingOrder(i10, i11) : kVar.a(i10, i11);
    }

    @Override // android.view.ViewGroup
    public boolean getClipToPadding() {
        return this.f3672u;
    }

    public androidx.recyclerview.widget.k getCompatAccessibilityDelegate() {
        return this.D0;
    }

    public l getEdgeEffectFactory() {
        return this.W;
    }

    public m getItemAnimator() {
        return this.f3650e0;
    }

    public int getItemDecorationCount() {
        return this.D.size();
    }

    public p getLayoutManager() {
        return this.A;
    }

    public int getMaxFlingVelocity() {
        return this.f3663p0;
    }

    public int getMinFlingVelocity() {
        return this.f3661o0;
    }

    long getNanoTime() {
        if (U0) {
            return System.nanoTime();
        }
        return 0L;
    }

    public s getOnFlingListener() {
        return this.f3659n0;
    }

    public boolean getPreserveFocusAfterLayout() {
        return this.f3669s0;
    }

    public v getRecycledViewPool() {
        return this.f3662p.i();
    }

    public int getScrollState() {
        return this.f3651f0;
    }

    public void h(o oVar) {
        i(oVar, -1);
    }

    public void h1(int i10) {
        if (this.M) {
            return;
        }
        u1();
        p pVar = this.A;
        if (pVar == null) {
            Log.e("RecyclerView", "Cannot scroll to position a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            pVar.x1(i10);
            awakenScrollBars();
        }
    }

    @Override // android.view.View
    public boolean hasNestedScrollingParent() {
        return getScrollingChildHelper().j();
    }

    public void i(o oVar, int i10) {
        p pVar = this.A;
        if (pVar != null) {
            pVar.g("Cannot add item decoration during a scroll  or layout");
        }
        if (this.D.isEmpty()) {
            setWillNotDraw(false);
        }
        if (i10 < 0) {
            this.D.add(oVar);
        } else {
            this.D.add(i10, oVar);
        }
        w0();
        requestLayout();
    }

    @Override // android.view.View
    public boolean isAttachedToWindow() {
        return this.G;
    }

    @Override // android.view.ViewGroup
    public final boolean isLayoutSuppressed() {
        return this.M;
    }

    @Override // android.view.View, androidx.core.view.o
    public boolean isNestedScrollingEnabled() {
        return getScrollingChildHelper().l();
    }

    public void j(t tVar) {
        this.E.add(tVar);
    }

    Rect j0(View view) {
        q qVar = (q) view.getLayoutParams();
        if (!qVar.f3785c) {
            return qVar.f3784b;
        }
        if (this.f3677w0.e() && (qVar.b() || qVar.d())) {
            return qVar.f3784b;
        }
        Rect rect = qVar.f3784b;
        rect.set(0, 0, 0, 0);
        int size = this.D.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f3676w.set(0, 0, 0, 0);
            this.D.get(i10).e(this.f3676w, view, this, this.f3677w0);
            int i11 = rect.left;
            Rect rect2 = this.f3676w;
            rect.left = i11 + rect2.left;
            rect.top += rect2.top;
            rect.right += rect2.right;
            rect.bottom += rect2.bottom;
        }
        qVar.f3785c = false;
        return rect;
    }

    boolean j1(e0 e0Var, int i10) {
        if (!t0()) {
            androidx.core.view.a0.A0(e0Var.f3727o, i10);
            return true;
        }
        e0Var.E = i10;
        this.K0.add(e0Var);
        return false;
    }

    public void k(u uVar) {
        if (this.f3681y0 == null) {
            this.f3681y0 = new ArrayList();
        }
        this.f3681y0.add(uVar);
    }

    boolean k1(AccessibilityEvent accessibilityEvent) {
        if (!t0()) {
            return false;
        }
        int iA = accessibilityEvent != null ? androidx.core.view.accessibility.b.a(accessibilityEvent) : 0;
        this.O |= iA != 0 ? iA : 0;
        return true;
    }

    void l(e0 e0Var, m.c cVar, m.c cVar2) {
        e0Var.Q(false);
        if (this.f3650e0.a(e0Var, cVar, cVar2)) {
            M0();
        }
    }

    public boolean l0() {
        return !this.J || this.S || this.f3666r.p();
    }

    public void l1(int i10, int i11) {
        m1(i10, i11, null);
    }

    public void m1(int i10, int i11, Interpolator interpolator) {
        n1(i10, i11, interpolator, Integer.MIN_VALUE);
    }

    void n(e0 e0Var, m.c cVar, m.c cVar2) {
        g(e0Var);
        e0Var.Q(false);
        if (this.f3650e0.c(e0Var, cVar, cVar2)) {
            M0();
        }
    }

    void n0() {
        this.f3666r = new androidx.recyclerview.widget.a(new f());
    }

    public void n1(int i10, int i11, Interpolator interpolator, int i12) {
        o1(i10, i11, interpolator, i12, false);
    }

    void o(String str) {
        if (t0()) {
            if (str != null) {
                throw new IllegalStateException(str);
            }
            throw new IllegalStateException("Cannot call this method while RecyclerView is computing a layout or scrolling" + P());
        }
        if (this.V > 0) {
            Log.w("RecyclerView", "Cannot call this method in a scroll callback. Scroll callbacks mightbe run during a measure & layout pass where you cannot change theRecyclerView data. Any method call that might change the structureof the RecyclerView or the adapter contents should be postponed tothe next frame.", new IllegalStateException(BuildConfig.FLAVOR + P()));
        }
    }

    void o1(int i10, int i11, Interpolator interpolator, int i12, boolean z10) {
        p pVar = this.A;
        if (pVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.M) {
            return;
        }
        if (!pVar.k()) {
            i10 = 0;
        }
        if (!this.A.l()) {
            i11 = 0;
        }
        if (i10 == 0 && i11 == 0) {
            return;
        }
        if (!(i12 == Integer.MIN_VALUE || i12 > 0)) {
            scrollBy(i10, i11);
            return;
        }
        if (z10) {
            int i13 = i10 != 0 ? 1 : 0;
            if (i11 != 0) {
                i13 |= 2;
            }
            r1(i13, 1);
        }
        this.f3671t0.e(i10, i11, i12, interpolator);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.U = 0;
        this.G = true;
        this.J = this.J && !isLayoutRequested();
        p pVar = this.A;
        if (pVar != null) {
            pVar.z(this);
        }
        this.C0 = false;
        if (U0) {
            ThreadLocal<androidx.recyclerview.widget.e> threadLocal = androidx.recyclerview.widget.e.f3942s;
            androidx.recyclerview.widget.e eVar = threadLocal.get();
            this.f3673u0 = eVar;
            if (eVar == null) {
                this.f3673u0 = new androidx.recyclerview.widget.e();
                Display displayX = androidx.core.view.a0.x(this);
                float f10 = 60.0f;
                if (!isInEditMode() && displayX != null) {
                    float refreshRate = displayX.getRefreshRate();
                    if (refreshRate >= 30.0f) {
                        f10 = refreshRate;
                    }
                }
                androidx.recyclerview.widget.e eVar2 = this.f3673u0;
                eVar2.f3946q = (long) (1.0E9f / f10);
                threadLocal.set(eVar2);
            }
            this.f3673u0.a(this);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        androidx.recyclerview.widget.e eVar;
        super.onDetachedFromWindow();
        m mVar = this.f3650e0;
        if (mVar != null) {
            mVar.k();
        }
        u1();
        this.G = false;
        p pVar = this.A;
        if (pVar != null) {
            pVar.A(this, this.f3662p);
        }
        this.K0.clear();
        removeCallbacks(this.L0);
        this.f3670t.j();
        if (!U0 || (eVar = this.f3673u0) == null) {
            return;
        }
        eVar.j(this);
        this.f3673u0 = null;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int size = this.D.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.D.get(i10).g(canvas, this, this.f3677w0);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x0066  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x006a  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onGenericMotionEvent(android.view.MotionEvent r6) {
        /*
            r5 = this;
            androidx.recyclerview.widget.RecyclerView$p r0 = r5.A
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            boolean r0 = r5.M
            if (r0 == 0) goto Lb
            return r1
        Lb:
            int r0 = r6.getAction()
            r2 = 8
            if (r0 != r2) goto L78
            int r0 = r6.getSource()
            r0 = r0 & 2
            r2 = 0
            if (r0 == 0) goto L3c
            androidx.recyclerview.widget.RecyclerView$p r0 = r5.A
            boolean r0 = r0.l()
            if (r0 == 0) goto L2c
            r0 = 9
            float r0 = r6.getAxisValue(r0)
            float r0 = -r0
            goto L2d
        L2c:
            r0 = 0
        L2d:
            androidx.recyclerview.widget.RecyclerView$p r3 = r5.A
            boolean r3 = r3.k()
            if (r3 == 0) goto L61
            r3 = 10
            float r3 = r6.getAxisValue(r3)
            goto L62
        L3c:
            int r0 = r6.getSource()
            r3 = 4194304(0x400000, float:5.877472E-39)
            r0 = r0 & r3
            if (r0 == 0) goto L60
            r0 = 26
            float r0 = r6.getAxisValue(r0)
            androidx.recyclerview.widget.RecyclerView$p r3 = r5.A
            boolean r3 = r3.l()
            if (r3 == 0) goto L55
            float r0 = -r0
            goto L61
        L55:
            androidx.recyclerview.widget.RecyclerView$p r3 = r5.A
            boolean r3 = r3.k()
            if (r3 == 0) goto L60
            r3 = r0
            r0 = 0
            goto L62
        L60:
            r0 = 0
        L61:
            r3 = 0
        L62:
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 != 0) goto L6a
            int r2 = (r3 > r2 ? 1 : (r3 == r2 ? 0 : -1))
            if (r2 == 0) goto L78
        L6a:
            float r2 = r5.f3665q0
            float r3 = r3 * r2
            int r2 = (int) r3
            float r3 = r5.f3667r0
            float r0 = r0 * r3
            int r0 = (int) r0
            r3 = 1
            r5.y0(r2, r0, r6, r3)
        L78:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onGenericMotionEvent(android.view.MotionEvent):boolean");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        boolean z10;
        if (this.M) {
            return false;
        }
        this.F = null;
        if (T(motionEvent)) {
            q();
            return true;
        }
        p pVar = this.A;
        if (pVar == null) {
            return false;
        }
        boolean zK = pVar.k();
        boolean zL = this.A.l();
        if (this.f3653h0 == null) {
            this.f3653h0 = VelocityTracker.obtain();
        }
        this.f3653h0.addMovement(motionEvent);
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            if (this.N) {
                this.N = false;
            }
            this.f3652g0 = motionEvent.getPointerId(0);
            int x10 = (int) (motionEvent.getX() + 0.5f);
            this.f3656k0 = x10;
            this.f3654i0 = x10;
            int y10 = (int) (motionEvent.getY() + 0.5f);
            this.f3657l0 = y10;
            this.f3655j0 = y10;
            if (this.f3651f0 == 2) {
                getParent().requestDisallowInterceptTouchEvent(true);
                setScrollState(1);
                t1(1);
            }
            int[] iArr = this.I0;
            iArr[1] = 0;
            iArr[0] = 0;
            int i10 = zK;
            if (zL) {
                i10 = (zK ? 1 : 0) | 2;
            }
            r1(i10, 0);
        } else if (actionMasked == 1) {
            this.f3653h0.clear();
            t1(0);
        } else if (actionMasked == 2) {
            int iFindPointerIndex = motionEvent.findPointerIndex(this.f3652g0);
            if (iFindPointerIndex < 0) {
                Log.e("RecyclerView", "Error processing scroll; pointer index for id " + this.f3652g0 + " not found. Did any MotionEvents get skipped?");
                return false;
            }
            int x11 = (int) (motionEvent.getX(iFindPointerIndex) + 0.5f);
            int y11 = (int) (motionEvent.getY(iFindPointerIndex) + 0.5f);
            if (this.f3651f0 != 1) {
                int i11 = x11 - this.f3654i0;
                int i12 = y11 - this.f3655j0;
                if (!zK || Math.abs(i11) <= this.f3658m0) {
                    z10 = false;
                } else {
                    this.f3656k0 = x11;
                    z10 = true;
                }
                if (zL && Math.abs(i12) > this.f3658m0) {
                    this.f3657l0 = y11;
                    z10 = true;
                }
                if (z10) {
                    setScrollState(1);
                }
            }
        } else if (actionMasked == 3) {
            q();
        } else if (actionMasked == 5) {
            this.f3652g0 = motionEvent.getPointerId(actionIndex);
            int x12 = (int) (motionEvent.getX(actionIndex) + 0.5f);
            this.f3656k0 = x12;
            this.f3654i0 = x12;
            int y12 = (int) (motionEvent.getY(actionIndex) + 0.5f);
            this.f3657l0 = y12;
            this.f3655j0 = y12;
        } else if (actionMasked == 6) {
            J0(motionEvent);
        }
        return this.f3651f0 == 1;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        androidx.core.os.m.a("RV OnLayout");
        B();
        androidx.core.os.m.b();
        this.J = true;
    }

    @Override // android.view.View
    protected void onMeasure(int i10, int i11) {
        p pVar = this.A;
        if (pVar == null) {
            w(i10, i11);
            return;
        }
        boolean z10 = false;
        if (pVar.s0()) {
            int mode = View.MeasureSpec.getMode(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            this.A.Z0(this.f3662p, this.f3677w0, i10, i11);
            if (mode == 1073741824 && mode2 == 1073741824) {
                z10 = true;
            }
            this.M0 = z10;
            if (z10 || this.f3682z == null) {
                return;
            }
            if (this.f3677w0.f3705e == 1) {
                C();
            }
            this.A.A1(i10, i11);
            this.f3677w0.f3710j = true;
            D();
            this.A.D1(i10, i11);
            if (this.A.G1()) {
                this.A.A1(View.MeasureSpec.makeMeasureSpec(getMeasuredWidth(), 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), 1073741824));
                this.f3677w0.f3710j = true;
                D();
                this.A.D1(i10, i11);
            }
            this.N0 = getMeasuredWidth();
            this.O0 = getMeasuredHeight();
            return;
        }
        if (this.H) {
            this.A.Z0(this.f3662p, this.f3677w0, i10, i11);
            return;
        }
        if (this.P) {
            q1();
            G0();
            O0();
            H0();
            b0 b0Var = this.f3677w0;
            if (b0Var.f3712l) {
                b0Var.f3708h = true;
            } else {
                this.f3666r.j();
                this.f3677w0.f3708h = false;
            }
            this.P = false;
            s1(false);
        } else if (this.f3677w0.f3712l) {
            setMeasuredDimension(getMeasuredWidth(), getMeasuredHeight());
            return;
        }
        h hVar = this.f3682z;
        if (hVar != null) {
            this.f3677w0.f3706f = hVar.d();
        } else {
            this.f3677w0.f3706f = 0;
        }
        q1();
        this.A.Z0(this.f3662p, this.f3677w0, i10, i11);
        s1(false);
        this.f3677w0.f3708h = false;
    }

    @Override // android.view.ViewGroup
    protected boolean onRequestFocusInDescendants(int i10, Rect rect) {
        if (t0()) {
            return false;
        }
        return super.onRequestFocusInDescendants(i10, rect);
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof z)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        z zVar = (z) parcelable;
        this.f3664q = zVar;
        super.onRestoreInstanceState(zVar.h());
        requestLayout();
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        z zVar = new z(super.onSaveInstanceState());
        z zVar2 = this.f3664q;
        if (zVar2 != null) {
            zVar.t(zVar2);
        } else {
            p pVar = this.A;
            if (pVar != null) {
                zVar.f3802q = pVar.d1();
            } else {
                zVar.f3802q = null;
            }
        }
        return zVar;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i10, int i11, int i12, int i13) {
        super.onSizeChanged(i10, i11, i12, i13);
        if (i10 == i12 && i11 == i13) {
            return;
        }
        r0();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00df A[PHI: r0
      0x00df: PHI (r0v36 int) = (r0v26 int), (r0v40 int) binds: [B:41:0x00c8, B:45:0x00db] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00e2  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x00f8  */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean onTouchEvent(android.view.MotionEvent r18) {
        /*
            Method dump skipped, instruction units count: 480
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.recyclerview.widget.RecyclerView.onTouchEvent(android.view.MotionEvent):boolean");
    }

    boolean p(e0 e0Var) {
        m mVar = this.f3650e0;
        return mVar == null || mVar.g(e0Var, e0Var.y());
    }

    public void p1(int i10) {
        if (this.M) {
            return;
        }
        p pVar = this.A;
        if (pVar == null) {
            Log.e("RecyclerView", "Cannot smooth scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
        } else {
            pVar.I1(this, this.f3677w0, i10);
        }
    }

    void q0(StateListDrawable stateListDrawable, Drawable drawable, StateListDrawable stateListDrawable2, Drawable drawable2) {
        if (stateListDrawable != null && drawable != null && stateListDrawable2 != null && drawable2 != null) {
            Resources resources = getContext().getResources();
            new androidx.recyclerview.widget.d(this, stateListDrawable, drawable, stateListDrawable2, drawable2, resources.getDimensionPixelSize(w0.b.f35922a), resources.getDimensionPixelSize(w0.b.f35924c), resources.getDimensionPixelOffset(w0.b.f35923b));
        } else {
            throw new IllegalArgumentException("Trying to set fast scroller without both required drawables." + P());
        }
    }

    void q1() {
        int i10 = this.K + 1;
        this.K = i10;
        if (i10 != 1 || this.M) {
            return;
        }
        this.L = false;
    }

    void r0() {
        this.f3649d0 = null;
        this.f3647b0 = null;
        this.f3648c0 = null;
        this.f3646a0 = null;
    }

    public boolean r1(int i10, int i11) {
        return getScrollingChildHelper().p(i10, i11);
    }

    @Override // android.view.ViewGroup
    protected void removeDetachedView(View view, boolean z10) {
        e0 e0VarF0 = f0(view);
        if (e0VarF0 != null) {
            if (e0VarF0.H()) {
                e0VarF0.p();
            } else if (!e0VarF0.T()) {
                throw new IllegalArgumentException("Called removeDetachedView with a view which is not flagged as tmp detached." + e0VarF0 + P());
            }
        }
        view.clearAnimation();
        z(view);
        super.removeDetachedView(view, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestChildFocus(View view, View view2) {
        if (!this.A.b1(this, this.f3677w0, view, view2) && view2 != null) {
            a1(view, view2);
        }
        super.requestChildFocus(view, view2);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public boolean requestChildRectangleOnScreen(View view, Rect rect, boolean z10) {
        return this.A.r1(this, view, rect, z10);
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public void requestDisallowInterceptTouchEvent(boolean z10) {
        int size = this.E.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.E.get(i10).c(z10);
        }
        super.requestDisallowInterceptTouchEvent(z10);
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        if (this.K != 0 || this.M) {
            this.L = true;
        } else {
            super.requestLayout();
        }
    }

    void s() {
        int iJ = this.f3668s.j();
        for (int i10 = 0; i10 < iJ; i10++) {
            e0 e0VarF0 = f0(this.f3668s.i(i10));
            if (!e0VarF0.T()) {
                e0VarF0.d();
            }
        }
        this.f3662p.d();
    }

    boolean s0() {
        AccessibilityManager accessibilityManager = this.Q;
        return accessibilityManager != null && accessibilityManager.isEnabled();
    }

    void s1(boolean z10) {
        if (this.K < 1) {
            this.K = 1;
        }
        if (!z10 && !this.M) {
            this.L = false;
        }
        if (this.K == 1) {
            if (z10 && this.L && !this.M && this.A != null && this.f3682z != null) {
                B();
            }
            if (!this.M) {
                this.L = false;
            }
        }
        this.K--;
    }

    @Override // android.view.View
    public void scrollBy(int i10, int i11) {
        p pVar = this.A;
        if (pVar == null) {
            Log.e("RecyclerView", "Cannot scroll without a LayoutManager set. Call setLayoutManager with a non-null argument.");
            return;
        }
        if (this.M) {
            return;
        }
        boolean zK = pVar.k();
        boolean zL = this.A.l();
        if (zK || zL) {
            if (!zK) {
                i10 = 0;
            }
            if (!zL) {
                i11 = 0;
            }
            f1(i10, i11, null, 0);
        }
    }

    @Override // android.view.View
    public void scrollTo(int i10, int i11) {
        Log.w("RecyclerView", "RecyclerView does not support scrolling to an absolute position. Use scrollToPosition instead");
    }

    @Override // android.view.View, android.view.accessibility.AccessibilityEventSource
    public void sendAccessibilityEventUnchecked(AccessibilityEvent accessibilityEvent) {
        if (k1(accessibilityEvent)) {
            return;
        }
        super.sendAccessibilityEventUnchecked(accessibilityEvent);
    }

    public void setAccessibilityDelegateCompat(androidx.recyclerview.widget.k kVar) {
        this.D0 = kVar;
        androidx.core.view.a0.q0(this, kVar);
    }

    public void setAdapter(h hVar) {
        setLayoutFrozen(false);
        i1(hVar, false, true);
        P0(false);
        requestLayout();
    }

    public void setChildDrawingOrderCallback(k kVar) {
        if (kVar == this.E0) {
            return;
        }
        this.E0 = kVar;
        setChildrenDrawingOrderEnabled(kVar != null);
    }

    @Override // android.view.ViewGroup
    public void setClipToPadding(boolean z10) {
        if (z10 != this.f3672u) {
            r0();
        }
        this.f3672u = z10;
        super.setClipToPadding(z10);
        if (this.J) {
            requestLayout();
        }
    }

    public void setEdgeEffectFactory(l lVar) {
        androidx.core.util.h.f(lVar);
        this.W = lVar;
        r0();
    }

    public void setHasFixedSize(boolean z10) {
        this.H = z10;
    }

    public void setItemAnimator(m mVar) {
        m mVar2 = this.f3650e0;
        if (mVar2 != null) {
            mVar2.k();
            this.f3650e0.v(null);
        }
        this.f3650e0 = mVar;
        if (mVar != null) {
            mVar.v(this.B0);
        }
    }

    public void setItemViewCacheSize(int i10) {
        this.f3662p.G(i10);
    }

    @Deprecated
    public void setLayoutFrozen(boolean z10) {
        suppressLayout(z10);
    }

    public void setLayoutManager(p pVar) {
        if (pVar == this.A) {
            return;
        }
        u1();
        if (this.A != null) {
            m mVar = this.f3650e0;
            if (mVar != null) {
                mVar.k();
            }
            this.A.k1(this.f3662p);
            this.A.l1(this.f3662p);
            this.f3662p.c();
            if (this.G) {
                this.A.A(this, this.f3662p);
            }
            this.A.E1(null);
            this.A = null;
        } else {
            this.f3662p.c();
        }
        this.f3668s.o();
        this.A = pVar;
        if (pVar != null) {
            if (pVar.f3760b != null) {
                throw new IllegalArgumentException("LayoutManager " + pVar + " is already attached to a RecyclerView:" + pVar.f3760b.P());
            }
            pVar.E1(this);
            if (this.G) {
                this.A.z(this);
            }
        }
        this.f3662p.K();
        requestLayout();
    }

    @Override // android.view.ViewGroup
    @Deprecated
    public void setLayoutTransition(LayoutTransition layoutTransition) {
        if (Build.VERSION.SDK_INT < 18) {
            if (layoutTransition == null) {
                suppressLayout(false);
                return;
            } else if (layoutTransition.getAnimator(0) == null && layoutTransition.getAnimator(1) == null && layoutTransition.getAnimator(2) == null && layoutTransition.getAnimator(3) == null && layoutTransition.getAnimator(4) == null) {
                suppressLayout(true);
                return;
            }
        }
        if (layoutTransition != null) {
            throw new IllegalArgumentException("Providing a LayoutTransition into RecyclerView is not supported. Please use setItemAnimator() instead for animating changes to the items in this RecyclerView");
        }
        super.setLayoutTransition(null);
    }

    @Override // android.view.View
    public void setNestedScrollingEnabled(boolean z10) {
        getScrollingChildHelper().m(z10);
    }

    public void setOnFlingListener(s sVar) {
        this.f3659n0 = sVar;
    }

    @Deprecated
    public void setOnScrollListener(u uVar) {
        this.f3679x0 = uVar;
    }

    public void setPreserveFocusAfterLayout(boolean z10) {
        this.f3669s0 = z10;
    }

    public void setRecycledViewPool(v vVar) {
        this.f3662p.E(vVar);
    }

    @Deprecated
    public void setRecyclerListener(x xVar) {
        this.B = xVar;
    }

    void setScrollState(int i10) {
        if (i10 == this.f3651f0) {
            return;
        }
        this.f3651f0 = i10;
        if (i10 != 2) {
            v1();
        }
        H(i10);
    }

    public void setScrollingTouchSlop(int i10) {
        ViewConfiguration viewConfiguration = ViewConfiguration.get(getContext());
        if (i10 != 0) {
            if (i10 == 1) {
                this.f3658m0 = viewConfiguration.getScaledPagingTouchSlop();
                return;
            }
            Log.w("RecyclerView", "setScrollingTouchSlop(): bad argument constant " + i10 + "; using default value");
        }
        this.f3658m0 = viewConfiguration.getScaledTouchSlop();
    }

    public void setViewCacheExtension(c0 c0Var) {
        this.f3662p.F(c0Var);
    }

    @Override // android.view.View
    public boolean startNestedScroll(int i10) {
        return getScrollingChildHelper().o(i10);
    }

    @Override // android.view.View, androidx.core.view.o
    public void stopNestedScroll() {
        getScrollingChildHelper().q();
    }

    @Override // android.view.ViewGroup
    public final void suppressLayout(boolean z10) {
        if (z10 != this.M) {
            o("Do not suppressLayout in layout or scroll");
            if (z10) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                onTouchEvent(MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0));
                this.M = true;
                this.N = true;
                u1();
                return;
            }
            this.M = false;
            if (this.L && this.A != null && this.f3682z != null) {
                requestLayout();
            }
            this.L = false;
        }
    }

    void t(int i10, int i11) {
        boolean zIsFinished;
        EdgeEffect edgeEffect = this.f3646a0;
        if (edgeEffect == null || edgeEffect.isFinished() || i10 <= 0) {
            zIsFinished = false;
        } else {
            this.f3646a0.onRelease();
            zIsFinished = this.f3646a0.isFinished();
        }
        EdgeEffect edgeEffect2 = this.f3648c0;
        if (edgeEffect2 != null && !edgeEffect2.isFinished() && i10 < 0) {
            this.f3648c0.onRelease();
            zIsFinished |= this.f3648c0.isFinished();
        }
        EdgeEffect edgeEffect3 = this.f3647b0;
        if (edgeEffect3 != null && !edgeEffect3.isFinished() && i11 > 0) {
            this.f3647b0.onRelease();
            zIsFinished |= this.f3647b0.isFinished();
        }
        EdgeEffect edgeEffect4 = this.f3649d0;
        if (edgeEffect4 != null && !edgeEffect4.isFinished() && i11 < 0) {
            this.f3649d0.onRelease();
            zIsFinished |= this.f3649d0.isFinished();
        }
        if (zIsFinished) {
            androidx.core.view.a0.h0(this);
        }
    }

    public boolean t0() {
        return this.U > 0;
    }

    public void t1(int i10) {
        getScrollingChildHelper().r(i10);
    }

    void u() {
        if (!this.J || this.S) {
            androidx.core.os.m.a("RV FullInvalidate");
            B();
            androidx.core.os.m.b();
            return;
        }
        if (this.f3666r.p()) {
            if (!this.f3666r.o(4) || this.f3666r.o(11)) {
                if (this.f3666r.p()) {
                    androidx.core.os.m.a("RV FullInvalidate");
                    B();
                    androidx.core.os.m.b();
                    return;
                }
                return;
            }
            androidx.core.os.m.a("RV PartialInvalidate");
            q1();
            G0();
            this.f3666r.s();
            if (!this.L) {
                if (m0()) {
                    B();
                } else {
                    this.f3666r.i();
                }
            }
            s1(true);
            H0();
            androidx.core.os.m.b();
        }
    }

    public void u1() {
        setScrollState(0);
        v1();
    }

    void v0(int i10) {
        if (this.A == null) {
            return;
        }
        setScrollState(2);
        this.A.x1(i10);
        awakenScrollBars();
    }

    void w(int i10, int i11) {
        setMeasuredDimension(p.n(i10, getPaddingLeft() + getPaddingRight(), androidx.core.view.a0.G(this)), p.n(i11, getPaddingTop() + getPaddingBottom(), androidx.core.view.a0.F(this)));
    }

    void w0() {
        int iJ = this.f3668s.j();
        for (int i10 = 0; i10 < iJ; i10++) {
            ((q) this.f3668s.i(i10).getLayoutParams()).f3785c = true;
        }
        this.f3662p.s();
    }

    void w1(int i10, int i11, Object obj) {
        int i12;
        int iJ = this.f3668s.j();
        int i13 = i10 + i11;
        for (int i14 = 0; i14 < iJ; i14++) {
            View viewI = this.f3668s.i(i14);
            e0 e0VarF0 = f0(viewI);
            if (e0VarF0 != null && !e0VarF0.T() && (i12 = e0VarF0.f3729q) >= i10 && i12 < i13) {
                e0VarF0.b(2);
                e0VarF0.a(obj);
                ((q) viewI.getLayoutParams()).f3785c = true;
            }
        }
        this.f3662p.M(i10, i11);
    }

    void x0() {
        int iJ = this.f3668s.j();
        for (int i10 = 0; i10 < iJ; i10++) {
            e0 e0VarF0 = f0(this.f3668s.i(i10));
            if (e0VarF0 != null && !e0VarF0.T()) {
                e0VarF0.b(6);
            }
        }
        w0();
        this.f3662p.t();
    }

    void y(View view) {
        e0 e0VarF0 = f0(view);
        E0(view);
        h hVar = this.f3682z;
        if (hVar != null && e0VarF0 != null) {
            hVar.p(e0VarF0);
        }
        List<r> list = this.R;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.R.get(size).b(view);
            }
        }
    }

    void z(View view) {
        e0 e0VarF0 = f0(view);
        F0(view);
        h hVar = this.f3682z;
        if (hVar != null && e0VarF0 != null) {
            hVar.q(e0VarF0);
        }
        List<r> list = this.R;
        if (list != null) {
            for (int size = list.size() - 1; size >= 0; size--) {
                this.R.get(size).a(view);
            }
        }
    }

    public void z0(int i10) {
        int iG = this.f3668s.g();
        for (int i11 = 0; i11 < iG; i11++) {
            this.f3668s.f(i11).offsetLeftAndRight(i10);
        }
    }

    public RecyclerView(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f3660o = new y();
        this.f3662p = new w();
        this.f3670t = new androidx.recyclerview.widget.p();
        this.f3674v = new a();
        this.f3676w = new Rect();
        this.f3678x = new Rect();
        this.f3680y = new RectF();
        this.C = new ArrayList();
        this.D = new ArrayList<>();
        this.E = new ArrayList<>();
        this.K = 0;
        this.S = false;
        this.T = false;
        this.U = 0;
        this.V = 0;
        this.W = new l();
        this.f3650e0 = new androidx.recyclerview.widget.c();
        this.f3651f0 = 0;
        this.f3652g0 = -1;
        this.f3665q0 = Float.MIN_VALUE;
        this.f3667r0 = Float.MIN_VALUE;
        boolean z10 = true;
        this.f3669s0 = true;
        this.f3671t0 = new d0();
        this.f3675v0 = U0 ? new e.b() : null;
        this.f3677w0 = new b0();
        this.f3683z0 = false;
        this.A0 = false;
        this.B0 = new n();
        this.C0 = false;
        this.F0 = new int[2];
        this.H0 = new int[2];
        this.I0 = new int[2];
        this.J0 = new int[2];
        this.K0 = new ArrayList();
        this.L0 = new b();
        this.N0 = 0;
        this.O0 = 0;
        this.P0 = new d();
        setScrollContainer(true);
        setFocusableInTouchMode(true);
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f3658m0 = viewConfiguration.getScaledTouchSlop();
        this.f3665q0 = androidx.core.view.c0.b(viewConfiguration, context);
        this.f3667r0 = androidx.core.view.c0.d(viewConfiguration, context);
        this.f3661o0 = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f3663p0 = viewConfiguration.getScaledMaximumFlingVelocity();
        setWillNotDraw(getOverScrollMode() == 2);
        this.f3650e0.v(this.B0);
        n0();
        p0();
        o0();
        if (androidx.core.view.a0.C(this) == 0) {
            androidx.core.view.a0.A0(this, 1);
        }
        this.Q = (AccessibilityManager) getContext().getSystemService("accessibility");
        setAccessibilityDelegateCompat(new androidx.recyclerview.widget.k(this));
        int[] iArr = w0.c.f35930f;
        TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, iArr, i10, 0);
        androidx.core.view.a0.o0(this, context, iArr, attributeSet, typedArrayObtainStyledAttributes, i10, 0);
        String string = typedArrayObtainStyledAttributes.getString(w0.c.f35939o);
        if (typedArrayObtainStyledAttributes.getInt(w0.c.f35933i, -1) == -1) {
            setDescendantFocusability(262144);
        }
        this.f3672u = typedArrayObtainStyledAttributes.getBoolean(w0.c.f35932h, true);
        boolean z11 = typedArrayObtainStyledAttributes.getBoolean(w0.c.f35934j, false);
        this.I = z11;
        if (z11) {
            q0((StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(w0.c.f35937m), typedArrayObtainStyledAttributes.getDrawable(w0.c.f35938n), (StateListDrawable) typedArrayObtainStyledAttributes.getDrawable(w0.c.f35935k), typedArrayObtainStyledAttributes.getDrawable(w0.c.f35936l));
        }
        typedArrayObtainStyledAttributes.recycle();
        v(context, string, attributeSet, i10, 0);
        if (Build.VERSION.SDK_INT >= 21) {
            int[] iArr2 = Q0;
            TypedArray typedArrayObtainStyledAttributes2 = context.obtainStyledAttributes(attributeSet, iArr2, i10, 0);
            androidx.core.view.a0.o0(this, context, iArr2, attributeSet, typedArrayObtainStyledAttributes2, i10, 0);
            z10 = typedArrayObtainStyledAttributes2.getBoolean(0, true);
            typedArrayObtainStyledAttributes2.recycle();
        }
        setNestedScrollingEnabled(z10);
    }

    public static class z extends b0.a {
        public static final Parcelable.Creator<z> CREATOR = new a();

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        Parcelable f3802q;

        class a implements Parcelable.ClassLoaderCreator<z> {
            a() {
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public z createFromParcel(Parcel parcel) {
                return new z(parcel, null);
            }

            @Override // android.os.Parcelable.ClassLoaderCreator
            /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
            public z createFromParcel(Parcel parcel, ClassLoader classLoader) {
                return new z(parcel, classLoader);
            }

            @Override // android.os.Parcelable.Creator
            /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
            public z[] newArray(int i10) {
                return new z[i10];
            }
        }

        z(Parcel parcel, ClassLoader classLoader) {
            super(parcel, classLoader);
            this.f3802q = parcel.readParcelable(classLoader == null ? p.class.getClassLoader() : classLoader);
        }

        void t(z zVar) {
            this.f3802q = zVar.f3802q;
        }

        @Override // b0.a, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            super.writeToParcel(parcel, i10);
            parcel.writeParcelable(this.f3802q, 0);
        }

        z(Parcelable parcelable) {
            super(parcelable);
        }
    }

    public static class q extends ViewGroup.MarginLayoutParams {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        e0 f3783a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final Rect f3784b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        boolean f3785c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        boolean f3786d;

        public q(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f3784b = new Rect();
            this.f3785c = true;
            this.f3786d = false;
        }

        public int a() {
            return this.f3783a.w();
        }

        public boolean b() {
            return this.f3783a.I();
        }

        public boolean c() {
            return this.f3783a.F();
        }

        public boolean d() {
            return this.f3783a.D();
        }

        public q(int i10, int i11) {
            super(i10, i11);
            this.f3784b = new Rect();
            this.f3785c = true;
            this.f3786d = false;
        }

        public q(ViewGroup.MarginLayoutParams marginLayoutParams) {
            super(marginLayoutParams);
            this.f3784b = new Rect();
            this.f3785c = true;
            this.f3786d = false;
        }

        public q(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f3784b = new Rect();
            this.f3785c = true;
            this.f3786d = false;
        }

        public q(q qVar) {
            super((ViewGroup.LayoutParams) qVar);
            this.f3784b = new Rect();
            this.f3785c = true;
            this.f3786d = false;
        }
    }

    @Override // android.view.ViewGroup
    protected ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        p pVar = this.A;
        if (pVar != null) {
            return pVar.F(layoutParams);
        }
        throw new IllegalStateException("RecyclerView has no LayoutManager" + P());
    }
}
