package androidx.appcompat.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.util.Log;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewDebug;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import androidx.appcompat.view.menu.n;
import androidx.core.view.b;
import com.facebook.internal.NativeProtocol;
import com.vungle.mediation.BuildConfig;

/* JADX INFO: compiled from: MenuItemImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements x.b {
    private View A;
    private androidx.core.view.b B;
    private MenuItem.OnActionExpandListener C;
    private ContextMenu.ContextMenuInfo E;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f700a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f701b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f702c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f703d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CharSequence f704e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private CharSequence f705f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private Intent f706g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private char f707h;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private char f709j;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Drawable f711l;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    g f713n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private r f714o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private Runnable f715p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private MenuItem.OnMenuItemClickListener f716q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private CharSequence f717r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private CharSequence f718s;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    private int f725z;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private int f708i = 4096;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private int f710k = 4096;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private int f712m = 0;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private ColorStateList f719t = null;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    private PorterDuff.Mode f720u = null;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    private boolean f721v = false;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    private boolean f722w = false;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    private boolean f723x = false;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    private int f724y = 16;
    private boolean D = false;

    /* JADX INFO: compiled from: MenuItemImpl.java */
    class a implements b.InterfaceC0041b {
        a() {
        }

        @Override // androidx.core.view.b.InterfaceC0041b
        public void onActionProviderVisibilityChanged(boolean z10) {
            i iVar = i.this;
            iVar.f713n.J(iVar);
        }
    }

    i(g gVar, int i10, int i11, int i12, int i13, CharSequence charSequence, int i14) {
        this.f725z = 0;
        this.f713n = gVar;
        this.f700a = i11;
        this.f701b = i10;
        this.f702c = i12;
        this.f703d = i13;
        this.f704e = charSequence;
        this.f725z = i14;
    }

    private static void d(StringBuilder sb, int i10, int i11, String str) {
        if ((i10 & i11) == i11) {
            sb.append(str);
        }
    }

    private Drawable e(Drawable drawable) {
        if (drawable != null && this.f723x && (this.f721v || this.f722w)) {
            drawable = androidx.core.graphics.drawable.a.r(drawable).mutate();
            if (this.f721v) {
                androidx.core.graphics.drawable.a.o(drawable, this.f719t);
            }
            if (this.f722w) {
                androidx.core.graphics.drawable.a.p(drawable, this.f720u);
            }
            this.f723x = false;
        }
        return drawable;
    }

    boolean A() {
        return this.f713n.H() && g() != 0;
    }

    public boolean B() {
        return (this.f725z & 4) == 4;
    }

    @Override // x.b
    public x.b a(androidx.core.view.b bVar) {
        androidx.core.view.b bVar2 = this.B;
        if (bVar2 != null) {
            bVar2.h();
        }
        this.A = null;
        this.B = bVar;
        this.f713n.K(true);
        androidx.core.view.b bVar3 = this.B;
        if (bVar3 != null) {
            bVar3.j(new a());
        }
        return this;
    }

    @Override // x.b
    public androidx.core.view.b b() {
        return this.B;
    }

    public void c() {
        this.f713n.I(this);
    }

    @Override // x.b, android.view.MenuItem
    public boolean collapseActionView() {
        if ((this.f725z & 8) == 0) {
            return false;
        }
        if (this.A == null) {
            return true;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionCollapse(this)) {
            return this.f713n.f(this);
        }
        return false;
    }

    @Override // x.b, android.view.MenuItem
    public boolean expandActionView() {
        if (!j()) {
            return false;
        }
        MenuItem.OnActionExpandListener onActionExpandListener = this.C;
        if (onActionExpandListener == null || onActionExpandListener.onMenuItemActionExpand(this)) {
            return this.f713n.k(this);
        }
        return false;
    }

    public int f() {
        return this.f703d;
    }

    char g() {
        return this.f713n.G() ? this.f709j : this.f707h;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.getActionProvider()");
    }

    @Override // x.b, android.view.MenuItem
    public View getActionView() {
        View view = this.A;
        if (view != null) {
            return view;
        }
        androidx.core.view.b bVar = this.B;
        if (bVar == null) {
            return null;
        }
        View viewD = bVar.d(this);
        this.A = viewD;
        return viewD;
    }

    @Override // x.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f710k;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f709j;
    }

    @Override // x.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f717r;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f701b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        Drawable drawable = this.f711l;
        if (drawable != null) {
            return e(drawable);
        }
        if (this.f712m == 0) {
            return null;
        }
        Drawable drawableB = g.a.b(this.f713n.u(), this.f712m);
        this.f712m = 0;
        this.f711l = drawableB;
        return e(drawableB);
    }

    @Override // x.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f719t;
    }

    @Override // x.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f720u;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f706g;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public int getItemId() {
        return this.f700a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return this.E;
    }

    @Override // x.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f708i;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f707h;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f702c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return this.f714o;
    }

    @Override // android.view.MenuItem
    @ViewDebug.CapturedViewProperty
    public CharSequence getTitle() {
        return this.f704e;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f705f;
        if (charSequence == null) {
            charSequence = this.f704e;
        }
        return (Build.VERSION.SDK_INT >= 18 || charSequence == null || (charSequence instanceof String)) ? charSequence : charSequence.toString();
    }

    @Override // x.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f718s;
    }

    String h() {
        char cG = g();
        if (cG == 0) {
            return BuildConfig.FLAVOR;
        }
        Resources resources = this.f713n.u().getResources();
        StringBuilder sb = new StringBuilder();
        if (ViewConfiguration.get(this.f713n.u()).hasPermanentMenuKey()) {
            sb.append(resources.getString(f.h.f29109k));
        }
        int i10 = this.f713n.G() ? this.f710k : this.f708i;
        d(sb, i10, NativeProtocol.MESSAGE_GET_ACCESS_TOKEN_REQUEST, resources.getString(f.h.f29105g));
        d(sb, i10, 4096, resources.getString(f.h.f29101c));
        d(sb, i10, 2, resources.getString(f.h.f29100b));
        d(sb, i10, 1, resources.getString(f.h.f29106h));
        d(sb, i10, 4, resources.getString(f.h.f29108j));
        d(sb, i10, 8, resources.getString(f.h.f29104f));
        if (cG == '\b') {
            sb.append(resources.getString(f.h.f29102d));
        } else if (cG == '\n') {
            sb.append(resources.getString(f.h.f29103e));
        } else if (cG != ' ') {
            sb.append(cG);
        } else {
            sb.append(resources.getString(f.h.f29107i));
        }
        return sb.toString();
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return this.f714o != null;
    }

    CharSequence i(n.a aVar) {
        return (aVar == null || !aVar.d()) ? getTitle() : getTitleCondensed();
    }

    @Override // x.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return this.D;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f724y & 1) == 1;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f724y & 2) == 2;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f724y & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        androidx.core.view.b bVar = this.B;
        return (bVar == null || !bVar.g()) ? (this.f724y & 8) == 0 : (this.f724y & 8) == 0 && this.B.b();
    }

    public boolean j() {
        androidx.core.view.b bVar;
        if ((this.f725z & 8) == 0) {
            return false;
        }
        if (this.A == null && (bVar = this.B) != null) {
            this.A = bVar.d(this);
        }
        return this.A != null;
    }

    public boolean k() {
        MenuItem.OnMenuItemClickListener onMenuItemClickListener = this.f716q;
        if (onMenuItemClickListener != null && onMenuItemClickListener.onMenuItemClick(this)) {
            return true;
        }
        g gVar = this.f713n;
        if (gVar.h(gVar, this)) {
            return true;
        }
        Runnable runnable = this.f715p;
        if (runnable != null) {
            runnable.run();
            return true;
        }
        if (this.f706g != null) {
            try {
                this.f713n.u().startActivity(this.f706g);
                return true;
            } catch (ActivityNotFoundException e10) {
                Log.e("MenuItemImpl", "Can't find activity to handle intent; ignoring", e10);
            }
        }
        androidx.core.view.b bVar = this.B;
        return bVar != null && bVar.e();
    }

    public boolean l() {
        return (this.f724y & 32) == 32;
    }

    public boolean m() {
        return (this.f724y & 4) != 0;
    }

    public boolean n() {
        return (this.f725z & 1) == 1;
    }

    public boolean o() {
        return (this.f725z & 2) == 2;
    }

    @Override // x.b, android.view.MenuItem
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public x.b setActionView(int i10) {
        Context contextU = this.f713n.u();
        setActionView(LayoutInflater.from(contextU).inflate(i10, (ViewGroup) new LinearLayout(contextU), false));
        return this;
    }

    @Override // x.b, android.view.MenuItem
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public x.b setActionView(View view) {
        int i10;
        this.A = view;
        this.B = null;
        if (view != null && view.getId() == -1 && (i10 = this.f700a) > 0) {
            view.setId(i10);
        }
        this.f713n.I(this);
        return this;
    }

    public void r(boolean z10) {
        this.D = z10;
        this.f713n.K(false);
    }

    void s(boolean z10) {
        int i10 = this.f724y;
        int i11 = (z10 ? 2 : 0) | (i10 & (-3));
        this.f724y = i11;
        if (i10 != i11) {
            this.f713n.K(false);
        }
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException("This is not supported, use MenuItemCompat.setActionProvider()");
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10) {
        if (this.f709j == c10) {
            return this;
        }
        this.f709j = Character.toLowerCase(c10);
        this.f713n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z10) {
        int i10 = this.f724y;
        int i11 = (z10 ? 1 : 0) | (i10 & (-2));
        this.f724y = i11;
        if (i10 != i11) {
            this.f713n.K(false);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z10) {
        if ((this.f724y & 4) != 0) {
            this.f713n.T(this);
        } else {
            s(z10);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z10) {
        if (z10) {
            this.f724y |= 16;
        } else {
            this.f724y &= -17;
        }
        this.f713n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f712m = 0;
        this.f711l = drawable;
        this.f723x = true;
        this.f713n.K(false);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f719t = colorStateList;
        this.f721v = true;
        this.f723x = true;
        this.f713n.K(false);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f720u = mode;
        this.f722w = true;
        this.f723x = true;
        this.f713n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f706g = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c10) {
        if (this.f707h == c10) {
            return this;
        }
        this.f707h = c10;
        this.f713n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        this.C = onActionExpandListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f716q = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11) {
        this.f707h = c10;
        this.f709j = Character.toLowerCase(c11);
        this.f713n.K(false);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public void setShowAsAction(int i10) {
        int i11 = i10 & 3;
        if (i11 != 0 && i11 != 1 && i11 != 2) {
            throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
        }
        this.f725z = i10;
        this.f713n.I(this);
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f704e = charSequence;
        this.f713n.K(false);
        r rVar = this.f714o;
        if (rVar != null) {
            rVar.setHeaderTitle(charSequence);
        }
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f705f = charSequence;
        this.f713n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z10) {
        if (y(z10)) {
            this.f713n.J(this);
        }
        return this;
    }

    public void t(boolean z10) {
        this.f724y = (z10 ? 4 : 0) | (this.f724y & (-5));
    }

    public String toString() {
        CharSequence charSequence = this.f704e;
        if (charSequence != null) {
            return charSequence.toString();
        }
        return null;
    }

    public void u(boolean z10) {
        if (z10) {
            this.f724y |= 32;
        } else {
            this.f724y &= -33;
        }
    }

    void v(ContextMenu.ContextMenuInfo contextMenuInfo) {
        this.E = contextMenuInfo;
    }

    @Override // x.b, android.view.MenuItem
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public x.b setShowAsActionFlags(int i10) {
        setShowAsAction(i10);
        return this;
    }

    public void x(r rVar) {
        this.f714o = rVar;
        rVar.setHeaderTitle(getTitle());
    }

    boolean y(boolean z10) {
        int i10 = this.f724y;
        int i11 = (z10 ? 0 : 8) | (i10 & (-9));
        this.f724y = i11;
        return i10 != i11;
    }

    public boolean z() {
        return this.f713n.A();
    }

    @Override // android.view.MenuItem
    public x.b setContentDescription(CharSequence charSequence) {
        this.f717r = charSequence;
        this.f713n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public x.b setTooltipText(CharSequence charSequence) {
        this.f718s = charSequence;
        this.f713n.K(false);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10, int i10) {
        if (this.f709j == c10 && this.f710k == i10) {
            return this;
        }
        this.f709j = Character.toLowerCase(c10);
        this.f710k = KeyEvent.normalizeMetaState(i10);
        this.f713n.K(false);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c10, int i10) {
        if (this.f707h == c10 && this.f708i == i10) {
            return this;
        }
        this.f707h = c10;
        this.f708i = KeyEvent.normalizeMetaState(i10);
        this.f713n.K(false);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.f707h = c10;
        this.f708i = KeyEvent.normalizeMetaState(i10);
        this.f709j = Character.toLowerCase(c11);
        this.f710k = KeyEvent.normalizeMetaState(i11);
        this.f713n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i10) {
        this.f711l = null;
        this.f712m = i10;
        this.f723x = true;
        this.f713n.K(false);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i10) {
        return setTitle(this.f713n.u().getString(i10));
    }
}
