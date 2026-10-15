package androidx.appcompat.app;

import android.R;
import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.TypedArray;
import android.util.TypedValue;
import android.view.ContextThemeWrapper;
import android.view.KeyCharacterMap;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import androidx.appcompat.app.a;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ActionBarContainer;
import androidx.appcompat.widget.ActionBarContextView;
import androidx.appcompat.widget.ActionBarOverlayLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.appcompat.widget.e0;
import androidx.appcompat.widget.p0;
import androidx.core.view.a0;
import androidx.core.view.g0;
import androidx.core.view.h0;
import androidx.core.view.i0;
import androidx.core.view.j0;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* JADX INFO: compiled from: WindowDecorActionBar.java */
/* JADX INFO: loaded from: classes.dex */
public class u extends androidx.appcompat.app.a implements ActionBarOverlayLayout.d {
    private static final Interpolator E = new AccelerateInterpolator();
    private static final Interpolator F = new DecelerateInterpolator();
    boolean A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Context f475a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private Context f476b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private Activity f477c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    ActionBarOverlayLayout f478d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    ActionBarContainer f479e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    e0 f480f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    ActionBarContextView f481g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    View f482h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    p0 f483i;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private boolean f486l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    d f487m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    androidx.appcompat.view.b f488n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    b.a f489o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private boolean f490p;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f492r;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    boolean f495u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    boolean f496v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f497w;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    androidx.appcompat.view.h f499y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private boolean f500z;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private ArrayList<Object> f484j = new ArrayList<>();

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f485k = -1;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private ArrayList<a.b> f491q = new ArrayList<>();

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private int f493s = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    boolean f494t = true;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f498x = true;
    final h0 B = new a();
    final h0 C = new b();
    final j0 D = new c();

    /* JADX INFO: compiled from: WindowDecorActionBar.java */
    class a extends i0 {
        a() {
        }

        @Override // androidx.core.view.h0
        public void b(View view) {
            View view2;
            u uVar = u.this;
            if (uVar.f494t && (view2 = uVar.f482h) != null) {
                view2.setTranslationY(0.0f);
                u.this.f479e.setTranslationY(0.0f);
            }
            u.this.f479e.setVisibility(8);
            u.this.f479e.setTransitioning(false);
            u uVar2 = u.this;
            uVar2.f499y = null;
            uVar2.y();
            ActionBarOverlayLayout actionBarOverlayLayout = u.this.f478d;
            if (actionBarOverlayLayout != null) {
                a0.n0(actionBarOverlayLayout);
            }
        }
    }

    /* JADX INFO: compiled from: WindowDecorActionBar.java */
    class b extends i0 {
        b() {
        }

        @Override // androidx.core.view.h0
        public void b(View view) {
            u uVar = u.this;
            uVar.f499y = null;
            uVar.f479e.requestLayout();
        }
    }

    /* JADX INFO: compiled from: WindowDecorActionBar.java */
    class c implements j0 {
        c() {
        }

        @Override // androidx.core.view.j0
        public void a(View view) {
            ((View) u.this.f479e.getParent()).invalidate();
        }
    }

    /* JADX INFO: compiled from: WindowDecorActionBar.java */
    public class d extends androidx.appcompat.view.b implements g.a {

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        private final Context f504q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        private final androidx.appcompat.view.menu.g f505r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        private b.a f506s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        private WeakReference<View> f507t;

        public d(Context context, b.a aVar) {
            this.f504q = context;
            this.f506s = aVar;
            androidx.appcompat.view.menu.g gVarS = new androidx.appcompat.view.menu.g(context).S(1);
            this.f505r = gVarS;
            gVarS.R(this);
        }

        @Override // androidx.appcompat.view.menu.g.a
        public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
            b.a aVar = this.f506s;
            if (aVar != null) {
                return aVar.d(this, menuItem);
            }
            return false;
        }

        @Override // androidx.appcompat.view.menu.g.a
        public void b(androidx.appcompat.view.menu.g gVar) {
            if (this.f506s == null) {
                return;
            }
            k();
            u.this.f481g.l();
        }

        @Override // androidx.appcompat.view.b
        public void c() {
            u uVar = u.this;
            if (uVar.f487m != this) {
                return;
            }
            if (u.x(uVar.f495u, uVar.f496v, false)) {
                this.f506s.a(this);
            } else {
                u uVar2 = u.this;
                uVar2.f488n = this;
                uVar2.f489o = this.f506s;
            }
            this.f506s = null;
            u.this.w(false);
            u.this.f481g.g();
            u uVar3 = u.this;
            uVar3.f478d.setHideOnContentScrollEnabled(uVar3.A);
            u.this.f487m = null;
        }

