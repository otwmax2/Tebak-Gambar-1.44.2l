package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.content.res.Resources;
import android.view.Gravity;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ListView;
import android.widget.PopupWindow;
import android.widget.TextView;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.l0;
import androidx.core.view.a0;

/* JADX INFO: compiled from: StandardMenuPopup.java */
/* JADX INFO: loaded from: classes.dex */
final class q extends k implements PopupWindow.OnDismissListener, View.OnKeyListener {
    private static final int J = f.g.f29091m;
    private View A;
    View B;
    private m.a C;
    ViewTreeObserver D;
    private boolean E;
    private boolean F;
    private int G;
    private boolean I;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private final Context f753p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private final g f754q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private final f f755r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private final boolean f756s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private final int f757t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private final int f758u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private final int f759v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    final l0 f760w;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private PopupWindow.OnDismissListener f763z;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    final ViewTreeObserver.OnGlobalLayoutListener f761x = new a();

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private final View.OnAttachStateChangeListener f762y = new b();
    private int H = 0;

    /* JADX INFO: compiled from: StandardMenuPopup.java */
    class a implements ViewTreeObserver.OnGlobalLayoutListener {
        a() {
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public void onGlobalLayout() {
            if (!q.this.a() || q.this.f760w.B()) {
                return;
            }
            View view = q.this.B;
            if (view == null || !view.isShown()) {
                q.this.dismiss();
            } else {
                q.this.f760w.h();
            }
        }
    }

    /* JADX INFO: compiled from: StandardMenuPopup.java */
    class b implements View.OnAttachStateChangeListener {
        b() {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewAttachedToWindow(View view) {
        }

        @Override // android.view.View.OnAttachStateChangeListener
        public void onViewDetachedFromWindow(View view) {
            ViewTreeObserver viewTreeObserver = q.this.D;
            if (viewTreeObserver != null) {
                if (!viewTreeObserver.isAlive()) {
                    q.this.D = view.getViewTreeObserver();
                }
                q qVar = q.this;
                qVar.D.removeGlobalOnLayoutListener(qVar.f761x);
            }
            view.removeOnAttachStateChangeListener(this);
        }
    }

    public q(Context context, g gVar, View view, int i10, int i11, boolean z10) {
        this.f753p = context;
        this.f754q = gVar;
        this.f756s = z10;
        this.f755r = new f(gVar, LayoutInflater.from(context), z10, J);
        this.f758u = i10;
        this.f759v = i11;
        Resources resources = context.getResources();
        this.f757t = Math.max(resources.getDisplayMetrics().widthPixels / 2, resources.getDimensionPixelSize(f.d.f29015d));
        this.A = view;
        this.f760w = new l0(context, null, i10, i11);
        gVar.c(this, context);
    }

    private boolean z() {
        View view;
        if (a()) {
            return true;
        }
        if (this.E || (view = this.A) == null) {
            return false;
        }
        this.B = view;
        this.f760w.K(this);
        this.f760w.L(this);
        this.f760w.J(true);
        View view2 = this.B;
        boolean z10 = this.D == null;
        ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
        this.D = viewTreeObserver;
        if (z10) {
            viewTreeObserver.addOnGlobalLayoutListener(this.f761x);
        }
        view2.addOnAttachStateChangeListener(this.f762y);
        this.f760w.D(view2);
        this.f760w.G(this.H);
        if (!this.F) {
            this.G = k.o(this.f755r, null, this.f753p, this.f757t);
            this.F = true;
        }
        this.f760w.F(this.G);
        this.f760w.I(2);
        this.f760w.H(n());
        this.f760w.h();
        ListView listViewJ = this.f760w.j();
        listViewJ.setOnKeyListener(this);
        if (this.I && this.f754q.x() != null) {
            FrameLayout frameLayout = (FrameLayout) LayoutInflater.from(this.f753p).inflate(f.g.f29090l, (ViewGroup) listViewJ, false);
            TextView textView = (TextView) frameLayout.findViewById(R.id.title);
            if (textView != null) {
                textView.setText(this.f754q.x());
            }
            frameLayout.setEnabled(false);
            listViewJ.addHeaderView(frameLayout, null, false);
        }
        this.f760w.p(this.f755r);
        this.f760w.h();
        return true;
    }

