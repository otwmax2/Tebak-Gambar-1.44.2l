package androidx.appcompat.widget;

import android.R;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.text.TextUtils;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import androidx.appcompat.view.menu.m;
import androidx.appcompat.widget.Toolbar;

/* JADX INFO: compiled from: ToolbarWidgetWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public class y0 implements e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    Toolbar f1236a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private int f1237b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private View f1238c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private View f1239d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Drawable f1240e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Drawable f1241f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Drawable f1242g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f1243h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    CharSequence f1244i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private CharSequence f1245j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private CharSequence f1246k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    Window.Callback f1247l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    boolean f1248m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private c f1249n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f1250o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private int f1251p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Drawable f1252q;

    /* JADX INFO: compiled from: ToolbarWidgetWrapper.java */
    class a implements View.OnClickListener {

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        final androidx.appcompat.view.menu.a f1253o;

        a() {
            this.f1253o = new androidx.appcompat.view.menu.a(y0.this.f1236a.getContext(), 0, R.id.home, 0, 0, y0.this.f1244i);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            y0 y0Var = y0.this;
            Window.Callback callback = y0Var.f1247l;
            if (callback == null || !y0Var.f1248m) {
                return;
            }
            callback.onMenuItemSelected(0, this.f1253o);
        }
    }

    /* JADX INFO: compiled from: ToolbarWidgetWrapper.java */
    class b extends androidx.core.view.i0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f1255a = false;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        final /* synthetic */ int f1256b;

        b(int i10) {
            this.f1256b = i10;
        }

        @Override // androidx.core.view.i0, androidx.core.view.h0
        public void a(View view) {
            this.f1255a = true;
        }

        @Override // androidx.core.view.h0
        public void b(View view) {
            if (this.f1255a) {
                return;
            }
            y0.this.f1236a.setVisibility(this.f1256b);
        }

        @Override // androidx.core.view.i0, androidx.core.view.h0
        public void c(View view) {
            y0.this.f1236a.setVisibility(0);
        }
    }

    public y0(Toolbar toolbar, boolean z10) {
        this(toolbar, z10, f.h.f29099a, f.e.f29040n);
    }

    private void C(CharSequence charSequence) {
        this.f1244i = charSequence;
        if ((this.f1237b & 8) != 0) {
            this.f1236a.setTitle(charSequence);
            if (this.f1243h) {
                androidx.core.view.a0.t0(this.f1236a.getRootView(), charSequence);
            }
        }
    }

    private void D() {
        if ((this.f1237b & 4) != 0) {
            if (TextUtils.isEmpty(this.f1246k)) {
                this.f1236a.setNavigationContentDescription(this.f1251p);
            } else {
                this.f1236a.setNavigationContentDescription(this.f1246k);
            }
        }
    }

    private void E() {
        if ((this.f1237b & 4) == 0) {
            this.f1236a.setNavigationIcon((Drawable) null);
            return;
        }
        Toolbar toolbar = this.f1236a;
        Drawable drawable = this.f1242g;
        if (drawable == null) {
            drawable = this.f1252q;
        }
        toolbar.setNavigationIcon(drawable);
    }

    private void F() {
        Drawable drawable;
        int i10 = this.f1237b;
        if ((i10 & 2) == 0) {
            drawable = null;
        } else if ((i10 & 1) == 0 || (drawable = this.f1241f) == null) {
            drawable = this.f1240e;
        }
        this.f1236a.setLogo(drawable);
    }

    private int u() {
        if (this.f1236a.getNavigationIcon() == null) {
            return 11;
        }
        this.f1252q = this.f1236a.getNavigationIcon();
        return 15;
    }

    public void A(Drawable drawable) {
        this.f1242g = drawable;
        E();
    }

    public void B(CharSequence charSequence) {
        this.f1245j = charSequence;
        if ((this.f1237b & 8) != 0) {
            this.f1236a.setSubtitle(charSequence);
        }
    }

    @Override // androidx.appcompat.widget.e0
    public void a(Menu menu, m.a aVar) {
        if (this.f1249n == null) {
            c cVar = new c(this.f1236a.getContext());
            this.f1249n = cVar;
            cVar.p(f.f.f29059g);
        }
        this.f1249n.g(aVar);
        this.f1236a.K((androidx.appcompat.view.menu.g) menu, this.f1249n);
    }

    @Override // androidx.appcompat.widget.e0
    public boolean b() {
        return this.f1236a.B();
    }

    @Override // androidx.appcompat.widget.e0
    public void c() {
        this.f1248m = true;
    }

    @Override // androidx.appcompat.widget.e0
    public void collapseActionView() {
        this.f1236a.e();
    }

    @Override // androidx.appcompat.widget.e0
    public boolean d() {
        return this.f1236a.d();
    }

    @Override // androidx.appcompat.widget.e0
    public boolean e() {
        return this.f1236a.A();
    }

    @Override // androidx.appcompat.widget.e0
    public boolean f() {
        return this.f1236a.w();
    }

    @Override // androidx.appcompat.widget.e0
    public boolean g() {
        return this.f1236a.P();
    }

    @Override // androidx.appcompat.widget.e0
    public Context getContext() {
        return this.f1236a.getContext();
    }

    @Override // androidx.appcompat.widget.e0
    public CharSequence getTitle() {
        return this.f1236a.getTitle();
    }

    @Override // androidx.appcompat.widget.e0
    public void h() {
        this.f1236a.f();
    }

    @Override // androidx.appcompat.widget.e0
    public void i(p0 p0Var) {
        View view = this.f1238c;
        if (view != null) {
            ViewParent parent = view.getParent();
            Toolbar toolbar = this.f1236a;
            if (parent == toolbar) {
                toolbar.removeView(this.f1238c);
            }
        }
        this.f1238c = p0Var;
        if (p0Var == null || this.f1250o != 2) {
            return;
        }
        this.f1236a.addView(p0Var, 0);
        Toolbar.e eVar = (Toolbar.e) this.f1238c.getLayoutParams();
        ((ViewGroup.MarginLayoutParams) eVar).width = -2;
        ((ViewGroup.MarginLayoutParams) eVar).height = -2;
        eVar.f338a = 8388691;
        p0Var.setAllowCollapse(true);
    }

    @Override // androidx.appcompat.widget.e0
    public boolean j() {
        return this.f1236a.v();
    }

    @Override // androidx.appcompat.widget.e0
    public void k(int i10) {
        View view;
        int i11 = this.f1237b ^ i10;
        this.f1237b = i10;
        if (i11 != 0) {
            if ((i11 & 4) != 0) {
                if ((i10 & 4) != 0) {
                    D();
                }
                E();
            }
            if ((i11 & 3) != 0) {
                F();
            }
            if ((i11 & 8) != 0) {
                if ((i10 & 8) != 0) {
                    this.f1236a.setTitle(this.f1244i);
                    this.f1236a.setSubtitle(this.f1245j);
                } else {
                    this.f1236a.setTitle((CharSequence) null);
                    this.f1236a.setSubtitle((CharSequence) null);
                }
            }
            if ((i11 & 16) == 0 || (view = this.f1239d) == null) {
                return;
            }
            if ((i10 & 16) != 0) {
                this.f1236a.addView(view);
            } else {
                this.f1236a.removeView(view);
            }
        }
    }

    @Override // androidx.appcompat.widget.e0
    public void l(int i10) {
        x(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    @Override // androidx.appcompat.widget.e0
    public int m() {
        return this.f1250o;
    }

    @Override // androidx.appcompat.widget.e0
    public androidx.core.view.g0 n(int i10, long j10) {
        return androidx.core.view.a0.e(this.f1236a).b(i10 == 0 ? 1.0f : 0.0f).f(j10).h(new b(i10));
    }

    @Override // androidx.appcompat.widget.e0
    public void o(int i10) {
        this.f1236a.setVisibility(i10);
    }

    @Override // androidx.appcompat.widget.e0
    public void p(boolean z10) {
    }

    @Override // androidx.appcompat.widget.e0
    public int q() {
        return this.f1237b;
    }

    @Override // androidx.appcompat.widget.e0
    public void r() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.e0
    public void s() {
        Log.i("ToolbarWidgetWrapper", "Progress display unsupported");
    }

    @Override // androidx.appcompat.widget.e0
    public void setIcon(int i10) {
        setIcon(i10 != 0 ? g.a.b(getContext(), i10) : null);
    }

    @Override // androidx.appcompat.widget.e0
    public void setTitle(CharSequence charSequence) {
        this.f1243h = true;
        C(charSequence);
    }

    @Override // androidx.appcompat.widget.e0
    public void setWindowCallback(Window.Callback callback) {
        this.f1247l = callback;
    }

    @Override // androidx.appcompat.widget.e0
    public void setWindowTitle(CharSequence charSequence) {
        if (this.f1243h) {
            return;
        }
        C(charSequence);
    }

    @Override // androidx.appcompat.widget.e0
    public void t(boolean z10) {
        this.f1236a.setCollapsible(z10);
    }

    public void v(View view) {
        View view2 = this.f1239d;
        if (view2 != null && (this.f1237b & 16) != 0) {
            this.f1236a.removeView(view2);
        }
        this.f1239d = view;
        if (view == null || (this.f1237b & 16) == 0) {
            return;
        }
        this.f1236a.addView(view);
    }

    public void w(int i10) {
        if (i10 == this.f1251p) {
            return;
        }
        this.f1251p = i10;
        if (TextUtils.isEmpty(this.f1236a.getNavigationContentDescription())) {
            y(this.f1251p);
        }
    }

    public void x(Drawable drawable) {
        this.f1241f = drawable;
        F();
    }

    public void y(int i10) {
        z(i10 == 0 ? null : getContext().getString(i10));
    }

    public void z(CharSequence charSequence) {
        this.f1246k = charSequence;
        D();
    }

    public y0(Toolbar toolbar, boolean z10, int i10, int i11) {
        Drawable drawable;
        this.f1250o = 0;
        this.f1251p = 0;
        this.f1236a = toolbar;
        this.f1244i = toolbar.getTitle();
        this.f1245j = toolbar.getSubtitle();
        this.f1243h = this.f1244i != null;
        this.f1242g = toolbar.getNavigationIcon();
        w0 w0VarV = w0.v(toolbar.getContext(), null, f.j.f29115a, f.a.f28979c, 0);
        this.f1252q = w0VarV.g(f.j.f29170l);
        if (z10) {
            CharSequence charSequenceP = w0VarV.p(f.j.f29200r);
            if (!TextUtils.isEmpty(charSequenceP)) {
                setTitle(charSequenceP);
            }
            CharSequence charSequenceP2 = w0VarV.p(f.j.f29190p);
            if (!TextUtils.isEmpty(charSequenceP2)) {
                B(charSequenceP2);
            }
            Drawable drawableG = w0VarV.g(f.j.f29180n);
            if (drawableG != null) {
                x(drawableG);
            }
            Drawable drawableG2 = w0VarV.g(f.j.f29175m);
            if (drawableG2 != null) {
                setIcon(drawableG2);
            }
            if (this.f1242g == null && (drawable = this.f1252q) != null) {
                A(drawable);
            }
            k(w0VarV.k(f.j.f29150h, 0));
            int iN = w0VarV.n(f.j.f29145g, 0);
            if (iN != 0) {
                v(LayoutInflater.from(this.f1236a.getContext()).inflate(iN, (ViewGroup) this.f1236a, false));
                k(this.f1237b | 16);
            }
            int iM = w0VarV.m(f.j.f29160j, 0);
            if (iM > 0) {
                ViewGroup.LayoutParams layoutParams = this.f1236a.getLayoutParams();
                layoutParams.height = iM;
                this.f1236a.setLayoutParams(layoutParams);
            }
            int iE = w0VarV.e(f.j.f29140f, -1);
            int iE2 = w0VarV.e(f.j.f29135e, -1);
            if (iE >= 0 || iE2 >= 0) {
                this.f1236a.J(Math.max(iE, 0), Math.max(iE2, 0));
            }
            int iN2 = w0VarV.n(f.j.f29205s, 0);
            if (iN2 != 0) {
                Toolbar toolbar2 = this.f1236a;
                toolbar2.M(toolbar2.getContext(), iN2);
            }
            int iN3 = w0VarV.n(f.j.f29195q, 0);
            if (iN3 != 0) {
                Toolbar toolbar3 = this.f1236a;
                toolbar3.L(toolbar3.getContext(), iN3);
            }
            int iN4 = w0VarV.n(f.j.f29185o, 0);
            if (iN4 != 0) {
                this.f1236a.setPopupTheme(iN4);
            }
        } else {
            this.f1237b = u();
        }
        w0VarV.w();
        w(i10);
        this.f1246k = this.f1236a.getNavigationContentDescription();
        this.f1236a.setNavigationOnClickListener(new a());
    }

    @Override // androidx.appcompat.widget.e0
    public void setIcon(Drawable drawable) {
        this.f1240e = drawable;
        F();
    }
}