        @Override // androidx.appcompat.view.b
        public View d() {
            WeakReference<View> weakReference = this.f507t;
            if (weakReference != null) {
                return weakReference.get();
            }
            return null;
        }

        @Override // androidx.appcompat.view.b
        public Menu e() {
            return this.f505r;
        }

        @Override // androidx.appcompat.view.b
        public MenuInflater f() {
            return new androidx.appcompat.view.g(this.f504q);
        }

        @Override // androidx.appcompat.view.b
        public CharSequence g() {
            return u.this.f481g.getSubtitle();
        }

        @Override // androidx.appcompat.view.b
        public CharSequence i() {
            return u.this.f481g.getTitle();
        }

        @Override // androidx.appcompat.view.b
        public void k() {
            if (u.this.f487m != this) {
                return;
            }
            this.f505r.d0();
            try {
                this.f506s.c(this, this.f505r);
            } finally {
                this.f505r.c0();
            }
        }

        @Override // androidx.appcompat.view.b
        public boolean l() {
            return u.this.f481g.j();
        }

        @Override // androidx.appcompat.view.b
        public void m(View view) {
            u.this.f481g.setCustomView(view);
            this.f507t = new WeakReference<>(view);
        }

        @Override // androidx.appcompat.view.b
        public void n(int i10) {
            o(u.this.f475a.getResources().getString(i10));
        }

        @Override // androidx.appcompat.view.b
        public void o(CharSequence charSequence) {
            u.this.f481g.setSubtitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public void q(int i10) {
            r(u.this.f475a.getResources().getString(i10));
        }

        @Override // androidx.appcompat.view.b
        public void r(CharSequence charSequence) {
            u.this.f481g.setTitle(charSequence);
        }

        @Override // androidx.appcompat.view.b
        public void s(boolean z10) {
            super.s(z10);
            u.this.f481g.setTitleOptional(z10);
        }

        public boolean t() {
            this.f505r.d0();
            try {
                return this.f506s.b(this, this.f505r);
            } finally {
                this.f505r.c0();
            }
        }
    }

    public u(Activity activity, boolean z10) {
        this.f477c = activity;
        View decorView = activity.getWindow().getDecorView();
        E(decorView);
        if (z10) {
            return;
        }
        this.f482h = decorView.findViewById(R.id.content);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private e0 B(View view) {
        if (view instanceof e0) {
            return (e0) view;
        }
        if (view instanceof Toolbar) {
            return ((Toolbar) view).getWrapper();
        }
        StringBuilder sb = new StringBuilder();
        sb.append("Can't make a decor toolbar out of ");
        sb.append(view != 0 ? view.getClass().getSimpleName() : "null");
        throw new IllegalStateException(sb.toString());
    }

    private void D() {
        if (this.f497w) {
            this.f497w = false;
            ActionBarOverlayLayout actionBarOverlayLayout = this.f478d;
            if (actionBarOverlayLayout != null) {
                actionBarOverlayLayout.setShowingForActionMode(false);
            }
            M(false);
        }
    }

    private void E(View view) {
        ActionBarOverlayLayout actionBarOverlayLayout = (ActionBarOverlayLayout) view.findViewById(f.f.f29068p);
        this.f478d = actionBarOverlayLayout;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setActionBarVisibilityCallback(this);
        }
        this.f480f = B(view.findViewById(f.f.f29053a));
        this.f481g = (ActionBarContextView) view.findViewById(f.f.f29058f);
        ActionBarContainer actionBarContainer = (ActionBarContainer) view.findViewById(f.f.f29055c);
        this.f479e = actionBarContainer;
        e0 e0Var = this.f480f;
        if (e0Var == null || this.f481g == null || actionBarContainer == null) {
            throw new IllegalStateException(getClass().getSimpleName() + " can only be used with a compatible window decor layout");
        }
        this.f475a = e0Var.getContext();
        boolean z10 = (this.f480f.q() & 4) != 0;
        if (z10) {
            this.f486l = true;
        }
        androidx.appcompat.view.a aVarB = androidx.appcompat.view.a.b(this.f475a);
        J(aVarB.a() || z10);
        H(aVarB.g());
        TypedArray typedArrayObtainStyledAttributes = this.f475a.obtainStyledAttributes(null, f.j.f29115a, f.a.f28979c, 0);
        if (typedArrayObtainStyledAttributes.getBoolean(f.j.f29165k, false)) {
            I(true);
        }
        int dimensionPixelSize = typedArrayObtainStyledAttributes.getDimensionPixelSize(f.j.f29155i, 0);
        if (dimensionPixelSize != 0) {
            G(dimensionPixelSize);
        }
        typedArrayObtainStyledAttributes.recycle();
    }

