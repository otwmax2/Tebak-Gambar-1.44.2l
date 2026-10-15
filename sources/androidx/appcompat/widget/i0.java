package androidx.appcompat.widget;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewParent;

/* JADX INFO: compiled from: ForwardingListener.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class i0 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final float f1065o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final int f1066p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f1067q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    final View f1068r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private Runnable f1069s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private Runnable f1070t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f1071u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private int f1072v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private final int[] f1073w = new int[2];

    /* JADX INFO: compiled from: ForwardingListener.java */
    private class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            ViewParent parent = i0.this.f1068r.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }
    }

    /* JADX INFO: compiled from: ForwardingListener.java */
    private class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            i0.this.o();
        }
    }

    public i0(View view) {
        this.f1068r = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f1065o = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f1066p = tapTimeout;
        this.f1067q = (tapTimeout + ViewConfiguration.getLongPressTimeout()) / 2;
    }

    private void a() {
        Runnable runnable = this.f1070t;
        if (runnable != null) {
            this.f1068r.removeCallbacks(runnable);
        }
        Runnable runnable2 = this.f1069s;
        if (runnable2 != null) {
            this.f1068r.removeCallbacks(runnable2);
        }
    }

    private boolean p(MotionEvent motionEvent) {
        g0 g0Var;
        View view = this.f1068r;
        androidx.appcompat.view.menu.p pVarB = b();
        if (pVarB == null || !pVarB.a() || (g0Var = (g0) pVarB.j()) == null || !g0Var.isShown()) {
            return false;
        }
        MotionEvent motionEventObtainNoHistory = MotionEvent.obtainNoHistory(motionEvent);
        s(view, motionEventObtainNoHistory);
        t(g0Var, motionEventObtainNoHistory);
        boolean zE = g0Var.e(motionEventObtainNoHistory, this.f1072v);
        motionEventObtainNoHistory.recycle();
        int actionMasked = motionEvent.getActionMasked();
        return zE && (actionMasked != 1 && actionMasked != 3);
    }

    /* JADX WARN: Removed duplicated region for block: B:20:0x003d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private boolean q(android.view.MotionEvent r6) {
        /*
            r5 = this;
            android.view.View r0 = r5.f1068r
            boolean r1 = r0.isEnabled()
            r2 = 0
            if (r1 != 0) goto La
            return r2
        La:
            int r1 = r6.getActionMasked()
            if (r1 == 0) goto L41
            r3 = 1
            if (r1 == r3) goto L3d
            r4 = 2
            if (r1 == r4) goto L1a
            r6 = 3
            if (r1 == r6) goto L3d
            goto L6d
        L1a:
            int r1 = r5.f1072v
            int r1 = r6.findPointerIndex(r1)
            if (r1 < 0) goto L6d
            float r4 = r6.getX(r1)
            float r6 = r6.getY(r1)
            float r1 = r5.f1065o
            boolean r6 = r(r0, r4, r6, r1)
            if (r6 != 0) goto L6d
            r5.a()
            android.view.ViewParent r6 = r0.getParent()
            r6.requestDisallowInterceptTouchEvent(r3)
            return r3
        L3d:
            r5.a()
            goto L6d
        L41:
            int r6 = r6.getPointerId(r2)
            r5.f1072v = r6
            java.lang.Runnable r6 = r5.f1069s
            if (r6 != 0) goto L52
            androidx.appcompat.widget.i0$a r6 = new androidx.appcompat.widget.i0$a
            r6.<init>()
            r5.f1069s = r6
        L52:
            java.lang.Runnable r6 = r5.f1069s
            int r1 = r5.f1066p
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
            java.lang.Runnable r6 = r5.f1070t
            if (r6 != 0) goto L65
            androidx.appcompat.widget.i0$b r6 = new androidx.appcompat.widget.i0$b
            r6.<init>()
            r5.f1070t = r6
        L65:
            java.lang.Runnable r6 = r5.f1070t
            int r1 = r5.f1067q
            long r3 = (long) r1
            r0.postDelayed(r6, r3)
        L6d:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.i0.q(android.view.MotionEvent):boolean");
    }

    private static boolean r(View view, float f10, float f11, float f12) {
        float f13 = -f12;
        return f10 >= f13 && f11 >= f13 && f10 < ((float) (view.getRight() - view.getLeft())) + f12 && f11 < ((float) (view.getBottom() - view.getTop())) + f12;
    }

    private boolean s(View view, MotionEvent motionEvent) {
        view.getLocationOnScreen(this.f1073w);
        motionEvent.offsetLocation(r0[0], r0[1]);
        return true;
    }

    private boolean t(View view, MotionEvent motionEvent) {
        view.getLocationOnScreen(this.f1073w);
        motionEvent.offsetLocation(-r0[0], -r0[1]);
        return true;
    }

    public abstract androidx.appcompat.view.menu.p b();

    protected abstract boolean d();

    protected boolean e() {
        androidx.appcompat.view.menu.p pVarB = b();
        if (pVarB == null || !pVarB.a()) {
            return true;
        }
        pVarB.dismiss();
        return true;
    }

    void o() {
        a();
        View view = this.f1068r;
        if (view.isEnabled() && !view.isLongClickable() && d()) {
            view.getParent().requestDisallowInterceptTouchEvent(true);
            long jUptimeMillis = SystemClock.uptimeMillis();
            MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
            view.onTouchEvent(motionEventObtain);
            motionEventObtain.recycle();
            this.f1071u = true;
        }
    }

    @Override // android.view.View.OnTouchListener
    public boolean onTouch(View view, MotionEvent motionEvent) {
        boolean z10;
        boolean z11 = this.f1071u;
        if (z11) {
            z10 = p(motionEvent) || !e();
        } else {
            z10 = q(motionEvent) && d();
            if (z10) {
                long jUptimeMillis = SystemClock.uptimeMillis();
                MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                this.f1068r.onTouchEvent(motionEventObtain);
                motionEventObtain.recycle();
            }
        }
        this.f1071u = z10;
        return z10 || z11;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f1071u = false;
        this.f1072v = -1;
        Runnable runnable = this.f1069s;
        if (runnable != null) {
            this.f1068r.removeCallbacks(runnable);
        }
    }
}
