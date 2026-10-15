package c0;

import android.graphics.Rect;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import android.view.accessibility.AccessibilityEvent;
import android.view.accessibility.AccessibilityManager;
import androidx.core.view.a0;
import androidx.core.view.accessibility.d;
import androidx.core.view.accessibility.e;
import androidx.core.view.e0;
import c0.b;
import com.facebook.internal.NativeProtocol;
import java.util.ArrayList;
import java.util.List;
import o.h;

/* JADX INFO: compiled from: ExploreByTouchHelper.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class a extends androidx.core.view.a {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private static final Rect f4749n = new Rect(Integer.MAX_VALUE, Integer.MAX_VALUE, Integer.MIN_VALUE, Integer.MIN_VALUE);

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private static final b.a<androidx.core.view.accessibility.c> f4750o = new C0085a();

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private static final b.InterfaceC0086b<h<androidx.core.view.accessibility.c>, androidx.core.view.accessibility.c> f4751p = new b();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final AccessibilityManager f4756h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private final View f4757i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private c f4758j;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Rect f4752d = new Rect();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Rect f4753e = new Rect();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Rect f4754f = new Rect();

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int[] f4755g = new int[2];

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    int f4759k = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    int f4760l = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f4761m = Integer.MIN_VALUE;

    /* JADX INFO: renamed from: c0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ExploreByTouchHelper.java */
    static class C0085a implements b.a<androidx.core.view.accessibility.c> {
        C0085a() {
        }

        @Override // c0.b.a
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public void a(androidx.core.view.accessibility.c cVar, Rect rect) {
            cVar.l(rect);
        }
    }

    /* JADX INFO: compiled from: ExploreByTouchHelper.java */
    static class b implements b.InterfaceC0086b<h<androidx.core.view.accessibility.c>, androidx.core.view.accessibility.c> {
        b() {
        }

        @Override // c0.b.InterfaceC0086b
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public androidx.core.view.accessibility.c a(h<androidx.core.view.accessibility.c> hVar, int i10) {
            return hVar.m(i10);
        }

        @Override // c0.b.InterfaceC0086b
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public int b(h<androidx.core.view.accessibility.c> hVar) {
            return hVar.l();
        }
    }

    /* JADX INFO: compiled from: ExploreByTouchHelper.java */
    private class c extends d {
        c() {
        }

        @Override // androidx.core.view.accessibility.d
        public androidx.core.view.accessibility.c b(int i10) {
            return androidx.core.view.accessibility.c.N(a.this.H(i10));
        }

        @Override // androidx.core.view.accessibility.d
        public androidx.core.view.accessibility.c d(int i10) {
            int i11 = i10 == 2 ? a.this.f4759k : a.this.f4760l;
            if (i11 == Integer.MIN_VALUE) {
                return null;
            }
            return b(i11);
        }

        @Override // androidx.core.view.accessibility.d
        public boolean f(int i10, int i11, Bundle bundle) {
            return a.this.P(i10, i11, bundle);
        }
    }

    public a(View view) {
        if (view == null) {
            throw new IllegalArgumentException("View may not be null");
        }
        this.f4757i = view;
        this.f4756h = (AccessibilityManager) view.getContext().getSystemService("accessibility");
        view.setFocusable(true);
        if (a0.C(view) == 0) {
            a0.A0(view, 1);
        }
    }

    private static Rect D(View view, int i10, Rect rect) {
        int width = view.getWidth();
        int height = view.getHeight();
        if (i10 == 17) {
            rect.set(width, 0, width, height);
        } else if (i10 == 33) {
            rect.set(0, height, width, height);
        } else if (i10 == 66) {
            rect.set(-1, 0, -1, height);
        } else {
            if (i10 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            rect.set(0, -1, width, -1);
        }
        return rect;
    }

    private boolean E(Rect rect) {
        if (rect == null || rect.isEmpty() || this.f4757i.getWindowVisibility() != 0) {
            return false;
        }
        Object parent = this.f4757i.getParent();
        while (parent instanceof View) {
            View view = (View) parent;
            if (view.getAlpha() <= 0.0f || view.getVisibility() != 0) {
                return false;
            }
            parent = view.getParent();
        }
        return parent != null;
    }

    private static int F(int i10) {
        if (i10 == 19) {
            return 33;
        }
        if (i10 != 21) {
            return i10 != 22 ? 130 : 66;
        }
        return 17;
    }

    private boolean G(int i10, Rect rect) {
        androidx.core.view.accessibility.c cVar;
        h<androidx.core.view.accessibility.c> hVarY = y();
        int i11 = this.f4760l;
        androidx.core.view.accessibility.c cVarG = i11 == Integer.MIN_VALUE ? null : hVarY.g(i11);
        if (i10 == 1 || i10 == 2) {
            cVar = (androidx.core.view.accessibility.c) c0.b.d(hVarY, f4751p, f4750o, cVarG, i10, a0.E(this.f4757i) == 1, false);
        } else {
            if (i10 != 17 && i10 != 33 && i10 != 66 && i10 != 130) {
                throw new IllegalArgumentException("direction must be one of {FOCUS_FORWARD, FOCUS_BACKWARD, FOCUS_UP, FOCUS_DOWN, FOCUS_LEFT, FOCUS_RIGHT}.");
            }
            Rect rect2 = new Rect();
            int i12 = this.f4760l;
            if (i12 != Integer.MIN_VALUE) {
                z(i12, rect2);
            } else if (rect != null) {
                rect2.set(rect);
            } else {
                D(this.f4757i, i10, rect2);
            }
            cVar = (androidx.core.view.accessibility.c) c0.b.c(hVarY, f4751p, f4750o, cVarG, rect2, i10);
        }
        return T(cVar != null ? hVarY.j(hVarY.i(cVar)) : Integer.MIN_VALUE);
    }

    private boolean Q(int i10, int i11, Bundle bundle) {
        return i11 != 1 ? i11 != 2 ? i11 != 64 ? i11 != 128 ? J(i10, i11, bundle) : n(i10) : S(i10) : o(i10) : T(i10);
    }

    private boolean R(int i10, Bundle bundle) {
        return a0.f0(this.f4757i, i10, bundle);
    }

    private boolean S(int i10) {
        int i11;
        if (!this.f4756h.isEnabled() || !this.f4756h.isTouchExplorationEnabled() || (i11 = this.f4759k) == i10) {
            return false;
        }
        if (i11 != Integer.MIN_VALUE) {
            n(i11);
        }
        this.f4759k = i10;
        this.f4757i.invalidate();
        U(i10, 32768);
        return true;
    }

    private void V(int i10) {
        int i11 = this.f4761m;
        if (i11 == i10) {
            return;
        }
        this.f4761m = i10;
        U(i10, 128);
        U(i11, 256);
    }

    private boolean n(int i10) {
        if (this.f4759k != i10) {
            return false;
        }
        this.f4759k = Integer.MIN_VALUE;
        this.f4757i.invalidate();
        U(i10, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST);
        return true;
    }

    private boolean p() {
        int i10 = this.f4760l;
        return i10 != Integer.MIN_VALUE && J(i10, 16, null);
    }

    private AccessibilityEvent q(int i10, int i11) {
        return i10 != -1 ? r(i10, i11) : s(i11);
    }

    private AccessibilityEvent r(int i10, int i11) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i11);
        androidx.core.view.accessibility.c cVarH = H(i10);
        accessibilityEventObtain.getText().add(cVarH.v());
        accessibilityEventObtain.setContentDescription(cVarH.q());
        accessibilityEventObtain.setScrollable(cVarH.I());
        accessibilityEventObtain.setPassword(cVarH.H());
        accessibilityEventObtain.setEnabled(cVarH.D());
        accessibilityEventObtain.setChecked(cVarH.B());
        L(i10, accessibilityEventObtain);
        if (accessibilityEventObtain.getText().isEmpty() && accessibilityEventObtain.getContentDescription() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateEventForVirtualViewId()");
        }
        accessibilityEventObtain.setClassName(cVarH.o());
        e.c(accessibilityEventObtain, this.f4757i, i10);
        accessibilityEventObtain.setPackageName(this.f4757i.getContext().getPackageName());
        return accessibilityEventObtain;
    }

    private AccessibilityEvent s(int i10) {
        AccessibilityEvent accessibilityEventObtain = AccessibilityEvent.obtain(i10);
        this.f4757i.onInitializeAccessibilityEvent(accessibilityEventObtain);
        return accessibilityEventObtain;
    }

    private androidx.core.view.accessibility.c t(int i10) {
        androidx.core.view.accessibility.c cVarL = androidx.core.view.accessibility.c.L();
        cVarL.d0(true);
        cVarL.f0(true);
        cVarL.X("android.view.View");
        Rect rect = f4749n;
        cVarL.T(rect);
        cVarL.U(rect);
        cVarL.m0(this.f4757i);
        N(i10, cVarL);
        if (cVarL.v() == null && cVarL.q() == null) {
            throw new RuntimeException("Callbacks must add text or a content description in populateNodeForVirtualViewId()");
        }
        cVarL.l(this.f4753e);
        if (this.f4753e.equals(rect)) {
            throw new RuntimeException("Callbacks must set parent bounds in populateNodeForVirtualViewId()");
        }
        int iJ = cVarL.j();
        if ((iJ & 64) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        if ((iJ & 128) != 0) {
            throw new RuntimeException("Callbacks must not add ACTION_CLEAR_ACCESSIBILITY_FOCUS in populateNodeForVirtualViewId()");
        }
        cVarL.k0(this.f4757i.getContext().getPackageName());
        cVarL.r0(this.f4757i, i10);
        if (this.f4759k == i10) {
            cVarL.R(true);
            cVarL.a(128);
        } else {
            cVarL.R(false);
            cVarL.a(64);
        }
        boolean z10 = this.f4760l == i10;
        if (z10) {
            cVarL.a(2);
        } else if (cVarL.E()) {
            cVarL.a(1);
        }
        cVarL.g0(z10);
        this.f4757i.getLocationOnScreen(this.f4755g);
        cVarL.m(this.f4752d);
        if (this.f4752d.equals(rect)) {
            cVarL.l(this.f4752d);
            if (cVarL.f2423b != -1) {
                androidx.core.view.accessibility.c cVarL2 = androidx.core.view.accessibility.c.L();
                for (int i11 = cVarL.f2423b; i11 != -1; i11 = cVarL2.f2423b) {
                    cVarL2.n0(this.f4757i, -1);
                    cVarL2.T(f4749n);
                    N(i11, cVarL2);
                    cVarL2.l(this.f4753e);
                    Rect rect2 = this.f4752d;
                    Rect rect3 = this.f4753e;
                    rect2.offset(rect3.left, rect3.top);
                }
                cVarL2.P();
            }
            this.f4752d.offset(this.f4755g[0] - this.f4757i.getScrollX(), this.f4755g[1] - this.f4757i.getScrollY());
        }
        if (this.f4757i.getLocalVisibleRect(this.f4754f)) {
            this.f4754f.offset(this.f4755g[0] - this.f4757i.getScrollX(), this.f4755g[1] - this.f4757i.getScrollY());
            if (this.f4752d.intersect(this.f4754f)) {
                cVarL.U(this.f4752d);
                if (E(this.f4752d)) {
                    cVarL.v0(true);
                }
            }
        }
        return cVarL;
    }

    private androidx.core.view.accessibility.c u() {
        androidx.core.view.accessibility.c cVarM = androidx.core.view.accessibility.c.M(this.f4757i);
        a0.d0(this.f4757i, cVarM);
        ArrayList arrayList = new ArrayList();
        C(arrayList);
        if (cVarM.n() > 0 && arrayList.size() > 0) {
            throw new RuntimeException("Views cannot have both real and virtual children");
        }
        int size = arrayList.size();
        for (int i10 = 0; i10 < size; i10++) {
            cVarM.c(this.f4757i, ((Integer) arrayList.get(i10)).intValue());
        }
        return cVarM;
    }

    private h<androidx.core.view.accessibility.c> y() {
        ArrayList arrayList = new ArrayList();
        C(arrayList);
        h<androidx.core.view.accessibility.c> hVar = new h<>();
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            hVar.k(i10, t(i10));
        }
        return hVar;
    }

    private void z(int i10, Rect rect) {
        H(i10).l(rect);
    }

    public final int A() {
        return this.f4760l;
    }

    protected abstract int B(float f10, float f11);

    protected abstract void C(List<Integer> list);

    androidx.core.view.accessibility.c H(int i10) {
        return i10 == -1 ? u() : t(i10);
    }

    public final void I(boolean z10, int i10, Rect rect) {
        int i11 = this.f4760l;
        if (i11 != Integer.MIN_VALUE) {
            o(i11);
        }
        if (z10) {
            G(i10, rect);
        }
    }

    protected abstract boolean J(int i10, int i11, Bundle bundle);

    protected void K(AccessibilityEvent accessibilityEvent) {
    }

    protected void L(int i10, AccessibilityEvent accessibilityEvent) {
    }

    protected void M(androidx.core.view.accessibility.c cVar) {
    }

    protected abstract void N(int i10, androidx.core.view.accessibility.c cVar);

    protected void O(int i10, boolean z10) {
    }

    boolean P(int i10, int i11, Bundle bundle) {
        return i10 != -1 ? Q(i10, i11, bundle) : R(i11, bundle);
    }

    public final boolean T(int i10) {
        int i11;
        if ((!this.f4757i.isFocused() && !this.f4757i.requestFocus()) || (i11 = this.f4760l) == i10) {
            return false;
        }
        if (i11 != Integer.MIN_VALUE) {
            o(i11);
        }
        this.f4760l = i10;
        O(i10, true);
        U(i10, 8);
        return true;
    }

    public final boolean U(int i10, int i11) {
        ViewParent parent;
        if (i10 == Integer.MIN_VALUE || !this.f4756h.isEnabled() || (parent = this.f4757i.getParent()) == null) {
            return false;
        }
        return e0.h(parent, this.f4757i, q(i10, i11));
    }

    @Override // androidx.core.view.a
    public d b(View view) {
        if (this.f4758j == null) {
            this.f4758j = new c();
        }
        return this.f4758j;
    }

    @Override // androidx.core.view.a
    public void f(View view, AccessibilityEvent accessibilityEvent) {
        super.f(view, accessibilityEvent);
        K(accessibilityEvent);
    }

    @Override // androidx.core.view.a
    public void g(View view, androidx.core.view.accessibility.c cVar) {
        super.g(view, cVar);
        M(cVar);
    }

    public final boolean o(int i10) {
        if (this.f4760l != i10) {
            return false;
        }
        this.f4760l = Integer.MIN_VALUE;
        O(i10, false);
        U(i10, 8);
        return true;
    }

    public final boolean v(MotionEvent motionEvent) {
        if (!this.f4756h.isEnabled() || !this.f4756h.isTouchExplorationEnabled()) {
            return false;
        }
        int action = motionEvent.getAction();
        if (action == 7 || action == 9) {
            int iB = B(motionEvent.getX(), motionEvent.getY());
            V(iB);
            return iB != Integer.MIN_VALUE;
        }
        if (action != 10 || this.f4761m == Integer.MIN_VALUE) {
            return false;
        }
        V(Integer.MIN_VALUE);
        return true;
    }

    public final boolean w(KeyEvent keyEvent) {
        int i10 = 0;
        if (keyEvent.getAction() == 1) {
            return false;
        }
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 61) {
            if (keyEvent.hasNoModifiers()) {
                return G(2, null);
            }
            if (keyEvent.hasModifiers(1)) {
                return G(1, null);
            }
            return false;
        }
        if (keyCode != 66) {
            switch (keyCode) {
                case 19:
                case 20:
                case 21:
                case 22:
                    if (!keyEvent.hasNoModifiers()) {
                        return false;
                    }
                    int iF = F(keyCode);
                    int repeatCount = keyEvent.getRepeatCount() + 1;
                    boolean z10 = false;
                    while (i10 < repeatCount && G(iF, null)) {
                        i10++;
                        z10 = true;
                    }
                    return z10;
                case 23:
                    break;
                default:
                    return false;
            }
        }
        if (!keyEvent.hasNoModifiers() || keyEvent.getRepeatCount() != 0) {
            return false;
        }
        p();
        return true;
    }

    public final int x() {
        return this.f4759k;
    }
}
