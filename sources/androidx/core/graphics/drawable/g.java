package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.Region;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: WrappedDrawableApi14.java */
/* JADX INFO: loaded from: classes.dex */
class g extends Drawable implements Drawable.Callback, f, e {

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    static final PorterDuff.Mode f2233u = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private int f2234o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private PorterDuff.Mode f2235p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f2236q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    i f2237r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    private boolean f2238s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    Drawable f2239t;

    g(i iVar, Resources resources) {
        this.f2237r = iVar;
        e(resources);
    }

    private i d() {
        return new i(this.f2237r);
    }

    private void e(Resources resources) {
        Drawable.ConstantState constantState;
        i iVar = this.f2237r;
        if (iVar == null || (constantState = iVar.f2242b) == null) {
            return;
        }
        a(constantState.newDrawable(resources));
    }

    private boolean f(int[] iArr) {
        if (!c()) {
            return false;
        }
        i iVar = this.f2237r;
        ColorStateList colorStateList = iVar.f2243c;
        PorterDuff.Mode mode = iVar.f2244d;
        if (colorStateList == null || mode == null) {
            this.f2236q = false;
            clearColorFilter();
        } else {
            int colorForState = colorStateList.getColorForState(iArr, colorStateList.getDefaultColor());
            if (!this.f2236q || colorForState != this.f2234o || mode != this.f2235p) {
                setColorFilter(colorForState, mode);
                this.f2234o = colorForState;
                this.f2235p = mode;
                this.f2236q = true;
                return true;
            }
        }
        return false;
    }

    @Override // androidx.core.graphics.drawable.f
    public final void a(Drawable drawable) {
        Drawable drawable2 = this.f2239t;
        if (drawable2 != null) {
            drawable2.setCallback(null);
        }
        this.f2239t = drawable;
        if (drawable != null) {
            drawable.setCallback(this);
            setVisible(drawable.isVisible(), true);
            setState(drawable.getState());
            setLevel(drawable.getLevel());
            setBounds(drawable.getBounds());
            i iVar = this.f2237r;
            if (iVar != null) {
                iVar.f2242b = drawable.getConstantState();
            }
        }
        invalidateSelf();
    }

    @Override // androidx.core.graphics.drawable.f
    public final Drawable b() {
        return this.f2239t;
    }

    protected boolean c() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f2239t.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        int changingConfigurations = super.getChangingConfigurations();
        i iVar = this.f2237r;
        return changingConfigurations | (iVar != null ? iVar.getChangingConfigurations() : 0) | this.f2239t.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        i iVar = this.f2237r;
        if (iVar == null || !iVar.a()) {
            return null;
        }
        this.f2237r.f2241a = getChangingConfigurations();
        return this.f2237r;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f2239t.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f2239t.getIntrinsicHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f2239t.getIntrinsicWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getLayoutDirection() {
        return a.f(this.f2239t);
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f2239t.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f2239t.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f2239t.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f2239t.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public int[] getState() {
        return this.f2239t.getState();
    }

    @Override // android.graphics.drawable.Drawable
    public Region getTransparentRegion() {
        return this.f2239t.getTransparentRegion();
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void invalidateDrawable(Drawable drawable) {
        invalidateSelf();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isAutoMirrored() {
        return a.h(this.f2239t);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        i iVar;
        ColorStateList colorStateList = (!c() || (iVar = this.f2237r) == null) ? null : iVar.f2243c;
        return (colorStateList != null && colorStateList.isStateful()) || this.f2239t.isStateful();
    }

    @Override // android.graphics.drawable.Drawable
    public void jumpToCurrentState() {
        this.f2239t.jumpToCurrentState();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f2238s && super.mutate() == this) {
            this.f2237r = d();
            Drawable drawable = this.f2239t;
            if (drawable != null) {
                drawable.mutate();
            }
            i iVar = this.f2237r;
            if (iVar != null) {
                Drawable drawable2 = this.f2239t;
                iVar.f2242b = drawable2 != null ? drawable2.getConstantState() : null;
            }
            this.f2238s = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        Drawable drawable = this.f2239t;
        if (drawable != null) {
            drawable.setBounds(rect);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public boolean onLayoutDirectionChanged(int i10) {
        return a.m(this.f2239t, i10);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onLevelChange(int i10) {
        return this.f2239t.setLevel(i10);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void scheduleDrawable(Drawable drawable, Runnable runnable, long j10) {
        scheduleSelf(runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f2239t.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAutoMirrored(boolean z10) {
        a.j(this.f2239t, z10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i10) {
        this.f2239t.setChangingConfigurations(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f2239t.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z10) {
        this.f2239t.setDither(z10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z10) {
        this.f2239t.setFilterBitmap(z10);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setState(int[] iArr) {
        return f(iArr) || this.f2239t.setState(iArr);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTint(int i10) {
        setTintList(ColorStateList.valueOf(i10));
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintList(ColorStateList colorStateList) {
        this.f2237r.f2243c = colorStateList;
        f(getState());
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintMode(PorterDuff.Mode mode) {
        this.f2237r.f2244d = mode;
        f(getState());
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        return super.setVisible(z10, z11) || this.f2239t.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Drawable.Callback
    public void unscheduleDrawable(Drawable drawable, Runnable runnable) {
        unscheduleSelf(runnable);
    }

    g(Drawable drawable) {
        this.f2237r = d();
        a(drawable);
    }
}
