package v2;

import android.annotation.TargetApi;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;

/* JADX INFO: compiled from: SquaringDrawable.java */
/* JADX INFO: loaded from: classes.dex */
public class i extends l2.b {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private l2.b f35781o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    private a f35782p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    private boolean f35783q;

    /* JADX INFO: compiled from: SquaringDrawable.java */
    static class a extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Drawable.ConstantState f35784a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        private final int f35785b;

        a(a aVar) {
            this(aVar.f35784a, aVar.f35785b);
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable() {
            return newDrawable(null);
        }

        a(Drawable.ConstantState constantState, int i10) {
            this.f35784a = constantState;
            this.f35785b = i10;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public Drawable newDrawable(Resources resources) {
            return new i(this, null, resources);
        }
    }

    public i(l2.b bVar, int i10) {
        this(new a(bVar.getConstantState(), i10), bVar, null);
    }

    @Override // l2.b
    public boolean b() {
        return this.f35781o.b();
    }

    @Override // l2.b
    public void c(int i10) {
        this.f35781o.c(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void clearColorFilter() {
        this.f35781o.clearColorFilter();
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        this.f35781o.draw(canvas);
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(19)
    public int getAlpha() {
        return this.f35781o.getAlpha();
    }

    @Override // android.graphics.drawable.Drawable
    @TargetApi(11)
    public Drawable.Callback getCallback() {
        return this.f35781o.getCallback();
    }

    @Override // android.graphics.drawable.Drawable
    public int getChangingConfigurations() {
        return this.f35781o.getChangingConfigurations();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f35782p;
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable getCurrent() {
        return this.f35781o.getCurrent();
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.f35782p.f35785b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.f35782p.f35785b;
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumHeight() {
        return this.f35781o.getMinimumHeight();
    }

    @Override // android.graphics.drawable.Drawable
    public int getMinimumWidth() {
        return this.f35781o.getMinimumWidth();
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f35781o.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean getPadding(Rect rect) {
        return this.f35781o.getPadding(rect);
    }

    @Override // android.graphics.drawable.Drawable
    public void invalidateSelf() {
        super.invalidateSelf();
        this.f35781o.invalidateSelf();
    }

    @Override // android.graphics.drawable.Animatable
    public boolean isRunning() {
        return this.f35781o.isRunning();
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable mutate() {
        if (!this.f35783q && super.mutate() == this) {
            this.f35781o = (l2.b) this.f35781o.mutate();
            this.f35782p = new a(this.f35782p);
            this.f35783q = true;
        }
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void scheduleSelf(Runnable runnable, long j10) {
        super.scheduleSelf(runnable, j10);
        this.f35781o.scheduleSelf(runnable, j10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f35781o.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(int i10, int i11, int i12, int i13) {
        super.setBounds(i10, i11, i12, i13);
        this.f35781o.setBounds(i10, i11, i12, i13);
    }

    @Override // android.graphics.drawable.Drawable
    public void setChangingConfigurations(int i10) {
        this.f35781o.setChangingConfigurations(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(int i10, PorterDuff.Mode mode) {
        this.f35781o.setColorFilter(i10, mode);
    }

    @Override // android.graphics.drawable.Drawable
    public void setDither(boolean z10) {
        this.f35781o.setDither(z10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setFilterBitmap(boolean z10) {
        this.f35781o.setFilterBitmap(z10);
    }

    @Override // android.graphics.drawable.Drawable
    public boolean setVisible(boolean z10, boolean z11) {
        return this.f35781o.setVisible(z10, z11);
    }

    @Override // android.graphics.drawable.Animatable
    public void start() {
        this.f35781o.start();
    }

    @Override // android.graphics.drawable.Animatable
    public void stop() {
        this.f35781o.stop();
    }

    @Override // android.graphics.drawable.Drawable
    public void unscheduleSelf(Runnable runnable) {
        super.unscheduleSelf(runnable);
        this.f35781o.unscheduleSelf(runnable);
    }

    i(a aVar, l2.b bVar, Resources resources) {
        this.f35782p = aVar;
        if (bVar != null) {
            this.f35781o = bVar;
        } else if (resources != null) {
            this.f35781o = (l2.b) aVar.f35784a.newDrawable(resources);
        } else {
            this.f35781o = (l2.b) aVar.f35784a.newDrawable();
        }
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f35781o.setColorFilter(colorFilter);
    }

    @Override // android.graphics.drawable.Drawable
    public void setBounds(Rect rect) {
        super.setBounds(rect);
        this.f35781o.setBounds(rect);
    }
}