    private void H(boolean z10) {
        this.f492r = z10;
        if (z10) {
            this.f479e.setTabContainer(null);
            this.f480f.i(this.f483i);
        } else {
            this.f480f.i(null);
            this.f479e.setTabContainer(this.f483i);
        }
        boolean z11 = C() == 2;
        p0 p0Var = this.f483i;
        if (p0Var != null) {
            if (z11) {
                p0Var.setVisibility(0);
                ActionBarOverlayLayout actionBarOverlayLayout = this.f478d;
                if (actionBarOverlayLayout != null) {
                    a0.n0(actionBarOverlayLayout);
                }
            } else {
                p0Var.setVisibility(8);
            }
        }
        this.f480f.t(!this.f492r && z11);
        this.f478d.setHasNonEmbeddedTabs(!this.f492r && z11);
    }

    private boolean K() {
        return a0.U(this.f479e);
    }

    private void L() {
        if (this.f497w) {
            return;
        }
        this.f497w = true;
        ActionBarOverlayLayout actionBarOverlayLayout = this.f478d;
        if (actionBarOverlayLayout != null) {
            actionBarOverlayLayout.setShowingForActionMode(true);
        }
        M(false);
    }

    private void M(boolean z10) {
        if (x(this.f495u, this.f496v, this.f497w)) {
            if (this.f498x) {
                return;
            }
            this.f498x = true;
            A(z10);
            return;
        }
        if (this.f498x) {
            this.f498x = false;
            z(z10);
        }
    }

    static boolean x(boolean z10, boolean z11, boolean z12) {
        if (z12) {
            return true;
        }
        return (z10 || z11) ? false : true;
    }

    public void A(boolean z10) {
        View view;
        View view2;
        androidx.appcompat.view.h hVar = this.f499y;
        if (hVar != null) {
            hVar.a();
        }
        this.f479e.setVisibility(0);
        if (this.f493s == 0 && (this.f500z || z10)) {
            this.f479e.setTranslationY(0.0f);
            float f10 = -this.f479e.getHeight();
            if (z10) {
                this.f479e.getLocationInWindow(new int[]{0, 0});
                f10 -= r5[1];
            }
            this.f479e.setTranslationY(f10);
            androidx.appcompat.view.h hVar2 = new androidx.appcompat.view.h();
            g0 g0VarM = a0.e(this.f479e).m(0.0f);
            g0VarM.k(this.D);
            hVar2.c(g0VarM);
            if (this.f494t && (view2 = this.f482h) != null) {
                view2.setTranslationY(f10);
                hVar2.c(a0.e(this.f482h).m(0.0f));
            }
            hVar2.f(F);
            hVar2.e(250L);
            hVar2.g(this.C);
            this.f499y = hVar2;
            hVar2.h();
        } else {
            this.f479e.setAlpha(1.0f);
            this.f479e.setTranslationY(0.0f);
            if (this.f494t && (view = this.f482h) != null) {
                view.setTranslationY(0.0f);
            }
            this.C.b(null);
        }
        ActionBarOverlayLayout actionBarOverlayLayout = this.f478d;
        if (actionBarOverlayLayout != null) {
            a0.n0(actionBarOverlayLayout);
        }
    }

    public int C() {
        return this.f480f.m();
    }

    public void F(int i10, int i11) {
        int iQ = this.f480f.q();
        if ((i11 & 4) != 0) {
            this.f486l = true;
        }
        this.f480f.k((i10 & i11) | ((i11 ^ (-1)) & iQ));
    }

    public void G(float f10) {
        a0.y0(this.f479e, f10);
    }

    public void I(boolean z10) {
        if (z10 && !this.f478d.w()) {
            throw new IllegalStateException("Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll");
        }
        this.A = z10;
        this.f478d.setHideOnContentScrollEnabled(z10);
    }

