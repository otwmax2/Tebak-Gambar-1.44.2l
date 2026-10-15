package c0;

import android.content.Context;
import android.util.Log;
import android.view.MotionEvent;
import android.view.VelocityTracker;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.animation.Interpolator;
import android.widget.OverScroller;
import androidx.core.view.a0;
import java.util.Arrays;

/* JADX INFO: compiled from: ViewDragHelper.java */
/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private static final Interpolator f4767w = new a();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f4768a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f4769b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float[] f4771d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private float[] f4772e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private float[] f4773f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float[] f4774g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int[] f4775h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int[] f4776i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int[] f4777j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f4778k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private VelocityTracker f4779l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private float f4780m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private float f4781n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f4782o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f4783p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private OverScroller f4784q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final AbstractC0087c f4785r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private View f4786s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private boolean f4787t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final ViewGroup f4788u;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private int f4770c = -1;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final Runnable f4789v = new b();

    /* JADX INFO: compiled from: ViewDragHelper.java */
    static class a implements Interpolator {
        a() {
        }

        @Override // android.animation.TimeInterpolator
        public float getInterpolation(float f10) {
            float f11 = f10 - 1.0f;
            return (f11 * f11 * f11 * f11 * f11) + 1.0f;
        }
    }

    /* JADX INFO: compiled from: ViewDragHelper.java */
    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.E(0);
        }
    }

    /* JADX INFO: renamed from: c0.c$c, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ViewDragHelper.java */
    public static abstract class AbstractC0087c {
        public abstract int a(View view, int i10, int i11);

        public abstract int b(View view, int i10, int i11);

        public int c(int i10) {
            return i10;
        }

        public int d(View view) {
            return 0;
        }

        public int e(View view) {
            return 0;
        }

        public void f(int i10, int i11) {
        }

        public boolean g(int i10) {
            return false;
        }

        public void h(int i10, int i11) {
        }

        public void i(View view, int i10) {
        }

        public abstract void j(int i10);

        public abstract void k(View view, int i10, int i11, int i12, int i13);

        public abstract void l(View view, float f10, float f11);

        public abstract boolean m(View view, int i10);
    }

    private c(Context context, ViewGroup viewGroup, AbstractC0087c abstractC0087c) {
        if (viewGroup == null) {
            throw new IllegalArgumentException("Parent view may not be null");
        }
        if (abstractC0087c == null) {
            throw new IllegalArgumentException("Callback may not be null");
        }
        this.f4788u = viewGroup;
        this.f4785r = abstractC0087c;
        ViewConfiguration viewConfiguration = ViewConfiguration.get(context);
        this.f4782o = (int) ((context.getResources().getDisplayMetrics().density * 20.0f) + 0.5f);
        this.f4769b = viewConfiguration.getScaledTouchSlop();
        this.f4780m = viewConfiguration.getScaledMaximumFlingVelocity();
        this.f4781n = viewConfiguration.getScaledMinimumFlingVelocity();
        this.f4784q = new OverScroller(context, f4767w);
    }

    private void A() {
        this.f4779l.computeCurrentVelocity(1000, this.f4780m);
        n(e(this.f4779l.getXVelocity(this.f4770c), this.f4781n, this.f4780m), e(this.f4779l.getYVelocity(this.f4770c), this.f4781n, this.f4780m));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12 */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v16 */
    /* JADX WARN: Type inference failed for: r0v2 */
    /* JADX WARN: Type inference failed for: r0v3 */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* JADX WARN: Type inference failed for: r3v3, types: [c0.c$c] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:593)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    private void B(float f10, float f11, int i10) {
        boolean zC = c(f10, f11, i10, 1);
        ?? r02 = zC;
        if (c(f11, f10, i10, 4)) {
            r02 = (zC ? 1 : 0) | 4;
        }
        ?? r03 = r02;
        if (c(f10, f11, i10, 2)) {
            r03 = (r02 == true ? 1 : 0) | 2;
        }
        ?? r04 = r03;
        if (c(f11, f10, i10, 8)) {
            r04 = (r03 == true ? 1 : 0) | 8;
        }
        if (r04 != 0) {
            int[] iArr = this.f4776i;
            iArr[i10] = iArr[i10] | r04;
            this.f4785r.f(r04, i10);
        }
    }

    private void C(float f10, float f11, int i10) {
        q(i10);
        float[] fArr = this.f4771d;
        this.f4773f[i10] = f10;
        fArr[i10] = f10;
        float[] fArr2 = this.f4772e;
        this.f4774g[i10] = f11;
        fArr2[i10] = f11;
        this.f4775h[i10] = t((int) f10, (int) f11);
        this.f4778k |= 1 << i10;
    }

    private void D(MotionEvent motionEvent) {
        int pointerCount = motionEvent.getPointerCount();
        for (int i10 = 0; i10 < pointerCount; i10++) {
            int pointerId = motionEvent.getPointerId(i10);
            if (x(pointerId)) {
                float x10 = motionEvent.getX(i10);
                float y10 = motionEvent.getY(i10);
                this.f4773f[pointerId] = x10;
                this.f4774g[pointerId] = y10;
            }
        }
    }

    private boolean c(float f10, float f11, int i10, int i11) {
        float fAbs = Math.abs(f10);
        float fAbs2 = Math.abs(f11);
        if ((this.f4775h[i10] & i11) != i11 || (this.f4783p & i11) == 0 || (this.f4777j[i10] & i11) == i11 || (this.f4776i[i10] & i11) == i11) {
            return false;
        }
        int i12 = this.f4769b;
        if (fAbs <= i12 && fAbs2 <= i12) {
            return false;
        }
        if (fAbs >= fAbs2 * 0.5f || !this.f4785r.g(i11)) {
            return (this.f4776i[i10] & i11) == 0 && fAbs > ((float) this.f4769b);
        }
        int[] iArr = this.f4777j;
        iArr[i10] = iArr[i10] | i11;
        return false;
    }

    private boolean d(View view, float f10, float f11) {
        if (view == null) {
            return false;
        }
        boolean z10 = this.f4785r.d(view) > 0;
        boolean z11 = this.f4785r.e(view) > 0;
        if (!z10 || !z11) {
            return z10 ? Math.abs(f10) > ((float) this.f4769b) : z11 && Math.abs(f11) > ((float) this.f4769b);
        }
        float f12 = (f10 * f10) + (f11 * f11);
        int i10 = this.f4769b;
        return f12 > ((float) (i10 * i10));
    }

    private float e(float f10, float f11, float f12) {
        float fAbs = Math.abs(f10);
        if (fAbs < f11) {
            return 0.0f;
        }
        return fAbs > f12 ? f10 > 0.0f ? f12 : -f12 : f10;
    }

    private int f(int i10, int i11, int i12) {
        int iAbs = Math.abs(i10);
        if (iAbs < i11) {
            return 0;
        }
        return iAbs > i12 ? i10 > 0 ? i12 : -i12 : i10;
    }

    private void g() {
        float[] fArr = this.f4771d;
        if (fArr == null) {
            return;
        }
        Arrays.fill(fArr, 0.0f);
        Arrays.fill(this.f4772e, 0.0f);
        Arrays.fill(this.f4773f, 0.0f);
        Arrays.fill(this.f4774g, 0.0f);
        Arrays.fill(this.f4775h, 0);
        Arrays.fill(this.f4776i, 0);
        Arrays.fill(this.f4777j, 0);
        this.f4778k = 0;
    }

    private void h(int i10) {
        if (this.f4771d == null || !w(i10)) {
            return;
        }
        this.f4771d[i10] = 0.0f;
        this.f4772e[i10] = 0.0f;
        this.f4773f[i10] = 0.0f;
        this.f4774g[i10] = 0.0f;
        this.f4775h[i10] = 0;
        this.f4776i[i10] = 0;
        this.f4777j[i10] = 0;
        this.f4778k = ((1 << i10) ^ (-1)) & this.f4778k;
    }

    private int i(int i10, int i11, int i12) {
        if (i10 == 0) {
            return 0;
        }
        int width = this.f4788u.getWidth();
        float f10 = width / 2;
        float fO = f10 + (o(Math.min(1.0f, Math.abs(i10) / width)) * f10);
        int iAbs = Math.abs(i11);
        return Math.min(iAbs > 0 ? Math.round(Math.abs(fO / iAbs) * 1000.0f) * 4 : (int) (((Math.abs(i10) / i12) + 1.0f) * 256.0f), 600);
    }

    private int j(View view, int i10, int i11, int i12, int i13) {
        float f10;
        float f11;
        float f12;
        float f13;
        int iF = f(i12, (int) this.f4781n, (int) this.f4780m);
        int iF2 = f(i13, (int) this.f4781n, (int) this.f4780m);
        int iAbs = Math.abs(i10);
        int iAbs2 = Math.abs(i11);
        int iAbs3 = Math.abs(iF);
        int iAbs4 = Math.abs(iF2);
        int i14 = iAbs3 + iAbs4;
        int i15 = iAbs + iAbs2;
        if (iF != 0) {
            f10 = iAbs3;
            f11 = i14;
        } else {
            f10 = iAbs;
            f11 = i15;
        }
        float f14 = f10 / f11;
        if (iF2 != 0) {
            f12 = iAbs4;
            f13 = i14;
        } else {
            f12 = iAbs2;
            f13 = i15;
        }
        return (int) ((i(i10, iF, this.f4785r.d(view)) * f14) + (i(i11, iF2, this.f4785r.e(view)) * (f12 / f13)));
    }

    public static c l(ViewGroup viewGroup, float f10, AbstractC0087c abstractC0087c) {
        c cVarM = m(viewGroup, abstractC0087c);
        cVarM.f4769b = (int) (cVarM.f4769b * (1.0f / f10));
        return cVarM;
    }

    public static c m(ViewGroup viewGroup, AbstractC0087c abstractC0087c) {
        return new c(viewGroup.getContext(), viewGroup, abstractC0087c);
    }

    private void n(float f10, float f11) {
        this.f4787t = true;
        this.f4785r.l(this.f4786s, f10, f11);
        this.f4787t = false;
        if (this.f4768a == 1) {
            E(0);
        }
    }

    private float o(float f10) {
        return (float) Math.sin((f10 - 0.5f) * 0.47123894f);
    }

    private void p(int i10, int i11, int i12, int i13) {
        int left = this.f4786s.getLeft();
        int top = this.f4786s.getTop();
        if (i12 != 0) {
            i10 = this.f4785r.a(this.f4786s, i10, i12);
            a0.a0(this.f4786s, i10 - left);
        }
        int i14 = i10;
        if (i13 != 0) {
            i11 = this.f4785r.b(this.f4786s, i11, i13);
            a0.b0(this.f4786s, i11 - top);
        }
        int i15 = i11;
        if (i12 == 0 && i13 == 0) {
            return;
        }
        this.f4785r.k(this.f4786s, i14, i15, i14 - left, i15 - top);
    }

    private void q(int i10) {
        float[] fArr = this.f4771d;
        if (fArr == null || fArr.length <= i10) {
            int i11 = i10 + 1;
            float[] fArr2 = new float[i11];
            float[] fArr3 = new float[i11];
            float[] fArr4 = new float[i11];
            float[] fArr5 = new float[i11];
            int[] iArr = new int[i11];
            int[] iArr2 = new int[i11];
            int[] iArr3 = new int[i11];
            if (fArr != null) {
                System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
                float[] fArr6 = this.f4772e;
                System.arraycopy(fArr6, 0, fArr3, 0, fArr6.length);
                float[] fArr7 = this.f4773f;
                System.arraycopy(fArr7, 0, fArr4, 0, fArr7.length);
                float[] fArr8 = this.f4774g;
                System.arraycopy(fArr8, 0, fArr5, 0, fArr8.length);
                int[] iArr4 = this.f4775h;
                System.arraycopy(iArr4, 0, iArr, 0, iArr4.length);
                int[] iArr5 = this.f4776i;
                System.arraycopy(iArr5, 0, iArr2, 0, iArr5.length);
                int[] iArr6 = this.f4777j;
                System.arraycopy(iArr6, 0, iArr3, 0, iArr6.length);
            }
            this.f4771d = fArr2;
            this.f4772e = fArr3;
            this.f4773f = fArr4;
            this.f4774g = fArr5;
            this.f4775h = iArr;
            this.f4776i = iArr2;
            this.f4777j = iArr3;
        }
    }

    private boolean s(int i10, int i11, int i12, int i13) {
        int left = this.f4786s.getLeft();
        int top = this.f4786s.getTop();
        int i14 = i10 - left;
        int i15 = i11 - top;
        if (i14 == 0 && i15 == 0) {
            this.f4784q.abortAnimation();
            E(0);
            return false;
        }
        this.f4784q.startScroll(left, top, i14, i15, j(this.f4786s, i14, i15, i12, i13));
        E(2);
        return true;
    }

    private int t(int i10, int i11) {
        int i12 = i10 < this.f4788u.getLeft() + this.f4782o ? 1 : 0;
        if (i11 < this.f4788u.getTop() + this.f4782o) {
            i12 |= 4;
        }
        if (i10 > this.f4788u.getRight() - this.f4782o) {
            i12 |= 2;
        }
        return i11 > this.f4788u.getBottom() - this.f4782o ? i12 | 8 : i12;
    }

    private boolean x(int i10) {
        if (w(i10)) {
            return true;
        }
        Log.e("ViewDragHelper", "Ignoring pointerId=" + i10 + " because ACTION_DOWN was not received for this pointer before ACTION_MOVE. It likely happened because  ViewDragHelper did not receive all the events in the event stream.");
        return false;
    }

    void E(int i10) {
        this.f4788u.removeCallbacks(this.f4789v);
        if (this.f4768a != i10) {
            this.f4768a = i10;
            this.f4785r.j(i10);
            if (this.f4768a == 0) {
                this.f4786s = null;
            }
        }
    }

    public boolean F(int i10, int i11) {
        if (this.f4787t) {
            return s(i10, i11, (int) this.f4779l.getXVelocity(this.f4770c), (int) this.f4779l.getYVelocity(this.f4770c));
        }
        throw new IllegalStateException("Cannot settleCapturedViewAt outside of a call to Callback#onViewReleased");
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean G(android.view.MotionEvent r17) {
        /*
            Method dump skipped, instruction units count: 315
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: c0.c.G(android.view.MotionEvent):boolean");
    }

    public boolean H(View view, int i10, int i11) {
        this.f4786s = view;
        this.f4770c = -1;
        boolean zS = s(i10, i11, 0, 0);
        if (!zS && this.f4768a == 0 && this.f4786s != null) {
            this.f4786s = null;
        }
        return zS;
    }

    boolean I(View view, int i10) {
        if (view == this.f4786s && this.f4770c == i10) {
            return true;
        }
        if (view == null || !this.f4785r.m(view, i10)) {
            return false;
        }
        this.f4770c = i10;
        b(view, i10);
        return true;
    }

    public void a() {
        this.f4770c = -1;
        g();
        VelocityTracker velocityTracker = this.f4779l;
        if (velocityTracker != null) {
            velocityTracker.recycle();
            this.f4779l = null;
        }
    }

    public void b(View view, int i10) {
        if (view.getParent() == this.f4788u) {
            this.f4786s = view;
            this.f4770c = i10;
            this.f4785r.i(view, i10);
            E(1);
            return;
        }
        throw new IllegalArgumentException("captureChildView: parameter must be a descendant of the ViewDragHelper's tracked parent view (" + this.f4788u + ")");
    }

    public boolean k(boolean z10) {
        if (this.f4768a == 2) {
            boolean zComputeScrollOffset = this.f4784q.computeScrollOffset();
            int currX = this.f4784q.getCurrX();
            int currY = this.f4784q.getCurrY();
            int left = currX - this.f4786s.getLeft();
            int top = currY - this.f4786s.getTop();
            if (left != 0) {
                a0.a0(this.f4786s, left);
            }
            if (top != 0) {
                a0.b0(this.f4786s, top);
            }
            if (left != 0 || top != 0) {
                this.f4785r.k(this.f4786s, currX, currY, left, top);
            }
            if (zComputeScrollOffset && currX == this.f4784q.getFinalX() && currY == this.f4784q.getFinalY()) {
                this.f4784q.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                if (z10) {
                    this.f4788u.post(this.f4789v);
                } else {
                    E(0);
                }
            }
        }
        return this.f4768a == 2;
    }

    public View r(int i10, int i11) {
        for (int childCount = this.f4788u.getChildCount() - 1; childCount >= 0; childCount--) {
            View childAt = this.f4788u.getChildAt(this.f4785r.c(childCount));
            if (i10 >= childAt.getLeft() && i10 < childAt.getRight() && i11 >= childAt.getTop() && i11 < childAt.getBottom()) {
                return childAt;
            }
        }
        return null;
    }

    public int u() {
        return this.f4769b;
    }

    public boolean v(int i10, int i11) {
        return y(this.f4786s, i10, i11);
    }

    public boolean w(int i10) {
        return ((1 << i10) & this.f4778k) != 0;
    }

    public boolean y(View view, int i10, int i11) {
        return view != null && i10 >= view.getLeft() && i10 < view.getRight() && i11 >= view.getTop() && i11 < view.getBottom();
    }

    public void z(MotionEvent motionEvent) {
        int i10;
        int actionMasked = motionEvent.getActionMasked();
        int actionIndex = motionEvent.getActionIndex();
        if (actionMasked == 0) {
            a();
        }
        if (this.f4779l == null) {
            this.f4779l = VelocityTracker.obtain();
        }
        this.f4779l.addMovement(motionEvent);
        int i11 = 0;
        if (actionMasked == 0) {
            float x10 = motionEvent.getX();
            float y10 = motionEvent.getY();
            int pointerId = motionEvent.getPointerId(0);
            View viewR = r((int) x10, (int) y10);
            C(x10, y10, pointerId);
            I(viewR, pointerId);
            int i12 = this.f4775h[pointerId];
            int i13 = this.f4783p;
            if ((i12 & i13) != 0) {
                this.f4785r.h(i12 & i13, pointerId);
                return;
            }
            return;
        }
        if (actionMasked == 1) {
            if (this.f4768a == 1) {
                A();
            }
            a();
            return;
        }
        if (actionMasked == 2) {
            if (this.f4768a == 1) {
                if (x(this.f4770c)) {
                    int iFindPointerIndex = motionEvent.findPointerIndex(this.f4770c);
                    float x11 = motionEvent.getX(iFindPointerIndex);
                    float y11 = motionEvent.getY(iFindPointerIndex);
                    float[] fArr = this.f4773f;
                    int i14 = this.f4770c;
                    int i15 = (int) (x11 - fArr[i14]);
                    int i16 = (int) (y11 - this.f4774g[i14]);
                    p(this.f4786s.getLeft() + i15, this.f4786s.getTop() + i16, i15, i16);
                    D(motionEvent);
                    return;
                }
                return;
            }
            int pointerCount = motionEvent.getPointerCount();
            while (i11 < pointerCount) {
                int pointerId2 = motionEvent.getPointerId(i11);
                if (x(pointerId2)) {
                    float x12 = motionEvent.getX(i11);
                    float y12 = motionEvent.getY(i11);
                    float f10 = x12 - this.f4771d[pointerId2];
                    float f11 = y12 - this.f4772e[pointerId2];
                    B(f10, f11, pointerId2);
                    if (this.f4768a != 1) {
                        View viewR2 = r((int) x12, (int) y12);
                        if (d(viewR2, f10, f11) && I(viewR2, pointerId2)) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                i11++;
            }
            D(motionEvent);
            return;
        }
        if (actionMasked == 3) {
            if (this.f4768a == 1) {
                n(0.0f, 0.0f);
            }
            a();
            return;
        }
        if (actionMasked == 5) {
            int pointerId3 = motionEvent.getPointerId(actionIndex);
            float x13 = motionEvent.getX(actionIndex);
            float y13 = motionEvent.getY(actionIndex);
            C(x13, y13, pointerId3);
            if (this.f4768a != 0) {
                if (v((int) x13, (int) y13)) {
                    I(this.f4786s, pointerId3);
                    return;
                }
                return;
            } else {
                I(r((int) x13, (int) y13), pointerId3);
                int i17 = this.f4775h[pointerId3];
                int i18 = this.f4783p;
                if ((i17 & i18) != 0) {
                    this.f4785r.h(i17 & i18, pointerId3);
                    return;
                }
                return;
            }
        }
        if (actionMasked != 6) {
            return;
        }
        int pointerId4 = motionEvent.getPointerId(actionIndex);
        if (this.f4768a == 1 && pointerId4 == this.f4770c) {
            int pointerCount2 = motionEvent.getPointerCount();
            while (true) {
                if (i11 >= pointerCount2) {
                    i10 = -1;
                    break;
                }
                int pointerId5 = motionEvent.getPointerId(i11);
                if (pointerId5 != this.f4770c) {
                    View viewR3 = r((int) motionEvent.getX(i11), (int) motionEvent.getY(i11));
                    View view = this.f4786s;
                    if (viewR3 == view && I(view, pointerId5)) {
                        i10 = this.f4770c;
                        break;
                    }
                }
                i11++;
            }
            if (i10 == -1) {
                A();
            }
        }
        h(pointerId4);
    }
}
