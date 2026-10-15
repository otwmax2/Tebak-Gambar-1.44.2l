package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.view.a0;
import androidx.core.view.accessibility.c;
import androidx.core.view.accessibility.f;
import c0.c;

/* JADX INFO: loaded from: classes2.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.c<V> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    c0.c f25084a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    c f25085b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private boolean f25086c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f25088e;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private float f25087d = 0.0f;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    int f25089f = 2;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    float f25090g = 0.5f;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    float f25091h = 0.0f;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    float f25092i = 0.5f;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private final c.AbstractC0087c f25093j = new a();

    class a extends c.AbstractC0087c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f25094a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private int f25095b = -1;

        a() {
        }

        private boolean n(View view, float f10) {
            if (f10 == 0.0f) {
                return Math.abs(view.getLeft() - this.f25094a) >= Math.round(((float) view.getWidth()) * SwipeDismissBehavior.this.f25090g);
            }
            boolean z10 = a0.E(view) == 1;
            int i10 = SwipeDismissBehavior.this.f25089f;
            if (i10 == 2) {
                return true;
            }
            if (i10 == 0) {
                if (z10) {
                    if (f10 >= 0.0f) {
                        return false;
                    }
                } else if (f10 <= 0.0f) {
                    return false;
                }
                return true;
            }
            if (i10 != 1) {
                return false;
            }
            if (z10) {
                if (f10 <= 0.0f) {
                    return false;
                }
            } else if (f10 >= 0.0f) {
                return false;
            }
            return true;
        }

        @Override // c0.c.AbstractC0087c
        public int a(View view, int i10, int i11) {
            int width;
            int width2;
            int width3;
            boolean z10 = a0.E(view) == 1;
            int i12 = SwipeDismissBehavior.this.f25089f;
            if (i12 == 0) {
                if (z10) {
                    width = this.f25094a - view.getWidth();
                    width2 = this.f25094a;
                } else {
                    width = this.f25094a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i12 != 1) {
                width = this.f25094a - view.getWidth();
                width2 = view.getWidth() + this.f25094a;
            } else if (z10) {
                width = this.f25094a;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.f25094a - view.getWidth();
                width2 = this.f25094a;
            }
            return SwipeDismissBehavior.G(width, i10, width2);
        }

        @Override // c0.c.AbstractC0087c
        public int b(View view, int i10, int i11) {
            return view.getTop();
        }

        @Override // c0.c.AbstractC0087c
        public int d(View view) {
            return view.getWidth();
        }

        @Override // c0.c.AbstractC0087c
        public void i(View view, int i10) {
            this.f25095b = i10;
            this.f25094a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // c0.c.AbstractC0087c
        public void j(int i10) {
            c cVar = SwipeDismissBehavior.this.f25085b;
            if (cVar != null) {
                cVar.b(i10);
            }
        }

        @Override // c0.c.AbstractC0087c
        public void k(View view, int i10, int i11, int i12, int i13) {
            float width = this.f25094a + (view.getWidth() * SwipeDismissBehavior.this.f25091h);
            float width2 = this.f25094a + (view.getWidth() * SwipeDismissBehavior.this.f25092i);
            float f10 = i10;
            if (f10 <= width) {
                view.setAlpha(1.0f);
            } else if (f10 >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.F(0.0f, 1.0f - SwipeDismissBehavior.I(width, width2, f10), 1.0f));
            }
        }

        @Override // c0.c.AbstractC0087c
        public void l(View view, float f10, float f11) {
            int i10;
            boolean z10;
            c cVar;
            this.f25095b = -1;
            int width = view.getWidth();
            if (n(view, f10)) {
                int left = view.getLeft();
                int i11 = this.f25094a;
                i10 = left < i11 ? i11 - width : i11 + width;
                z10 = true;
            } else {
                i10 = this.f25094a;
                z10 = false;
            }
            if (SwipeDismissBehavior.this.f25084a.F(i10, view.getTop())) {
                a0.i0(view, new d(view, z10));
            } else {
                if (!z10 || (cVar = SwipeDismissBehavior.this.f25085b) == null) {
                    return;
                }
                cVar.a(view);
            }
        }

        @Override // c0.c.AbstractC0087c
        public boolean m(View view, int i10) {
            int i11 = this.f25095b;
            return (i11 == -1 || i11 == i10) && SwipeDismissBehavior.this.E(view);
        }
    }

    class b implements f {
        b() {
        }

        @Override // androidx.core.view.accessibility.f
        public boolean a(View view, f.a aVar) {
            boolean z10 = false;
            if (!SwipeDismissBehavior.this.E(view)) {
                return false;
            }
            boolean z11 = a0.E(view) == 1;
            int i10 = SwipeDismissBehavior.this.f25089f;
            if ((i10 == 0 && z11) || (i10 == 1 && !z11)) {
                z10 = true;
            }
            int width = view.getWidth();
            if (z10) {
                width = -width;
            }
            a0.a0(view, width);
            view.setAlpha(0.0f);
            c cVar = SwipeDismissBehavior.this.f25085b;
            if (cVar != null) {
                cVar.a(view);
            }
            return true;
        }
    }

    public interface c {
        void a(View view);

        void b(int i10);
    }

    private class d implements Runnable {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        private final View f25098o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        private final boolean f25099p;

        d(View view, boolean z10) {
            this.f25098o = view;
            this.f25099p = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            c cVar;
            c0.c cVar2 = SwipeDismissBehavior.this.f25084a;
            if (cVar2 != null && cVar2.k(true)) {
                a0.i0(this.f25098o, this);
            } else {
                if (!this.f25099p || (cVar = SwipeDismissBehavior.this.f25085b) == null) {
                    return;
                }
                cVar.a(this.f25098o);
            }
        }
    }

    static float F(float f10, float f11, float f12) {
        return Math.min(Math.max(f10, f11), f12);
    }

    static int G(int i10, int i11, int i12) {
        return Math.min(Math.max(i10, i11), i12);
    }

    private void H(ViewGroup viewGroup) {
        if (this.f25084a == null) {
            this.f25084a = this.f25088e ? c0.c.l(viewGroup, this.f25087d, this.f25093j) : c0.c.m(viewGroup, this.f25093j);
        }
    }

    static float I(float f10, float f11, float f12) {
        return (f12 - f10) / (f11 - f10);
    }

    private void M(View view) {
        a0.k0(view, 1048576);
        if (E(view)) {
            a0.m0(view, c.a.f2445y, null, new b());
        }
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean D(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        c0.c cVar = this.f25084a;
        if (cVar == null) {
            return false;
        }
        cVar.z(motionEvent);
        return true;
    }

    public boolean E(View view) {
        return true;
    }

    public void J(float f10) {
        this.f25092i = F(0.0f, f10, 1.0f);
    }

    public void K(float f10) {
        this.f25091h = F(0.0f, f10, 1.0f);
    }

    public void L(int i10) {
        this.f25089f = i10;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean k(CoordinatorLayout coordinatorLayout, V v10, MotionEvent motionEvent) {
        boolean zB = this.f25086c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zB = coordinatorLayout.B(v10, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.f25086c = zB;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.f25086c = false;
        }
        if (!zB) {
            return false;
        }
        H(coordinatorLayout);
        return this.f25084a.G(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean l(CoordinatorLayout coordinatorLayout, V v10, int i10) {
        boolean zL = super.l(coordinatorLayout, v10, i10);
        if (a0.C(v10) == 0) {
            a0.A0(v10, 1);
            M(v10);
        }
        return zL;
    }
}