    public void J(boolean z10) {
        this.f480f.p(z10);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void a() {
        if (this.f496v) {
            this.f496v = false;
            M(true);
        }
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void b() {
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void c(boolean z10) {
        this.f494t = z10;
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void d() {
        if (this.f496v) {
            return;
        }
        this.f496v = true;
        M(true);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void e() {
        androidx.appcompat.view.h hVar = this.f499y;
        if (hVar != null) {
            hVar.a();
            this.f499y = null;
        }
    }

    @Override // androidx.appcompat.app.a
    public boolean g() {
        e0 e0Var = this.f480f;
        if (e0Var == null || !e0Var.j()) {
            return false;
        }
        this.f480f.collapseActionView();
        return true;
    }

    @Override // androidx.appcompat.app.a
    public void h(boolean z10) {
        if (z10 == this.f490p) {
            return;
        }
        this.f490p = z10;
        int size = this.f491q.size();
        for (int i10 = 0; i10 < size; i10++) {
            this.f491q.get(i10).a(z10);
        }
    }

    @Override // androidx.appcompat.app.a
    public int i() {
        return this.f480f.q();
    }

    @Override // androidx.appcompat.app.a
    public Context j() {
        if (this.f476b == null) {
            TypedValue typedValue = new TypedValue();
            this.f475a.getTheme().resolveAttribute(f.a.f28983g, typedValue, true);
            int i10 = typedValue.resourceId;
            if (i10 != 0) {
                this.f476b = new ContextThemeWrapper(this.f475a, i10);
            } else {
                this.f476b = this.f475a;
            }
        }
        return this.f476b;
    }

    @Override // androidx.appcompat.app.a
    public void l(Configuration configuration) {
        H(androidx.appcompat.view.a.b(this.f475a).g());
    }

    @Override // androidx.appcompat.app.a
    public boolean n(int i10, KeyEvent keyEvent) {
        Menu menuE;
        d dVar = this.f487m;
        if (dVar == null || (menuE = dVar.e()) == null) {
            return false;
        }
        menuE.setQwertyMode(KeyCharacterMap.load(keyEvent != null ? keyEvent.getDeviceId() : -1).getKeyboardType() != 1);
        return menuE.performShortcut(i10, keyEvent, 0);
    }

    @Override // androidx.appcompat.widget.ActionBarOverlayLayout.d
    public void onWindowVisibilityChanged(int i10) {
        this.f493s = i10;
    }

    @Override // androidx.appcompat.app.a
    public void q(boolean z10) {
        if (this.f486l) {
            return;
        }
        r(z10);
    }

    @Override // androidx.appcompat.app.a
    public void r(boolean z10) {
        F(z10 ? 4 : 0, 4);
    }

    @Override // androidx.appcompat.app.a
    public void s(boolean z10) {
        androidx.appcompat.view.h hVar;
        this.f500z = z10;
        if (z10 || (hVar = this.f499y) == null) {
            return;
        }
        hVar.a();
    }

    @Override // androidx.appcompat.app.a
    public void t(CharSequence charSequence) {
        this.f480f.setTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public void u(CharSequence charSequence) {
        this.f480f.setWindowTitle(charSequence);
    }

    @Override // androidx.appcompat.app.a
    public androidx.appcompat.view.b v(b.a aVar) {
        d dVar = this.f487m;
        if (dVar != null) {
            dVar.c();
        }
        this.f478d.setHideOnContentScrollEnabled(false);
        this.f481g.k();
        d dVar2 = new d(this.f481g.getContext(), aVar);
        if (!dVar2.t()) {
            return null;
        }
        this.f487m = dVar2;
        dVar2.k();
        this.f481g.h(dVar2);
        w(true);
        return dVar2;
    }

    public void w(boolean z10) {
        g0 g0VarN;
        g0 g0VarF;
        if (z10) {
            L();
        } else {
            D();
        }
        if (!K()) {
            if (z10) {
                this.f480f.o(4);
                this.f481g.setVisibility(0);
                return;
            } else {
                this.f480f.o(0);
                this.f481g.setVisibility(8);
                return;
            }
        }
        if (z10) {
            g0VarF = this.f480f.n(4, 100L);
            g0VarN = this.f481g.f(0, 200L);
        } else {
            g0VarN = this.f480f.n(0, 200L);
            g0VarF = this.f481g.f(8, 100L);
        }
        androidx.appcompat.view.h hVar = new androidx.appcompat.view.h();
        hVar.d(g0VarF, g0VarN);
        hVar.h();
    }

    void y() {
        b.a aVar = this.f489o;
        if (aVar != null) {
            aVar.a(this.f488n);
            this.f488n = null;
            this.f489o = null;
        }
    }

    public void z(boolean z10) {
        View view;
        androidx.appcompat.view.h hVar = this.f499y;
        if (hVar != null) {
            hVar.a();
        }
        if (this.f493s != 0 || (!this.f500z && !z10)) {
            this.B.b(null);
            return;
        }
        this.f479e.setAlpha(1.0f);
        this.f479e.setTransitioning(true);
        androidx.appcompat.view.h hVar2 = new androidx.appcompat.view.h();
        float f10 = -this.f479e.getHeight();
        if (z10) {
            this.f479e.getLocationInWindow(new int[]{0, 0});
            f10 -= r5[1];
        }
        g0 g0VarM = a0.e(this.f479e).m(f10);
        g0VarM.k(this.D);
        hVar2.c(g0VarM);
        if (this.f494t && (view = this.f482h) != null) {
            hVar2.c(a0.e(view).m(f10));
        }
        hVar2.f(E);
        hVar2.e(250L);
        hVar2.g(this.B);
        this.f499y = hVar2;
        hVar2.h();
    }

    public u(Dialog dialog) {
        E(dialog.getWindow().getDecorView());
    }
}
