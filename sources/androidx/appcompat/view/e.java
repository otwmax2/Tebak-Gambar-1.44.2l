package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.b;
import androidx.appcompat.view.menu.g;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;

/* JADX INFO: compiled from: StandaloneActionMode.java */
/* JADX INFO: loaded from: classes.dex */
public class e extends b implements g.a {

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private Context f519q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private ActionBarContextView f520r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private b.a f521s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private WeakReference<View> f522t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private boolean f523u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f524v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private androidx.appcompat.view.menu.g f525w;

    public e(Context context, ActionBarContextView actionBarContextView, b.a aVar, boolean z10) {
        this.f519q = context;
        this.f520r = actionBarContextView;
        this.f521s = aVar;
        androidx.appcompat.view.menu.g gVarS = new androidx.appcompat.view.menu.g(actionBarContextView.getContext()).S(1);
        this.f525w = gVarS;
        gVarS.R(this);
        this.f524v = z10;
    }

    @Override // androidx.appcompat.view.menu.g.a
    public boolean a(androidx.appcompat.view.menu.g gVar, MenuItem menuItem) {
        return this.f521s.d(this, menuItem);
    }

    @Override // androidx.appcompat.view.menu.g.a
    public void b(androidx.appcompat.view.menu.g gVar) {
        k();
        this.f520r.l();
    }

    @Override // androidx.appcompat.view.b
    public void c() {
        if (this.f523u) {
            return;
        }
        this.f523u = true;
        this.f521s.a(this);
    }

    @Override // androidx.appcompat.view.b
    public View d() {
        WeakReference<View> weakReference = this.f522t;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }

    @Override // androidx.appcompat.view.b
    public Menu e() {
        return this.f525w;
    }

    @Override // androidx.appcompat.view.b
    public MenuInflater f() {
        return new g(this.f520r.getContext());
    }

    @Override // androidx.appcompat.view.b
    public CharSequence g() {
        return this.f520r.getSubtitle();
    }

    @Override // androidx.appcompat.view.b
    public CharSequence i() {
        return this.f520r.getTitle();
    }

    @Override // androidx.appcompat.view.b
    public void k() {
        this.f521s.c(this, this.f525w);
    }

    @Override // androidx.appcompat.view.b
    public boolean l() {
        return this.f520r.j();
    }

    @Override // androidx.appcompat.view.b
    public void m(View view) {
        this.f520r.setCustomView(view);
        this.f522t = view != null ? new WeakReference<>(view) : null;
    }

    @Override // androidx.appcompat.view.b
    public void n(int i10) {
        o(this.f519q.getString(i10));
    }

    @Override // androidx.appcompat.view.b
    public void o(CharSequence charSequence) {
        this.f520r.setSubtitle(charSequence);
    }

    @Override // androidx.appcompat.view.b
    public void q(int i10) {
        r(this.f519q.getString(i10));
    }

    @Override // androidx.appcompat.view.b
    public void r(CharSequence charSequence) {
        this.f520r.setTitle(charSequence);
    }

    @Override // androidx.appcompat.view.b
    public void s(boolean z10) {
        super.s(z10);
        this.f520r.setTitleOptional(z10);
    }
}
