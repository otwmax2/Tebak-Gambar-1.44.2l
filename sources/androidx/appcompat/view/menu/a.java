package androidx.appcompat.view.menu;

import android.content.Context;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.view.ActionProvider;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

/* JADX INFO: compiled from: ActionMenuItem.java */
/* JADX INFO: loaded from: classes.dex */
public class a implements x.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final int f599a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    private final int f600b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    private final int f601c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private CharSequence f602d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private CharSequence f603e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private Intent f604f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private char f605g;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    private char f607i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    private Drawable f609k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    private Context f610l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    private MenuItem.OnMenuItemClickListener f611m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    private CharSequence f612n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private CharSequence f613o;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private int f606h = 4096;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    private int f608j = 4096;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private ColorStateList f614p = null;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private PorterDuff.Mode f615q = null;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    private boolean f616r = false;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f617s = false;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    private int f618t = 16;

    public a(Context context, int i10, int i11, int i12, int i13, CharSequence charSequence) {
        this.f610l = context;
        this.f599a = i11;
        this.f600b = i10;
        this.f601c = i13;
        this.f602d = charSequence;
    }

    private void c() {
        Drawable drawable = this.f609k;
        if (drawable != null) {
            if (this.f616r || this.f617s) {
                Drawable drawableR = androidx.core.graphics.drawable.a.r(drawable);
                this.f609k = drawableR;
                Drawable drawableMutate = drawableR.mutate();
                this.f609k = drawableMutate;
                if (this.f616r) {
                    androidx.core.graphics.drawable.a.o(drawableMutate, this.f614p);
                }
                if (this.f617s) {
                    androidx.core.graphics.drawable.a.p(this.f609k, this.f615q);
                }
            }
        }
    }

    @Override // x.b
    public x.b a(androidx.core.view.b bVar) {
        throw new UnsupportedOperationException();
    }

    @Override // x.b
    public androidx.core.view.b b() {
        return null;
    }

    @Override // x.b, android.view.MenuItem
    public boolean collapseActionView() {
        return false;
    }

    @Override // x.b, android.view.MenuItem
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public x.b setActionView(int i10) {
        throw new UnsupportedOperationException();
    }

    @Override // x.b, android.view.MenuItem
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public x.b setActionView(View view) {
        throw new UnsupportedOperationException();
    }

    @Override // x.b, android.view.MenuItem
    public boolean expandActionView() {
        return false;
    }

    @Override // x.b, android.view.MenuItem
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public x.b setShowAsActionFlags(int i10) {
        setShowAsAction(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public ActionProvider getActionProvider() {
        throw new UnsupportedOperationException();
    }

    @Override // x.b, android.view.MenuItem
    public View getActionView() {
        return null;
    }

    @Override // x.b, android.view.MenuItem
    public int getAlphabeticModifiers() {
        return this.f608j;
    }

    @Override // android.view.MenuItem
    public char getAlphabeticShortcut() {
        return this.f607i;
    }

    @Override // x.b, android.view.MenuItem
    public CharSequence getContentDescription() {
        return this.f612n;
    }

    @Override // android.view.MenuItem
    public int getGroupId() {
        return this.f600b;
    }

    @Override // android.view.MenuItem
    public Drawable getIcon() {
        return this.f609k;
    }

    @Override // x.b, android.view.MenuItem
    public ColorStateList getIconTintList() {
        return this.f614p;
    }

    @Override // x.b, android.view.MenuItem
    public PorterDuff.Mode getIconTintMode() {
        return this.f615q;
    }

    @Override // android.view.MenuItem
    public Intent getIntent() {
        return this.f604f;
    }

    @Override // android.view.MenuItem
    public int getItemId() {
        return this.f599a;
    }

    @Override // android.view.MenuItem
    public ContextMenu.ContextMenuInfo getMenuInfo() {
        return null;
    }

    @Override // x.b, android.view.MenuItem
    public int getNumericModifiers() {
        return this.f606h;
    }

    @Override // android.view.MenuItem
    public char getNumericShortcut() {
        return this.f605g;
    }

    @Override // android.view.MenuItem
    public int getOrder() {
        return this.f601c;
    }

    @Override // android.view.MenuItem
    public SubMenu getSubMenu() {
        return null;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitle() {
        return this.f602d;
    }

    @Override // android.view.MenuItem
    public CharSequence getTitleCondensed() {
        CharSequence charSequence = this.f603e;
        return charSequence != null ? charSequence : this.f602d;
    }

    @Override // x.b, android.view.MenuItem
    public CharSequence getTooltipText() {
        return this.f613o;
    }

    @Override // android.view.MenuItem
    public boolean hasSubMenu() {
        return false;
    }

    @Override // x.b, android.view.MenuItem
    public boolean isActionViewExpanded() {
        return false;
    }

    @Override // android.view.MenuItem
    public boolean isCheckable() {
        return (this.f618t & 1) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isChecked() {
        return (this.f618t & 2) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isEnabled() {
        return (this.f618t & 16) != 0;
    }

    @Override // android.view.MenuItem
    public boolean isVisible() {
        return (this.f618t & 8) == 0;
    }

    @Override // android.view.MenuItem
    public MenuItem setActionProvider(ActionProvider actionProvider) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10) {
        this.f607i = Character.toLowerCase(c10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setCheckable(boolean z10) {
        this.f618t = (z10 ? 1 : 0) | (this.f618t & (-2));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setChecked(boolean z10) {
        this.f618t = (z10 ? 2 : 0) | (this.f618t & (-3));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setEnabled(boolean z10) {
        this.f618t = (z10 ? 16 : 0) | (this.f618t & (-17));
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(Drawable drawable) {
        this.f609k = drawable;
        c();
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setIconTintList(ColorStateList colorStateList) {
        this.f614p = colorStateList;
        this.f616r = true;
        c();
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setIconTintMode(PorterDuff.Mode mode) {
        this.f615q = mode;
        this.f617s = true;
        c();
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIntent(Intent intent) {
        this.f604f = intent;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setNumericShortcut(char c10) {
        this.f605g = c10;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener onActionExpandListener) {
        throw new UnsupportedOperationException();
    }

    @Override // android.view.MenuItem
    public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener onMenuItemClickListener) {
        this.f611m = onMenuItemClickListener;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11) {
        this.f605g = c10;
        this.f607i = Character.toLowerCase(c11);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public void setShowAsAction(int i10) {
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(CharSequence charSequence) {
        this.f602d = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitleCondensed(CharSequence charSequence) {
        this.f603e = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setVisible(boolean z10) {
        this.f618t = (this.f618t & 8) | (z10 ? 0 : 8);
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setAlphabeticShortcut(char c10, int i10) {
        this.f607i = Character.toLowerCase(c10);
        this.f608j = KeyEvent.normalizeMetaState(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public x.b setContentDescription(CharSequence charSequence) {
        this.f612n = charSequence;
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setNumericShortcut(char c10, int i10) {
        this.f605g = c10;
        this.f606h = KeyEvent.normalizeMetaState(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setTitle(int i10) {
        this.f602d = this.f610l.getResources().getString(i10);
        return this;
    }

    @Override // android.view.MenuItem
    public x.b setTooltipText(CharSequence charSequence) {
        this.f613o = charSequence;
        return this;
    }

    @Override // android.view.MenuItem
    public MenuItem setIcon(int i10) {
        this.f609k = androidx.core.content.a.f(this.f610l, i10);
        c();
        return this;
    }

    @Override // x.b, android.view.MenuItem
    public MenuItem setShortcut(char c10, char c11, int i10, int i11) {
        this.f605g = c10;
        this.f606h = KeyEvent.normalizeMetaState(i10);
        this.f607i = Character.toLowerCase(c11);
        this.f608j = KeyEvent.normalizeMetaState(i11);
        return this;
    }
}
