package androidx.appcompat.widget;

import android.text.TextUtils;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.accessibility.AccessibilityManager;

/* JADX INFO: compiled from: TooltipCompatHandler.java */
/* JADX INFO: loaded from: classes.dex */
class c1 implements View.OnLongClickListener, View.OnHoverListener, View.OnAttachStateChangeListener {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private static c1 f991y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private static c1 f992z;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private final View f993o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final CharSequence f994p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final int f995q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final Runnable f996r = new Runnable() { // from class: androidx.appcompat.widget.b1
        @Override // java.lang.Runnable
        public final void run() {
            this.f976o.e();
        }
    };

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final Runnable f997s = new Runnable() { // from class: androidx.appcompat.widget.a1
        @Override // java.lang.Runnable
        public final void run() {
            this.f960o.d();
        }
    };

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f998t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private int f999u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private d1 f1000v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f1001w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f1002x;

    private c1(View view, CharSequence charSequence) {
        this.f993o = view;
        this.f994p = charSequence;
        this.f995q = androidx.core.view.c0.c(ViewConfiguration.get(view.getContext()));
        c();
        view.setOnLongClickListener(this);
        view.setOnHoverListener(this);
    }

    private void b() {
        this.f993o.removeCallbacks(this.f996r);
    }

    private void c() {
        this.f1002x = true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        i(false);
    }

    private void f() {
        this.f993o.postDelayed(this.f996r, ViewConfiguration.getLongPressTimeout());
    }

    private static void g(c1 c1Var) {
        c1 c1Var2 = f991y;
        if (c1Var2 != null) {
            c1Var2.b();
        }
        f991y = c1Var;
        if (c1Var != null) {
            c1Var.f();
        }
    }

    public static void h(View view, CharSequence charSequence) {
        c1 c1Var = f991y;
        if (c1Var != null && c1Var.f993o == view) {
            g(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new c1(view, charSequence);
            return;
        }
        c1 c1Var2 = f992z;
        if (c1Var2 != null && c1Var2.f993o == view) {
            c1Var2.d();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }

    private boolean j(MotionEvent motionEvent) {
        int x10 = (int) motionEvent.getX();
        int y10 = (int) motionEvent.getY();
        if (!this.f1002x && Math.abs(x10 - this.f998t) <= this.f995q && Math.abs(y10 - this.f999u) <= this.f995q) {
            return false;
        }
        this.f998t = x10;
        this.f999u = y10;
        this.f1002x = false;
        return true;
    }

    void d() {
        if (f992z == this) {
            f992z = null;
            d1 d1Var = this.f1000v;
            if (d1Var != null) {
                d1Var.c();
                this.f1000v = null;
                c();
                this.f993o.removeOnAttachStateChangeListener(this);
            } else {
                Log.e("TooltipCompatHandler", "sActiveHandler.mPopup == null");
            }
        }
        if (f991y == this) {
            g(null);
        }
        this.f993o.removeCallbacks(this.f997s);
    }

    void i(boolean z10) {
        long j10;
        int longPressTimeout;
        long j11;
        if (androidx.core.view.a0.T(this.f993o)) {
            g(null);
            c1 c1Var = f992z;
            if (c1Var != null) {
                c1Var.d();
            }
            f992z = this;
            this.f1001w = z10;
            d1 d1Var = new d1(this.f993o.getContext());
            this.f1000v = d1Var;
            d1Var.e(this.f993o, this.f998t, this.f999u, this.f1001w, this.f994p);
            this.f993o.addOnAttachStateChangeListener(this);
            if (this.f1001w) {
                j11 = 2500;
            } else {
                if ((androidx.core.view.a0.N(this.f993o) & 1) == 1) {
                    j10 = 3000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                } else {
                    j10 = 15000;
                    longPressTimeout = ViewConfiguration.getLongPressTimeout();
                }
                j11 = j10 - ((long) longPressTimeout);
            }
            this.f993o.removeCallbacks(this.f997s);
            this.f993o.postDelayed(this.f997s, j11);
        }
    }

    @Override // android.view.View.OnHoverListener
    public boolean onHover(View view, MotionEvent motionEvent) {
        if (this.f1000v != null && this.f1001w) {
            return false;
        }
        AccessibilityManager accessibilityManager = (AccessibilityManager) this.f993o.getContext().getSystemService("accessibility");
        if (accessibilityManager.isEnabled() && accessibilityManager.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action != 7) {
            if (action == 10) {
                c();
                d();
            }
        } else if (this.f993o.isEnabled() && this.f1000v == null && j(motionEvent)) {
            g(this);
        }
        return false;
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View view) {
        this.f998t = view.getWidth() / 2;
        this.f999u = view.getHeight() / 2;
        i(true);
        return true;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        d();
    }
}
