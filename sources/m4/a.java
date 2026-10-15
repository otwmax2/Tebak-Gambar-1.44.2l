package m4;

import android.content.res.ColorStateList;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import androidx.core.graphics.drawable.e;
import o4.g;
import o4.k;
import o4.n;

/* JADX INFO: compiled from: RippleDrawableCompat.java */
/* JADX INFO: loaded from: classes2.dex */
public class a extends Drawable implements n, e {

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    private b f32155o;

    @Override // android.graphics.drawable.Drawable
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public a mutate() {
        this.f32155o = new b(this.f32155o);
        return this;
    }

    @Override // android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        b bVar = this.f32155o;
        if (bVar.f32157b) {
            bVar.f32156a.draw(canvas);
        }
    }

    @Override // android.graphics.drawable.Drawable
    public Drawable.ConstantState getConstantState() {
        return this.f32155o;
    }

    @Override // android.graphics.drawable.Drawable
    public int getOpacity() {
        return this.f32155o.f32156a.getOpacity();
    }

    @Override // android.graphics.drawable.Drawable
    public boolean isStateful() {
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    protected void onBoundsChange(Rect rect) {
        super.onBoundsChange(rect);
        this.f32155o.f32156a.setBounds(rect);
    }

    @Override // android.graphics.drawable.Drawable
    protected boolean onStateChange(int[] iArr) {
        boolean zOnStateChange = super.onStateChange(iArr);
        if (this.f32155o.f32156a.setState(iArr)) {
            zOnStateChange = true;
        }
        boolean zB = m4.b.b(iArr);
        b bVar = this.f32155o;
        if (bVar.f32157b == zB) {
            return zOnStateChange;
        }
        bVar.f32157b = zB;
        return true;
    }

    @Override // android.graphics.drawable.Drawable
    public void setAlpha(int i10) {
        this.f32155o.f32156a.setAlpha(i10);
    }

    @Override // android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter colorFilter) {
        this.f32155o.f32156a.setColorFilter(colorFilter);
    }

    @Override // o4.n
    public void setShapeAppearanceModel(k kVar) {
        this.f32155o.f32156a.setShapeAppearanceModel(kVar);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTint(int i10) {
        this.f32155o.f32156a.setTint(i10);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintList(ColorStateList colorStateList) {
        this.f32155o.f32156a.setTintList(colorStateList);
    }

    @Override // android.graphics.drawable.Drawable, androidx.core.graphics.drawable.e
    public void setTintMode(PorterDuff.Mode mode) {
        this.f32155o.f32156a.setTintMode(mode);
    }

    public a(k kVar) {
        this(new b(new g(kVar)));
    }

    /* JADX INFO: compiled from: RippleDrawableCompat.java */
    static final class b extends Drawable.ConstantState {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        g f32156a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        boolean f32157b;

        public b(g gVar) {
            this.f32156a = gVar;
            this.f32157b = false;
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public a newDrawable() {
            return new a(new b(this));
        }

        @Override // android.graphics.drawable.Drawable.ConstantState
        public int getChangingConfigurations() {
            return 0;
        }

        public b(b bVar) {
            this.f32156a = (g) bVar.f32156a.getConstantState().newDrawable();
            this.f32157b = bVar.f32157b;
        }
    }

    private a(b bVar) {
        this.f32155o = bVar;
    }
}
