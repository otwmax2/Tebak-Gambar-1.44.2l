package g1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import g1.a;
import g1.m;

/* JADX INFO: compiled from: Visibility.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class j0 extends m {
    private static final String[] Z = {"android:visibility:visibility", "android:visibility:parent"};
    private int Y = 3;

    /* JADX INFO: compiled from: Visibility.java */
    class a extends n {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ViewGroup f29717a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ View f29718b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        final /* synthetic */ View f29719c;

        a(ViewGroup viewGroup, View view, View view2) {
            this.f29717a = viewGroup;
            this.f29718b = view;
            this.f29719c = view2;
        }

        @Override // g1.n, g1.m.f
        public void a(m mVar) {
            if (this.f29718b.getParent() == null) {
                x.a(this.f29717a).c(this.f29718b);
            } else {
                j0.this.cancel();
            }
        }

        @Override // g1.n, g1.m.f
        public void c(m mVar) {
            x.a(this.f29717a).d(this.f29718b);
        }

        @Override // g1.m.f
        public void d(m mVar) {
            this.f29719c.setTag(j.f29714b, null);
            x.a(this.f29717a).d(this.f29718b);
            mVar.R(this);
        }
    }

    /* JADX INFO: compiled from: Visibility.java */
    private static class b extends AnimatorListenerAdapter implements m.f, a.InterfaceC0161a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final View f29721a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f29722b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        private final ViewGroup f29723c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final boolean f29724d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f29725e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        boolean f29726f = false;

        b(View view, int i10, boolean z10) {
            this.f29721a = view;
            this.f29722b = i10;
            this.f29723c = (ViewGroup) view.getParent();
            this.f29724d = z10;
            g(true);
        }

        private void f() {
            if (!this.f29726f) {
                c0.h(this.f29721a, this.f29722b);
                ViewGroup viewGroup = this.f29723c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            g(false);
        }

        private void g(boolean z10) {
            ViewGroup viewGroup;
            if (!this.f29724d || this.f29725e == z10 || (viewGroup = this.f29723c) == null) {
                return;
            }
            this.f29725e = z10;
            x.c(viewGroup, z10);
        }

        @Override // g1.m.f
        public void a(m mVar) {
            g(true);
        }

        @Override // g1.m.f
        public void b(m mVar) {
        }

        @Override // g1.m.f
        public void c(m mVar) {
            g(false);
        }

        @Override // g1.m.f
        public void d(m mVar) {
            f();
            mVar.R(this);
        }

        @Override // g1.m.f
        public void e(m mVar) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f29726f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, g1.a.InterfaceC0161a
        public void onAnimationPause(Animator animator) {
            if (this.f29726f) {
                return;
            }
            c0.h(this.f29721a, this.f29722b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener, g1.a.InterfaceC0161a
        public void onAnimationResume(Animator animator) {
            if (this.f29726f) {
                return;
            }
            c0.h(this.f29721a, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    /* JADX INFO: compiled from: Visibility.java */
    private static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        boolean f29727a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f29728b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        int f29729c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        int f29730d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        ViewGroup f29731e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        ViewGroup f29732f;

        c() {
        }
    }

    private void f0(s sVar) {
        sVar.f29774a.put("android:visibility:visibility", Integer.valueOf(sVar.f29775b.getVisibility()));
        sVar.f29774a.put("android:visibility:parent", sVar.f29775b.getParent());
        int[] iArr = new int[2];
        sVar.f29775b.getLocationOnScreen(iArr);
        sVar.f29774a.put("android:visibility:screenLocation", iArr);
    }

    private c g0(s sVar, s sVar2) {
        c cVar = new c();
        cVar.f29727a = false;
        cVar.f29728b = false;
        if (sVar == null || !sVar.f29774a.containsKey("android:visibility:visibility")) {
            cVar.f29729c = -1;
            cVar.f29731e = null;
        } else {
            cVar.f29729c = ((Integer) sVar.f29774a.get("android:visibility:visibility")).intValue();
            cVar.f29731e = (ViewGroup) sVar.f29774a.get("android:visibility:parent");
        }
        if (sVar2 == null || !sVar2.f29774a.containsKey("android:visibility:visibility")) {
            cVar.f29730d = -1;
            cVar.f29732f = null;
        } else {
            cVar.f29730d = ((Integer) sVar2.f29774a.get("android:visibility:visibility")).intValue();
            cVar.f29732f = (ViewGroup) sVar2.f29774a.get("android:visibility:parent");
        }
        if (sVar != null && sVar2 != null) {
            int i10 = cVar.f29729c;
            int i11 = cVar.f29730d;
            if (i10 == i11 && cVar.f29731e == cVar.f29732f) {
                return cVar;
            }
            if (i10 != i11) {
                if (i10 == 0) {
                    cVar.f29728b = false;
                    cVar.f29727a = true;
                } else if (i11 == 0) {
                    cVar.f29728b = true;
                    cVar.f29727a = true;
                }
            } else if (cVar.f29732f == null) {
                cVar.f29728b = false;
                cVar.f29727a = true;
            } else if (cVar.f29731e == null) {
                cVar.f29728b = true;
                cVar.f29727a = true;
            }
        } else if (sVar == null && cVar.f29730d == 0) {
            cVar.f29728b = true;
            cVar.f29727a = true;
        } else if (sVar2 == null && cVar.f29729c == 0) {
            cVar.f29728b = false;
            cVar.f29727a = true;
        }
        return cVar;
    }

    @Override // g1.m
    public String[] E() {
        return Z;
    }

    @Override // g1.m
    public boolean G(s sVar, s sVar2) {
        if (sVar == null && sVar2 == null) {
            return false;
        }
        if (sVar != null && sVar2 != null && sVar2.f29774a.containsKey("android:visibility:visibility") != sVar.f29774a.containsKey("android:visibility:visibility")) {
            return false;
        }
        c cVarG0 = g0(sVar, sVar2);
        if (cVarG0.f29727a) {
            return cVarG0.f29729c == 0 || cVarG0.f29730d == 0;
        }
        return false;
    }

    @Override // g1.m
    public void h(s sVar) {
        f0(sVar);
    }

    public abstract Animator h0(ViewGroup viewGroup, View view, s sVar, s sVar2);

    public Animator i0(ViewGroup viewGroup, s sVar, int i10, s sVar2, int i11) {
        if ((this.Y & 1) != 1 || sVar2 == null) {
            return null;
        }
        if (sVar == null) {
            View view = (View) sVar2.f29775b.getParent();
            if (g0(u(view, false), F(view, false)).f29727a) {
                return null;
            }
        }
        return h0(viewGroup, sVar2.f29775b, sVar, sVar2);
    }

    public abstract Animator j0(ViewGroup viewGroup, View view, s sVar, s sVar2);

    @Override // g1.m
    public void k(s sVar) {
        f0(sVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x008f A[PHI: r8
      0x008f: PHI (r8v3 android.view.View) = 
      (r8v2 android.view.View)
      (r8v2 android.view.View)
      (r8v2 android.view.View)
      (r8v2 android.view.View)
      (r8v2 android.view.View)
      (r8v2 android.view.View)
      (r8v6 android.view.View)
     binds: [B:26:0x0048, B:31:0x0057, B:36:0x007c, B:38:0x007f, B:40:0x0085, B:42:0x0089, B:34:0x006f] A[DONT_GENERATE, DONT_INLINE]] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public android.animation.Animator k0(android.view.ViewGroup r18, g1.s r19, int r20, g1.s r21, int r22) {
        /*
            Method dump skipped, instruction units count: 264
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: g1.j0.k0(android.view.ViewGroup, g1.s, int, g1.s, int):android.animation.Animator");
    }

    public void m0(int i10) {
        if ((i10 & (-4)) != 0) {
            throw new IllegalArgumentException("Only MODE_IN and MODE_OUT flags are allowed");
        }
        this.Y = i10;
    }

    @Override // g1.m
    public Animator o(ViewGroup viewGroup, s sVar, s sVar2) {
        c cVarG0 = g0(sVar, sVar2);
        if (!cVarG0.f29727a) {
            return null;
        }
        if (cVarG0.f29731e == null && cVarG0.f29732f == null) {
            return null;
        }
        return cVarG0.f29728b ? i0(viewGroup, sVar, cVarG0.f29729c, sVar2, cVarG0.f29730d) : k0(viewGroup, sVar, cVarG0.f29729c, sVar2, cVarG0.f29730d);
    }
}