    @Override // androidx.appcompat.view.menu.p
    public boolean a() {
        return !this.E && this.f760w.a();
    }

    @Override // androidx.appcompat.view.menu.m
    public void b(g gVar, boolean z10) {
        if (gVar != this.f754q) {
            return;
        }
        dismiss();
        m.a aVar = this.C;
        if (aVar != null) {
            aVar.b(gVar, z10);
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void c(boolean z10) {
        this.F = false;
        f fVar = this.f755r;
        if (fVar != null) {
            fVar.notifyDataSetChanged();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean d() {
        return false;
    }

    @Override // androidx.appcompat.view.menu.p
    public void dismiss() {
        if (a()) {
            this.f760w.dismiss();
        }
    }

    @Override // androidx.appcompat.view.menu.m
    public void g(m.a aVar) {
        this.C = aVar;
    }

    @Override // androidx.appcompat.view.menu.p
    public void h() {
        if (!z()) {
            throw new IllegalStateException("StandardMenuPopup cannot be used without an anchor");
        }
    }

    @Override // androidx.appcompat.view.menu.p
    public ListView j() {
        return this.f760w.j();
    }

    @Override // androidx.appcompat.view.menu.m
    public boolean k(r rVar) {
        if (rVar.hasVisibleItems()) {
            l lVar = new l(this.f753p, rVar, this.B, this.f756s, this.f758u, this.f759v);
            lVar.j(this.C);
            lVar.g(k.x(rVar));
            lVar.i(this.f763z);
            this.f763z = null;
            this.f754q.e(false);
            int iC = this.f760w.c();
            int iO = this.f760w.o();
            if ((Gravity.getAbsoluteGravity(this.H, a0.E(this.A)) & 7) == 5) {
                iC += this.A.getWidth();
            }
            if (lVar.n(iC, iO)) {
                m.a aVar = this.C;
                if (aVar == null) {
                    return true;
                }
                aVar.c(rVar);
                return true;
            }
        }
        return false;
    }

    @Override // androidx.appcompat.view.menu.k
    public void l(g gVar) {
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public void onDismiss() {
        this.E = true;
        this.f754q.close();
        ViewTreeObserver viewTreeObserver = this.D;
        if (viewTreeObserver != null) {
            if (!viewTreeObserver.isAlive()) {
                this.D = this.B.getViewTreeObserver();
            }
            this.D.removeGlobalOnLayoutListener(this.f761x);
            this.D = null;
        }
        this.B.removeOnAttachStateChangeListener(this.f762y);
        PopupWindow.OnDismissListener onDismissListener = this.f763z;
        if (onDismissListener != null) {
            onDismissListener.onDismiss();
        }
    }

    @Override // android.view.View.OnKeyListener
    public boolean onKey(View view, int i10, KeyEvent keyEvent) {
        if (keyEvent.getAction() != 1 || i10 != 82) {
            return false;
        }
        dismiss();
        return true;
    }

    @Override // androidx.appcompat.view.menu.k
    public void p(View view) {
        this.A = view;
    }

    @Override // androidx.appcompat.view.menu.k
    public void r(boolean z10) {
        this.f755r.d(z10);
    }

    @Override // androidx.appcompat.view.menu.k
    public void s(int i10) {
        this.H = i10;
    }

    @Override // androidx.appcompat.view.menu.k
    public void t(int i10) {
        this.f760w.e(i10);
    }

    @Override // androidx.appcompat.view.menu.k
    public void u(PopupWindow.OnDismissListener onDismissListener) {
        this.f763z = onDismissListener;
    }

    @Override // androidx.appcompat.view.menu.k
    public void v(boolean z10) {
        this.I = z10;
    }

    @Override // androidx.appcompat.view.menu.k
    public void w(int i10) {
        this.f760w.l(i10);
    }
}
